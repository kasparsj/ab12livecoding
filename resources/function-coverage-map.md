# TidalCycles Function Coverage Map

This map keeps the 3-week beginner course compact while adding optional labs for broader Tidal function coverage.

## Coverage status

| Function family | Core coverage | Added extension coverage | Where to teach |
| --- | --- | --- | --- |
| Startup and pattern safety | `hush`, `silence`, `qtrigger`, `trigger`, `resetCycles`, `nudge` | `setcps`, `solo`, `unsolo`, `mute`, `unmute`, `unmuteAll` | Week 1 safety sidebar |
| Mini-notation and rhythm | rests, brackets, sample numbers, Euclidean basics | `/`, `!`, `|`, `,`, `< >`, `step`, `step'`, `struct`, `substruct`, `mask`, `euclidInv`, `euclidFull`, `necklace` | Week 1 pattern mechanics lab |
| Conditions and logic | `every`, `sometimes`, `mask` | `every'`, `foldEvery`, `when`, `whenmod`, `contrast`, `choose`, `chooseBy`, `wchoose`, `wchooseBy`, `select`, `selectF`, `pickF`, `squeeze`, `inhabit`, `sew`, `stitch` | Week 1/2 extensions |
| Randomness | `rand`, `irand`, `degrade`, `degradeBy` | `often`, `sometimesBy`, `someCycles`, `someCyclesBy`, `randrun`, `perlin`, `perlin2`, `cycleChoose`, `markovPat` | Week 2 generative lab |
| Pattern combination | basic layering with multiple slots | `stack`, `overlay`, `superimpose`, `layer`, `steps`, `iter'` | Week 3 arrangement lab |
| Concatenation and form | section comments and manual changes | `cat`, `fastcat`, `timeCat`, `randcat`, `wrandcat`, `append`, `fastAppend` | Week 3 arrangement lab |
| Time and transformation | `fast`, `slow`, `rev`, `every`, `jux`, `off`, `rot`, `chunk` | `hurry`, `palindrome`, `trunc`, `linger`, `loopFirst`, `bite`, `shuffle`, `scramble`, `ply`, `stutter`, `stut`, `echo`, `ghost`, `spin`, `weave`, `inside`, `outside`, `within`, `compress`, `zoom`, `swing`, `swingBy` | Week 1/3 extensions |
| Harmony and melody | notes, chord symbols, `arp`, bass layers | `scale`, `toScale`, `rolled`, `rolledBy`, voicings, oscillator-driven melody | Week 2 harmony lab |
| Oscillators and modulation | `range`, `sine`, `segment` | `rangex`, `cosine`, `square`, `tri`, `saw`, `isaw`, `smooth`, `perlin`, `perlin2` | Week 2 modulation lab |
| Sampling | `cut`, `chop` | `begin`, `end`, `sustain`, `legato`, `grain`, `striate`, `striateBy`, `slice`, `splice`, `randslice`, `chew`, `loopAt`, `smash`, `segment`, `discretise`, `sig` | Sampling/effects appendix |
| Effects and controls | `gain`, `pan`, `speed`, `delay`, `room`, `cutoff`, `resonance` | `vowel`, `dry`, `size`, `delaytime`, `delayfeedback`, `lock`, `shape`, `distort`, `triode`, `squiz`, `crush`, `coarse`, `krush`, `octer`, `ring`, `tremolodepth`, `tremolorate`, `leslie`, `phaserrate`, `bandf`, `bandq`, `hcutoff`, `hresonance`, `djf`, `comb`, `freeze`, `binshift`, `scram`, `waveloss`, `smear`, `enhance` | Sampling/effects appendix |
| Transitions | manual arrangement states | `jump`, `jumpIn`, `jumpMod`, `wait`, `waitT`, `xfade`, `xfadeIn`, `fadeIn`, `fadeOut`, `anticipate`, `anticipateIn`, `clutch`, `clutchIn`, `interpolate`, `interpolateIn`, `wash`, `washIn` | Week 3 performance transitions lab |

## Extension files

- [`../examples/topics/pattern-mechanics.tidal`](../examples/topics/pattern-mechanics.tidal)
- [`../examples/topics/modulation-generative-patterns.tidal`](../examples/topics/modulation-generative-patterns.tidal)
- [`../examples/topics/performance-transitions.tidal`](../examples/topics/performance-transitions.tidal)
- [`../examples/topics/sampling-and-effects-lab.tidal`](../examples/topics/sampling-and-effects-lab.tidal)

## Teaching rule

Treat topic files as menus, not required content. In a 3-week beginner course, pick only the examples that support the student's musical goal.
