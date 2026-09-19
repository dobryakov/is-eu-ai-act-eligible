# EU AI Act: requirements catalogue

**Regulation (EU) 2024/1689** (the "AI Act"), OJ L, 12.7.2024. CELEX `32024R1689`.
Official text: https://eur-lex.europa.eu/eli/reg/2024/1689/oj

**Reference snapshot:** knowledge as of **May 2026**. Anything marked *(verify)* may have changed.
Phase 1 of the skill checks it against the web.

---

## 1. Application timeline

| Date | What becomes applicable |
|------|-------------------------|
| 1 Aug 2024 | Entry into force |
| 2 Feb 2025 | Chapter I (incl. **Art. 4 AI literacy**) and Chapter II (**Art. 5 prohibited practices**) |
| 2 Aug 2025 | **GPAI model obligations** (Chapter V, Art. 51–56), governance, notified bodies, confidentiality, penalties (except Art. 101) |
| 2 Aug 2026 | General application: **Annex III high-risk** (Art. 6(2)) and all their obligations, **Art. 50 transparency**, deployer obligations, Art. 101 GPAI fines, AI regulatory sandboxes |
| 2 Aug 2027 | **Art. 6(1) high-risk** (safety components of Annex I products). GPAI models placed on the market **before 2 Aug 2025** must comply by then (Art. 111(3)) |
| 31 Dec 2030 | AI systems that are components of the large-scale EU IT systems in Annex X (Art. 111(1)) |

Legacy systems (Art. 111(2)): high-risk systems placed on the market before 2 Aug 2026 are covered
only if their design changes significantly after that date. Those intended for use by public
authorities must comply by **2 Aug 2030**.

### Digital Omnibus on AI *(verify)*

The Commission proposed it on **19 Nov 2025**. At the snapshot date it was still in the legislative
process. Main proposed changes:
- **High-risk start dates linked to the availability of standards and support tools**, with
  backstop dates of **2 Dec 2027** for Annex III systems and **2 Aug 2028** for Annex I systems.
- **Art. 4 AI literacy** would become a duty of the Commission and Member States to *promote*
  literacy, instead of a direct obligation on providers and deployers.
- A grace period for **Art. 50(2)** marking, until **2 Feb 2027**, for generative systems placed on
  the market before 2 Aug 2026.
- No EU-database registration for systems exempted under Art. 6(3). A broader legal basis to process
  special categories of personal data for bias detection. SME simplifications extended to small
  mid-caps.

**Rule:** if the web check confirms adoption, use the amended dates and wording in the report and
cite the source. If it doesn't, use the original dates and note that the Omnibus is pending.

### Key Commission guidance (useful for reasoning)
- Guidelines on the **AI system definition** (Feb 2025).
- Guidelines on **prohibited practices** (Feb 2025).
- Guidelines on the scope of **GPAI obligations** (Jul 2025). They set an indicative GPAI criterion
  of training compute > 10^23 FLOP plus the ability to generate language, images or video. A
  modifier becomes the provider when its modification uses more than ⅓ of the original training
  compute.
- **GPAI Code of Practice** (10 Jul 2025): transparency, copyright, and safety & security chapters.
- Template for the **public summary of training content** (Jul 2025).
- Pending or expected *(verify)*: guidelines on high-risk classification under Art. 6 (due Feb 2026
  but delayed), guidelines on Art. 50, and a code of practice on marking and labelling AI-generated
  content.

---

## 2. Key definitions (Art. 3)

- **AI system** (Art. 3(1)): a machine-based system designed to operate with some autonomy, which
  *may* adapt after deployment and **infers** from its input how to generate outputs (predictions,
  content, recommendations or decisions) that can influence physical or virtual environments. The
  Commission guidelines *exclude*:
  - systems that only improve mathematical optimisation
  - basic data processing
  - classical heuristics
  - simple prediction systems, such as averages or baseline estimations

  Pure hand-written if/else rules are not AI systems.
- **Provider** (Art. 3(3)): develops an AI system or GPAI model, or has one developed, and places it
  on the market or puts it into service **under its own name or trademark**, whether for payment or
  free of charge.
- **Deployer** (Art. 3(4)): uses an AI system under its authority in the course of a professional
  activity.
- **Importer / distributor** (Art. 3(6)–(7)): brings a non-EU provider's system onto the EU market
  (importer), or makes a system available further down the supply chain (distributor).
- **GPAI model** (Art. 3(63)): a model with significant generality that can competently perform a
  wide range of distinct tasks and can be integrated into various downstream systems.
