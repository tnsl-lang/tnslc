# tnslc

The reference compiler for the TNSL programming language.  The compiler is written in TNSL.

## Requirements:
- `nasm` - netwide assembler
  - To bootstrap we build an initial `tnslc` from the `stuck` directory
  - `tnslc` currently outputs nasm compatible x64 asm
- `gcc` - c compiler (any will do, just change in build.sh)
  - we use this to link with libc at the moment until the compiler is in a more complete state

## Usage:

Bootstrap using the `setup.sh` script, this builds an initial tnslc from the asm in `stuck`

Build using the provided `build.sh` script, it takes the file you want to build as an argument
- For example: `build.sh tnslc` will build the file named `tnslc.tnsl` and place artifacts in the `build` directory

Run the compiler (once you build it) using the `run.sh` script (works the same way as build.sh) or just copy the
binary and use it as you please.  Run outputs into `build/NEXT` by default

To update the "stuck" version of the compiler we are using for bootstrap, run `stick.sh` after building the
compiler with `build.sh`.  This will copy the tnslc asm from the `build` diretory into the `stuck` directory
and re-build the bootstrap compiler from it.

## License

	This Source Code Form is subject to the terms of the Mozilla Public
	License, v. 2.0. If a copy of the MPL was not distributed with this
	file, You can obtain one at http://mozilla.org/MPL/2.0/.
