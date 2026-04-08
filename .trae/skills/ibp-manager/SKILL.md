---
name: "ibp-manager"
description: "使用 WolframScript 管理 IBP 系统生成与导出。生成种子、试探IBP指标范围、导出到 Kira、或调试 IBP 关系时调用。"
---

# IBP 管理（Mathematica/WolframScript）

本技能用于管理 Mathematica 侧的 IBP 关系生成、导出与一致性检查。

## 适用场景
- 用户要求“生成 IBP 系统”
- 用户要求“导出到 Kira”
- 用户遇到 WolframScript 错误（如 `Get::stream`）
- 用户希望加入或调试 IBP以及其他约化关系

## 脚本编写规范（重要）
1.  **id 与 symmetry 顺序**：
    - 必须遵循 `expr // id // symmetry`。
    - 原因：`id` 可能产生非标准项，必须紧接 `symmetry` 映射回标准形式。反序会导致非标准项残留，约化不完全。
2.  **系数导数**：
    - 对积分求参数导数（如 `dks`）时，**必须**包含系数的导数项 `D[expr, ks]`，不能只对积分算符求导。

## 复用原则
- 前一脚本中需要在后续脚本复用的内容，必须在前一脚本导出文件，后续脚本通过 `Get` 加载，避免重复手写。
- 复用内容统一放在 `result/`，参数、基底、映射、导数规则各自独立文件。

## 本项目脚本分工（以项目名为R1为例）
- `R1_ibp_sym.m`：生成 IBP 系统、基底选择、排序与编号、导出 Kira 输入与复用文件
- `R1_ibp_sym_check.m`：逐步输出与抽检
- `R1_de_sym.m`：读取复用文件与 Kira 结果，重建 DE 并一致性检查
- `kira_R1/result/`：参数、基底、映射、导数规则等复用产物
- `kira_R1/results_wsl/`：Kira 输出结果（约化规则与主积分列表）

## 通用流程
1. 统一表达式规范（对称化、EOM/动量学关系、奇偶性筛选等）
2. 生成 IBP 关系并叠加非 IBP 约化关系
3. 选择目标积分集合（主积分/DE 需求积分/指定候选集）
4. 排序与编号，导出 `userSystem/ibp.kira` 与 `list`
5. 导出 `result/` 中的参数、基底、映射、导数规则等复用文件
6. 复现与检查（DE 矩阵、缩放关系、余项归零）

## 常见修复

#### "Get::stream" 错误
- **现象**：`Get::stream: (filename) . m is not a string, SocketObject, ...`
- **原因**：WolframScript 路径解析问题。
- **修复**：使用 `FileNameJoin[{Directory[], "filename"}]`。

#### "Momentum IBP seed range empty"
- **现象**：seed 范围警告。
- **修复**：检查 `getSeedRanges` 逻辑。

## 指标范围试探策略
使用 `ibp-range-probing` 技能。
