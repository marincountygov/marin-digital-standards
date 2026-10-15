# Learning content

Standards for short learning content: a **Note** (a brief on one topic), the **deck** built from it, and the **quiz** built from it. They are written for County executives and staff who are busy and are not experts. Marin Learn is the first product that uses them. Its schema, validator, and publish script enforce the limits below. `marin-learn/docs/notes/SPEC.md` is the working specification; if the two ever differ, change both in the same release.

These standards add to [`plain-language.md`](plain-language.md), [`voice-and-tone.md`](voice-and-tone.md), and [`interface-writing.md`](interface-writing.md). They do not replace them.

## Writing rules for all learning content

- **Reading level:** grade 6 or lower. Short sentences, common words, active voice.
- **Sentence case** for every title and heading. Keep proper names as they are.
- **Audience:** a County executive or staff member. Explain any term the reader might not know the first time it appears.
- **Practical first:** say what the reader can do with the idea. Prefer government examples.
- **Source rule:** use only sources you have read. Never invent an example, a citation, a quote, or a statistic. If a source cannot be read, leave it out and say so. Examples are supplied by the owner. An empty Examples or Sources section is hidden, not filled in.
- **No emoji** in the content itself.
- **Labels:** do not use the word "view" in buttons or links (see `interface-writing.md`).

## Notes

A Note has a title, a short description, and twelve sections in this order. Character limits count spaces.

| Part | What it holds | Limit |
|---|---|---|
| Title | The topic | 60 characters |
| Short description | One sentence for cards | 120 characters |
| Overview | What the topic is and why it matters | 600 characters |
| Why it matters | Benefits | 3 to 5 points, 150 characters each |
| Problem | The gap or risk the topic addresses | 300 characters |
| Solution | How the topic closes that gap | 300 characters |
| User stories | Who benefits | 3 to 4, 200 characters each |
| Key terms | Words the reader will hear | 6 to 10; term 50, definition 120 |
| Do's and don'ts | Clear actions | 4 to 6 pairs; 100 characters each |
| Questions to ask | What a leader can ask | 5 to 8, 150 characters each |
| Examples | Real use, supplied by the owner | 1 to 6, or hidden; may add up to 3 code samples |
| Checklist | Statements the reader can mark true | 5 to 8, 125 characters each |
| Mantras | Memorable rules | 3 to 5, 60 characters each |
| Sources | Pages the Note is based on | Up to 5 HTTPS links, or hidden |

- **Problem** names who is affected and what goes wrong. It describes the situation, never a person to blame, and does not include the answer.
- **Solution** answers the Problem directly, starts with an action, and does not promise results. It should match the Do's and don'ts and the Checklist.
- **User stories** read "As a [role], I want [need], so I can [result]."
- **Key terms** are defined in plain words, and no term appears in its own definition.
- **Do and Don't** in a pair are about the same action. Start each Do with a verb.
- **Code samples** are short, accurate, and set in a County context, such as a service request. They use sample data, never real records. They state their language and stay within about 14 lines so they fit a slide. A sample record must follow the sample schema beside it, and this is checked.

## Decks

A deck is built from its Note, not written separately. Its slides point at the Note's sections, so editing the Note updates the deck.

- One idea per slide, with about 45 words at most. Split a long section evenly across slides; do not leave one stray item.
- Slide titles are the section name, with the part when it splits, such as "Key terms (2 of 3)".
- A title slide with the course icon, title, and a description. No divider slides.
- Some sections always stay on one slide: Checklist, User stories, and Questions to ask. Key terms use at most three slides.
- Problem and Solution share one slide. Leave out sections that are empty.
- Every slide but the title slide has a footer with the course icon and title.
- Speaker notes are optional and are not generated.

## Quizzes

A quiz checks what a reader learned from a Note.

- **At most 10 questions.** Ask all of them, in a shuffled order. Do not draw a random set from a bigger bank.
- **Mix:** single-choice and true or false. No select-all questions.
- **Coverage:** every section that holds teachable facts has at least one question. Overview, User stories, Examples, Mantras, and Sources are not quizzed.
- **One source:** each question is based on exactly one Note section, and its explanation names that section.
- **Ask about the topic.** The question, its choices, and its hint talk about the subject ("data," "a schema"), never "the notes" or a section.
- **Answers come only from the Note.** Do not test facts the reader was not given.
- **Choices:** four for single-choice. Plausible, not tricky. No "all of the above" or "none of the above." The right answer is not always in the same place.
- **Every question has a hint and an explanation.** Passing is 70%. Grade messages point the reader back to the notes.
- **Results:** say "You passed the [title] quiz!" or "You did not pass the [title] quiz." A shared result uses the same words with "I" for "You." The results page links each question's source and lists the sections to review.

## Review checklist

Before publishing learning content, confirm: every limit above is met; reading level is grade 6 or lower; titles are in sentence case; every source was read and every link works; no example or citation was invented; code samples are checked; the deck covers every section once; the quiz has 10 or fewer questions, with every quizzable section covered; questions never refer to "the notes."
