# Artist-Code Reading Guide

Use this guide when turning an artist repository into a classroom study.

## Reading Sequence

1. Identify the source role.
   Is the file a polished set, a practice sketch, a helper file, a hardware
   setup file, or a published track?

2. Find the reusable technique.
   Name the method without copying the whole source line: transformation chain,
   sample-index scan, one-sample texture, probability boundary, section state,
   hardware translation, or performance ending.

3. Translate the dependencies.
   Replace private samples, custom synthdefs, MIDI devices, and custom helper
   functions with stock SuperDirt samples and standard Tidal functions.

4. Make the teaching unit small.
   Keep one anchor, one transformation, and one listening task per section.

5. Add a recovery path.
   Every lab should include a way to return to a stable groove or end cleanly.

## What To Preserve

- The musical problem the source code solves.
- The form-building habit behind the source code.
- The relationship between stable anchors and changing layers.
- The performance mindset: rehearsal, recovery, restraint, and endings.

## What To Avoid

- Long pasted source patterns.
- Private sample names as required material.
- Custom SuperCollider or MIDI setup as a beginner dependency.
- Dense examples without listening prompts.
- Randomness across too many dimensions at once.

## Classroom Translation Template

| Source observation | Teaching translation |
| --- | --- |
| Dense source line | One base pattern plus one transformation at a time. |
| Custom sample family | Stock sample family plus fallback options. |
| Hardware stream | `d1`, `d2`, `n`, `note`, and stock synth/sample examples. |
| Custom helper | Standard Tidal equivalent or a local `let` alias. |
| Long set file | Section-state skeleton with planned transitions. |
