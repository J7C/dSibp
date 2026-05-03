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

### 2.3 Bubble 图主积分顺序约定（MIstau）
- **定义（paper Eq B^{(12)}）**：
  $$B^{(12)}[\{n_1,n_2,n_3,n_4\},\{a_1,a_2\},\{b_1,b_2\}] \sim h_{n_1}^{(1)}(-q\tau_1)h_{n_2}^{(2)}(-q\tau_2) \times h_{n_3}^{(1)}(-|\boldsymbol{k}_s+\boldsymbol{q}|\tau_1)h_{n_4}^{(2)}(-|\boldsymbol{k}_s+\boldsymbol{q}|\tau_2)$$
- **顶点 1（$\tau_1$）**：$\{n_1,n_3\}$；**顶点 2（$\tau_2$）**：$\{n_2,n_4\}$
- **二进制编码**：每个顶点的状态由 2-bit 二进制数编码：
  - bit1（MSB，$x_1$ 侧）→ 第一条腿的 Hankel 指标
  - bit0（LSB，$x_2$ 侧）→ 第二条腿的 Hankel 指标
- **Kronecker 积顺序**：`Omegapp = test1pp ⊗ I₄ + I₄ ⊗ test2pp`
  - 行/列索引 = $(i_1-1)\times4 + i_2$（$i_1$ 为外指标，变慢；$i_2$ 为内指标，变快）
  - $i_1$ → 顶点 1 状态 → $\{n_1,n_3\}$；$i_2$ → 顶点 2 状态 → $\{n_2,n_4\}$
- **MIstau 中 G 积分指标顺序**：
  $$G[\{n_1,n_2,n_3,n_4\}] = G[\{\text{idx2bin}[[i_1,1]], \text{idx2bin}[[i_2,1]], \text{idx2bin}[[i_1,2]], \text{idx2bin}[[i_2,2]]\}]$$
  （注：不是简单地对 `n1,n2,n3,n4` 做 Table 遍历，而是先取两个顶点的 bit1 再取 bit0。）

### 2.4 R1 子扇区约定
- **a0R / b10R / b20R 映射**（`bubble_ibp_sym.m` 中定义）：
  $$a_{0R} \to 2a_0 - 2\nu,\quad b_{10R} \to b_0 + 2\nu,\quad b_{20R} \to b_0$$
- **R2→R1 对称性（Eq 43）**：$\;R_2[\{n_1,n_2\},\{a\},\{b_1,b_2\}] \to R_1[\{n_1,n_2\},\{a\},\{b_2,b_1\}]$

### 2.5 Massless 1-Loop 2-Point
- **Location**: `project_context/README_IBP.md` (Archived content).
- **Physics**: Corresponds to $\nu=3/2$ in massive notation.