- **GPAI system** (Art. 3(66)): an AI system based on a GPAI model. A product that calls a
  third-party LLM API is typically a **provider of an AI system** built on GPAI, and a **deployer**
  when it is used internally. It is **not** a GPAI *model* provider.
- **Substantial modification** (Art. 3(23)), **intended purpose** (Art. 3(12)), **placing on the
  market** (Art. 3(9)), **putting into service** (Art. 3(11)).

---

## 3. Requirements

Each entry lists: **Legal basis · Who · Applies from · Decision logic · Typical actions**.

### R01: Scope and AI-system qualification (gate)
- **Basis:** Art. 2 (scope), Art. 3(1) (AI system).
- **Decision logic:**
  1. Is there at least one **AI system** (see definition) or **GPAI model**? If there is none
     → **No**, and every later R is No.
  2. Territorial scope. The project is in scope if **any** of these holds:
     - it is placed on the market or put into service in the EU (the provider's location doesn't
       matter)
     - the deployer is established in the EU
     - the output is used in the EU
     - it is imported or distributed in the EU

     If none holds → **No**. If the question is unresolved → **Possibly**.
  3. Exclusions (Art. 2(3)–(12)). Each one below → **No**, and the rationale states the exclusion:
     - used exclusively for military, defence or national-security purposes
     - developed and put into service solely for scientific R&D
     - research, testing or development before placing on the market (real-world testing not included)
     - purely personal, non-professional use
     - **free and open-source** AI systems — **unless** they are high-risk, prohibited (Art. 5)
       or covered by Art. 50
- **Actions when Yes:** keep an AI-system inventory. Record the intended purpose and your role for
  each component.

### R02: Prohibited AI practices
- **Basis:** Art. 5(1)(a)–(h). **Who:** everyone. **From:** 2 Feb 2025.
  **Penalty:** up to €35M or 7% of worldwide turnover.
- **Practices:**
  - (a) subliminal, purposefully manipulative or deceptive techniques that materially distort
    behaviour and cause significant harm
  - (b) exploiting vulnerabilities due to age, disability or socio-economic situation
  - (c) **social scoring** that leads to detrimental treatment in unrelated contexts, or to
    disproportionate treatment
  - (d) predicting the risk that a person commits a crime **solely** from profiling or personality
    traits
  - (e) **untargeted scraping** of facial images from the internet or CCTV to build facial
    recognition databases
  - (f) **emotion recognition in the workplace or in education**, except for medical or safety reasons
  - (g) **biometric categorisation** that infers race, political opinions, trade-union membership,
    religious or philosophical beliefs, sex life or sexual orientation
  - (h) **real-time remote biometric identification** in publicly accessible spaces for law
    enforcement, apart from narrow exceptions
- **Decision logic:**
  - **Yes** only when the code or docs clearly implement one of these practices.
  - **Possibly** when the building blocks are there but the purpose or context is unclear, for
    example emotion analysis on employee data or face scraping.
  - Otherwise **No**.
- **Actions when Yes:** stop or remove the functionality before any EU use. The option to redesign
  applies only if the purpose truly falls under an exception, such as medical or safety use for (f).
  Get urgent legal review.

### R03: High-risk classification
- **Basis:** Art. 6, Annex I, Annex III. **From:** 2 Aug 2026 for Annex III; 2 Aug 2027 for Annex I
  *(verify the Omnibus)*.
- **Route A (Art. 6(1)):** the AI is a safety component of a product, or is itself a product,
  covered by the **Annex I** Union harmonisation legislation *and* that product needs a third-party
  conformity assessment. Annex I covers, among others:
  - machinery, toys, lifts, recreational craft
  - radio equipment, pressure equipment, cableway installations, PPE, gas appliances
  - **medical devices (MDR)** and **in-vitro diagnostics (IVDR)**
  - civil aviation, motor vehicles, agricultural vehicles, marine equipment, rail
