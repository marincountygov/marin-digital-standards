# 2026-10-15 — Learning content standard

Added standards for learning content: Notes, the decks built from them, and quizzes. They cover the sections and limits of a Note, the rules for decks and quizzes (at most 10 questions, no select-all questions, questions about the topic), the writing rules (grade 6, sentence case), and the rule that examples and citations are never invented.

Affected standards:

- `content-design/learning-content.md` (new)
- `content-design/README.md`

Implementation is in `marin-learn` (`docs/notes/SPEC.md`, the schema, and the validators). The workflow that applies the standard is the `marin-learn-content` skill in `marin-skills`.
