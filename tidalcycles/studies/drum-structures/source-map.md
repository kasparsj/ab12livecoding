# Drum Structures Source Map

This map links upstream `lvm/tidal-drum-patterns` observations to local teaching
translations. The local study preserves the `Pattern Bool` idea while avoiding
package imports, copied source modules, and upstream sample assumptions.

| Upstream observation | Extracted technique | Local translation |
| --- | --- | --- |
| README examples import a drum module and use role names with `struct`. | Treat drum roles as reusable boolean gates. | `tidal/drum-structure-atlas.tidal` uses local `let` rhythm variables instead of package imports. |
| Modules expose roles such as `bd`, `sn`, `ch`, `oh`, and `rm`. | Separate kick, snare, hat, open-hat, and rim/accent gates. | The atlas maps roles to stock `bd`, `sn`, `hh`, `cp`, and `drum` samples with conservative gains. |
| Some modules include `bps` values. | Tempo can be metadata rather than required code. | The atlas keeps the course tempo convention and uses source tempo only as research context. |
| The package has hundreds of modules. | A rhythm catalog is useful, but class needs curation. | The local track reduces the catalog to eight study structures. |
| The package is GPL-3 and installed through cabal. | Vendoring would add licensing and dependency weight. | The local repo does not copy `.hs`, `.cabal`, or package files and does not import the package. |
| The catalog lists case-sensitive names such as `HipHop` and `Hiphop`. | Module naming can be fragile across local filesystems. | The local study avoids package import paths and uses plain `.tidal` examples. |

## Atlas Cards

| Local atlas section | Upstream reference family | Local teaching focus |
| --- | --- | --- |
| Four-on-the-floor | `FourOnTheFloor` | Steady kick anchor and offbeat hat. |
| Amen-style break | `Amen`, `Breakbeat1` | Breakbeat role separation without copying a break. |
| Techno | `Techno` | Kick pulse, backbeat accent, and hat lift. |
| Funk | `Funk1a` and related funk modules | Syncopated kick against a stable backbeat. |
| Bossa | `Bossa1a` | Cross-accent/rim logic with a light pulse. |
| Jungle/DnB | `Jungle`, `Dnb1a` | Fast hats with displaced kick and snare anchors. |
| Irregular | `Irregular1a` | Uneven gates that still keep roles readable. |
| Ghost notes | `GhostSnare1a` | Quiet inner hits under stronger accents. |

## Local Files

- [`README.md`](README.md) - study overview and GPL/vendor boundary.
- [`research-summary.md`](research-summary.md) - source observations and
  extracted themes.
- [`tidal/drum-structure-atlas.tidal`](tidal/drum-structure-atlas.tidal) -
  runnable stock-sample rhythm atlas.

## Translation Notes

- Source code is paraphrased, not copied.
- Runnable examples use stock SuperDirt sample names.
- The atlas is intended for students to edit sample choices after they can hear
  the gate structures.
