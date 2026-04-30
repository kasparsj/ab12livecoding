-- SPDX-License-Identifier: LGPL-3.0-only
-- Local ab12kabinets integration wrapper for vendored Jarmlib.
-- This file is a local addition, not an upstream Jarmlib file.
--
-- Run from the repository root inside Tidal/GHCI:
-- :script third_party/jarmlib/ab12kabinets/Boot.hs

:set -XOverloadedStrings
:set prompt ""
:set prompt-cont ""

import Sound.Tidal.Context

-- The wrapper assumes the Tidal/GHCI process starts at the repository root.
:cd third_party/jarmlib/upstream/tidal

-- Jarmlib's default SuperDirt target, stream setup, helper library, and
-- target-dependent helper hooks. Experimental targets remain commented in
-- Jarmlib's own target files unless a user opts into them manually.
:script osc/Targets.hs
:script stream/Stream.hs
:script lib/Lib.hs
:script osc/TargetLibs.hs

-- Return to the course repository root after loading the vendored library.
:cd ../../../..

:set prompt "~ "