- **Route B (Art. 6(2), Annex III):** the intended use falls in one of these areas:
  1. **Biometrics:** remote biometric identification (verification-only 1:1 is excluded); biometric
     categorisation by sensitive or protected attributes; emotion recognition.
  2. **Critical infrastructure:** safety components in the management or operation of critical
     digital infrastructure, road traffic, or the supply of water, gas, heating or electricity.
  3. **Education and vocational training:**
     - access, admission or assignment to institutions
     - evaluating learning outcomes
     - assessing the appropriate level of education
     - monitoring prohibited behaviour during tests (proctoring)
  4. **Employment and workers management:**
     - recruitment and selection: targeted job ads, **filtering or ranking applications**,
       evaluating candidates
     - decisions on terms, promotion and termination
     - allocating tasks based on behaviour or personal traits
     - monitoring and evaluating performance and behaviour
  5. **Access to essential private and public services:**
     - eligibility for public assistance benefits and services
     - **creditworthiness and credit scoring** (fraud detection is excluded)
     - **risk assessment and pricing in life and health insurance**
     - evaluating and classifying emergency calls, dispatching, and emergency healthcare patient triage
  6. **Law enforcement:** victim-risk assessment, polygraphs, evidence reliability, risk of
     offending or re-offending not based solely on profiling, and profiling in investigations.
  7. **Migration, asylum and border control:** polygraphs, risk assessment, examining applications,
     and detection or identification of persons.
  8. **Administration of justice and democratic processes:**
     - assisting judicial authorities in researching and interpreting facts and law, or ADR
     - influencing the outcome of elections or referenda, or voting behaviour (tools that only
       organise campaigns logistically are excluded)
- **Derogation (Art. 6(3)):** an Annex III system is **not** high-risk if it poses no significant
  risk of harm and it meets **one** of these conditions:
  - (a) it performs a narrow procedural task
  - (b) it improves the result of a previously completed human activity
  - (c) it detects decision-making patterns or deviations without replacing or influencing the
    human assessment unless there is proper human review
  - (d) it performs a preparatory task

  The derogation **never** applies if the system performs **profiling of natural persons**. A
  provider that relies on it must **document the assessment** (Art. 6(4)) and register it
  (Art. 49(2); the Omnibus may remove this registration *(verify)*).
- **Decision logic:**
  - **Yes**: evidence shows an Annex III use (or Annex I) and no valid derogation.
  - **Possibly**: an Annex III domain is present but the actual use or derogation is unclear.
  - **No**: no Annex I or Annex III use.

  If a derogation is claimed, R03 is **No** and an action is required: "document the Art. 6(3)
  assessment".
- **Actions when Yes:** confirm the classification with counsel and appoint an owner for R04–R16.
  **Also:** if a derogation is used, write down the Art. 6(3) assessment.

> **Note.** R04–R14 below are **provider** obligations for high-risk systems. They apply only when
> R03 is Yes (or Possibly) **and** the organisation is the provider, or becomes one under Art. 25.

### R04: Risk management system
- **Basis:** Art. 9. A documented and continuous process covering the whole lifecycle:
  - identify and analyse known and foreseeable risks to health, safety and fundamental rights
  - evaluate risks from misuse
  - adopt mitigation measures
  - test against defined metrics
  - take account of minors and vulnerable groups
- **Actions:**
  - a risk register in the repo, e.g. `docs/ai-act/risk-management.md`
  - test suites for identified risks
  - risk review in the release process

### R05: Data and data governance
- **Basis:** Art. 10. Training, validation and test datasets need all of the following:
  - governance: design choices, collection, provenance and preparation
  - relevance, representativeness, and being as error-free and complete as possible
  - **bias examination and mitigation**
  - special-category data only under the Art. 10(5) conditions
- **Actions:**
  - datasheets and dataset cards
  - data lineage
  - bias metrics in the evaluation pipeline
  - documented handling of gaps

### R06: Technical documentation
- **Basis:** Art. 11 and Annex IV (SMEs may use a simplified form). It must exist **before**
  placing on the market and be kept up to date. Contents:
  - general description
  - design specifications, architecture, data, training methodology
  - validation and testing
  - the risk management system
  - changes made over the lifecycle
  - standards applied
  - the EU declaration of conformity
  - the post-market monitoring plan
- **Actions:** create an Annex IV documentation set in the repo, such as model cards and
  architecture docs, and version it with releases.

### R07: Record-keeping and logging
- **Basis:** Art. 12 (automatic event logs throughout the lifetime, for traceability, risk
  detection and post-market monitoring), Art. 19 (providers keep logs for **≥ 6 months**), and
  Art. 26(6) (deployers keep them for ≥ 6 months).
- **Actions:**
  - structured, tamper-evident logs of inputs, outputs, model version, timestamps and the human
    reviewer
  - a retention policy of ≥ 6 months
  - point to the exact places in the code where inference happens

### R08: Transparency and instructions for use
- **Basis:** Art. 13. The system must be sufficiently transparent for deployers to interpret its
  output. Instructions for use must cover:
  - provider identity
  - capabilities and limitations
  - accuracy metrics
  - foreseeable misuse
  - human oversight measures
  - the logging mechanism
- **Actions:** write instructions for use or deployer documentation. Expose confidence and
  explanation data in the API or UI.

