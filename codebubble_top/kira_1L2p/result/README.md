# 结果文件夹说明文档

该文件夹包含 Kira 归约程序生成的IBP关系以及微分方程及相关结果文件。

## 文件列表及说明

| 文件名 | 说明 |
| :--- | :--- |
| **DEP0.m** | 对参数 `P0` 的微分方程矩阵。 |
| **DEdlogx.m** | 变量 `x` 的 dlog 形式微分方程。 |
| **DEks.m** | 对参数 `ks` 的微分方程矩阵。 |
| **MIs.m** | 主积分（Master Integrals）列表，定义了 `Tuserweight` 变量。 |
| **MIdlog.m** | 原始 dlog 基选取（1维、未升维状态），共14个主积分。 |
| **coefletter.m** | 字母系数矩阵，对应微分方程中的系数矩阵。 |
| **kira_list.m** | Kira 归约结果列表，将主积分 `Tuserweight` 表示为具体的积分形式。 |
| **letterlist.m** | 字母表（Alphabet），包含 dlog 形式中的对数参数。 |
| **repG2num.m** | 替换规则：将 `G` 函数映射为主积分编号 `Tuserweight`。 |
| **repkira2G.m** | 替换规则：将主积分编号 `Tuserweight` 映射为 `G` 函数形式。 |
| **masters** | 主积分编号及其对应的扇区或权重信息。 |

## 备注

- `.m` 文件均为 Mathematica 格式，可直接使用 Wolfram Language 加载。
