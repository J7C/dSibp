# Bubble Sector 完成计划 (Completion Plan)

> 撰写日期：2026-04-07  
> 参考文献：  
> - `noteppmassive/main.pdf`（以下简称"笔记"）  
> - `参考资料.../Towards Systematic Evaluation of de Sitter Correlators via Generalized Integration-By-Parts Relations/dS_IBP.tex`（以下简称"dS_IBP 文献"）  
> 参考脚本：`codebubble_top/`, `codeR1/` 大量可复制内容请进行复制，再微调。

---

## 0. 项目总览

本项目计算 1-loop 2-point（泡泡图 / bubble）Feynman 积分的完整 IBP 约化与微分方程系统。系统由三个积分族构成：

| 族 | 记号 | 物理含义 |
|---|---|---|
| Top Sector | `G[{n1,n2,n3,n4},{a1,a2},{b1,b2}]` | 两个顶点各带两条腿的完整泡泡积分 |
| R1 (Tadpole) | `R1[{n3,n4},{a},{b1,b2}]` | Top 产生的第一个单点收缩 |
| R2 (Tadpole) | `R2[{n1,n2},{a},{b1,b2}]` | Top 产生的第二个单点收缩（通过 Eq 43 转化为 R1）|

**笔记对应关系**：
- Hankel 积分族定义：笔记 Section 3（n-fold vertex integrals）
- IBP 算子推导：笔记 Eq 15, 16（时间偏导 IBP）中R1 R2项需补全到code中，与此前bubble_top的code最重要的区别之一。 此外动量ibp当然也应包含
- R2→R1 对称性：笔记 Eq 43
- Omega 矩阵通用公式：笔记 Eq 72-79（`Omegan[n]` 函数）
- 完整 tau 积分 Omega 矩阵（含 sub-sector 非对角耦合）：笔记 Section 3.7.2

**dS_IBP 文献对应关系**：
- n-fold vertex integral 族定义：dS_IBP Eq (2.19)
- τ 积分 IBP 矩阵 M₀, M₁：dS_IBP Eq (3.2)-(3.3)（对应代码 `M0n[n]`, `M1n[n]`）
- 基变换矩阵 T：dS_IBP Eq (3.5)（对应代码 `T0 = 1/√2 {{1,-i},{-i,1}}`）
- **通用 dlog Omega 矩阵公式**：dS_IBP Eq (3.15)-(3.16)（对应代码 `Omegan[n_]`）
- A₋, A₊ 迭代约化：dS_IBP Eq (3.9)-(3.10)（对应代码 `Amn[n]`, `Apn[n]`）
- **Sub-sector 非对角耦合公式**：dS_IBP Eq (3.27)（对应代码 `OmegaTopToR1`, `OmegaTopToR2`）

---

## 1. 当前文件状态

### 1.1 已完成文件

| 文件 | 状态 | 说明 |
|---|---|---|
| `bubble_ibp_sym.m` | ✅ 完整 | 399 行，含所有 IBP、dlog 基、Kira 导出 |
| `000_DE_bubble_tau.m` | ⚠️ 部分完成 | 含 `Omegan[n]` 实现及 24×24 完整 Omega 矩阵，但仅导出 x2 分量；还需导出完整矩阵并折叠 R2→R1 |
| `OmegaR/OmegaR1.m` | ✅ 完整 | R1 的 4×4 Omega 矩阵（4 分量分解）|
| `OmegaR/MIsR1.m` | ✅ 完整 | R1 的 4 个主积分模板 |
| `OmegaR/generate_OmegaR1.m` | ✅ 完整 | 从 Pauli 矩阵生成 OmegaR1 的脚本 |
| `OmegaR/verify_omega_R1.m` | ✅ 完整 | 对照笔记 Eq 72-79 验证 |
| `kira_bubble/result/MIdlogNote.m` | ✅ 已导出 | 21 个 dlog 基积分（14 Top + 7 R1）|
| `kira_bubble/result/repkira2R1.m` | ✅ 已导出 | Kira 编号 → Mathematica 符号映射（460 个积分）|
| `kira_bubble/result/repR12num.m` | ✅ 已导出 | Mathematica 符号 → Kira 编号 |
| `kira_bubble/result/derivative_rules_bubble.m` | ✅ 已导出 | `listcal`, `id`, `symmetry`, `dk0`, `dks` 等 |
| `kira_bubble/userSystem/ibp.kira` | ✅ 已导出 | Kira 读取的 IBP 方程文件 |
| `kira_bubble/jobs.yaml` | ✅ 已生成 | Kira 任务配置 |
| `kira_bubble/run.sh` | ✅ 已生成 | Kira 执行脚本 |
| `Omegax2.m` | ⚠️ 不完整 | 仅 x2 分量，且未折叠 R2→R1，维度 24 而非目标 21 |

