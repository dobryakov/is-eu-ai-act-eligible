# EU AI Act Applicability Report: ExampleCorp personal-brand marketing repo

| | |
|---|---|
| Project path | `/home/user/example-marketing` |
| Version / commit | `a1b2c3d4` |
| Report date | 2026-09-19 |
| Regulation | Regulation (EU) 2024/1689 (AI Act), as amended by the Digital Omnibus on AI — Regulation (EU) 2026/1744 (in force 27 Jul 2026) |
| Reference basis | Built-in catalogue (snapshot May 2026) + web verification on 2026-09-19 |
| Search tools used | Built-in (Grep/Glob/Read) + Bash ripgrep; local-notes indexer available |

> **Disclaimer.** This report was produced automatically by static analysis of the source code and
> the answers given by the user. It is not legal advice. Have a qualified lawyer review any
> requirement marked Yes or Possibly under Art. 5 and Art. 6–27 before you rely on it.

## 1. Executive summary

- **In scope of the AI Act:** **Yes** (limited-risk tier). The repo operates a content-production
  pipeline built on third-party generative AI (LLM text, image, video, voice) whose outputs are
  published publicly and read by an EU audience (Art. 2(1)(c)).
- **Role(s):** **Deployer** of third-party AI systems (GPAI text models via an LLM gateway, FLUX image
  model, Seedance video, ElevenLabs TTS). Not a provider of an AI system placed on the EU market,
  not a GPAI *model* provider (no training/fine-tuning).
- **Risk class:** **Limited risk** — transparency obligations under Art. 50 only. No prohibited
  practices (Art. 5), no high-risk use (Annex I/III).
- **Requirements that apply:** 3 Yes · 4 Possibly · 17 No
- **Top actions:**
  1. Add an AI-generation disclosure/label to published synthetic media (images, short-form video, TTS voiceover) — deployer duty for any deepfake-like content (R20, P0).
  2. Adopt a lightweight AI-literacy note + document the AI tools in use (R24, P0).
  3. Decide and document whether generated media depict real persons (deepfake test) and whether the `brand-expert` MCP is ever surfaced as an end-user chat (R17/R20 — resolve the Possibly).
- **Nearest deadline:** **already overdue** — Art. 50 transparency has applied since **2 Aug 2026**; Art. 4 literacy since **2 Feb 2025**.

## 2. AI inventory

| # | Component | Type | Purpose / output | Affected persons | User-facing | Evidence |
|---|-----------|------|------------------|------------------|-------------|----------|
| 1 | Channel-content polish pipeline | GPAI via API (LLM text models) | Generates + humanizes social/blog text published under author's name | the public (readers) | no (server cron) | `pipeline/text_rewrite.py:44`, `pipeline/llm_client.py:17` |
| 2 | Image generation (image-gen skill) | GPAI via API (FLUX.2 Klein) | Synthetic cover/hero images for posts & sites | the public | no | `skills/image-gen/scripts/generate.py:19` |
| 3 | Short-form video | GPAI via API (Seedance 1.5 I2V) | Synthetic 9:16 video | the public | no | `pipeline/video_render.py:187` |
| 4 | TTS voiceover | GPAI via API (ElevenLabs) | Synthetic speech audio (default stock voice, not a clone of a real person) | the public | no | `pipeline/tts.py:2`, `pipeline/tts.py:26` |
| 5 | `brand-expert` MCP | Rule-based content server (not an AI system under Art. 3(1)) | Serves static markdown/topic maps; the **consumer's** LLM generates dialogue | developers using MCP clients | indirect | `mcp-server/README.md:1`, `site/public/index.html:606` |
| 6 | Messaging control bot | Rule-based / classic | Author's own pipeline control & notifications (not a public assistant) | the author only | no | `pipeline/control_bot.py` |
| 7 | Resume/CV + vacancy pipeline | GPAI via API | Tailors the **author's own** CV to jobs they apply to | the author themself | no | `jobs/pipeline/`, `resume-writer` skill |

