# eu-ai-act-eligible

A Claude Code skill that scans the project it runs in and produces an **EU AI Act**
(Regulation (EU) 2024/1689) applicability report. For each requirement the report gives:

- whether the project is subject to it: **Yes / No / Possibly**
- the rationale, with evidence as `file:line`
- the actions needed for compliance: code changes and organisational steps

It also includes an executive summary (role, risk class, AI inventory), a timeline, a prioritised
action plan (P0/P1/P2) and a disclaimer.

## Install

```bash
./install.sh
```

This symlinks `skills/eu-ai-act-eligible` into `~/.claude/skills/`.

## Use

In any project, run `/eu-ai-act-eligible`, or ask "is this project subject to the EU AI Act?".

The skill first asks four questions:

1. Chat language (default: English)
2. Report language (default: English)
3. Report file (default: `./eu-ai-act-eligible.md`)
4. Search tools: built-in only (the default), or additional indexers or MCP servers

Next it checks the built-in reference against the web for regulatory updates, such as the Digital
Omnibus. Then it scans the code, asks follow-up questions about business context that the code
can't answer (EU market, role, intended purpose), writes the report, and shows a summary in chat.

The skill is read-only: it only writes the report file.

After the first run in your project, you can review a report, and/or ask your AI to bring the project into compliance right from the session.

## Layout

```
skills/eu-ai-act-eligible/
├── SKILL.md                       # workflow
└── references/
    ├── requirements.md            # R01–R24 catalogue, decision logic, deadlines
    ├── detection-patterns.md      # what to search for
    └── report-template.md         # report structure
```

## Caveats

- The reference snapshot reflects the law as of May 2026. Each run checks the web for amendments,
  but keep `references/requirements.md` up to date.
- The report is not legal advice.