### 1.2 待完成工作

| 任务 | 优先级 | 依赖 |
|---|---|---|
| 在 WSL 中运行 Kira | 🔴 最高 | 无（可立即执行）|
| 补全 `000_DE_bubble_tau.m`：导出完整 Omega 矩阵 | 🔴 最高 | 理解 R2→R1 折叠方式 |
| 创建 `bubble_de.m` | 🔴 最高 | Kira 结果 |
| 验证完整 Omega 矩阵与 dlog 基的对应 | 🟡 中 | `bubble_de.m` + Omega 矩阵 |
| 完善 `test.m` | 🟢 低 | `bubble_de.m` |

---

## 2. 下一步执行计划（Step-by-Step）

### Step 1：运行 Kira（WSL 环境）

在 WSL 中执行：
```bash
cd /path/to/codebubble/kira_bubble
chmod +x run.sh
bash run.sh
```

预期输出目录 `kira_bubble/results/`（注意：与 `result/` 是两个不同目录）：
- `results/kira_list.m` — Kira 的约化结果（`repreduce` 替换规则）
- `results/masters` — 主积分列表

**验证**：
- `kira_list.m` 应包含形如 `Tuserweight[i] -> c1*Tuserweight[j] + ...` 的规则
- `masters` 中列出的积分应为 `MIdlogNote` 中的一个子集（21 个或更少）

**可能的问题**：
- 若 Kira 报告无法约化某些积分，检查 `ibp.kira` 中的方程数量和指标范围
- 若运行时间过长（>2小时），可考虑缩小 R1 的 `aR1Max`、`bR1Max` 范围后重新生成 `ibp.kira`

---

### Step 2：创建 `bubble_de.m`

参考 `codeR/R1_de.m` 结构。新建文件 `codebubble/bubble_de.m`，内容分为以下 Section：

#### Section 1：环境与加载

```mathematica
(* 设置工作目录 *)
dir = ...; SetDirectory[dir];

(* 加载 IBP 约化规则（来自 Kira 输出）*)
repreduce = Get["kira_bubble/results/kira_list.m"];
(* repreduce 为 {Tuserweight[i] -> expr, ...} 形式 *)

(* 加载导数规则与映射 *)
Get["kira_bubble/result/derivative_rules_bubble.m"];
(* 加载: listcal, repvar, reppara2N, id, symmetry, dk0, dks, dk0Term, dksTerm, a0, b0 *)

MIdlogNote = Import["kira_bubble/result/MIdlogNote.m"];
repkira2R1 = Import["kira_bubble/result/repkira2R1.m"];
repR12num  = Import["kira_bubble/result/repR12num.m"];
```

#### Section 2：约化 dlog 基的导数

```mathematica
(* 对 dlog 基积分关于 k0 和 ks 求导，再用 Kira 规则约化 *)
MIdlogKira = (MIdlogNote /. repvar /. reppara2N) // Simplify;

(* k0 方向 DE *)
DEk00raw = dk0[MIdlogNote] // id // symmetry /. reppowerselection;
DEk00 = (DEk00raw /. repvar /. reppara2N /. repR12num /. repreduce /. repkira2R1) // Simplify;

(* ks 方向 DE *)
DEks0raw = dks[MIdlogNote] // id // symmetry /. reppowerselection;
DEks0 = (DEks0raw /. repvar /. reppara2N /. repR12num /. repreduce /. repkira2R1) // Simplify;
```

#### Section 3：提取 DE 矩阵

```mathematica
(* 将 DEk00 表达为 MIdlogKira 的线性组合，提取系数矩阵 *)
DEP0 = Table[
  Coefficient[DEk00[[i]], MIdlogKira[[j]]],
  {i, Length[MIdlogKira]}, {j, Length[MIdlogKira]}
];

DEks = Table[
  Coefficient[DEks0[[i]], MIdlogKira[[j]]],
  {i, Length[MIdlogKira]}, {j, Length[MIdlogKira]}
];
```

#### Section 4：Scaling Check（量纲检验）

```mathematica
(* 验证：k0 * DEP0 + ks * DEks 是否满足 Euler 恒等式 *)
scalingCheck = k0 * DEP0 + ks * DEks;
(* 期望：scalingCheck 等于某个固定矩阵（如 -n*Identity 其中 n 为质量维数）*)
scalingCheck /. {k0 -> 1, ks -> 1} // Simplify
```

#### Section 5：导出结果

```mathematica
Export["kira_bubble/result/DEP0.m", DEP0];
Export["kira_bubble/result/DEks.m", DEks];
Print["DE matrices exported."];
```

---

### Step 3：验证完整 Omega 矩阵

`000_DE_bubble_tau.m` 已生成 24×24 的 `OmegaFullpm`，其结构为：

