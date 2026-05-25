# Drum Structures Study

Intermediate rhythm-logic notes and a runnable stock-sample atlas inspired by
[`lvm/tidal-drum-patterns`](https://github.com/lvm/tidal-drum-patterns).

This study focuses on the source repository's core idea: write drum parts as
boolean gate patterns, then apply those gates to instruments with `struct`.
The local material does not import or vendor the upstream Haskell package.

## Boundary

The source package is GPL-3 and contains a large set of Haskell modules. It
also has module naming that can be awkward on macOS case-insensitive
filesystems. For this curriculum, treat the package as a reference for rhythm
thinking only: use short local translations, stock samples, and no package
dependency.

## Documents

| File | Purpose |
| --- | --- |
| [`research-summary.md`](research-summary.md) | Source notes, extracted techniques, and integration caveats. |
| [`source-map.md`](source-map.md) | Upstream observations mapped to local rhythm-study translations. |
| [`tidal/drum-structure-atlas.tidal`](tidal/drum-structure-atlas.tidal) | Runnable stock-sample atlas for `Pattern Bool` drum structures. |

## Shared References

- [`../shared/sample-fallbacks.md`](../shared/sample-fallbacks.md)
- [`../shared/performance-safety-checklist.md`](../shared/performance-safety-checklist.md)
- [`../shared/tidal-version-compatibility.md`](../shared/tidal-version-compatibility.md)

## Teaching Role

Use this after students understand Euclidean notation, boolean patterns, and
`struct`. Start with
[`tidal/drum-structure-atlas.tidal`](tidal/drum-structure-atlas.tidal), then
ask students to replace samples while keeping the rhythm gates stable.
