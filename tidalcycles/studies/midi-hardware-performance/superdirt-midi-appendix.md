# SuperDirt MIDI Appendix

This appendix gives generic setup sketches for students who want to try the
optional MIDI parts of the study. It does not copy the source boot file or use
source-specific device names.

For current setup details, check the official Tidal documentation:

- [Tidal MIDI](https://tidalcycles.org/docs/configuration/MIDIOSC/midi/)
- [OSC and controller input](https://tidalcycles.org/docs/configuration/MIDIOSC/osc/)

## MIDI Output

Add a MIDI device to SuperDirt with your own device and port names:

```supercollider
MIDIClient.init;
~midiOut = MIDIOut.newByName("Your Device Name", "Your Port Name");
~midiOut.latency = 0;
~dirt.soundLibrary.addMIDI(\mydevice, ~midiOut);
```

Then send a simple note from Tidal:

```tidal
d1 $ s "mydevice" # midichan 0 # note "c3" # gain 0.7
```

Some setups prefer MIDI note numbers:

```tidal
d1 $ s "mydevice" # midichan 0 # midinote 60 # gain 0.7
```

## CC Output

Use CC output only after confirming that the device is configured and the target
control number is safe for the receiving instrument:

```tidal
d1 $ s "mydevice" # midichan 0 # ccn 74 # ccv 64
```

## Controller Input Bridge

One common approach is to receive MIDI CC values in SuperCollider and forward
them to Tidal's OSC control port. This generic sketch forwards controller values
as normalized control patterns:

```supercollider
(
var osc, cc;
osc = NetAddr.new("127.0.0.1", 6010);
MIDIClient.init;
MIDIIn.connectAll;
cc = MIDIFunc.cc({ |val, num, chan, src|
    osc.sendMsg("/ctrl", num.asString, val / 127);
});
~stopMidiToOsc = { cc.free; };
)
```

Read a forwarded controller in Tidal with a default value so the pattern still
runs without hardware:

```tidal
d1 $ sound "hh*8" # gain (range 0.2 0.8 $ cF 0.5 "88")
```

## Safety Checklist

- Start with stock-sample fallback patterns before sending MIDI to hardware.
- Keep gains and CC ranges bounded.
- Use a generic test patch before routing CC to performance-critical controls.
- Keep a visible cleanup command ready: `hush`.
- Stop controller bridges when finished so old mappings do not affect the next
  session.