```
OmegaFullpm = | Omega_Top(16×16)  | OmegaTopToR1(16×4) | OmegaTopToR2(16×4) |
              | 0(4×16)            | OmegaR1pm(4×4)     | 0(4×4)             |
              | 0(4×16)            | 0(4×4)             | OmegaR2pm(4×4)     |
```

- **Omega_Top**（笔记 Eq 72-79 的二折积分，n=2）：来自 `Omegan[2]` 经 KroneckerProduct 构造
- **OmegaTopToR1/R2**（笔记 Section 3.7.2 的耦合项）：来自 `TinvOmegatildeT1/2` 收缩

验证方法：
1. 检查 `OmegaFullpm` 是 dlog 形式（所有非零项系数为整数）
2. 对照笔记 Section 3.7.2 的公式手动验证 `OmegaTopToR1[ia,ib,ic,id]` 的特定元素
3. 将 `bubble_de.m` 得到的 `DEP0`, `DEks` 与 `OmegaFullpm` 的相应子块对比

---

### Step 4：完善 `test.m`

当前 `test.m` 仅加载外部 R1 代码。改造为集成测试脚本：

```mathematica
(* 测试 1：bubble_ibp_sym.m 可正确加载 *)
Get["bubble_ibp_sym.m"];
Assert[Length[IBPsetP] > 0, "IBPsetP 为空！"];
Assert[Length[varsetP] == 460, "积分变量数应为 460"];
Assert[Length[MIdlogNote] == 21, "dlog 基应为 21 个"];

(* 测试 2（需 Kira 结果）：bubble_de.m 可正确加载 *)
Get["bubble_de.m"];
Assert[MatrixQ[DEP0], "DEP0 应为矩阵"];
Assert[Dimensions[DEP0] == {21, 21}, "DEP0 应为 21×21"];

(* 测试 3：量纲检验 *)
Assert[scalingCheck == expectedScaling, "Scaling check 失败！"];
```

---

## 3. 重要细节与易错点

### 3.1 P0R1 的定义（最关键！）

**问题**：`codeR/` 中 R1 脚本用 `P0 → -I k0`，但合并后 R1 的外部动量为 `P1+P2 = 2P0 = -2I k0`。

**正确处理**（已在 `bubble_ibp_sym.m` 第 140 行实现）：
```mathematica
repvar = {P1 -> -I k0, P2 -> -I k0, P0R1 -> -2 I k0, ...}
```
创建 `bubble_de.m` 时，**不得**使用 `codeR/` 中的 `repvar`，必须使用上述统一版本。

### 3.2 指标偏移转换（repTopToR1R2）

笔记 Eq 15, 16 中 Top Sector 的时间偏导 IBP 算子（`ibp[_G, 1]` 和 `ibp[_G, 2]`）产生的 R1/R2 项带有物理偏移 `±2ν`：

```mathematica
R1[..., {a + a2 - 2nu - 1}, {b1 + 2nu + 1, b2}]
```

**关键**：在 `bubble_ibp_sym.m` 第 178 行的 `id // symmetry` 链中，这些带 `nu` 参数的 R1 积分在经过 `reppara2N` 替换（`a0 → 2nu, b0 → -2nu`）后，其指标会与 R1 本身的指标对齐。  
若后续在 `bubble_de.m` 中发现约化结果含有 `nu` 的多项式系数（而非纯有理数），则需检查此处替换是否正确执行。

### 3.3 jobs.yaml 中的 dlog 权重

`bubble_ibp_sym.m` 第 381-386 行的 `jobs.yaml` 生成循环**只标记 `G["dlog", _]` 类型**：

```mathematica
If[MatchQ[varsetP[[j]], G["dlog", _]],
  WriteString[streamjobs, "        - [1, ", j, "]\n"]
]
```

但 `MIdlogKira` 中前 14 个是 Top Sector 的 dlog 基（G 类型），后 7 个是 R1 Sector 的线性组合（含 `R1[__]`）。  
**需要验证**：R1 的 7 个 dlog 基在 `varsetP` 中是否被正确标记为 `G["dlog", i]`，还是作为普通 R1 积分存储。若后者，则 `jobs.yaml` 会遗漏 7 个权重，可能导致 Kira 选错主积分。

**检查方法**：
```mathematica
Count[varsetP, G["dlog", _Integer]]  (* 应为 21 *)
```

### 3.4 000_DE_bubble_tau.m 中的变量约定

此文件使用与 `bubble_ibp_sym.m` **不同的变量约定**：

| 变量 | 在 000_DE_bubble_tau.m 中 | 在 bubble_ibp_sym.m 中 |
|---|---|---|
| 外动量 | `P1`, `P2` | `P1 -> -I k0`, `P2 -> -I k0` |
| 质量参数 | `x1`, `x2` | `ks`（在 `ks=1` 处 evaluate） |
| Hankel 阶 | `v1` (连续参数) | `nu`（维数参数 `D=3-2ep`）|
| k0 类型 | `ki[0]` | `k0` |

