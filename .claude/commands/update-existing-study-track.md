---
name: update-existing-study-track
description: Workflow command scaffold for update-existing-study-track in ab12livecoding.
allowed_tools: ["Bash", "Read", "Write", "Grep", "Glob"]
---

# /update-existing-study-track

Use this workflow when working on **update-existing-study-track** in `ab12livecoding`.

## Goal

Updates an existing study track with new notes, roadmap, status, vocabulary, or Tidal files.

## Common Files

- `studies/*/roadmap.md`
- `studies/*/status.md`
- `studies/*/vocabulary-atlas.md`
- `studies/*/tidal/*.tidal`
- `studies/*/source-map.md`

## Suggested Sequence

1. Understand the current state and failure mode before editing.
2. Make the smallest coherent change that satisfies the workflow goal.
3. Run the most relevant verification for touched files.
4. Summarize what changed and what still needs review.

## Typical Commit Signals

- Edit studies/<track>/*.md (roadmap, status, vocabulary, etc.)
- Edit or add studies/<track>/tidal/*.tidal
- Update studies/<track>/source-map.md as needed

## Notes

- Treat this as a scaffold, not a hard-coded script.
- Update the command if the workflow evolves materially.