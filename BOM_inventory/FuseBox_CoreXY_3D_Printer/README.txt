                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:1047193
FuseBox CoreXY 3D Printer by _AlexY is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

### FuseBox2 printer design:
https://www.thingiverse.com/thing:2422839. 
#### The successor to the FuseBox. Better hotend cooling, more rigid 2020 frame, faster with less ringing, better endstops, etc. You should probably build that one instead.

<br><br>
**Update 4/30/17:**
Updated files for FuseBox 1.5 are available on GitHub at https://github.com/alexyu132/fusebox. Check the repository for the most recent changes and updates.

**Update 12/22/15:**
For additional rigidity, use part HBLTBS3 from Misumi. These are metal corner brackets that replace the printed corner brackets and bottom plates on the x-axis. They're pretty cheap at $0.75 each and should effectively reduce frame wobbling.
<br>
# FuseBox 3D Printer
The FuseBox is a low-cost CoreXY 3D printer that uses a 1515 aluminum extrusion frame. Capable of printing at high resolutions and high speeds owing to its CoreXY kinematics, it produces quality parts that are up to 200x200x200mm in size. It's designed such that no specialized equipment (such as a laser cutter or CNC machine) besides a 3D printer is required to fabricate all the parts.

The printer can be built for under $300 without a heated bed, or a bit over that with a heated bed. By finding the cheapest parts, the cost can approach $200.

### Features:
   - Aluminum structure based on Misumi 1515 extrusions
   - Stacked variant of CoreXY that eliminates the belt crossing of a traditional CoreXY
   - 200mm cube of print area
   - Capable of 0.05mm layer height (possibly even less) and 150+ mm/s printing
   - Emphasis on using 3D-printed parts and being easily hackable/upgradable
   - Relatively low amount of filament needed for plastic components
   - Low moving mass—all motors stationary—high speeds
   - Portable—all hardware and electronics (except for filament spool) are integrated within the frame
   - No specialized tools or equipment necessary for assembly 

### Videos:
https://youtu.be/kshVDL2V_oc
https://youtu.be/qRtPtuInjQw
https://youtu.be/7nx2nsnKOrY
https://youtu.be/I3xibPxbO2s

For more information, visit the RepRap wiki page at http://reprap.org/wiki/fusebox, or the RepRap forums thread at http://forums.reprap.org/read.php?397,557542

# Print Settings

Rafts: Doesn't Matter
Supports: No
Resolution: 0.2mm or less
Infill: 30-100%

Notes: 
The STLs should already be in the correct orientation for printing.
Print the structural brackets and z-axis braces with 3 perimeters or 1.2mm shell thickness at 60% infill, and the z-nut mount at 100% infill. All the other parts can be printed at 3 perimeters with 30% infill.
Support isn't needed for any of the parts, but your existing printer should be decent at doing bridges and overhangs.
If you experience warping while printing, try using a brim or raft.

# Bill of Materials (Non-printed)

**Currently out of date. I'll have a correct one up in the coming weeks. **

Item, 	                                  Quantity
1515 Extrusion 380mm,	          4 	
1515 Extrusion 330mm, 	          2 	
1515 Extrusion 345mm, 	          4 	
1515 Extrusion 300mm, 	          2 	
1515 Extrusion 250mm, 	          2 	
1515 Extrusion 152mm, 	          1 	
1515 Extrusion 386mm, 	          2 	
M3x6mm Bolt,           	          ~150
M3x10mm Bolt, 	                  6
M3x8mm Bolt (for metal corner brackets), 12
M3x25mm Bolt, 	                  4 	
M3 Nut, 	                                  ~150
M5x25mm Bolt, 	                  6 	
M5 Locknut, 	                          6 	
625 Bearing, 	                          9 	
250mm M8 Threaded Rod, 	  1 	
M8 Nut, 1
300mm M8 Smooth Rod, 	  6 	 	
LM8LUU Linear Bearing, 	          6 	
5mm to 8mm Flex Coupler, 	  1 	
2mm Pitch GT2 Belt 3m, 	          1 	
20 Tooth GT2 Pulley, 	          2 	
Bed Leveling Springs, 	          4 	
RAMPS 1.4, 	                          1 	
Arduino Mega, 	                          1 	
NEMA-17 Stepper Motors, 	  4
12V PSU (20-30A),       	          1
40mm 12V Fan, 	                  2 
MK8 Drive Gear, 	                  1 	
Medium Binder Clip, 	          2 
E3D Lite6 Hotend, 	                  1 	
Glass Sheet, 	   	   	   	  1
PCB Heatbed, 	                          1 	
Mechanical Endstop, 	          3 	
Stick-on Furniture Feet, 	          4 

