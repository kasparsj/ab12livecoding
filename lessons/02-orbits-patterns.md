## Best sources for **orbits**

### 1. Official Tidal docs: **Audio Outputs**

This is the best practical explanation. It says that Tidal’s audio engine is usually **SuperDirt**, and that **orbits** are the key to routing audio. The useful sentence is: you can think of each orbit as an **audio output**, with its own set of global effects, by default reverb and delay. It also explains that `d1` normally maps to orbit `0`, `d2` to orbit `1`, etc., and that you can explicitly route with `# orbit 3`. ([Tidal Cycles][1])

Example:

```haskell
d1 $ s "bd sn" # orbit 0
d2 $ s "hh*8"  # orbit 1
d3 $ s "arpy"  # orbit 2
```

Mental model:

> A Tidal **orbit** is like a mixer channel / output lane in SuperDirt. Patterns go into orbits; each orbit can have its own global effects and routing.

### 2. Official Tidal docs: **Adding Global Effects**

This is useful because it explains why orbits are not just “tracks”. Global effects live on each orbit’s signal chain and are always available, unlike normal effects that are instantiated when a pattern asks for them. ([Tidal Cycles][2])

### 3. SuperDirt help: **SuperDirt.orbits**

This is lower-level, but very clear: SuperDirt orbits are “the basic elements of dirt”; each orbit has its own global effects and settings, and Tidal can direct sounds into an orbit using `# orbit "7"`. ([s4ntp.org][3])

### 4. Forum: **The routing structure of a Dirt orbit**

This is the best deeper/community explanation. It includes discussion of how multiple source synths inside an orbit stack into a dry bus, and why global effects are effectively “all or nothing” for that orbit. ([Uzu][4])

---

## Best sources for **patterns**

### 1. Official Tidal docs: **What is a pattern**

This is the most important source. It defines a Tidal pattern technically as a **function from time to events**. You ask a pattern for events in a time span, and it returns the events active during that span. It also shows that `"1 2 3"` becomes three events across the first cycle: `0–⅓`, `⅓–⅔`, `⅔–1`. ([Tidal Cycles][5])

This is the key mental model:

```haskell
"1 2 3" :: Pattern String
```

is roughly:

```text
0   -> 1/3 : "1"
1/3 -> 2/3 : "2"
2/3 -> 1   : "3"
```

So a Tidal pattern is not primarily a DAW clip or MIDI region. It is more like a **cyclic time-query function**.

### 2. Official docs: **Mini Notation**

This is the best source for everyday pattern writing. It explains that mini-notation is the string syntax used to write patterns of samples, notes, and parameters; internally, the string is parsed into pattern functions. The table covers rests `~`, grouping `[ ]`, parallel patterns `,`, repetition `*`, slowing `/`, alternation `< >`, replication `!`, and elongation `_` / `@`. ([Tidal Cycles][6])

Example:

```haskell
d1 $ s "bd [sn cp] hh*2"
```

means one cycle containing `bd`, then a grouped subdivision, then two hats.

### 3. Learning Tidal course / forum lesson: **Mini-notation sequencing**

This is probably the most beginner-friendly explanation. The forum lesson explicitly says that the more steps you add, the faster they go, because they fit inside one cycle. It also covers rests, subsequences, and nested subsequences. ([Uzu][7])

### 4. “Learning Tidal Fundamentals”

This is the best deep technical article. It explains the internals: patterns, events, arcs, query functions, mini-notation parsing, `fastFromList`, `queryArc`, etc. It is not a beginner tutorial, but it is excellent if you want to understand how Tidal actually represents time. ([mzadel.github.io][8])

Useful part: it shows that mini-notation like `"a b c"` is compressed into one cycle and repeats cyclically. ([mzadel.github.io][8])

### 5. Old Tidal book / GitHub docs

The old book has one of the clearest explanations of why adding more symbols makes the pattern faster: Tidal squashes the sequence to fit the cycle length. It also explains subpatterns, polyphony, polymeter, and matching events by where they fall inside another pattern’s timespan. ([GitHub][9])

---

## Best sources for **once**

There are two different things people often confuse:

1. **`once`** = play a pattern one time, immediately.
2. **Start a pattern from the beginning / at the next cycle boundary** = use `qtrigger`, `trigger`, `resetCycles`, or related timing tools.

### 1. Official Tidal docs: **Patterns / Doing things once**

The official docs give the basic definition: `once` plays something only once. Example: ([Tidal Cycles][10])

```haskell
once $ s "trump"
```

or:

```haskell
once $ s "bd"
```

### 2. Forum: **Play sample only once**

This is clearer than the docs about behavior: `once $ sound "bd"` plays the sound/pattern once **immediately when you run the line**. It is not necessarily quantized to the start of the next cycle. ([Uzu][11])

So:

```haskell
once $ s "bev"
```

