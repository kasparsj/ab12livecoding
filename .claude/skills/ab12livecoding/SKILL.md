```markdown
# ab12livecoding Development Patterns

> Auto-generated skill from repository analysis

## Overview

The `ab12livecoding` repository is a TypeScript-based codebase focused on collaborative study and research of live coding, particularly with TidalCycles. It organizes knowledge, artist studies, research summaries, and practical code examples for live coding music. The repository emphasizes modular study tracks, structured research documentation, and reusable lesson resources.

## Coding Conventions

- **File Naming:**  
  - Uses PascalCase for TypeScript files (e.g., `MyModule.ts`).
  - Markdown files for documentation and study tracks use lowercase or kebab-case (e.g., `readme.md`, `research-summary.md`).

- **Import Style:**  
  - Relative imports are used throughout the codebase.
    ```typescript
    import { MyFunction } from './MyModule';
    ```

- **Export Style:**  
  - Named exports are preferred.
    ```typescript
    // MyModule.ts
    export function MyFunction() { ... }
    export const MY_CONST = 42;
    ```

- **Documentation:**  
  - Each study track is organized under `studies/<track>/` with a `README.md`, `research-summary.md`, `source-map.md`, and example `.tidal` files.
  - Lessons and resources are stored in `lessons/` and `resources/` directories as Markdown files.

## Workflows

### Add New Study Track
**Trigger:** When you want to introduce a new study/artist track or research area  
**Command:** `/new-study-track`

1. Create or update `studies/<track>/README.md` with an overview of the track.
2. Add `studies/<track>/research-summary.md` summarizing key findings or concepts.
3. Add `studies/<track>/source-map.md` mapping out relevant sources or influences.
4. Add example or skeleton TidalCycles files in `studies/<track>/tidal/*.tidal`.
5. Optionally, add supporting markdown files such as `performance-cues.md` or `production-notes.md`.

**Example Directory Structure:**
```
studies/
  artistX/
    README.md
    research-summary.md
    source-map.md
    tidal/
      example1.tidal
      example2.tidal
```

---

### Update Existing Study Track
**Trigger:** When you want to expand or refine an existing study/artist track  
**Command:** `/update-study-track`

1. Edit relevant markdown files in `studies/<track>/` (e.g., `roadmap.md`, `status.md`, `vocabulary-atlas.md`).
2. Edit or add new TidalCycles files in `studies/<track>/tidal/`.
3. Update `studies/<track>/source-map.md` as needed.

**Example:**
```
studies/
  artistX/
    roadmap.md        # Update with new learning goals
    status.md         # Mark progress or completion
    vocabulary-atlas.md # Add new terms or concepts
    tidal/
      new-pattern.tidal
```

---

### Add Lesson or Resource
**Trigger:** When you want to document a new concept, lesson, or quick reference  
**Command:** `/new-lesson`

1. Create a new Markdown file in `lessons/<topic>.md` or `resources/<resource>.md`.
2. Optionally, update the main `README.md` or navigation to link to the new lesson/resource.

**Example:**
```
lessons/
  polyrhythms.md
resources/
  tidal-cheatsheet.md
```

---

### Bulk Study Track Expansion
**Trigger:** When you want to do a curriculum-wide update or synchronize improvements across studies  
**Command:** `/bulk-update-studies`

1. Edit multiple study tracks' markdown files (e.g., `README.md`, `implementation-plan.md`, `curriculum-integration-plan.md`, `study-module-plans.md`).
2. Edit or add TidalCycles files across different tracks.
3. Edit or add shared study resources in `studies/shared/*.md`.

**Example:**
```
studies/
  artistX/
    README.md
    implementation-plan.md
    tidal/
      new-pattern.tidal
  artistY/
    curriculum-integration-plan.md
    study-module-plans.md
    tidal/
      groove.tidal
  shared/
    glossary.md
```

## Testing Patterns

- **Framework:** Not explicitly detected.
- **Test File Pattern:** Test files are named with the pattern `*.test.*` (e.g., `MyModule.test.ts`).
- **Example:**
  ```typescript
  // MyModule.test.ts
  import { MyFunction } from './MyModule';

  test('MyFunction returns correct value', () => {
    expect(MyFunction()).toBe(42);
  });
  ```

## Commands

| Command                | Purpose                                                         |
|------------------------|-----------------------------------------------------------------|
| /new-study-track       | Add a new study track or artist study                           |
| /update-study-track    | Update or refine an existing study track                        |
| /new-lesson            | Add a new lesson note or resource/cheatsheet                   |
| /bulk-update-studies   | Expand or synchronize multiple study tracks in one update       |
```