### R09: Human oversight
- **Basis:** Art. 14. The design must let natural persons understand, monitor and interpret the
  system, avoid automation bias, **override or reverse** its output, and **stop** it. Remote
  biometric identification needs verification by two persons.
- **Actions:** add review, approve and override steps before consequential decisions, a kill
  switch or feature flag, and UI affordances that show the uncertainty.

### R10: Accuracy, robustness and cybersecurity
- **Basis:** Art. 15. An appropriate level of accuracy, declared in the instructions. Resilience to
  errors and faults, and handling of feedback loops. Protection against **data poisoning, model
  poisoning, adversarial examples and prompt injection**, and confidentiality attacks.
- **Actions:**
  - an evaluation suite with accuracy thresholds in CI
  - fallback behaviour
  - input validation and prompt-injection defences
  - security testing and red-teaming

### R11: QMS, conformity assessment, CE marking and registration
- **Basis:**
  - Art. 16 (provider obligations)
  - Art. 17 (quality management system)
  - Art. 18 (keep documentation for 10 years)
  - Art. 43 (conformity assessment: internal control for most Annex III systems; a notified body
    for biometrics and Annex I products)
  - Art. 47 (EU declaration of conformity)
  - Art. 48 (CE marking)
  - Art. 49 and Art. 71 (registration in the EU database before placing on the market)
- **Actions:**
  - a QMS: policies, change management, test and validation procedures, accountability
  - carry out the conformity assessment
  - sign the declaration of conformity
  - CE marking in the UI or docs
  - EU database registration

### R12: Post-market monitoring and serious incidents
- **Basis:** Art. 72 (a post-market monitoring system and plan), Art. 73 (report serious incidents
  to the market surveillance authority: within **15 days**, or within 2 days for widespread
  infringements or critical infrastructure, and within 10 days if a death occurs), and Art. 20
  (corrective actions).
- **Actions:**
  - telemetry on model performance and drift in production
  - an incident runbook with reporting timelines
  - a feedback channel

### R13: Authorised representative (non-EU providers of high-risk systems)
- **Basis:** Art. 22. **Yes** when the provider is established outside the EU and R03 is Yes.
- **Actions:** appoint an EU authorised representative by written mandate before placing the system
  on the market.

### R14: Value-chain role changes
- **Basis:** Art. 25. A distributor, importer, deployer or other third party **becomes the
  provider** of a high-risk system if any of these holds:
  - it puts its name or trademark on the system
  - it makes a substantial modification
  - it changes the intended purpose of a non-high-risk system, including a GPAI system, in a way
    that makes it high-risk

  Relevant when the project rebrands or fine-tunes a third-party system for an Annex III use.
- **Actions:** document the role analysis. Get technical information from the upstream provider
  (Art. 25(4)).

### R15: Deployer obligations for high-risk systems
- **Basis:** Art. 26 and Art. 86. **Who:** deployers of high-risk systems. Obligations:
  - use the system according to the instructions
  - assign **competent human oversight**
  - make sure input data is relevant
  - monitor the system and report risks and incidents
  - keep logs for ≥ 6 months
  - **inform workers' representatives** before using it in the workplace
  - **inform affected natural persons** that they are subject to a high-risk system
    (Art. 26(11))
  - Art. 86: affected persons have a **right to an explanation** of decisions based on Annex III
    systems

  Public-authority deployers must also register their use.
- **Actions:**
  - notices to affected persons
  - an explanation endpoint or process
  - oversight roles
  - log retention
  - worker consultation

### R16: Fundamental rights impact assessment (FRIA)
- **Basis:** Art. 27. **Who:** deployers that are public bodies, private entities providing public
  services, and deployers of Annex III point 5(b) (credit scoring) and 5(c) (life/health insurance)
  systems. The FRIA is done before first use and notified to the market surveillance authority.
- **Actions:** carry out and document the FRIA (the template comes from the AI Office).

### R17: Disclosure of interaction with AI
- **Basis:** Art. 50(1). **Who:** providers. **From:** 2 Aug 2026.
- Systems that interact directly with natural persons, such as chatbots, voice agents and AI email
  responders, must inform people that they are interacting with AI. The exception is when this is
  obvious to a reasonably well-informed person. The information must be given at the latest at the
  first interaction, and it must be accessible.
- **Decision logic:** a conversational or agentic interface to end users → **Yes**.
- **Actions:** a clear notice in the chat or voice UI before or at the first message, in `aria`
  text and in localized strings.

