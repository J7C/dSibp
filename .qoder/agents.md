# Qoder Agents 配置

本文件记录项目中的所有代理（Agents）定义和项目级规则。

---

## 项目上下文

**项目名称**：dSibp（de Sitter Integration-By-Parts）

**主参考文档**：`project_context/Manual.md`

---

## 项目级规则

### 文档规则
- **技能优先**：凡涉及具体操作（Kira、IBP、DE、LaTeX），优先查阅对应 Skill 的说明。
- **避免重复**：规则与流程应尽量记录在 Skill 中，文档只保留物理笔记与项目级概览。

### 安全规则
1. **Kira 工作流免确认**：
   - 运行 Kira 命令时，**无需确认**，直接执行。
   - 复制 Kira 输入/输出文件时，**无需确认**，直接执行。
   
2. **其他 WSL 操作**：仍需确认。

### 环境规则
- 详见 `kira-manager` 技能说明。
- 每次 `wsl bash -c` 需重新导出 `FERMATPATH`。

---

## Agents 列表

当前项目未定义专门的子代理（Subagents）。所有功能通过 Skills 实现。

如需创建专门的子代理处理特定任务（如文献下载、IBP自动化等），可使用 Qoder 的 Task 工具创建。

---

## 相关文件

| 文件 | 描述 |
|------|------|
| `AGENTS.md` | 项目根目录的全局代理配置 |
| `.qoder/skills.md` | Qoder 专用技能记录 |
| `.trae/skills/*/SKILL.md` | 技能定义文件（源） |

---

## 使用说明

Qoder AI 助手在执行任务时应：
1. 首先查阅 `AGENTS.md` 了解项目级规则
2. 根据任务类型调用对应的 Skill
3. 遵循各 Skill 中定义的规范和流程
