# Euclidean and Binary Rhythm

This lesson covers three related rhythm tools:

1. Euclidean rhythm in mini-notation, such as `bd(3,8)`
2. boolean patterns, such as `"t f t f"` or `"1 0 1 0"`
3. `struct`, which applies a boolean rhythm to another pattern

## Euclidean Mini-Notation

Euclidean notation distributes `k` hits across `n` steps as evenly as possible:
([Tidal Cycles][2])

```haskell
d1 $ s "bd(3,8)"
d1 $ s "hh(7,16)"
d1 $ s "cp(5,8,2)"
```

Read `bd(3,8)` as: place 3 `bd` hits across 8 steps in one cycle.

The third number rotates the pattern:

```haskell
d1 $ s "bd(3,8,1)"
```

Several Euclidean parts can run together:

```haskell
d1 $ s "[bd(3,8), cp(2,8), hh(7,8)]"
```

## `euclid`

The function form is equivalent to mini-notation:
([Tidal Cycles][1])

```haskell
d1 $ euclid 3 8 $ s "cp"
```

matches:

```haskell
d1 $ s "cp(3,8)"
```

The function form is easier to pattern:

```haskell
d1 $ euclid "<3 5>" "[8 16]/4" $ s "bd"
```

Use `euclidInv` for the inverse/offbeat rhythm and `euclidFull` to choose
separate patterns for hits and gaps:

```haskell
d1 $ euclidInv 3 8 $ s "hh"
d1 $ euclidFull 5 8 (s "bd") (s "hh")
```

## Boolean Patterns

Boolean rhythm patterns use true/false values. In Tidal strings, `t` or `1`
means event; `f` or `0` means silence:
([Tidal Cycles][1])

```haskell
"t f t f"
"1 0 1 0"
"t(3,8)"
```

The official docs show `"t(3,8)"` as:

```text
t f t f t f f t
```

## `struct`

`struct` has this shape:

```haskell
struct :: Pattern Bool -> Pattern a -> Pattern a
```

It takes a boolean rhythm and applies it to another pattern:

```haskell
d1 $ struct "t(3,8)" $ s "bd"
d1 $ struct "1 0 1 0" $ s "hh"
d1 $ struct (every 3 inv "t(3,8)") $ s "cp"
```

The first argument supplies the gate pattern. The second argument supplies the
sound, note, or control pattern.

This creates a useful separation:

```text
rhythm/gates -> struct -> instrument/control pattern
```

## Reusable Rhythm Variables

Artist study material often separates rhythmic structures from instruments.
For example, Kindohm's meetup code defines rhythm patterns and reuses them
across drum, percussion, and control parts. ([GitHub][3])

```haskell
do
  let main = "t(5,16)"
      clap = "t(2,8,1)"

  d1 $ stack [
      struct main $ s "bd",
      struct clap $ s "cp",
      struct main $ s "hh" # speed "2"
    ]
```

The result is easier to revise during performance: change `main`, and all
parts using that rhythm change together.

## Alignment Caveat

`struct` does not behave like a hardware sequencer gate that advances the next
note on each hit. Tidal aligns patterns over time and samples their values
where events intersect. ([TOPLAP forum][5], [Uzu][6])

This line:

```haskell
d1 $ struct "t(5,8)" $ n "0 1 2 3 4" # s "superpiano"
```

does not always feel like "five gates stepping through five notes." It is a
boolean rhythm aligned with a note pattern inside the same cycle.

## Binary Rhythm Generators

The Conditions docs include several ways to generate boolean patterns:
([Tidal Cycles][1])

```haskell
d1 $ struct (binary 163) $ s "cp"
d1 $ struct (binaryN 12 2946) $ s "hh"
d1 $ struct (ascii "x y") $ s "bd"
d1 $ struct (necklace 12 [4,2]) $ s "sd"
```

`binary 163` is equivalent to the 8-bit pattern `10100011`, which can be read
as:

```haskell
d1 $ struct "t f t f f f t t" $ s "cp"
```

## Continuous Patterns and `struct`

Continuous patterns such as `sine` have values but no discrete event
structure. `struct` can give them rhythmic structure.

```haskell
d1 $ speed (struct "t(3,8)" $ slow 2 $ range 0.5 2.5 sine)
  # s "bd"
```

Here the Euclidean rhythm decides when to sample the continuous speed pattern.

## Teaching Line

Euclidean notation makes evenly distributed rhythms. Boolean patterns represent
on/off gates. `struct` applies those gates to another pattern, so rhythm can be
written separately from sound, melody, or control.

[1]: https://tidalcycles.org/docs/reference/conditions/ "Conditions | Tidal Cycles"
[2]: https://tidalcycles.org/docs/reference/mini_notation/ "Mini Notation | Tidal Cycles"
[3]: https://github.com/kindohm/tidal-meetup-2021-05-08 "kindohm/tidal-meetup-2021-05-08"
[4]: https://blog.tidalcycles.org/index.html%3Fp%3D75.html "Interview with Mike Hodnick a.k.a. Kindohm"
[5]: https://forum.toplap.org/t/euclid-sequencing-in-place-of-randomness/466 "Euclid sequencing in place of randomness"
[6]: https://uzu.lurk.org/t/changing-sounds-within-euclidean-rhythms/747/8 "Changing sounds within Euclidean Rhythms"
[7]: https://userbase.tidalcycles.org/binary.html "binary - TidalCycles userbase"
[9]: https://cgm.cs.mcgill.ca/~godfried/publications/banff.pdf "The Euclidean Algorithm Generates Traditional Musical Rhythms"
[10]: https://strudel.cc/learn/time-modifiers/ "Time Modifiers | Strudel"
