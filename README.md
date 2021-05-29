## An Atari BASIC program to render the Sierpinski Triangle on Atari 8-bit computers

An Atari 8-bit emulator running Atari BASIC (or a clone) is needed for this to run.

It was developed on the [atari800 emulator](https://atari800.github.io/) running as an 800 XL.
The specific command I used when developing this was:

`atari800 -xl -xlxe_rom ATARIXL.ROM -basic -H1 <path to this repo locally> -hreadwrite`

Note that the atari800 website has information on where to get ROMs, etc.
Once the emulator opens up and you are in the basic interpreter you can type 
`ENTER "H6:SPRTRI.BAS"`(`H6` is the PC-newline version of `H1`) to load the program into memory.
Then you can type `RUN` to run the program or `LIST` to list the program.