在将 `OmegaFullpm` 与 `DEP0/DEks` 对比时，必须先做变量代换对齐。

### 3.5 OmegaFullpm 的行列顺序

`OmegaFullpm`（24×24）的行/列顺序为：
```
[Top_sector(16)] × [R1_sector(4)] × [R2_sector(4)]
```
其中 Top Sector 的 16 个分量来自 `{0,1}^4`（n1,n2,n3,n4 各取 0/1），R1 的 4 个来自 `{0,1}^2`（n3,n4 各取 0/1）。

**注意**：这与 `MIdlogNote` 中的 21 个 dlog 基**并非**1-to-1 对应，需要做基变换（由 dlog 基线性组合对应回 Omega 矩阵的坐标）。完整的对应关系需在 `bubble_de.m` 的 Section 3 中用提取出的 `DEP0` 来验证。

### 3.6 Kira 执行环境

Kira 在 WSL 中运行。`run.sh` 当前内容：
```bash
kira jobs.yaml > kira.log 2>&1
```
- 执行前确保 `kira_bubble/` 目录在 WSL 可见路径下（注意 Windows 路径 `D:\...` 需映射为 `/mnt/d/...`）
- 若系统有多核，可在 `jobs.yaml` 中添加 `num_threads: N` 加速
- 预计运行时间：10 分钟至 2 小时

---

## 4. 文件依赖关系图

```
main.pdf (笔记)
  ├─ Eq 15, 16 → ibp[_G, 1], ibp[_G, 2] in bubble_ibp_sym.m
  ├─ Eq 43     → symmetry[R2 → R1]      in bubble_ibp_sym.m
  ├─ Eq 72-79  → Omegan[n]             in 000_DE_bubble_tau.m
  └─ Sec 3.7.2 → OmegaTopToR1/R2       in 000_DE_bubble_tau.m

bubble_ibp_sym.m (运行一次，已完成)
  ├─ 读取: OmegaR/OmegaR1.m, OmegaR/MIsR1.m
  └─ 导出: kira_bubble/result/{MIdlogNote.m, repkira2R1.m, repR12num.m,
                                derivative_rules_bubble.m}
           kira_bubble/{userSystem/ibp.kira, jobs.yaml, run.sh}

000_DE_bubble_tau.m（需补全导出，详见 Section 7）
  └─ 当前导出: Omegax2.m（仅 x2 分量，24 维，未折叠 R2）
  └─ 待导出:   OmegaFullBubble.m（完整矩阵，含所有 log 分量，折叠后 20 维）

[WSL] kira jobs.yaml（待运行）
  └─ 导出: kira_bubble/results/{kira_list.m, masters}

bubble_de.m（待创建）
  ├─ 读取: kira_bubble/results/kira_list.m
  ├─ 读取: kira_bubble/result/{MIdlogNote.m, derivative_rules_bubble.m,
                               repkira2R1.m, repR12num.m}
  └─ 导出: kira_bubble/result/{DEP0.m, DEks.m}
```

---

## 5. 参考对照表：文献公式 → 代码位置

### 5.1 笔记（main.pdf）

| 笔记位置 | 公式内容 | 代码文件 | 行号 |
|---|---|---|---|
| Section 3（n-fold vertex）| 积分族定义 | `bubble_ibp_sym.m` | 51-52 |
| Eq 15 | τ₁ 偏导 IBP 算子（含 R1/R2 剩余）| `bubble_ibp_sym.m` | 32 (`ibp[_G, 1]`) |
| Eq 16 | τ₂ 偏导 IBP 算子（含 R1/R2 剩余）| `bubble_ibp_sym.m` | 33 (`ibp[_G, 2]`) |
| 动量 IBP | ks 偏导 IBP 算子 | `bubble_ibp_sym.m` | 34-35 (`ibp[_G, 3/4]`) |
| Eq 43 | R2 → R1 对称性映射 | `bubble_ibp_sym.m` | 79 |
| Hankel EOM | H_ν^(1) → H_{ν-1}^(1) 递归 | `bubble_ibp_sym.m` | 64-73 (`id[]`) |
| Eq 72-79 | 通用 Omega_n 矩阵 | `000_DE_bubble_tau.m` | 661-663 (`Omegan[n]`) |
| Section 3.7.2 | Top→Sub 耦合矩阵 | `000_DE_bubble_tau.m` | 681-695 (`OmegaTopToR1/R2`) |
| 升维公式 | 1D→3D 维数提升 | `bubble_ibp_sym.m` | 145-163 (`repdimplus2[]`) |

