import re

datr = """othermachine --  --  1/8" 2-Flute --  $14 --  1
pololu -- 2268 -- Stepper Motor with 28cm Lead Screw: Bipolar, 200 Steps per Rev, 42x38mm, 2.8V, 1.7 A per Phase -- $50.00 -- 2
pololu -- 2688 -- Traveling Nut for TR8x8 P2 Threaded Rods -- $6.00 -- 2 
IMS --  --  608 aluminum sheet --  $15 --  1
misumi --  --  Custom tslot --  $518.83 --  1
misumi -- HRUA5-AC-500-302 -- Front door -- $139.50 -- 1
ponoko --  --  Custom plastic cutting (8 day cutting time, and 3 day shipping) --  $407.92 --  1
panucatt --  -- Azteeg X5 mini 32BIT All-in-one Controller V3 4pcs SD5984 w/heatsink, 4 gig sd card	 --  $118 --  1
amazon -- -- SanDisk Ultra 32GB microSDHC UHS-I Card with Adapter, Grey/Red, Standard Packaging (SDSQUNC-032G-GN6MA) -- $13 -- 1
amazon --  --  Upchurch Scientific A-302 Disposable solvent inlet filter; 1/16" OD stem, for 1/16" ID tubing --  $ 28.00 --  1
amazon --  --  Upchurch Scientific A-302 Disposable Solvent Inlet Filter; Includes Flangeless Fittings For 1/8 --  $ 36.50 --  1
amazon --  --  Economy Pre-Assembly M5 T Nut for 20mm T-Slot/V-Slot Aluminum Extrusions (Pack of 50) --  $10.00 --  1
amazon --  --  uxcell Replacement Black CCTV Box Camera 25mm Focal Length Board Lens F1.2 --  $ 9.54 --  1
amazon --  -- 	MUYI 5 Meters = 16.4 Feet PTFE Teflon Bowden Tube OD 4mm/0.16in. ID 2mm/0.08in. 1.75mm/0.07in. Filament White For 3D Printer Chemical Electrical Medical Equipment -- 	$9.99 --  1
amazon --  -- Shrouded header 2x3 0.1"(pack of 10) --  $5.95 -- 	1 
amazon --  --  PC Accessories - Connectors Pro 10-Pack 2X5 10P 2.54mm Dual Rows IDC Sockets for Flat Ribbon Cable, 10 Pins FC Female Connector --  $1.89 --  1
amazon --  -- 1 of URBEST Inlet Module Plug Fuse Switch Male Power Socket 10A 250V 3 Pin IEC320 C14 --  $3.00 --  1
amazon --  -- 2 of SPECTRA SYMBOLLINEAR SOFTPOT 300 MM -- 	$11.18 --  1
amazon --  -- 2 of SPECTRA SYMBOLWIPER -- 	$5.54 --  1
amazon --  -- Transcend 64GB SATA III 6Gb/s MTS400 42 mm M.2 SSD Solid State Drive  --  $34.99 --  1
amazon --  -- Crucial 2GB DDR3/DDR3L 1066 MT/s (PC3-8500) SODIMM 204-Pin Mac Memory CT2G3S1067M --  $9.89 --  1
amazon --  -- ASUS CHROMEBOX-M004U Desktop --  $154.99 --  1
amazon --  -- uxcell DC 6-36V NPN NO 3-wire 4mm Noncontact Inductive Proximity Sensor Switch LJ12A3-4-Z/BX --  $8.73 --  1
adafruit -- 1085 -- ADS1115 16-Bit ADC - 4 Channel with Programmable Gain Amplifier -- $14.95 -- 1
adafruit -- 155 -- Standard servo - TowerPro SG-5010 - 5010 -- $12.00 -- 1
adafruit -- 1158 -- Aluminum Extrusion Oval T-Nut for 20x20 - M4 Thread - pack of 50 -- $9.95 -- 1
adafruit --  324 -- Stepper motor - NEMA-17 size - 200 steps/rev, 12V 350mA --  $14.00 --  5
adafruit --  1259 -- Aluminum Extrusion Double Corner Brace Support (for 20x20) -- $1.95 --  4
adafruit --  1157 -- Aluminum Extrusion Slim T-Nut for 20x20 - M4 Thread - pack of 50 --  $11.95 --  1
adafruit --  1159 -- Button Hex Machine Screw - M4 thread - 10mm long - pack of 50 --  $5.95 --  1
adafruit --  1160 -- Button Hex Machine Screw - M4 thread - 8mm long - pack of 50 --  $5.95 --  1
adafruit --  178 -- Linear SoftPot (Ribbon Sensor) - 100mm	 --  $7.95 --  1
adafruit --  3055 -- Raspberry Pi 3 - Model B - ARMv8 with 1G RAM --  $39.95 --  1
adafruit --  3082 -- Aluminum Heat Sink for Raspberry Pi 3 - 15 x 15 x 15mm --  $1.95 --  1
adafruit --  1995 -- 5V 2.4A Switching Power Supply with 20AWG MicroUSB Cable --  $7.50 --  1
adafruit --  899 -- USB cable - 6" A/MiniB --  $2.95 --  1
adafruit --  993 -- USB Extension Cable - 3 meters / 10 ft long --  $3.95 --  1
adafruit --  794 -- Premium Female/Female Jumper Wires - 40 x 3" (75mm)  --  $3.95 --  1
adafruit --  793 -- Premium Female/Female Jumper Wires - 40 x 12" (300mm) --  $3.95 --  1
adafruit --  759 -- Premium Male/Male Jumper Wires - 40 x 3" (75mm) --  $3.95 --  1	
adafruit --  760  -- Premium Male/Male Jumper Wires - 40 x 12" (300mm) --  $3.95 --  1
adafruit --  825 -- Premium Female/Male 'Extension' Jumper Wires - 40 x 3" (75mm) --  $3.95 --  1
adafruit --  824 -- Premium Female/Male 'Extension' Jumper Wires - 40 x 12" (300mm) --  $7.95 --  1
adafruit --  824 -- Premium Female/Male 'Extension' Jumper Wires - 40 x 12" (300mm) --  $7.95 --  1
sparkfun --  ROB-11015 --  Solenoid - 5v (small) (adafruit is 2776 but out of stock) -- $4.95 --  4
sparkfun --  CAB-10647 --  Ribbon Cable - 10 wire (15ft) --  $4.95	 --  2
sparkfun -- ROB-10398  -- Vacuum Pump - 12V -- 	$14.95 --  3
sparkfun -- SEN-13835  -- SST Liquid Level Sensor -- 	$24.95 --  1
biqu --  --  3D printer accessories MK8 all-metal remote extruder full kit with Nema 17 mk8 extruder for 3D printer parts --  $29.64 -- 0
biqu --  --  E3D Printer J-head Hotend with Fan for 1.75/3.0mm 12 v E3D v6 bowden Filament Wade Extruder 0.2/0.3/0.4mm Nozzle+Volcano kit --  $8.49 -- 0
biqu --  --  Openbuilds DIY For v-slot alloy Gantry Plate Slot Aluminium+Openbuilds Isolation Column+Plastic wheel with BearingsPulley c-beam --  $26.68 -- 0
biqu --  --  Competitive Price 40x40x20mm 4020 DC Axial Flow Mini Computer Case Cooling Fan 12V cooling fan 3D0025	 --  $3.18 --  1
biqu --  --  High Quality 3D Printer Parts Upgraded Universal Extruder Kit for Makerbot MK8 Extruder Delta I3 1.75mm PC Plastic --  $7.90 --  2
biqu --  -- 50PCS Limit Switch 3 Pin N/O N/C High quality All New 5A 250VAC KW11-3Z Micro Switch Factory direct sale --  $8.50 -- 1
biqu --  --  5pcs 3D printer accessories Ultimaker 2 UM2 spring fine print platform edging 1.2*15mm for UM2 heating bed flat adjusting Spring --  $0.90 --  1
biqu --  -- 5pcs 3D printer Leveling components M3 screw Leveling spring Leveling knob suite for 3D printer free shipping -- $1.49 --  1
biqu --  -- Free shipping 10PCS 70cm 4Pin 4Pin Female to Female Jumper Wire Dupont Cable for 3D Printer --  $3.00 --  1
biqu --   --  10PCS Mechanical Endstop For Reprap ramps 1.4 3D for DIY printer --  $4.90 --  1
biqu  --  --  3D Printer Stepper Motor Flexible Coupling Coupler /Shaft Couplings 5mm*8mm*25mm Flexible Shaft --  $1.02 -- 5
biqu --   --  Free shiping !!! Mega 2560 R3 Mega2560 REV3 ATmega2560-16AU Board + USB Cable Compatible Good Quality Low Price --  $7.60 --  1
biqu --  --  10pcs 3D Printer Kit A4988 Stepper Motor Driver Module with Heatsinks Reprap Board For 3D Printer Free Shipping --  $10.81 --  1
biqu --   --  High quality 3d printer UNO R3 MEGA328P CH340 CH340G for Arduino UNO R3 for 3d printer --  $3.50 --  1
biqu --  -- 12V 30A 360W switching power supply adapter led strip light transformer 12v for 3d printer part --  $22.54 --  1
biqu --  --  3D Printer CNC Parts 12 pcs LM8UU 8mm linear ball bearing +6 pcs 608zz ball bearing for Kossel Reprap Rostock Mini Delta --  $9.76 --  1
biqu --  --  Free shipping 10pcs/lot 688ZZ 688Z 688 ABEC-5 8*16*5 Miniature Ball Radial Deep Groove Ball Bearings fot 3D printer part --  $3.78 --  1 
biqu --  --  BIQU CNC Openbuilds POM Wheel With Bearings Big Models Passive Round Wheel Idler Gear Perlin Wheel for v-slot (10pcs with bearing) --  $16.50 --  1
biqu --  --  3D Printer 3D V6 J-head Pneumatic Connectors PC4-01 1.75mm PTFE Tube quick coupler, j-head Fittings Reprap Hotend Fit -- 	$0.46 --  2
biqu --  --  10 pcs GT2 Timing Pulley 16teeth Alumium Bore 5mm fit for GT2 belt Width 6mm ( 16 teeth ) for 3D printer --  $6.99 -- 1
biqu --  --  3D printer accessories 36 teeth MK7 / MK 8 stainless steel planetary gear wheel extruder feed extrusion wheel  --  $0.68 -- 1
mouser -- 744-SP-L-0150-1033ST --  SP-L-0150-103-3%-ST SoftPot 150mm --  $8.010 -- 1
mouser  -- 744-WP-M1-01-03014DI --  WP-M1-01-03-014-DI Wiper 1Newton-3N -- $4.12 --  3

amazon -- EW-95802-05 -- Platinum-Cured Silicone Tubing, 1/8"ID x 1/4"OD, 25 ft/pack $7.87 -- $48.50 -- 1
cole-palmer -- EW-95802-05 --  Platinum-Cured Silicone Tubing, 1/8"ID x 1/4"OD, 25 ft/pack  --  $47.75 --  1
amazon -- EW-95802-02 --  Platinum-Cured Silicone Tubing, 1/16"ID x 1/8"OD, 25 ft/pack ($7.94 shipping) --  $30.50 --  1
cole-palmer -- EW-95802-02 --  Platinum-Cured Silicone Tubing, 1/16"ID x 1/8"OD, 25 ft/pack  --  $29.75 --  1
M12 Lenses -- PT-LH008P --  Plastic M12 Lens Holder 18mm Hole spacing --  $3.00 --  1
M12 Lenses -- PT-2520  --  25mm, F2.0 Board Lens (it was out of stock) --  $13.23 --  1
imaging source --  DMM22BUC03-MLA  -- 	The Imaging Source "One for all" board camera,USB 2.0, angled USB jack, 1/3" CMOS,monochrome, max resolution 744x480, ROI toincrease speed, global shutter, trigger in, digitalout, WITHOUT lens, lens mount and cables.S/N: 43510573 --  $199.00 --  1
phidgets --  3340_0 --  42STH38 NEMA-17 Bipolar Precision Gearless Stepper 0.9 step angle --  $20.00 --  2
igus -- TS-04-12 --  DRYLIN T RAIL --  $64.50 --  1
igus -- TW-04-12 --  DRYLIN T CARR --  $38.50 --  1 
igus -- TS-04-09 --  DryLin T, miniature profile rail --  $63.99 --  1
igus -- TW-04-09 --  DryLin T, miniature slide carriage --  $15.70 --  2
igus -- TW_04_07_1 --  DryLin T, miniature slide carriage --  $15.70 --  1"""

b = re.split("\n", datr)

psum = 0
for i in b:
 c = re.split("--", i)
 try:
  pr =  float(re.sub("\t| |\$", "", c[3]))
  un = int(re.sub(" |\t", "", c[4]))
  print(pr * un)
  psum = psum + (pr * un)
 except: 
  print(c)

print(psum)
#print datr

