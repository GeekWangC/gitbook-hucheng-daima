# 术语表（Glossary）

<a name="hot-reload"></a>
## 热更新（Hot Reload）
- 含义：不重启整体应用的前提下，局部替换代码并保持状态。故事中亦隐喻“在生活里进行小步可逆的调整”。
- 相关章节：[Ch.1](chapter-01.md)

<a name="adapter"></a>
## 适配层（Adapter）
- 含义：旧系统与新引擎之间的解耦层，先实现“可运行的迁移”，再逐步替换内部实现，降低一次性重构风险。
- 相关章节：[Ch.2](chapter-02.md)

<a name="design-tokens"></a>
## 设计 Tokens（Design Tokens）
- 含义：用变量表达设计决策（颜色、间距、字号等）的最小单元。组件消费 Tokens，而非直接硬编码样式，达成“可配置的统一”。
- 相关章节：[Ch.3](chapter-03.md)

<a name="circuit-breaker"></a>
## 断路器（Circuit Breaker）
- 含义：在异常扩散前主动切断故障路径，保障系统“降级可用”。故事中象征在压力情境下的“及时止损”。
- 相关章节：[Ch.5](chapter-05.md)

<a name="shadow-traffic"></a>
## 影子系统/影子流量（Shadow Traffic）
- 含义：把真实请求复制一份到新系统观察，不影响用户，先修到“零问题”再逐步放量切流。
- 相关章节：[Ch.11](chapter-11.md)

<a name="observability"></a>
## 可观察性（Observability, O11y）
- 含义：日志、指标、分布式追踪三件套协同，让系统的内部状态可被外部推断。故事中延伸为“自我观察”。
- 相关章节：[Ch.18](chapter-18.md), [Ch.23](chapter-23.md)

<a name="north-star"></a>
## 北极星指标（North Star Metrics）
- 含义：代表产品与平台长期价值的关键指标，例如集成时长、缺陷密度、学习曲线闭环时间。
- 相关章节：[Ch.21](chapter-21.md)

<a name="semver"></a>
## 语义化版本（Semantic Versioning, SemVer）
- 含义：`MAJOR.MINOR.PATCH`：不兼容变更/新增能力/缺陷修复。故事中亦作为“承诺与成长”的隐喻。
- 相关章节：[Ch.10](chapter-10.md), [Ch.20](chapter-20.md), [尾声](epilogue-version.md)

<a name="adr"></a>
## ADR（Architecture Decision Record）
- 含义：记录架构决策的背景、取舍、影响与替代方案，让“决定在阳光下变更”。
- 相关章节：[Ch.14](chapter-14.md), [Ch.24](chapter-24.md), [Ch.26](chapter-26.md)

<a name="working-backwards"></a>
## Working Backwards
- 含义：以“未来新闻稿 + FAQ”倒推目标与路径的方法，促成“写下来的共识”。
- 相关章节：[Ch.25](chapter-25.md)

<a name="shift-left-security"></a>
## 安全左移（Shift Left Security）
- 含义：把 SAST/DAST、依赖审计、CSP、威胁建模前置到开发流程与模板的默认值中。
- 相关章节：[Ch.22](chapter-22.md)

<a name="sla"></a>
## SLA（Service Level Agreement）
- 含义：为支持与问答场景设定响应与闭环的时间承诺，配合看板实现可见与可追责。
- 相关章节：[Ch.21](chapter-21.md)

<a name="user-language-metrics"></a>
## P95/P99 → 用户语言
- 含义：用“多少用户在多少秒内得到反馈”翻译技术指标，建立跨角色的共同语境。
- 相关章节：[Ch.23](chapter-23.md)

<a name="cdn-warmup"></a>
## Anycast/CDN 与缓存预热
- 含义：通过多地域节点与预热策略提升分发命中率，配合分块下载与版本化缓存应对流量洪峰。
- 相关章节：[Ch.27](chapter-27.md)

<a name="rfc"></a>
## RFC（Request for Comments）
- 含义：在改动前先提案、收集反馈、凝聚共识，减少返工成本，扩大参与面。
- 相关章节：[Ch.4](chapter-04.md), [Ch.16](chapter-16.md)

<a name="monorepo"></a>
## Monorepo
- 含义：单仓多包的代码组织方式，便于共享工具链与统一版本治理。
- 相关章节：贯穿全书