### 5.2 dS_IBP 文献（dS_IBP.tex）

| 文献位置 | 公式内容 | 代码文件 | 行号 |
|---|---|---|---|
| Eq (2.19) | n-fold vertex integral 族定义 | `000_DE_bubble_tau.m` | 34-38（注释中） |
| Eq (3.2)-(3.3) | IBP 矩阵 M₀, M₁ | `000_DE_bubble_tau.m` | 654-656 (`M0n`, `M1n`) |
| Eq (3.5) | 基变换矩阵 T | `000_DE_bubble_tau.m` | 643 (`T0`) |
| Eq (3.9)-(3.10) | A₋, A₊ 迭代约化算子 | `000_DE_bubble_tau.m` | 658-659 (`Amn`, `Apn`) |
| Eq (3.15)-(3.16) | **通用 dlog Omega 矩阵公式** | `000_DE_bubble_tau.m` | 661-663 (`Omegan[n_]`) |
| Eq (3.22)-(3.23) | G±± 产生剩余项（sub-sector 起源）| `000_DE_bubble_tau.m` | 672（注释）|
| **Eq (3.27)** | **Top→Sub 非对角耦合 Ω 矩阵** | `000_DE_bubble_tau.m` | 681-695 |

---

## 6. 完成后验收标准

- [ ] `kira_bubble/results/kira_list.m` 存在且非空
- [ ] `kira_bubble/results/masters` 列出 ≤21 个主积分，均属于 `MIdlogNote`
- [ ] `bubble_de.m` 可无错误运行
- [ ] `DEP0` 和 `DEks` 均为 21×21 矩阵，元素为有理函数（in k0, ks, nu, ep）
- [ ] Scaling Check 通过
- [ ] `DEP0`/`DEks` 的对角块结构与 `OmegaFullBubble.m` 的相应子块一致（差一个基变换）
- [ ] `000_DE_bubble_tau.m` 补全后导出 `OmegaFullBubble.m`（折叠 R2 后 20 维完整矩阵）

---

## 7. 关键专题：完整 τ 积分 Omega 矩阵的构造与实现

> 这是本项目目前**理解难度最高、最需要专项说明**的部分。

### 7.1 为什么需要完整的 τ 积分 Omega 矩阵

泡泡图的完整 dlog 被积函数形如：

```
d(Ω_full) · f = d(Ω_tau + Ω_kin) · f
```

其中：
- **Ω_tau** = 关于共形时间积分 τ 的 Omega 矩阵（即 000_DE_bubble_tau.m 计算的对象）
- **Ω_kin** = 关于外部运动学变量（k₀, kₛ）的 Omega 矩阵（由 bubble_de.m 从 Kira 提取）

`codebubble_top` 中的 `Omegax2.m` 只含有 **Top Sector 的 16×16 子块**（τ 积分对 log(x2) 的贡献），缺少 R1/R2 子 sector 的非对角耦合项。这在树图中（只有 Top Sector 时）是完整的，但泡泡圈图中 Top Sector 通过 IBP 产生 R1/R2 积分，因此**必须包含这些非对角耦合项**。

### 7.2 泡泡图 τ 积分的结构（与树图的区别）

**树图（dS_IBP 文献的主要讨论对象）**：
- 时间积分上有单一的从 -∞ 到 0 的积分 `∫₋∞⁰ dτ`
- IBP 算子对 τ 求导后无边界项（被积函数在 τ→0⁻ 和 τ→-∞ 处均消失）
- Sub-sector 来自两个外线同时"退化"（`G±± → R`）

**泡泡圈图**：
- 有两个顶点，时间积分为 `∫₋∞⁰ dτ₁ ∫₋∞⁰ dτ₂`，但受传播子的时序限制（`θ(τ₁-τ₂)` 或 `θ(τ₂-τ₁)`）
- 对 τ 积分的 IBP 时，**对阶跃函数 θ 求导产生 δ 函数**，将一个传播子收缩：
  ```
  ∂_τ₁ [θ(τ₁-τ₂) f(τ₁,τ₂)] = δ(τ₁-τ₂) f(τ₂,τ₂) + θ(τ₁-τ₂) ∂_τ₁ f(τ₁,τ₂)
  ```
- δ(τ₁-τ₂) 项将 `∫dτ₁∫dτ₂ → ∫dτ₂`，即从双 τ 积分退化到单 τ 积分，这正是 **R1/R2 族的 τ 积分**

**这一物理机制在代码中的体现**：
- `ibp[_G, 1]` 和 `ibp[_G, 2]`（对应笔记 Eq 15, 16）中的 KroneckerDelta 项就是这个 δ(τ₁-τ₂) 项的离散类比
- 当 `n1+n2 = 1`（即一个 Hankel 指标为 0，另一个为 1 时，代表 `h(ν,0) · h(ν,1)` 的乘积）才会出现这种收缩

