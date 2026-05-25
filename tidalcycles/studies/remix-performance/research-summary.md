# Remix Performance Research Summary

Source: [`lil-data/vroomvroom`](https://github.com/lil-data/vroomvroom)

## Repository Material Inspected

- `README.md` - identifies the project as a live-coded TidalCycles edit of a
  commercial pop track and links to the performance video.
- `VroomVroom.tidal` - compact performance file using a track prefix, named
  pattern slots, stem roles, `loopAt`, `jux`, `struct`, `stack`, per-layer
  gain, and orbit routing.
- `BootTidalCustom.hs` - broad personal Tidal helper environment with tempo
  helpers, grouped effect controls, shorthand aliases, transition aliases,
  continuous signal helpers, harmony helpers, and named-track utilities.
- `samples/` - custom audio folders used by the source performance.

No license file was present in the cloned source. Because the project is a
commercial remix context with custom samples, the local study only paraphrases
the architecture and uses stock-sample placeholders.

## Extracted Teaching Themes

### 1. Track-Prefix Naming

The source groups related named patterns with a shared text prefix. This makes a
small set of parts feel like one performance object instead of isolated `d1`,
`d2`, and `d3` fragments.

Teaching translation:

- Use a local prefix such as `rmx`.
- Name parts by role: hook, build, percussion, bass.
- Keep the prefix stable while replacing individual roles.

### 2. Stem Roles

The performance is organized around a few clear roles rather than a large set
of unrelated layers.

Teaching translation:

- Hook: the memorable loop or phrase.
- Build: a wider or brighter supporting layer.
- Percussion: rhythmic energy and fills.
- Bass: low anchor and motion.

### 3. Stock Replacements For Custom Samples

The source depends on custom sample folders. In class, preserve the role of each
layer and replace the audio source with stock names.

Teaching translation:

- Use `arpy` or `superpiano` for hook/build material.
- Use `bd`, `sn`, `hh`, `cp`, and `drum` for percussion.
- Use `bass` for the low stem.
- Keep gains conservative while layering.

### 4. Per-Layer Gain And Orbit Management

The source helper vocabulary groups gain, legato, and orbit controls. The local
study expands those helpers into direct Tidal controls so the skeleton works in
a normal class environment.

Teaching translation:

```tidal
# gain 0.6 # legato 1 # orbit 0
```

### 5. Helper Vocabulary As Design Clue

The source boot file is too environment-specific to import, but it reveals a
useful design habit: repeated performance actions become short helpers.

Teaching translation:

- Explain helper aliases as personal instrument design.
- Use direct standard controls in the course skeleton.
- Do not require the source boot file.

### 6. Transition-Ready Named Patterns

Named pattern slots make it easy to replace one stem while leaving the rest of
the arrangement running.

Teaching translation:

- Build a full state.
- Remove one or two stems for a breakdown.
- Return the stems.
- End by silencing upper layers before the anchor.

## Source Caveats

- No source license file was found.
- The source uses custom samples.
- The source is tied to a commercial remix context.
- The local `.tidal` file is a structural study, not a reproduction.
