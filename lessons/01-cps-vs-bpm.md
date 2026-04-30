## Best sources on Tidal cps vs Ableton BPM

### 1. **TidalCycles docs: “Cycles”**

This is the most direct source. It explicitly says Tidal does **not** use BPM, but **CPS: cycles per second**. It also explains that a pattern divides one cycle into equal parts, and gives the conversion example `setcps (130/60/4)`. Best source for your basic explanation. ([Tidal Cycles][1])

Key idea to take from it:

```haskell
setcps (130/60/4)
```

means **130 BPM**, divided by **60 seconds**, divided by **4 beats per cycle**.

---

### 2. **TidalCycles docs: “Performance / setcps”**

This page is even more practical. It states that `setcps` adjusts cycles per second, that the default is `0.5625`, equivalent to `135/60/4`, and explains that `/4` means four beats per Tidal cycle. ([Tidal Cycles][2])

This is probably the best citation for the formula:

```text
cps = bpm / 60 / beatsPerCycle
```

So for normal Ableton 4/4 thinking:

```text
cps = bpm / 60 / 4
```

---

### 3. **Strudel docs: “Understanding Cycles”**

Strudel is heavily inspired by Tidal, and this page explains the concept very clearly for people coming from BPM-based software. It says 0.5 CPS gives one cycle every two seconds, and with four kicks in the cycle, most musicians would hear it as 120 BPM. It also gives the general idea: use `setcpm(bpm/bpc)`, where `bpc` means beats per cycle. ([Strudel][3])

This is probably the most beginner-friendly article.

---

### 4. **“How Mini-notation in Tidal Cycles approaches rhythm”**

Short but very useful. It explains the exact mental model: in Tidal, each pattern is assumed to play inside one cycle. It gives the same example: a 4/4 bar at 120 BPM lasts 2 seconds, so the inverse is `0.5` CPS. ([Weird][4])

This is good if you want to explain it to Ableton users in plain language.

---

### 5. **TidalCycles multi-user / Ableton Link docs**

This is useful specifically for **Ableton sync**. It explains the `carabiner tidal 4 (-0.14)` setup, where `4` is the number of beats per cycle used to convert between Ableton Link’s BPM and Tidal’s CPS. It also notes that you might use `2`, or `3` for a waltz. ([Tidal Cycles][5])

This is the key Ableton/Tidal bridge source.

---

### 6. **Ableton Link official documentation**

Ableton Link synchronizes **tempo, beat, phase, and start/stop**, but it does not force every app to share the same timeline. Each app maps its own musical model onto Link’s beat/phase model. This is important because Tidal’s “cycle” must be mapped onto Ableton’s “beats” using a chosen beats-per-cycle value. ([Ableton GitHub][6])

This source is best if you want to explain **why the conversion is not automatic philosophy-wise**: Ableton thinks in beats/bars; Tidal thinks in cycles.

---

## More conceptual / academic sources

### 7. **Alex McLean — “Tidal 2.0 beatMode”**

This is not a tutorial, but it is very relevant conceptually. Alex McLean discusses the difference between Tidal’s existing **cycle-oriented** transformations and newer **beat-oriented** ideas. He also contrasts Tidal’s approach with grid/DAW-like representations. ([Slab][7])

Good quote idea from this: Tidal is not just “Ableton with code”; its time model is fundamentally cycle/pattern-oriented.

---

### 8. **Alex McLean — “Alternate Timelines for TidalCycles”**

This is an academic paper about Tidal’s evolving internal representation. It is not mainly about BPM conversion, but it is useful background if you want to understand why Tidal treats time differently. ([arXiv][8])

Read this only after the docs above.

---

### 9. **Roberts & Pachon-Puentes — “Bringing the TidalCycles Mini-Notation to the Browser”**

This paper explains Tidal’s mini-notation and pattern querying model. It describes Tidal as a Haskell DSL with strong emphasis on time and rhythm, and explains pattern querying over time using start time and duration.

Useful if you want a more formal explanation of how mini-notation generates events over time.

---

### 10. **Learning Tidal Fundamentals**

This is a deep technical write-up of Tidal internals. It explains patterns, events, arcs, and rational time. It is probably too low-level for explaining BPM to musicians, but good if you want to understand the engine model. ([mzadel.github.io][9])

---

## The explanation I would use

For Ableton users, I’d explain it like this:

> Ableton tempo is measured in **beats per minute**. Tidal tempo is measured in **cycles per second**. A Tidal cycle is usually treated like a musical container — often one bar. So if we decide that one Tidal cycle equals one 4/4 bar, then one cycle contains 4 beats. That gives the conversion:
> `cps = bpm / 60 / 4`.

For example:

```haskell
setcps (120/60/4)
```

means:

```text
120 beats per minute
÷ 60 seconds
÷ 4 beats per cycle
= 0.5 cycles per second
```

So **120 BPM in Ableton ≈ 0.5 CPS in Tidal**, assuming **4 beats per Tidal cycle**.

[1]: https://tidalcycles.org/docs/reference/cycles/ "Cycles | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/performance/ "Performance | Tidal Cycles"
[3]: https://strudel.cc/understand/cycles/ "
      Understanding Cycles  Strudel
    "
[4]: https://weird.one/ctcutler3669/mini-notation "
		How Mini-notation in Tidal Cycles approaches rhythm | ctcutler3669 |
		Weird.One
	"
[5]: https://tidalcycles.org/docs/configuration/multiuser-tidal/ "Multi-User Tidal | Tidal Cycles"
[6]: https://ableton.github.io/link/ "Link Documentation | Ableton"
[7]: https://slab.org/2023/05/13/tidal-2-0-beatmode-tidalcycles-vs-tidalbeats/ "Tidal 2.0 beatMode (TidalCycles vs TidalBeats?) – Alex McLean"
[8]: https://arxiv.org/abs/2209.04289 "[2209.04289] Alternate Timelines for TidalCycles"
[9]: https://mzadel.github.io/tidalfundamentals/ "Learning Tidal Fundamentals"