### R18: Marking synthetic content
- **Basis:** Art. 50(2). **Who:** providers of systems, including GPAI systems, that generate
  synthetic **audio, images, video or text**. **From:** 2 Aug 2026 (the Omnibus proposes a grace
  period until 2 Feb 2027 for legacy systems *(verify)*).
- Outputs must be **marked in a machine-readable format and detectable** as artificially generated
  or manipulated, for example with watermarks, C2PA/content credentials, metadata or fingerprints,
  as far as technically feasible. This does not apply to assistive editing that doesn't
  substantially alter the input.
- **Actions:**
  - embed C2PA or IPTC metadata or watermarks in generated media
  - put machine-readable markers or provenance on generated text where feasible
  - document the technique
- The code of practice on marking and labelling is still expected *(verify)*.

### R19: Notice for emotion recognition and biometric categorisation
- **Basis:** Art. 50(3). **Who:** deployers. Persons exposed must be informed, and the processing
  must comply with the GDPR.
- **Actions:** show an explicit notice before processing and link to the privacy information.

### R20: Disclosure of deepfakes and AI-generated public-interest text
- **Basis:** Art. 50(4). **Who:** deployers.
  - Deepfake image, audio or video content must be disclosed as artificially generated. For
    evidently artistic, satirical or fictional work, the disclosure can be limited so it doesn't
    hamper the work.
  - Text published to **inform the public on matters of public interest** must be disclosed as
    AI-generated **unless** it went through human review and editorial responsibility.
- **Actions:** visible labels on published generated media and articles, plus an editorial review
  workflow.

### R21: GPAI model provider obligations
- **Basis:** Art. 53. **Who:** providers of **GPAI models**, meaning those that train, or
  substantially fine-tune (more than ⅓ of the original compute), and release models. **From:**
  2 Aug 2025 (2 Aug 2027 for models placed before 2 Aug 2025). The obligations:
  - (a) technical documentation (Annex XI)
  - (b) information for downstream providers (Annex XII)
  - (c) a **copyright policy**, including honouring text-and-data-mining opt-outs (Art. 4(3) of
    the DSM Directive)
  - (d) a **public summary of training content**, using the AI Office template

  **Open-source exemption:** (a) and (b) don't apply to models released under a free and
  open-source licence with public weights, *unless* the model has systemic risk.
- **Decision logic:**
  - Only **calling** a third-party model API, or running an unmodified open model → **No**.
    Explain that the obligations sit with the upstream provider.
  - Training or releasing a general-purpose model → **Yes**.
- **Actions:** model card or Annex XI docs, downstream documentation, a copyright policy, the
  training-data summary, and consider signing the GPAI Code of Practice.

### R22: GPAI authorised representative
- **Basis:** Art. 54. Non-EU GPAI model providers must appoint an EU representative. The
  open-source exemption applies unless the model has systemic risk.

### R23: GPAI models with systemic risk
- **Basis:** Art. 51, 52, 55. A model is presumed to have systemic risk when its training compute
  is **> 10^25 FLOP**, or when the Commission designates it. The provider must:
  - **notify the Commission** within 2 weeks
  - run model evaluations and adversarial testing
  - assess and mitigate systemic risks
  - **report serious incidents**
  - ensure adequate cybersecurity
- Practically **No** for almost all application projects.

### R24: AI literacy
- **Basis:** Art. 4. **Who:** providers and deployers of any AI system, **not only high-risk
  ones**. **From:** 2 Feb 2025. There is no direct fine for it, but it is taken into account in
  enforcement. The Omnibus proposes turning it into a promotion duty *(verify)*.
- Staff and others who operate or use AI systems on the organisation's behalf need a sufficient
  level of AI literacy, taking into account the context and the persons affected.
- **Decision logic:** R01 is Yes → **Yes**.
- **Actions:**
  - an AI-literacy programme: training records for developers, operators and support staff
  - a short internal AI-usage policy
  - document the tools in use

---

## 4. Penalties (Art. 99, 101)

| Infringement | Maximum fine (whichever is higher; for SMEs whichever is lower) |
|---|---|
| Prohibited practices (Art. 5) | €35M or 7% of worldwide annual turnover |
| Most other obligations (providers, deployers, Art. 50, etc.) | €15M or 3% |
| Supplying incorrect or misleading information to authorities | €7.5M or 1% |
| GPAI model providers (Art. 101, from 2 Aug 2026) | €15M or 3% |

## 5. Useful sources
- Official text: https://eur-lex.europa.eu/eli/reg/2024/1689/oj
- Commission AI Act page: https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai
- AI Act Service Desk / Single Information Platform: https://ai-act-service-desk.ec.europa.eu
- Article-by-article navigator: https://artificialintelligenceact.eu