因此：**τ 积分的 Omega 矩阵不仅要包含每个顶点自身的 Omega，还必须包含由 δ 函数收缩产生的 Top→R1、Top→R2 非对角耦合矩阵。**

### 7.3 dS_IBP 文献中的关键公式（Eq 3.27）及其应用

**文献 Eq (3.27)** 给出了 Top Sector 对 R1/R2 Sub-sector 的 Omega 矩阵耦合元素：

```
Ω_{(a,b)(c_î,d_ĵ)} = -i Σ_cᵢ (T_n^{-1} Ω̃_{0;1} T_n)_{a,{1-bⱼ,cᵢ}} δ_{b̂ⱼ,d̂ⱼ} (-1)^{bⱼ}
                    - i Σ_dⱼ (T_n^{-1} Ω̃_{0;2} T_n)_{b,{dⱼ,1-aᵢ}} δ_{âᵢ,ĉᵢ} (-1)^{aᵢ}
```

其中：
- `(a,b)` 是 Top Sector 的双指标（各为 `{0,1}^2`，组合成 4 个值）
- `(c_î, d_ĵ)` 是 R1 或 R2 Sub-sector 的单指标
- `T_n` 是 dS_IBP Eq (3.5) 中的基变换矩阵（代码中的 `Tn[2]`）
- `Ω̃_{0;i}` 是第 i 个顶点的对角 log 矩阵（代码中的 `Omegatilde0n[2]`）

**在代码中的实现**（`000_DE_bubble_tau.m` 第 675-695 行）：

```mathematica
TinvOmegatildeT1 = -I * Tninv[2] . (Omegatilde0n[2]/repknuset[...P1...]) . Tn[2];
TinvOmegatildeT2 = -I * Tninv[2] . (Omegatilde0n[2]/repknuset[...P2...]) . Tn[2];

OmegaTopToR1[ia,ib,ic,id] =
  TinvOmegatildeT1[[ia, bin2idx[{1-b[1], c2}]]] * KroneckerDelta[b[2], d2] * (-1)^b[1]
+ TinvOmegatildeT2[[ib, bin2idx[{1-a[1], d2}]]] * KroneckerDelta[a[2], c2] * (-1)^a[1]
```

这正是 Eq (3.27) 的离散化实现，将 (4×4) Top 索引映射到 (2) R1/R2 索引。

**注意**：此公式在文献中是对树图 n-fold 顶点积分导出的，但其数学结构**对泡泡圈图同样适用**——泡泡图可以看作两个 2-fold（n=2）顶点积分通过公共动量 k₀ 连接，每个顶点仍然服从相同的 τ 积分 IBP 结构，产生 Sub-sector 的机制也相同（阶跃函数导数 → delta 函数 → 收缩）。

### 7.4 000_DE_bubble_tau.m 的补全方案

#### 现状

当前文件：
- 已正确计算 `OmegaFullpm`（24×24，含 Top 16 + R1 4 + R2 4 的完整 τ Omega 矩阵）
- 仅导出了 `Omegax2.m`（将 `log(c) /; c===x2 → Log[c]`，其他 log 置零的分量）
- 未做 R2→R1 折叠

#### 需要补充的代码

在 `000_DE_bubble_tau.m` 末尾（`Export["./Omegax2.m", ...]` 之后）添加：

```mathematica
(* Step 1: 提取所有 log 分量的系数矩阵 *)
(* OmegaFullpm 含有 log[P1+x2-x1], log[P1+x1-x2], log[P2+...], log[x1], log[x2] 等项 *)
(* 需要确定实际出现的所有 log 变量 *)
logVarsTopR1 = {P1, P2, x1, x2, P1+x1+x2, P1-x1+x2, P1+x1-x2, P1-x1-x2,
                              P2+x1+x2, P2-x1+x2, P2+x1-x2, P2-x1-x2};
(* 实际应从 OmegaFullpm 中 Cases[#, log[_], Infinity] 提取 *)

(* Step 2: 折叠 R2 → R1（即把 R2 行/列加到 R1 行/列） *)
(* OmegaFullpm 维度: Top(1:16) + R1(17:20) + R2(21:24) *)
(* 折叠后维度: Top(1:16) + R1+R2折叠(17:20) = 20×20 *)
(* 折叠规则: 由对称性 R2[{n1,n2},a,{b1,b2}] = R1[{n1,n2},a,{b1,b2}] *)
(* 即 OmegaFolded[i,j] = OmegaFullpm[i,j] + OmegaFullpm[i+4,j] (对 R2 列) *)
(* ... (需根据实际 Eq 43 对称性仔细处理) *)

(* Step 3: 导出完整折叠后矩阵 *)
Export["./OmegaFullBubble.m", OmegaFolded];
```

