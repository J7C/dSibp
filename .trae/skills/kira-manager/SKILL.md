---
name: "kira-manager"
description: "在 WSL 上管理 Kira 的 IBP 约化流程，包含复制、权限修复、环境设置、执行与结果回收。凡涉及 Kira 均使用本技能。"
---

# Kira 管理（WSL）

本技能用于管理 Windows（宿主）与 WSL（执行环境）之间的标准 Kira IBP 约化流程。

## 适用场景
- 用户要求“进行约化”
- 用户要求“运行 Kira”
- 用户要求“部署/复制”文件到 WSL 做约化
- 用户要求“取回结果”
- 用户询问 `jobs.yaml`、`run.sh` 或 `FERMATPATH`

## 环境信息
- **WSL 用户**：`jiaqichen`
- **工作目录**：`/home/jiaqichen/000_working_space`
- **Kira 程序**：`/home/jiaqichen/Softwares/kira/bin/kira`
- **Fermat 路径**：`/home/jiaqichen/Downloads/ferl6/fer64`

## user-defined system 文件格式
- **必要文件**：`jobs.yaml`、`list`、`run.sh`、`userSystem/ibp.kira`
- **list**：每行一个积分编号（整数），不带多余文本
- **userSystem/ibp.kira**：
  - 每个方程块以空行分隔
  - 每行一个项，格式为 `编号*(系数)`，编号为整数
  - 系数允许符号参数与代数表达式（如 `da`、`nu`、`k0`、`ks`）
  - 方程块内所有项之和默认等于 0
- **jobs.yaml**：
  - `reduce_user_defined_system` 的 `input_system` 指向 `userSystem/`
  - `select_integrals` 中引用 `list`
  - 可选 `kira2math` 的 `target` 指向 `list`
- **run.sh**：
  - 删除过往约化临时文件（避免影响新约化导致错误）
  - 包含 `dos2unix` 以统一换行
  - 调用 Kira 执行约化

## 流程

### 1. 部署与准备（Windows -> WSL）
**目标**：在 WSL 中准备干净目录与所需输入文件。

1.  **确认输入**：需要 `jobs.yaml`、`run.sh`、`list`（必选清单）与 `userSystem/`（目录）。
2.  **创建目录**：
    ```bash
    wsl bash -c "mkdir -p /home/jiaqichen/000_working_space/<JOB_NAME>"
    ```
3.  **复制文件**：
    ```bash
    wsl bash -c "cp -r <WINDOWS_PATH>/userSystem /home/jiaqichen/000_working_space/<JOB_NAME>/"
    wsl bash -c "cp <WINDOWS_PATH>/{list,jobs.yaml,run.sh} /home/jiaqichen/000_working_space/<JOB_NAME>/"
    ```
4.  **修复权限**（关键）：
    ```bash
    wsl bash -c "cd /home/jiaqichen/000_working_space && ./workingspace_chmod"
    ```

### 2. 执行
**目标**：运行约化。

1.  **构造命令**：
    - 必须在同一会话中 `export FERMATPATH`
    - 必须使用 `run.sh`（负责 `dos2unix` 与清理）
    ```bash
    wsl bash -c "cd /home/jiaqichen/000_working_space/<JOB_NAME> && export FERMATPATH='/home/jiaqichen/Downloads/ferl6/fer64' && sh run.sh"
    ```
2.  **监控**：
    - 交互式则直接输出
    - 若阻塞，检查 `kira.log` 或 `kira.db` 是否生成

### 3. 回收结果（WSL -> Windows）
**目标**：将 IBP 规则取回 Windows 供 Mathematica 使用。

**规则**：
- **仅取回**：`kira_list.m` 与 `masters`（通常位于 `results/Tuserweight/` 下）。
- **忽略**：`kira.db`、日志文件、临时文件与其他中间产物。
- **必要性**：减少复制耗时，保持本地目录整洁。

1.  **复制回本地**：
    ```bash
    # 假设拓扑为 Tuserweight（dSibp 项目标准）
    wsl bash -c "cp /home/jiaqichen/000_working_space/<JOB_NAME>/results/Tuserweight/kira_list.m <WINDOWS_DEST>/"
    wsl bash -c "cp /home/jiaqichen/000_working_space/<JOB_NAME>/results/Tuserweight/masters <WINDOWS_DEST>/"
    # 严禁复制整个 results 目录，只取所需文件
    ```

## 数值试探特别规则
- **FireFly 开启**：当进行全数值 IBP 试探（rational parameters）时，**必须**在 `jobs.yaml` 中设置 `run_firefly: true`。
- **辅助方程**：必须增加额外方程 `n*(ccc)`（n=总积分数+1），否则 Kira 仅返回主积分 ID 而不返回系数。
- **至少一个符号参量**：Kira（配合 FireFly）在 `run_firefly: true` 模式下要求 ibp.kira 中至少存在一个非数值的符号参量。若所有运动学参量与物理参数均已取为有理数，则通过上述辅助方程引入一个虚拟符号参量（如 `ccc`）即可满足此要求。**否则即使约化流程正常完成（unreduced integrals: 0），结果可能全部退化为零。**
- **推荐的全数值试探方案**：将所有参量（nu, ep, k0/P0, ks 等）均取为有理数，加上辅助方程 `(N+1)*(ccc)` 引入虚拟参量。此方案比保留某个物理参量为符号量更快，因为 FireFly 仅需对单一无关参量 ccc 做有理重建，其结果中 ccc 不会出现在物理积分的约化系数中。

## 常见问题
- **Permission Denied**：是否运行了 `./workingspace_chmod`
- **Fermat not found**：是否在 `wsl bash -c` 中 `export FERMATPATH`
- **结果被截断**：检查 `jobs.yaml` 中 `maxIntegrals` 是否过小
- **找不到结果文件**：Kira 可能会在 `results/` 下建立拓扑子目录（如 `results/Tuserweight/`），请检查子目录。
