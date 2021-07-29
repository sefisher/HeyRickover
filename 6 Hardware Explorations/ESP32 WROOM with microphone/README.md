**Circuit Board design using ESP-32 WROOM with MEMS i2s microphone**

The circuit board was designed using [KiCAD](https://www.kicad.org/) and the parts were selected from what was available at JLCPCB.  The intent is that all of the parts will be surface mount except for the headers which will be through hole and optional.  [JLCPCB](https://jlcpcb.com/) will do single sided SMT assembly and only charge for the price of the components.

To Do List:
1. Generate PCB layout
	1. targeting 2.5" circular board
	2. targeting two layer PCB
	3. keep ESP-32 WROOM antenna external to PCB (maybe notch out a section of circle)
	4. add ground planes to open areas on top and bottom of PCB
2. Verify footprint for MEMS microphone available from JLCPCB
3. Keep microphone header between ESP-32 and the built-in MEMS microphone (allows cutting traces and adding external microphone for testing)