**注意事项**：折叠的具体方式需要确认 Eq 43 的精确形式：
```mathematica
R2[{n1,n2},{a},{b1,b2}] → R1[{n1,n2},{a},{b1,b2}]
```
这意味着 R2 行/列直接加到对应的 R1 行/列上（相同 n1,n2 和 b1,b2 指标），而不是简单的行/列相加——需要按指标逐一对应。

#### 当前是否需要完整导出

`bubble_de.m` 提取 `DEP0`/`DEks` **不直接依赖** `OmegaFullBubble.m`（它从 Kira 结果提取）。`OmegaFullBubble.m` 主要用于：
1. 构造 dlog 被积函数形式（`d·Ω_tau + d·Ω_kin` 的合并检验）
2. 验证 `DEP0`/`DEks` 结果正确性（通过对比两种方法）

因此，**可先运行 Kira → 创建 bubble_de.m，之后再完善 000_DE_bubble_tau.m 的导出部分**。

### 7.5 dlog 基与 τ Omega 矩阵的维度对应

| 空间 | 维度 | 来源 |
|---|---|---|
| τ Omega 矩阵（原始）| 24 = 16+4+4 | Top(n1n2n3n4∈{0,1}⁴) + R1(n3n4) + R2(n1n2) |
| τ Omega 矩阵（R2 折叠）| 20 = 16+4 | 折叠 R2→R1 后 |
| dlog 基积分 | 21 = 14+7 | 14 Top dlog + 7 R1 dlog（含升维）|

注意 20 ≠ 21，这是因为：
- 14 个 Top dlog 基是 16 维 τ 空间中的 14 个特殊线性组合（含升维 `repdimplus2`）
- 7 个 R1 dlog 基是 4 维 R1 τ 空间中的 7 个线性组合（4 个 3D 基 + 4 个 1D 基再经升维，最终选出 7 个）
- 两者的基变换矩阵 T_basis 将 τ Omega 矩阵的 20 维空间映射到 dlog 基的 21 维空间（某些方向被合并或展开）

**这个映射关系需要在 `bubble_de.m` 最后的验证步骤中显式构造和确认。**

---

## 8. varsetP 积分排序规则（Integral Ordering）

> 此排序决定了 Kira 中每个积分的编号（Tuserweight[i]），直接影响主积分选取。
> **dlog 基必须排在最前面**（最小编号），否则 Kira 可能将其约化为零。

### 8.1 排序层级（SortBy key，升序）

所有积分统一生成排序键后由 `SortBy` 升序排列。排序键为一个固定长度的列表，逐元素比较：

| 层级 | 字段 | 说明 |
|---|---|---|
| 0 | 类别优先级 | `0` = dlog 基（G["dlog", i]）；`1` = 非 dlog 的 G 或 R1；`9` = 其他 |
| 1 | 权重 / dlog 编号 | dlog：`i`；非 dlog：`Σ|a_i| + Σ|b_i|`（若存在负指标则额外 +400） |
| 2 | 族优先级 | dlog：`0`；G：`1`；R1：`2`。**保证同权重下 G 排在 R1 之前** |
| 3 | a 指标和 | G：`a1+a2`；R1：`a`；dlog：`0` |
| 4-5 | 各 a 指标 | G：`a1, a2`；R1：`a, 0` |
| 6-7 | 各 b 指标 | `b1, b2` |
| 8-11 | 离散 Hankel 标号 | G：`n1, n2, n3, n4`；R1：`n3, n4, 0, 0` |

### 8.2 与 codeR1 的区别

- codeR1 只有 R1 族，排序键为 `{1, Σ|a|+Σ|b|+penalty, a, b1, b2, n3, n4}`，dlog 优先级为 `{8, i}`。
- codebubble 新增：
  1. **dlog 优先级改为 `{0, i, ...}`**（排最前），而非 codeR1 的 `{8, i}`。
  2. **引入族优先级字段**（层级 2）：G = 1, R1 = 2，确保同权重下 G 排在 R1 前面。
  3. **统一排序键长度为 12**，G 和 R1 用零填充对齐，使 SortBy 可正确逐元素比较。

### 8.3 实现方式

直接在 `SortBy` 的比较函数中为 G 和 R1 分别构造 12 元素的排序键列表，
利用 `Which` 分派不同积分类型。不需要中间 Gtemp 包装。

### 8.4 全数值试探方案（Kira 约化加速）

当需要快速验证微分方程标度关系时，可将所有参量（nu, ep, k0/P0）均取为有理数。
此时必须在 ibp.kira 末尾追加一条辅助方程 `(N+1)*(ccc)` 引入虚拟符号参量 ccc，
否则 Kira/FireFly 可能产生退化结果（所有积分约化为零）。
详见 `.trae/skills/kira-manager/SKILL.md` 中"数值试探特别规则"。

