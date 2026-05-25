# Cover Voice Stack

## Study Metadata

- Primary axis: transcription and role lanes.
- Evidence source: [source-map study evidence](../source-map.md#study-evidence).
- Reuse posture: analysis-only; sources are cover/remake studies from
  repositories with no detected license.

## Source Examples

- [Claffystic/StudelProjects: `TobyFoxDetermination.js`](https://github.com/Claffystic/StudelProjects/blob/main/TobyFoxDetermination.js)
- [gitgernit/strudel: `igorTheme.js`](https://github.com/gitgernit/strudel/blob/main/igorTheme.js)

## Structure

This structure transcribes a known piece into role-based lanes when the source
material supports that split. The strongest example separates lead, harmony,
and bass lanes; the secondary example shows a simpler remake split between
piano material and drums. Instead of abstracting the song into generative rules,
the pattern keeps long written lines but separates them by musical job.

## Why It Works

- Long note patterns preserve recognizable contour.
- Named lanes make dense transcription readable.
- Harmony and bass can be checked independently from lead.
- Drums can be added as a separate remake layer when the arrangement includes
  a rhythm remake.

## Arrangement Map

| Lane | Role |
| --- | --- |
| Lead | Main recognizable tune. |
| Harmony | Supporting line or chord tone movement. |
| Bass | Root motion and weight. |
| Drums | Rhythmic remake layer, optional for source material that was not drum-led. |

## Reusable Template

```js
$lead: note(`long lead transcription`).sound("lead")
$harmony: note(`supporting transcription`).sound("harmony")
$bass: note(`bass transcription`).sound("bass")
$drums: stack(kick, hats, snare)
```

## Practice Prompts

- Transcribe only the bass first, then add the lead.
- Keep every musical role in a named lane.
- Add drums last so they support rather than obscure the transcription.

## Caveats

Cover transcriptions may involve copyrighted compositions. Use them for study,
link to source examples, and avoid copying large code or musical excerpts into
course material.
