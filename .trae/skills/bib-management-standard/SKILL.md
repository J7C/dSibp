---
name: "bib-management-standard"
description: "按照高能物理（INSPIRE-HEP）惯例标准化 .bib 文件条目。在添加、格式化或清理参考文献条目时调用。"
---

# 参考文献管理规范 (Bib Management Standard)

本技能用于确保所有 BibTeX 条目遵循项目既定的高能物理引用风格（INSPIRE-HEP 格式）。

## 引用键名格式 (Citation Key Format)
- 使用模式：`Author:Yearxxx`
- 示例：`Maldacena:1997re`, `Arkani-Hamed:2013jha`
- `Author`：第一作者的姓氏（首字母大写）。
- `Year`：4 位年份。
- `xxx`：3 字母标识符（通常来自 INSPIRE-HEP）。

## 条目结构与顺序 (Entry Structure & Ordering)
论文使用 `@article` 类型。字段顺序应如下：

1. `author` (作者名用 " and " 分隔)
2. `title` (必须包裹在 `"{...}"` 中以保留大小写)
3. `eprint` (arXiv 标识符)
4. `archivePrefix = "arXiv"`
5. `primaryClass` (例如 "hep-th", "hep-ph")
6. `reportNumber` (如果有)
7. `doi`
8. `journal`
9. `volume`
10. `number` (可选)
11. `pages` (范围使用双横线 `--`)
12. `year`

## 格式化规则 (Formatting Rules)
- **缩进**：4 个空格。
- **引号**：字段值使用双引号 `""`。
- **标题**：标题内容必须在引号内再加一层花括号：`title = "{Title Text}"`。

## 注释与分隔规则 (Comments & Grouping)

### 1. 区域（大块）分隔
用于区分不同主题的大块引用（如 "IBP", "Differential Equations"）。
- **格式**：`%` 后接至少 10 个连字符（`-`）包裹标题。
- **位置**：在每组主题引用的最上方。
- **示例**：
  ```bibtex
  %--------------------Hypergeometric function---------------------
  ```

### 2. 子主题说明（可选）
用于在大块区域下列出具体的引用键（Citation Key）列表，方便复制到tex中一起引用。
- **格式**：`%` 后接键名列表，逗号分隔。
- **位置**：紧接在区域分隔符下方。
- **示例**：
  ```bibtex
  %  Kotikov:1990kg,Kotikov:1991pm,Gehrmann:1999as,Bern:1993kr
  ```

### 3. 单条目行尾注释
用于对特定文献进行简短备注（如工具包名称、特定圈数、勘误信息等）。
- **格式**：在 `}` 闭合符号后加 `%` 和备注内容。
- **示例**：
  ```bibtex
  } %---MultiHypExp package
  ```
  或者：
  ```bibtex
  }   %~~~~~6,7-Loop
  ```

## 示例条目 (Example Entry)

```bibtex
%--------IBP------------
@article{Chetyrkin:1981qh,
    author = "Chetyrkin, K. G. and Tkachov, F. V.",
    title = "{Integration by Parts: The Algorithm to Calculate beta Functions in 4 Loops}",
    doi = "10.1016/0550-3213(81)90199-1",
    journal = "Nucl. Phys. B",
    volume = "192",
    pages = "159--204",
    year = "1981"
}

@article{Laporta:2000dsw,
    author = "Laporta, S.",
    title = "{High precision calculation of multiloop Feynman integrals by difference equations}",
    eprint = "hep-ph/0102033",
    archivePrefix = "arXiv",
    doi = "10.1142/S0217751X00002159",
    journal = "Int. J. Mod. Phys. A",
    volume = "15",
    pages = "5087--5159",
    year = "2000"
}
```

## 使用指南 (Usage)
- 添加新论文时，尽可能请求 INSPIRE-HEP 的 BibTeX 条目，或手动格式化以匹配此标准。
- 将相关引用归类在注释标题下，保持文件结构清晰。
