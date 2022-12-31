# Caravel Analog User

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)

---


I am trying to build a 27MHz to 1MHz downconverter.

How it works: a 4MHz crystal oscillator is used to generate a 52MHz clock signal using a PLL. This is used to generate 2 26MHz signals which are 90 degrees out of phase. 
Two gilbert cell mixers are then used to downconvert the signal to 1 MHz, and an 3 pole RC filter is used to filter out higher frequencies. The signal is then phase
shifted by 90 degrees (since this is an IQ mixer basically), and they are subtracted to eliminate any 25MHz. Finally, the signal goes through an op amp with resistors 
that allow the user to set the gain.

To run netgen just run the netgen.sh file.

I hope my circuit works!

---