Ruled out as **not an AI system under Art. 3(1)**: the MCP server (#5, serves static files, no
inference), the control bot (#6, deterministic commands), and the analytics MCPs
(`tools/metrics-mcp`, `tools/traffic-mcp` — data plumbing).

## 3. Scope and role determination

| Question | Answer | Source |
|----------|--------|--------|
| AI system under Art. 3(1)? | Yes — several third-party generative AI systems are used | inventory #1–#4 |
| EU market / output used in EU? | Yes (conservative) — public EN/XX content on `example.com` / `example.net`, professional social networks, etc. is read in the EU (Art. 2(1)(c)) | `site/`, `promo/`, `pages/` |
| Role | **Deployer** of third-party AI systems | `pipeline/llm_client.py`, `pipeline/tts.py` |
| Provider established outside EU? | Yes — author operates from a non-EU country (timezone noted in project docs) | `PROJECT.md` (timezone), git author |
| Exclusions under Art. 2 (military, R&D, personal use, open-source) | None fully applies — content is professional and published (self-promotion). The CV pipeline (#7) is arguably personal use, but the marketing output is not. | repo purpose |
| Intended purpose and affected persons | Personal-brand marketing content generation; affected = the reading public. No decisions taken about individuals. | `PROJECT.md` |

## 4. Requirements matrix

| ID | Requirement | Article(s) | Applies? | Applies from | Priority |
|----|-------------|-----------|----------|--------------|----------|
| R01 | Scope and AI-system qualification | Art. 2, 3(1) | Yes | 1 Aug 2024 | P0 |
| R02 | Prohibited AI practices | Art. 5 | No | 2 Feb 2025 | — |
| R03 | High-risk classification | Art. 6, Annex I/III | No | 2 Dec 2027 (Annex III, post-Omnibus) | — |
| R04 | Risk management system | Art. 9 | No | — | — |
| R05 | Data and data governance | Art. 10 | No | — | — |
| R06 | Technical documentation | Art. 11, Annex IV | No | — | — |
| R07 | Record-keeping and logging | Art. 12, 19, 26(6) | No | — | — |
| R08 | Transparency and instructions for use | Art. 13 | No | — | — |
| R09 | Human oversight | Art. 14 | No | — | — |
| R10 | Accuracy, robustness, cybersecurity | Art. 15 | No | — | — |
| R11 | QMS, conformity assessment, CE, registration | Art. 16–18, 43, 47–49 | No | — | — |
| R12 | Post-market monitoring and incidents | Art. 72, 73 | No | — | — |
| R13 | Authorised representative | Art. 22 | No | — | — |
| R14 | Value-chain role changes | Art. 25 | No | — | — |
| R15 | Deployer obligations (high-risk) | Art. 26, 86 | No | — | — |
| R16 | Fundamental rights impact assessment | Art. 27 | No | — | — |
| R17 | Disclosure of interaction with AI | Art. 50(1) | Possibly | 2 Aug 2026 | Clarify |
| R18 | Machine-readable marking of synthetic content | Art. 50(2) | No | 2 Aug 2026 (marking); 2 Dec 2026 legacy grace | — |
| R19 | Notice for emotion recognition / biometric categorisation | Art. 50(3) | No | 2 Aug 2026 | — |
| R20 | Deepfake / public-interest text disclosure | Art. 50(4) | Possibly | 2 Aug 2026 (in force) | P0 |
| R21 | GPAI model provider obligations | Art. 53 | No | 2 Aug 2025 | — |
| R22 | GPAI authorised representative | Art. 54 | No | 2 Aug 2025 | — |
| R23 | GPAI models with systemic risk | Art. 51, 52, 55 | No | 2 Aug 2025 | — |
| R24 | AI literacy | Art. 4 | Yes | 2 Feb 2025 (in force) | P0 |

## 5. Requirement details

### R01: Scope and AI-system qualification (Art. 2, 3(1))
**Status:** Yes · **Applies from:** 1 Aug 2024 (in force) · **Priority:** P0
**Why:** The repo uses multiple third-party generative AI systems and publishes their output to a
public EU-reachable audience; as a deployer in a third country whose output is used in the Union,
Art. 2(1)(c) brings it into scope.
**Evidence:** `pipeline/text_rewrite.py:44`, `skills/image-gen/scripts/generate.py:19`,
`pipeline/tts.py:26`, `pipeline/video_render.py:187`.
**Current state:** an implicit AI inventory exists in `PROJECT.md` and `exports/README.md`.
**Required actions:**
- [ ] **Docs:** keep a one-page AI-system inventory (this table) with role = deployer.

### R02: Prohibited AI practices (Art. 5)
**Status:** No · **Why:** No manipulation causing significant harm, no social scoring, no biometric
categorisation, no face scraping, no emotion recognition. Marketing persuasion in published content
does not meet the Art. 5(a) threshold. The new Omnibus prohibition on non-consensual intimate imagery
/ CSAM is not implicated.

### R03: High-risk classification (Art. 6, Annex I/III)
**Status:** No · **Why:** No Annex I product safety component and no Annex III use. The CV/vacancy
pipeline (`jobs/pipeline/`) tailors the **author's own** application — they are the data subject, not
an employer screening other candidates — so Annex III §4 (employment) does not apply.

### R04–R16
**Status:** No · **Why:** Not a high-risk AI system (see R03). Provider and deployer high-risk
obligations, authorised representative, value-chain and FRIA duties are all conditional on R03 = Yes.

### R17: Disclosure of interaction with AI (Art. 50(1))
**Status:** Possibly · **Applies from:** 2 Aug 2026 (in force) · **Priority:** Clarify
**Why:** No public chatbot/voice UI owned by the author was found. The `brand-expert` MCP serves
static markdown and is consumed by third-party MCP clients (Claude Code, Cursor) that already present
themselves as AI; the messaging bot is the author's private control channel.
**Evidence:** `mcp-server/README.md:1` ("the consumer's LLM generates dialogue"),
`site/public/index.html:606` (endpoint published for MCP clients, not an embedded chat).
**Current state:** no end-user conversational interface.
**Required actions:**
- [ ] **Docs:** confirm the MCP is never re-surfaced as a first-party end-user chat widget; if it is, add an "you are interacting with AI" notice.
**To resolve "Possibly":** is any AI assistant ever exposed to end users under the author's own brand/UI?

### R18: Machine-readable marking of synthetic content (Art. 50(2))
**Status:** No · **Applies from:** 2 Aug 2026 · **Priority:** —
**Why:** Art. 50(2) places the machine-readable-marking duty on the **provider of the generating
system**, not on a deployer who uses it. The author uses FLUX / LLM gateway / Seedance / ElevenLabs; that
marking duty sits with those upstream providers. The deployer-side duty is R20.
**Note:** if the author ever released their own generative model/system under their name, this flips to Yes.

### R19: Notice for emotion recognition / biometric categorisation (Art. 50(3))
**Status:** No · **Why:** No emotion recognition or biometric categorisation systems are used.

### R20: Deepfake / public-interest text disclosure (Art. 50(4))
**Status:** Possibly · **Applies from:** 2 Aug 2026 (in force) · **Priority:** P0
**Why:** As a **deployer** generating image/video/audio, if any output is a *deep fake* (resembling
real persons and appearing authentic) it must be disclosed as AI-generated. Generic AI illustrations
are not deepfakes, but AI video/voiceover that portrays a person may qualify. For AI-generated **text**
on matters of public interest, disclosure is required *unless* there is human editorial review — which
this pipeline has (author approves via `publish_config.yaml`), so the text limb is likely exempt.
**Evidence:** `pipeline/video_render.py:187` (synthetic video), `pipeline/tts.py:26` (synthetic
voice), `skills/image-gen/scripts/generate.py:19`; no disclosure label found anywhere in
`site/`, `promo/`, `pages/`, `exports/`.
**Current state:** nothing found — no AI-generated labels or provenance marks.
**Required actions:**
- [ ] **Code/content:** add a visible "AI-generated" label to synthetic images, video and voiceover where they depict or could be taken for real footage of a person (e.g. a caption/credit line at publish time in `pipeline/publish.py` / video description).
- [ ] **Docs:** record which media types are treated as deepfakes vs. generic illustration.
**To resolve "Possibly":** do generated video/voice/image outputs depict identifiable real persons?

### R21: GPAI model provider obligations (Art. 53)
**Status:** No · **Why:** The project only *calls* third-party models; it does not train or
substantially fine-tune (>⅓ compute) or release a GPAI model. Obligations sit with the upstream
providers.

### R22 / R23: GPAI authorised representative / systemic risk (Art. 54, 51–55)
**Status:** No · **Why:** Not a GPAI model provider (see R21).

### R24: AI literacy (Art. 4)
**Status:** Yes · **Applies from:** 2 Feb 2025 (in force) · **Priority:** P0
**Why:** Applies to any provider/deployer of AI, not only high-risk. The Digital Omnibus softened
this to a duty to *support/promote* AI literacy rather than guarantee a level, but it still applies.
As a solo operator the bar is low.
**Evidence:** AI tooling throughout `pipeline/`, `skills/`.
**Current state:** extensive internal documentation of the AI pipeline already exists
(`PROJECT.md`, `exports/README.md`, `docs/content-pipeline.md`).
**Required actions:**
- [ ] **Docs:** add a short note stating the operator understands the capabilities/limits of the AI tools used (a couple of paragraphs referencing existing docs is enough).

## 6. Action plan

### P0: now (already applicable)
- [ ] Add AI-generation disclosure to published synthetic media where deepfake-like (R20).
- [ ] Add a short AI-literacy / AI-tools note (R24).

### P1: within 12 months
- [ ] (none — no high-risk obligations)

### P2: later
- [ ] Re-run this scan if the project starts training/releasing a model, screening third-party candidates, or exposing a first-party end-user chatbot (would touch R03/R17/R21).

### Clarify
- [ ] Is any AI assistant surfaced as a first-party end-user chat under the author's brand? → R17
- [ ] Do generated image/video/voice outputs depict identifiable real persons (deepfake test)? → R20

## 7. Assumptions and open questions
- **Assumption:** "output used in the EU" (Art. 2(1)(c)) is read conservatively to include publicly
  published marketing content consumed by EU readers. A narrower reading (the provision targets
  decisions/outputs *about* EU persons) could put the project out of scope entirely — counsel may take
  that view.
- **Assumption:** the author is established outside the EU (non-EU country, per project timezone docs).
- **Open:** whether the video/TTS pipeline ever renders a likeness of the author or another real
  person (turns R20 from Possibly to Yes for those assets).

## 8. Regulatory updates and sources
- **Digital Omnibus on AI adopted** as Regulation (EU) 2026/1744: voted 16 Jun 2026, published in OJ
  24 Jul 2026, in force 27 Jul 2026. High-risk (Annex III) deadline deferred **2 Aug 2026 → 2 Dec
  2027**; Annex I → 2 Aug 2028. Art. 50 transparency **not** postponed (still 2 Aug 2026); Art. 50(2)
  watermarking has a grace period to **2 Dec 2026** for systems already on the market. Art. 4 AI
  literacy softened to a support/promotion duty. New Art. 5 prohibition on AI-generated
  non-consensual intimate imagery / CSAM.
  - https://www.gibsondunn.com/eu-ai-act-omnibus-agreement-postponed-high-risk-deadlines-and-other-key-changes/
  - https://www.praxikon.com/en/posts/article-50-transparency-deadline-2-august-2026
  - https://ai-act-service-desk.ec.europa.eu/en/ai-act/timeline/timeline-implementation-eu-ai-act
- Regulation (EU) 2024/1689: https://eur-lex.europa.eu/eli/reg/2024/1689/oj
- Commission AI Act page: https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai
