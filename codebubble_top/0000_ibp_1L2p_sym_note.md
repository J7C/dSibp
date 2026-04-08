# 0000 ibp_1L2p_sym.m 结构与段落目的梳理

## 1. 初始化与基础工具
- SetDirectory[NotebookDirectory[]]：保证读写都在脚本所在目录。
- listcal：对积分指标做位移的统一工具，后续所有 IBP/导数/对称化都复用它。

## 2. 四类 IBP 生成器（ibp[expr_, i]）
- i=1,2：对应对时间变量的 IBP，分别作用于两个时间点。
- i=3,4：对应动量 IBP，两条动量关系同时生成。
- 结构特点：所有关系都用 listcal 实现指标平移，避免直接写新积分。

## 3. EOM 约化与对称化
- id：将 Hankel 指标 n=2 的积分用 n=0,1 替换，保证系统只含 n=0,1。
- symmetry：把对称等价的积分统一到同一代表，减少变量数。

## 4. 奇偶性筛选子系统
- reppowerselection：把不满足 (n1+n2+b1) 与 (n3+n4+b2) 同时为偶数的积分置零。
- 作用：仅保留需要的 parity 子系统，减少 Kira 规模。

## 5. 维度升阶与 dlog 基底构造
- repdimplus2：在维度升阶后对表达式重写，保留可用于 dlog 的组合。
- basisd3 / basisd1 / basisd123 / basisd32 / basisd12：不同维度与不同 building block 下构造候选 dlog 基底。
- 作用：在 Kira 中把候选 dlog 作为“主积分”优先级，减少目标约化。

## 6. IBP 系统生成（IBPset）
- int00：定义最通用的 G 积分。
- repaddab0 / repab020：把 a0/b0 作为基线加入或移出，保证输出中积分只带整数指标。
- IBPset00：对 4 条 IBP 关系各写一次。
- IBPset0：把 n1,n2,n3,n4 限定在 0/1，配合 id/symmetry 保持系统最小。

## 7. a,b 指标范围的“先验证后拓展”逻辑
- 思路：先保证输出关系中所有 G 的 a,b 指标绝对值不超过 2，再向外拓展做完整约化。
- 参考脚本中的做法：通过对每类 IBP 的指标位移规律，反推出“输入种子范围”：
  - 时间 IBP：a→a-1、b2→b2-1  
    输入需满足 a≥aMin+1，b2≥bMin+1
  - 动量 IBP 1：a→a+1，b1→b1-2，b2→b2+2，b2→b2-1  
    输入需满足 a≤aMax-1，b1≥bMin+2，b2≥bMin+1 且 b2≤bMax-2
  - 动量 IBP 2：a→a+1，b1→b1+2，b2→b2-2，b2→b2-1  
    输入需满足 a≤aMax-1，b1≤bMax-2，b2≥bMin+2
- 具体实现：先设“目标范围”|a|,|b|≤2，再用上述反推得到可用 seed 范围；随后在脚本里额外扩展 aMin/aMax、bMin/bMax，生成更大的 IBP 系统。

## 8. Kira 导出与中间文件
- varsetP：提取并排序所有积分变量，统一编号为 Tuserweight。
- ctokb：写 userSystem/ibp.kira。
- listb：写 list。
- repkira2G / repG2num：Kira 编号与 Mathematica 积分的双向映射。

## 9. 约化结果与微分方程
- repreduce / repkira2G / repMIs20：导入约化结果并检查是否完全约化。
- dk0 / dks：对目标基底做 P0 与 ks 导数，得到 DE 系统需要的目标积分列表。

