# Personal Claude Code Instructions

## Debugging

- Before writing any code, identify the true root cause of the bug. List the evidence and explain how the fix will verify the symptom is resolved. Wait for confirmation before implementing.

## Editing

- Make the minimal possible diff. Only touch the specific lines requested — do not reformat, convert, refactor, or expand scope beyond exactly what was asked. If scope is ambiguous, ask first.

## Verification

- Run type-checking, lint, and the relevant test suite before declaring a task done. Fix any errors before committing.
- Run the full affected test suite after a fix — not just the test for the changed code — to catch regressions.

## Version Control

- Split changes into logical, per-pass commits. Do not bundle unrelated changes into one commit.
- Write commit messages in imperative mood that explain *why*, not just *what*.
- When writing a PR description, summarize each logical batch and note the motivation behind the change.