is good for one-shot playback, long samples, transitions, background recordings, etc.

### 3. Forum: **“once” at beginning of cycle?**

This is the key thread for your exact confusion. The answer says `once` triggers immediately and is **not quantized to the current global cycle position**. If you need a one-shot that starts exactly at the beginning of the next cycle, you need a different construction, often involving `qtrigger` and `seqP`, rather than plain `once`. ([Uzu][12])

Important difference:

```haskell
once $ s "bd sn bd sn"
```

plays once now.

```haskell
d1 $ qtrigger $ s "bd sn bd sn"
```

starts aligned to a cycle boundary, but then behaves like a normal pattern unless you structure it to stop.

### 4. Official docs: **Performance / trigger, qtrigger, mtrigger**

This explains the trigger family. `trigger` aligns the start of a pattern with the time it is evaluated, which may not align with the pattern grid. `mtrigger` aligns the start to the next cycle boundary divisible by a given number; `qtrigger` is equivalent to `mtrigger 1`. ([Tidal Cycles][13])

This is the practical distinction:

```haskell
once $ s "bd sn"
```

one-shot, immediate.

```haskell
d1 $ qtrigger $ s "bd sn"
```

start at a clean cycle boundary.

```haskell
do
  resetCycles
  d1 $ s "bd sn"
```

reset the global cycle clock and start from the beginning, but this affects all active patterns. ([Tidal Cycles][13])

### 5. Official how-to: **Trigger a pattern from the start**

This page is specifically about the problem: Tidal’s cycle clock is always running, so sometimes you need to start a pattern deterministically from the beginning. It lists `nudge`, `qtrigger`, `trigger`, and `resetCycles` as relevant tools. ([Tidal Cycles][14])

---

## The shortest explanation you can give someone

> In Tidal, a **pattern** is not a fixed clip. It is a cyclic function that returns events for a span of time. A pattern like `"bd sn"` fills one cycle, so `bd` takes the first half and `sn` takes the second half. An **orbit** is the SuperDirt audio lane/output where that pattern is played, like a mixer channel with its own global effects. `once` means “play this pattern one time immediately”; it does not necessarily wait for the next cycle boundary. If you want a pattern to start cleanly at the next cycle, use `qtrigger`/`mtrigger`/`resetCycles` depending on the situation.

[1]: https://tidalcycles.org/docs/configuration/AudioConfig/audio_outputs/ "Audio Outputs | Tidal Cycles"
[2]: https://tidalcycles.org/docs/configuration/adding_global_effects/ "Adding Global Effects | Tidal Cycles"
[3]: https://s4ntp.org/NTMI/SCHelp/Classes/SuperDirt.html "SuperDirt | SuperCollider 3.13.0 Help"
[4]: https://uzu.lurk.org/t/the-routing-structure-of-a-dirt-orbit/3902 "The routing structure of a dirt orbit - TidalCycles - Uzu"
[5]: https://tidalcycles.org/docs/advanced/understanding-innards/What_is_a_pattern/ "What is a pattern | Tidal Cycles"
[6]: https://tidalcycles.org/docs/reference/mini_notation/ "Mini Notation | Tidal Cycles"
[7]: https://uzu.lurk.org/t/week-1-lesson-3-sequencing-with-the-mini-notation/367 "Week 1 lesson 3 - sequencing with the mini-notation - Week 1 - mini-notation - Uzu"
[8]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
[9]: https://github.com/tidalcycles/Tidal/blob/dev/old/doc/book/index.md "Tidal/old/doc/book/index.md at main · tidalcycles/Tidal · GitHub"
[10]: https://tidalcycles.org/docs/reference/patterns/ "Patterns | Tidal Cycles"
[11]: https://uzu.lurk.org/t/play-sample-only-once/5011 "Play sample only once - TidalCycles - Uzu"
[12]: https://uzu.lurk.org/t/once-at-beginning-of-cycle/3345 "\"once\" at beginning of cycle? - Uzu"
[13]: https://tidalcycles.org/docs/reference/performance/ "Performance | Tidal Cycles"
[14]: https://tidalcycles.org/docs/patternlib/howtos/startpattern/ "Trigger a pattern from the start | Tidal Cycles"
[15]: https://tidalcycles.org/docs/reference/controls/ "Controls | Tidal Cycles"
[16]: https://uzu.lurk.org/t/can-the-start-and-end-points-of-the-samples-be-altered/4026 "Can the start and end points of the samples be altered? - TidalCycles - Uzu"
[17]: https://slab.org/2013/03/02/demonstrating-tidal/ "Demonstrating tidal – Alex McLean"
[18]: https://arxiv.org/pdf/2209.04289 "Alternate Timelines for TidalCycles"
[19]: https://users.sussex.ac.uk/~thm21/thor/pdfs/Magnusson_McLean_Patterns.pdf "Performing with Patterns of Time"
