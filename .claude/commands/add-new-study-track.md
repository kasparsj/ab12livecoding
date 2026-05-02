---
name: add-new-study-track
description: Workflow command scaffold for add-new-study-track in ab12livecoding.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /add-new-study-track

Use this workflow when working on **add-new-study-track** in `ab12livecoding`.

## Goal

Adds a new study track or artist study, including README, research summary, source map, and example Tidal files.

## Common Files

- `studies/*/README.md`
- `studies/*/research-summary.md`
- `studies/*/source-map.md`
- `studies/*/tidal/*.tidal`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Create or update studies/<track>/README.md
- Add studies/<track>/research-summary.md
- Add studies/<track>/source-map.md
- Add studies/<track>/tidal/*.tidal (example or skeleton files)
- Optionally add other supporting markdown files (e.g., performance-cues.md, production-notes.md)

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.