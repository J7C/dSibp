# dSibp 项目手册

本手册汇总 dSibp 的项目说明与物理笔记。具体操作流程请参考对应技能。

## 1. 可用技能与操作流程
本项目使用 specialized skills 管理核心流程。请根据任务类型调用相应技能：

### 核心计算流程
- **`ibp-manager`**
  - **描述**：使用 WolframScript 管理 IBP 系统生成与导出。生成种子、试探IBP指标范围、导出到 Kira、或调试 IBP 关系时调用。
- **`kira-manager`**
  - **描述**：在 WSL 上管理 Kira 的 IBP 约化流程，包含复制、权限修复、环境设置、执行与结果回收。凡涉及 Kira 均使用本技能。
- **`ibp-range-probing`**
  - **描述**：用于IBP指标范围的试探、扩展/收缩与记录。用户要求试探指标范围、分析截断积分或记录试验结果时调用。
- **`de-manager`**
  - **描述**：管理微分方程脚本的构建、约化结果加载与一致性检查。用户需要从Kira结果构建DE矩阵时调用。

### 辅助与规范
- **`research-script-check`**
  - **描述**：为科研脚本添加分步检查、预期输出与全检/抽检，用于核对公式或实现效果。
- **`latex-compiler`**
  - **描述**：编译 LaTeX 并检查日志错误（引用未定义、overfull hbox 等），给出修复指导。编辑 .tex 或要求编译/检查 PDF 时调用。
- **`code-commenting-standard`**
  - **描述**：为AI编写代码制定中文注释规范。用户要求新增/修改代码时调用，确保每个模块有清晰用途与接口说明。

## 2. 项目物理说明

### 2.1 V++ Massive Bubble（`noteppmassive`）
- **位置**：`noteppmassive/`
- **核心笔记**：`main.tex`（理论推导）。
- **关键物理**：
  - 时间 IBP 的边界项（$R_1, R_2$）单独处理。
  - 对称性 $R_1 \leftrightarrow R_2$ 使系统只需解 $R_1$。
  - 动量 IBP 与 EOM 不受 $\theta$-函数影响。

### 2.2 R1 dlog 基底与维度处理
- **位置**: `codeR1/R1_ibp_sym.m`
- **dlog 基底**:
  - 3D 候选：$k_s R_1[\{n_3,n_4\},\{0\},\{2,2\}]$ 与 $k_s R_1[\{n_3,n_4\},\{1\},\{2,1\}]$
  - 1D 候选：$R_1[\{n_3,n_4\},\{0\},\{1,0\}]$ 与 $R_1[\{n_3,n_4\},\{0\},\{0,1\}]$
  - 1D 候选先通过 `repdimplus2` 升维到 3D，再并入 dlog 基底
  - **优先级策略**：在 `MIdlog` 列表中，强制将 $b_1=0$ 的积分排在前面。
- **奇偶性筛选**: 仅保留 $b_1$ 为偶且 $n_3+n_4+b_2$ 为偶的积分
- **维度约定**: 所有导出到 Kira 的候选基底与关系在脚本内完成升维与替换，确保以 $D=3-2\epsilon$ 运行

### 2.3 Massless 1-Loop 2-Point
- **Location**: `project_context/README_IBP.md` (Archived content).
- **Physics**: Corresponds to $\nu=3/2$ in massive notation.