# Version History

**Version 1.0**
Initial variant. Uses a non-intersecting CoreXY design to eliminate belt crossing issues.

Issues
    - Z-axis issues—slight wobble and linear bearing binding
    - Slight rigidity issues caused by weak corner joints
    - Extruder grip issues leading to inconsistent extrusion
    - Untidy wiring 

Todo
    - Endstop integration (possibly with inductive z-probe)
    - Cooling fan addition to improve bridging and top speed for small parts
    - Bowden option for lower moving mass (will retain direct extruder for flexible materials)
    - Diagonal aluminum braces on sides
    - Reduce clearances for additional build area 


**Version 1.1**

Changes
    - New compact extruder design with more solid hot end mount and fan duct addition
    - Bowden extruder carriage designed; cold end still in development
    - 608 bearing idler replaced by a 625 idler
    - XY-gantry made more compact, resulting in ~18mm increase in maximum z-axis height
    - Z axis changes: bar spacing reduced, additional reinforcement for z-nut crosspiece 

Issues
    - Slight z-wobble
    - Rigidity
    - 625 Idler breakage problem 

Todo
    Additional bracing
    Endstop integration 


1.1B
Uses a bowden extruder and replaces Aluhotend V6 with an E3D-Lite6. New idler design improves strength and extrusion consistency.


**Version 1.2**

Changes
    - New Y Bar attachments using 1 bolt each
    - Integrates bowden extruder and print fan
    - Larger corner braces
    - Cross braces on sides
    - Endstop integration
    - Added option for 30mm hotend cooling fan
    - 10mm additional x-axis travel 

Issues
    Minor bed shake (worse at higher z-heights) 


**Version 1.2h**

Changes
    - Heated bed support
    - Wider z-rod spacing to accommodate heated bed
    - Additional z-axis bracing
    - Adjustable z-endstop
    - Additional y-axis travel
    - Replaced corner brackets with flat plates on lower x-axis 


**Version 1.3**

Changes
    - Unheated and heated bed versions use same z-axis design
    - Certain parts made thicker to reduce chance of breakage
    - Corner brackets reinforced
    - New z-nut mount with reduced warp during printing and reduced backlash
    - Z-axis motor mount interlocks with bottom rod mount to simplify alignment
    - Printer made 10mm more compact; gantry rods more strongly held in x-ends 

**Version 1.4**
Resolves issues from 1.3 and earlier to improve print quality and simplify assembly. New LM8LUU z-axis results in smoother movement and less banding.

Changes
    - Hotend mount tolerances increased for easier mounting
    - Increased size of bed mount bolt holes
    - Hex nut guides for bed mount nuts
    - Squared back edges of z rod mounts for less warping/easier alignment
    - Strengthened z-endstop mount
    - Strengthened right x-end to reduce chance of breakage during assembly
    - Added labels to SketchUp file to aid assembly
    - Dual LM8LUU z-axis instead of quad LM8UU - increases smoothness and greatly reduces banding - highly recommended upgrade

**Version 1.5**
Even smoother and more robust z axis with leadscrew, 3 point leveling, better hotend carriage

Changes
    - Hotend carriage rework: X-endstop now on carriage, integrated fan duct with blower fan mount, ducting for hotend cooling fan
    - Z axis rework: screw-clamped bearings instead of zip-tie mounts, adjustable endstop screw on left z-brace, strengthened z-rod holders, new z-bridge with leadscrew replacing M8 rod
    - 3-point bed leveling
    - Strengthened right side PSU mount
    - Strengthened y-rod holders
    - Deletion of diagonal braces - use metal brackets instead
    - Strengthened extruder - 2 screw mounting instead of single screw