# reTB / Terra-Tools 存档审计，2026-10-22

本轮以本地 reTB v1.4.44 的代码与实际处理行为为准。Wiki 和客户端反汇编用于交叉验证，不用原版规则覆盖 reTB 有意放宽的规则。没有修改原始测试存档、reTB 服务端代码或 APK。用户确认方案后已完成原生 Mac 导入/导出并重新构建 `dist/TerraTools.app`，包含本报告修复。源码位于 `Terra-Tools-save-audit` worktree。

## 证据与可复现验证

- 后端 commit：`6a24f8a64ce650f378e8fc8789c0a761d9e9d9dc`。
- `backend/retb_save_profile.json` 从实际后端模型、角色 Luck 函数、职业映射、经验上限表及跟班表生成，并记录源文件 SHA-256。前端容量、Luck、跟班曲线直接使用这个快照。
- `retb-contract-2026-10-22.json`：实际模型、SQLite 读写、能量消费及 JavaScript 与 Python 后端曲线的交叉验证结果。
- 已解包 ARM64 `libil2cpp.so` SHA-256：`ba6fecba562f7ff46305792cadeabcae1879a0c384f7195a5d77872af04c1753`。
- `client-save-5.5.7-arm64.asm`：9 个相关函数的完整反汇编，地址与 `dump.cs` 对照。静态分析不是手机动态实测。

## 编辑字段与后端约束

| 字段 | 后端证据及编辑器处理 |
| --- | --- |
| 用户名 | `handlers/userdata/core.py::handle_change_uname` 接受非空名字；编辑器同步外层 username、users 行及 session.username，不改 userid/token。 |
| 金币 | `models/server_constants.py::ServerConstants.maxCoins` 与 `state_consts.MAX_COINS` 均为 999999999；新输入按此限制，session 与 user_valuables.coins 镜像。未编辑的余额不自动截断。 |
| 主能量 / 免费能量 | 公布常量都是 999，但 `Valuables` 无上限校验，session 是 JSON TEXT，`spend_energy` 先扣免费后扣主能量，没有 999 截断。实际验证 9999 -> 9998 并存回 SQLite。编辑器保留 9999 及其他原有渠道余额。 |
| max_free_energy / valuables_raw | 前者是上限元数据，后者是旧模型字符串（样本 `"9000"`），都不能拿来显示或反写当前余额。保留原值。 |
| 角色职业等级 | `job_levels` 数据库列存解码等级；session.chrdata.jobLevels 存 `(累计EXP * 4096) + Lv`。前端用安全整数算术，避免 JS 32 位位运算截断。 |
| 职业解锁 | `job.py::handle_add_job` 和客户端 `Character.UnlockJob` 均创建 Lv1 / EXP0。锁定为 0；已装备职业被锁时退回 Job1。保留其他职业与技能槽。 |
| SB | `state_consts.MAX_SB=1000`，对应显示 100.0%，不是 1000%。新输入同步角色表与 session。 |
| 基础 Luck | 用实际 `gacha_helpers.luck_cap_for` 为 346 角色逐一生成：通常 A 以下 700，SS/S 800，Λ/Z 1000；显示值除十。装备加成与基础值分开。 |
| 道具 / Animata Core | 后端 maxItemCount=9999999，故编辑器按此配置；181 个槽位，id 从 1 开始。Core=181，对应 itemList[180]。不是额外的每周积分字段。 |
| 跟班 | 使用后端 497 种跟班各自的 max_level/EXPmax/EXPcoeff；编辑或新增等级时同步 EXP。逐级交叉比对 19725 个值全部一致。满级跟班强化溢出经验在后端会保留，因此不以“超过下一等级经验”判坏。 |
| 跟班 iid / 图鉴 / 装备 | 新增 iid 高于现有所有 iid，递增计数；图鉴以 species bid 为键，不用 inventory iid。移除跟班时清除角色对该 iid 的装备引用，保留历史图鉴。 |
| 体力 / 进度 | 修改器不提供直接编辑；保持原 session 计时与进度。修正了 `current_stamina=0` 被 JS 的 `|| 20` 覆盖的问题。跨格式转换仍会补目标格式缺失默认值，不承诺所有服务端私有运行状态无损迁移。 |
| 文件类型 | session 中 jobLevels/jobSlots、date 等保留客户端需要的 JSON 小数写法。保存前严格验证外层 JSON 和内嵌 session；UTF-8 原样、临时文件落盘后原子替换。 |

跟班箱公布容量为 999，模型/数据库本身不实施箱容量检查；本轮不自动删除超容量的已有跟班。金币等字段同样不能把“模型能装下”当成“所有游戏流程都无限制”。

## 角色 EXP、等级糖及 Lv90

