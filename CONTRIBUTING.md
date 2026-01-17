# Contributing

Thanks for your interest in improving this evidence-based machinery manual template.

## What this repo is (and is not)
- This repo is a documentation template and traceability/evidence framework.
- It is NOT legal advice and does not guarantee CE conformity.

## Contribution principles
1) Evidence-first: any requirement, checklist, or guidance MUST cite an authoritative source (EU law text, official Commission guidance, or a recognised standard).
2) No placeholders: avoid filler content. Provide concrete, reusable text.
3) Cross-platform: keep Markdown and YAML compatible across Windows/macOS/Linux.
4) Traceability: changes should preserve or improve mapping between:
   - manual sections,
   - compliance matrix,
   - evidence pack structure.

## What to contribute
- Improvements to template clarity and structure.
- Additional checklists and matrices grounded in primary sources.
- Better CI sanity checks (avoid false positives).
- Examples of evidence-pack artefacts (as empty structure or synthetic samples without proprietary content).
- Translations of the templates (must be complete and consistent).

## How to contribute
1) Fork the repository.
2) Create a branch:
   - `feat/<short-name>` for features
   - `fix/<short-name>` for fixes
   - `docs/<short-name>` for documentation changes
3) Make changes with a clear commit message.
4) Open a Pull Request with:
   - what you changed,
   - why it helps,
   - the evidence/source links used.

## Style rules
- Use simple, unambiguous language.
- Prefer tables for checklists and mappings.
- Keep headings stable to avoid breaking links.
- Maintain split licensing intent:
  - documentation text: CC BY 4.0
  - scripts: MIT

## Reporting issues
Use the issue templates:
- Bug report: for incorrect content, broken CI, or workflow problems.
- Feature request: for improvements, new matrices, or new evidence pack structures.