---

## 9. 函数与操作符合并规则（原 README_MERGE.md Section 2）

> 合并 `bubble_ibp_sym.m` 时，不能简单把 `codebubble_top` 和 `codeR1` 的代码拼在一起，
> 必须让函数支持重载（Pattern Matching）。
>
> **核心原则**：严格遵守原始参考脚本（`0000 ibp_1L2p_sym.nb`）的步骤数量与命名规则，
> 绝不能擅自生造新的算子或步骤。所有公式的补充必须准确落实到原始步骤对应的函数中
> （如公式 15、16 实际上是对时间偏导算子 ibp 1 和 ibp 2 的剩余项修正）。

### 9.1 IBP 算子 `ibp[expr, i]`
- `ibp[expr_G, i]`：Top sector 的 4 个算子（i=1,2 为时间偏导，i=3,4 为动量偏导）。
  - i=1,2 基于笔记 Eq 15, 16，包含 R1/R2 剩余项（KroneckerDelta 项）。
- `ibp[expr_R1, i]`：R1 sector 的 3 个算子。
- Top sector 算子中产生的 R1/R2 项必须显式调用降阶映射。

### 9.2 降阶映射 `id[expr]` & EOM
- Top Sector 的 `id`（缩并、零积分剔除等）。
- R1 Sector 的 Hankel EOM `id[expr_R1]`（将 `n=2` 递归到 `n=0,1`）。

### 9.3 对称性 `symmetry[expr]`
- Top Sector 内部对称性（n1↔n2, n3↔n4）。
- R1 Sector 内部对称性（n3↔n4）。
- **跨 Sector 对称性（Eq 43）**：所有 `R2` 转化为 `R1`。

### 9.4 升维映射 `repdimplus2[expr]`
- 分别处理 `G` 积分和 `R1` 积分的升维。

### 9.5 偏导数算子 `dk0`, `dks`
- `dk0[expr]` 和 `dks[expr]` 内部需包含针对 `_G` 和 `_R1` 的不同 `dk0Term` / `dksTerm`。

---

## 10. IBP 指标范围（原 README_MERGE.md Section 3）

为保证 Kira 能约化，同时不产生过多无用方程，需严格参考 `0000 ibp_1L2p_sym.nb` 测试出的 Top Sector 范围：

### 10.1 Top Sector（G）

- **a1, a2**: 下限 `aMin` (-2)，上限 `aMax` (3)
- **b1, b2**: 下限 `bMin` (0)，上限 `bMax` (4)

四条 IBP 算子各自对指标范围做不同 shift：

| 算子 | a1 范围 | a2 范围 | b1 范围 | b2 范围 |
|---|---|---|---|---|
| ibp 1（时间1）| `[-1-aMin, 2+aMax]` | `[-2-aMin, 2+aMax]` | `[-1-bMin, 2+bMax]` | `[-1-bMin, 2+bMax]` |
| ibp 2（时间2）| `[-2-aMin, 2+aMax]` | `[-1-aMin, 2+aMax]` | `[-1-bMin, 2+bMax]` | `[-1-bMin, 2+bMax]` |
| ibp 3（动量1）| `[-2-aMin, 1+aMax]` | `[-2-aMin, 1+aMax]` | `[0-bMin, 2+bMax]` | `[-1-bMin, 0+bMax]` |
| ibp 4（动量2）| `[-2-aMin, 1+aMax]` | `[-2-aMin, 1+aMax]` | `[-1-bMin, 0+bMax]` | `[0-bMin, 2+bMax]` |

### 10.2 R1 Sector

- **a**: `[-4, 6]`
- **b1, b2**: `[-4, 6]`

对应 3 条 IBP 方程的指标 shift 规则与 R1 独立生成时一致。

### 10.3 参量 `da`

`reppara2N` 中 `da` 已移除（直接取 `da=0`），简化约化复杂度。

---

## 11. 目录与文件结构

- `bubble_ibp_sym.m`：IBP 方程生成、对称性约化、Kira 输入文件导出
- `bubble_de.m`：加载 Kira 约化结果、构建 DE 矩阵、Scaling Check
- `000_DE_bubble_tau.m`：τ 积分 Omega 矩阵（含 sub-sector 耦合）
- `kira_bubble/`：WSL Kira 运行的工作目录
  - `kira_bubble/result/`：导出的 dlog 基、映射表、参数
  - `kira_bubble/results/`：从 WSL 取回的 `kira_list.m` 和 `masters`
- `OmegaR/`：R1 sector 的 Omega 矩阵和验证脚本

> **备忘**: 编写 `bubble_ibp_sym.m` 时，分为清晰的 `(* ::Section:: *)`，并在每个 Section 内保留充足空行，以便 Mathematica 正确识别单元格。