1. `ChrJobParams.GetEXPAt`（0x10C407C）用 float32 除法、`powf`、float32 乘法，再转 int。公式为 `floor(EXPmax * ((Lv-1)/98)^EXPcoeff)`。前后端工具统一相同精度；全部曲线点与本机 powf 交叉检查未发现差异。
2. 客户端 `Character.SetJobLevel_bin`（0xD09B28）拆解高位 EXP 与低 12 位 Lv，然后给已解锁且有职业数据的槽位补最低 EXP；高于当前等级区间会压到 `E(Lv+1)-1`。因此“只写 35 一定导致经验损坏”是不成立的，客户端存在自愈；服务端本身在低等级没有通用补经验过程。
3. 等级糖（161）为所有已解锁职业 +1；等级糖盒（175）为 +3，上限 90，锁定职业不变。reTB `status_up.py` 保留原 EXP 只改等级；客户端加载响应时上述函数会补足经验。这条路径解释了等级糖的等级/EXP 差异。
4. 普通战斗 `UITeamStateItem.AddExp.MoveNext`（0xF20C1C）会继续消耗剩余 EXP、逐级增长；到等级上限后最多保留 `E(91)-1`，剩余丢弃，等级不升到 91。
5. reTB `joblevels.cap_job_levels` 在客户端提交 Lv90 的超额 EXP 时也封顶到其职业上限表减一。该上限表以 double 生成的点中有 15 个职业与客户端 float32 点相差 1；遵循用户“以后端为准”，本轮不改服务端，编辑器使用两者较小的 Lv90 上边界避免下一次同步改写。
6. 编辑器按用户确认的规则：有效区间内 EXP 原样保留；区间外保持等级、将 EXP 重置到当前等级最低值。该策略对过高 EXP 的处理与客户端直接压到区间末端不同，是明确的编辑器规则；预览显示修复明细，不改原始文件。缺曲线的角色报告并保留，不猜测经验。

Bahl Job1 示例：

| 状态 | 累计 EXP |
| --- | ---: |
| 刚到 Lv89 | 1595397 |
| 刚到 Lv90 / 修改为90且旧经验不适配 | 1633707 |
| Lv90 经验填到封顶 | 1672492 |
| 理论 Lv91 门槛（不可实际升到91） | 1672493 |

“改90级的经验条从零开始”指累计 EXP 为 E(90)，不是累计 EXP=0，也不额外加1；“还差1经验”指90级条封顶时距离理论91级门槛的差额。

## 交易所

`exchange.py::get_current_exchange` 的 `weeklyItem=181` 表示货币道具 ID，不是余额。`exchange_helpers` 会从 Core 与旧 Animata 道具族合计余额中扣款。每周轮换/刷新的是兑换商品与库存，Core 不随周清零。修改器 Items 中搜索 `Animata Core`、`ライファーコア` 或 `181` 即可修改；余额为0时可从添加道具结果中加入。

## 验证与边界

- 原归档样本：主能量5817、免费0；299个已解锁职业、75个跟班的等级经验一致，均无需经验修复，Core为0。
- 前端逻辑测试：11项通过。
- Python 转换、经验审计、原生打开/保存及偏好存储：26项通过。
- 真实页面 Playwright 回归：30项通过，包括原生桥导入、修改后立即导出，以及不触发浏览器下载的验证。
- reTB 等级封顶/能量/等级糖：27项通过；跟班、交易所、转职、重编码、合并、存档导入导出、持久化：147项通过。测试中清空宿主机继承的 Android `RETB_CONFIG_OVERRIDE` 路径，所有写入使用临时数据库。
- 最终包的 WebKit 页面加载、NSOpenPanel 与 NSSavePanel 原生弹窗及取消流程已在 Cocoa 中验证；文件读写测试覆盖 UTF-8/BOM、中文文件名、小数、换行、取消、错误路径及原子替换。原生界面使用 Open Save… / Save As…，记住最近打开或保存目录。尚未进行手机导入验证。
- 现有 App 是物理复制的资源包，但复制的 Python 仍链接本机 Homebrew framework，不能宣称可迁移至无 Python 的 Mac。

源码位于独立 worktree `Terra-Tools-save-audit`，分支 `feat/save-audit-20261022`。原 Terra-Tools main 保持 pull-only。需要更新后端规则时重新运行 `build-retb-save-profile.py`，再运行 `verify-retb-save-contract.py`；不要手工改快照冒充后端规则。

## Mac 偏好持久化补充

修复了语言固定初始化为英文，以及 WebKit 隐私会话/随机端口使网页存储跨重启丢失的问题。Mac 偏好独立保存在 `~/Library/Application Support/TerraTools/preferences.json`，不在 App 包内，不随重新打包替换。React 挂载前先恢复本地偏好，再初始化各页面状态。浏览器版本继续使用 localStorage。

目前保存语言、现有的筛选/排序与侧栏分组展开偏好、音乐音量/静音、故事阅读位置，以及最近的存档打开/保存目录。原有 Mod Studio 草稿自动保存也复用此机制；不自动写入游戏存档，不自动恢复音乐播放。

真实 Cocoa 进程首次在端口51068选择繁体中文并退出，第二个独立进程在端口51341恢复为繁体中文；测试使用独立临时设置文件，没有覆盖用户设置。页面测试同时验证浏览器刷新恢复、不同 origin 的原生偏好恢复、音乐保持暂停。窗口位置大小、启动时恢复上次页面、存档编辑器未导出改动仍未持久化。
