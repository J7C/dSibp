# Qoder Skills 配置

本文件记录项目中的所有技能（Skills）定义，供 Qoder AI 助手调用。

---

## Skills 列表

### 1. bib-management-standard
**描述**：按照高能物理（INSPIRE-HEP）惯例标准化 .bib 文件条目。在添加、格式化或清理参考文献条目时调用。

**核心规范**：
- 引用键名格式：`Author:Yearxxx`（如 `Maldacena:1997re`）
- 条目字段顺序：author → title → eprint → archivePrefix → primaryClass → reportNumber → doi → journal → volume → number → pages → year
- 标题必须包裹在 `"{...}"` 中以保留大小写
- 区域分隔符格式：`%----------Title----------`

**文件位置**：`.trae/skills/bib-management-standard/SKILL.md`

---

### 2. code-commenting-standard
**描述**：为AI编写代码制定中文注释规范。用户要求新增/修改代码时调用，确保每个模块有清晰用途与接口说明。

**核心规范**：
- 文件头部必须有详细用途说明
- 每个模块需简要介绍实现思路（不超过三行）
- 函数级注释说明参数、返回值、边界条件
- 统一使用中文

**文件位置**：`.trae/skills/code-commenting-standard/SKILL.md`

---

### 3. de-manager
**描述**：管理微分方程脚本的构建、约化结果加载与一致性检查。用户需要从Kira结果构建DE矩阵时调用。

**核心能力**：
- 从 `masters.final` 读取主积分编号
- 构建动力学量偏导算子
- 将偏导结果投影到主积分基底
- 输出余项积分指标形式并检查缩放关系

**依赖**：
- `result/`：编号映射、参数、基底等复用文件
- `results_wsl/`：Kira 约化规则与主积分列表

**文件位置**：`.trae/skills/de-manager/SKILL.md`

---

### 4. ibp-manager
**描述**：使用 WolframScript 管理 IBP 系统生成与导出。生成种子、试探IBP指标范围、导出到 Kira、或调试 IBP 关系时调用。

**核心规范**：
- id 与 symmetry 顺序必须为 `expr // id // symmetry`
- 对积分求参数导数时必须包含系数的导数项
- 复用内容统一放在 `result/`

**脚本分工（以R1为例）**：
- `R1_ibp_sym.m`：生成 IBP 系统、基底选择、导出
- `R1_ibp_sym_check.m`：逐步输出与抽检
- `R1_de_sym.m`：读取复用文件，重建 DE

**文件位置**：`.trae/skills/ibp-manager/SKILL.md`

---

### 5. ibp-range-probing
**描述**：用于IBP指标范围的试探、扩展/收缩与记录。用户要求试探指标范围、分析截断积分或记录试验结果时调用。

**核心策略**：
- 初始范围：种子关系指标=0为基准，扩大1作为安全范围
- 截断积分：master中编号是上一行编号3倍的积分
- 单步扩展：每次只选一类指标的一个边界扩大1
- 扩张方向选择：根据未约化积分正/负值大小决定上限/下限优先
- 迭代直到目标积分可约化且出现截断积分

**日志记录**：`index_range_log.txt`

**文件位置**：`.trae/skills/ibp-range-probing/SKILL.md`

---

### 6. kira-manager
**描述**：在 WSL 上管理 Kira 的 IBP 约化流程，包含复制、权限修复、环境设置、执行与结果回收。凡涉及 Kira 均使用本技能。

**环境信息**：
- WSL 用户：`jiaqichen`
- 工作目录：`/home/jiaqichen/000_working_space`
- Kira 程序：`/home/jiaqichen/Softwares/kira/bin/kira`
- Fermat 路径：`/home/jiaqichen/Downloads/ferl6/fer64`

**流程**：
1. 部署：创建目录 → 复制文件 → 修复权限
2. 执行：`export FERMATPATH` → `sh run.sh`
3. 回收：仅取回 `kira_list.m` 与 `masters`

**文件位置**：`.trae/skills/kira-manager/SKILL.md`

---

### 7. latex-compiler
**描述**：编译 LaTeX 并检查日志错误（引用未定义、overfull hbox 等），给出修复指导。编辑 .tex 或要求编译/检查 PDF 时调用。

**编译命令**：
```bash
pdflatex -interaction=nonstopmode main.tex
```

**日志检查项**：
- 引用未定义：再次运行 pdflatex
- Overfull hbox：定位行号，重新排版公式
- PDF 被锁定：请用户关闭阅读器

**文件位置**：`.trae/skills/latex-compiler/SKILL.md`

---

### 8. research-reference-workflow
**描述**：执行高能物理科研项目的文献调研、筛选与引用管理流程。在需要建立参考文献库或寻找引文时调用。

**工作目录结构**：
- `refbib/Reference_Sources`：参考论文（高价值综述/重要论文）
- `refbib/Citation_Library`：目标引用文献

**筛选标准**：
- 用户指定的核心论文
- 近期论文（半年内）优先
- 高引论文（两年内 >50 次）
- 知名作者

**文献工具**：INSPIRE-HEP（优先）、Google Scholar

**文件位置**：`.trae/skills/research-reference-workflow/SKILL.md`

---

### 9. research-script-check
**描述**：为科研脚本添加分步检查、预期输出与全检/抽检，用于核对公式或实现效果。

**标准流程**：
1. 复制原脚本为 `*_check.*` 版本
2. 添加中文注释说明公式或效果
3. 每步后添加 Print 输出
4. 公式核对：`Simplify[计算结果 - 期望结果]` 期望为 0
5. 大型集合：显示前 3-5 项

**文件位置**：`.trae/skills/research-script-check/SKILL.md`

---

## 使用说明

调用技能时，Qoder 会自动读取对应的 SKILL.md 文件并遵循其中的规范。

技能文件采用 YAML front matter 格式：
```yaml
---
name: "技能名称"
description: "技能描述"
---
```
