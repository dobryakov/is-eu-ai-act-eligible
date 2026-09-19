# Report template

Fill this in **in the report language**. Translate every heading, label and status word. Keep
article numbers, file paths, identifiers and URLs as they are. Replace each `<…>` placeholder.
Remove the guidance comments (`<!-- … -->`).

Status words: **Yes** = the project is subject to the requirement · **No** = it is not · **Possibly**
= it depends on an unresolved fact.
Priority: **P0** = applies and already in force or overdue · **P1** = applicable within 12 months ·
**P2** = later · **Clarify** = resolve the open question first.

---

```markdown
# EU AI Act Applicability Report: <project name>

| | |
|---|---|
| Project path | `<absolute path>` |
| Version / commit | `<git short SHA or "n/a">` |
| Report date | <YYYY-MM-DD> |
| Regulation | Regulation (EU) 2024/1689 (AI Act)<, as amended by … if the web check confirmed amendments> |
| Reference basis | Built-in catalogue (snapshot May 2026) + web verification on <date> / "web verification unavailable" |
| Search tools used | <Built-in / + names> |

> **Disclaimer.** This report was produced automatically by static analysis of the source code and
> the answers given by the user. It is not legal advice. Have a qualified lawyer review any
> requirement marked Yes or Possibly under Art. 5 and Art. 6–27 before you rely on it.

## 1. Executive summary

- **In scope of the AI Act:** <Yes / No / Possibly>. <One sentence on why.>
- **Role(s):** <provider of an AI system / deployer / GPAI model provider / …>
- **Risk class:** <Prohibited practice / High-risk (Annex III §x or Annex I) / Limited risk (transparency, Art. 50) / Minimal risk / GPAI (with or without systemic risk)>
- **Requirements that apply:** <n> Yes · <n> Possibly · <n> No
- **Top actions:**
  1. <action> (<R-ID>, <priority>)
  2. <action> (<R-ID>, <priority>)
  3. <action> (<R-ID>, <priority>)
- **Nearest deadline:** <date>: <what>

## 2. AI inventory

| # | Component | Type | Purpose / output | Affected persons | User-facing | Evidence |
|---|-----------|------|------------------|------------------|-------------|----------|
| 1 | <name> | <GPAI via API / own model / classic ML / …> | <…> | <…> | <yes/no> | `<path:line>` |

<!-- If nothing was found, write one sentence saying so. Also list components that were considered and ruled out as "not an AI system under Art. 3(1)", with the reason. -->

## 3. Scope and role determination

| Question | Answer | Source |
|----------|--------|--------|
| AI system under Art. 3(1)? | <…> | <evidence / user answer> |
| EU market / output used in EU? | <…> | <…> |
| Role | <…> | <…> |
| Provider established outside EU? | <…> | <…> |
| Exclusions under Art. 2 (military, R&D, personal use, open-source) | <…> | <…> |
| Intended purpose and affected persons | <…> | <…> |

## 4. Requirements matrix

| ID | Requirement | Article(s) | Applies? | Applies from | Priority |
|----|-------------|-----------|----------|--------------|----------|
| R01 | Scope and AI-system qualification | Art. 2, 3(1) | <Yes/No/Possibly> | 1 Aug 2024 | <…> |
| R02 | Prohibited AI practices | Art. 5 | | 2 Feb 2025 | |
| R03 | High-risk classification | Art. 6, Annex I/III | | <…> | |
| R04 | Risk management system | Art. 9 | | | |
| R05 | Data and data governance | Art. 10 | | | |
| R06 | Technical documentation | Art. 11, Annex IV | | | |
| R07 | Record-keeping and logging | Art. 12, 19, 26(6) | | | |
| R08 | Transparency and instructions for use | Art. 13 | | | |
| R09 | Human oversight | Art. 14 | | | |
| R10 | Accuracy, robustness, cybersecurity | Art. 15 | | | |
| R11 | QMS, conformity assessment, CE, registration | Art. 16–18, 43, 47–49 | | | |
| R12 | Post-market monitoring and incidents | Art. 72, 73 | | | |
| R13 | Authorised representative | Art. 22 | | | |
| R14 | Value-chain role changes | Art. 25 | | | |
| R15 | Deployer obligations (high-risk) | Art. 26, 86 | | | |
| R16 | Fundamental rights impact assessment | Art. 27 | | | |
| R17 | Disclosure of interaction with AI | Art. 50(1) | | 2 Aug 2026 | |
| R18 | Machine-readable marking of synthetic content | Art. 50(2) | | 2 Aug 2026 | |
| R19 | Notice for emotion recognition / biometric categorisation | Art. 50(3) | | 2 Aug 2026 | |
| R20 | Deepfake / public-interest text disclosure | Art. 50(4) | | 2 Aug 2026 | |
| R21 | GPAI model provider obligations | Art. 53 | | 2 Aug 2025 | |
| R22 | GPAI authorised representative | Art. 54 | | 2 Aug 2025 | |
| R23 | GPAI models with systemic risk | Art. 51, 52, 55 | | 2 Aug 2025 | |
| R24 | AI literacy | Art. 4 | | 2 Feb 2025 | |

## 5. Requirement details

<!-- One subsection per requirement, in ID order. For "No", keep it to the Status and Why lines. -->

### R<NN>: <Requirement> (<Article>)

**Status:** <Yes / No / Possibly> · **Applies from:** <date> (<in force / upcoming>) · **Priority:** <P0/P1/P2/Clarify>

**Why:** <1–3 sentences linking the facts to the legal test.>

**Evidence:**
- `<path:line>`: <what it shows>
- User answer: <…>

**Current state:** <what already exists toward compliance, with citations, or "nothing found">

**Required actions:**
- [ ] **Code:** <concrete change> (`<path:line>`)
- [ ] **Docs / process:** <concrete deliverable>

**To resolve "Possibly":** <the exact fact that would settle it> <!-- only when the status is Possibly -->

## 6. Action plan

### P0: now (already applicable)
- [ ] <action> (<R-ID>)

### P1: within 12 months
- [ ] <action> (<R-ID>, due <date>)

### P2: later
- [ ] <action> (<R-ID>, due <date>)

### Clarify
- [ ] <question> → affects <R-IDs>

## 7. Assumptions and open questions
- <assumption made and why>
- <open question>

## 8. Regulatory updates and sources
- <Update found during web verification, with date and URL, or "No updates verified (web unavailable)">
- Regulation (EU) 2024/1689: https://eur-lex.europa.eu/eli/reg/2024/1689/oj
- <other sources actually used>
```
