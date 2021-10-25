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


https://www.thingiverse.com/thing:2841443
DIY Probe, OptiServo Z-Probe Sensor - 18mm mounting by robscar is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

With some spare parts you can build a pretty accurate probing sensor yourself. This sensor can probe against every material and has quite a large probing stroke which gives you plenty of room between nozzle and bed. 

In my case GCode M48 ;” Z-Probe Repeatability Test” returns the following:
Mean: 0.002250 Min: 0.000 Max: 0.008 Range: 0.008
Standard Deviation: 0.002359

That is more than good enough for accurate auto leveling. Check out a short [video](https://youtu.be/F2ubGaascps) showing the sensor in action. 

You need:
--------------
- 1x Micro Servo (e.g. TowerPro SG90)
- Carbon/Fiber Rod (3mm outer diameter, Length about 35mm) for probing
- Optical Endstop (standard reprap) for measuring
- 2x: M3x16 screws, nuts and washer to secure probe against DistanceBridge.stl
- 2x self cutting screws(2x8) for mounting the servo against the base
- 1x self cutting  screw(2x5) to secure the probe guide (it’s a snap fit, you might not need this one)
- M3 mounting screws to attach the probe to your hotend

**Disclaimer**: installing & configuring the probe precisely and with caution is important so that you do not damage your printer and/or hotend. Take care and double check at least twice. I’m not responsible for any damage that will occur based on these steps above.

**check post-printing section for detailed instructions**

Files  & more, all designed in [Onshape](https://cad.onshape.com/documents/5978c36dc0ca21b99f599a2a/w/75a8ba594cae1145e1d0b6a2/e/51a3e3922bd20df9f2915f5f) and **STEP** files are attached.

**Credits for servo cad model and optical sensor fly to:**
Matheus Frasson - https://grabcad.com/library/sg90-micro-servo-9g-tower-pro-1 - 
J-Max.fr - https://grabcad.com/library/opto-endstop-tcst2103-1

please do not forget to post a **make** if you have one!







# Print Settings

Printer: Tronxy X5S
Rafts: No
Supports: No
Resolution: 0.2
Infill: 30%

Notes: 
for sure you can choose 100% infill and one perimeter for all parts. I used 30% infill for ServoOptoProbe and DistanceBridge. Thes rest @100%

# Post-Printing

## Configuration

Assembly instructions:
===================

-	Print DIY _Probe_OptiServo_AllParts.stl_. Depending on how far your probe is away from the hotend you should choose your type of filament. In my case is used PETG. PLA will also work if it is not super close to the hotend. I guess best would be ABS.
-	Try to fit _ProbeGuide.stl_ into _Base.stl_. If you need to trim do file carefully to make sure it still snap-fits. At this stage do not fully insert the _ProbeGuide.stl_ just make sure the dimensions fit.
-	Cut the carbon rod to ~35mm length. I used tape and a fretsaw to prevent splicing. File the rod so that you get a sharp edge for probing (see pictures). Insert the rod into the _ProbeGuide.stl_ and make sure it slides smoothly, a bit of play doesn’t matter. The smooth slide is extremely important because the rod is forced down only by gravity.
-	Remove the build-in support from _DistanceBridge.stl_ and insert the M3 nuts, you can also use flat nuts.
-	Paint the upper part of the _ProbeHead.stl_ with **black Edding!!!** This is because the OptoSensor could go through the material and prevent the sensor from firing, especially if you are using PETG. This would ram your hotend into the bed !!! Be sure to test the sensor with your finger when its mounted while the bed is still far away. A LED on the optical sensor should also indicate the state.
-	Loosely attach _ProbeHead.stl_ to the rod and insert both into _ProbeGuide.stl_ (check pictures). Press the _ProbeGuide.stl_ into the base. Make sure the rod still moves smoothly. Now carefully glue the _ProbeHead.stl_ against the rod.  Make sure you do not glue other parts together, especially not the rod against the _ProbeGuide.stl_ 😊 I used a toothpick to apply the glue gently.
-	Give the glue its time. Snap-fit the _DistanceBridge.stl_ against the _Base.stl_. This is just to keep it in place, it will be secured with screws also.  Now mount the OpticalEndstop using the M3x16 screws, washers and nuts  against the _Base_ and _DistanceBridge.stl_. Make sure the ProbeHead.stl runs exactly through the middle of the optical sensor and has no friction. The mounts for the optical sensor are designed to give you enough adjustment space. Once its fits tighten the screws.
-	Now attach the servo to _Base.stl_ and secure it with the screws that came with the servo (~2x8 selfcutting screws)
-	Depending on your Servo(Arm) your might need additional height on your servoarm to hit the _ProbeHead.stl_. If this is the case screw _Pusher.stl_ against your servoarm.
-	Ideally, before you mount the servoarm drive your servo into middle position using a servo tester. If you have none, you can also use GCodes for this. e.g. M280 P0 S100 should set your servo at connector P0 to 100 degree (0-200 degree range)
After this procedure attach the arm against the servo so that it is parallel to the optical sensor (this is 90 dgree to base, check picture) . The endpostion of the rod should be so that the tip of the rod is still visible and not fully hidden in ProbeGuide. Additionally, once in action, _ProbeHead.stl_  should not bang against the optical endstop pcb, it should end just before _ProbeHead.stl_ hits the pcb of the optical sensor. You can tune this in software by setting the correct angles for the servo probe.

Wiring:
======
- Connect the servo to your Servo0 3Pin Header on your board, check polarity!
- Connect the optical endstop to your z-min endstop header. However, make sure the polarity is correct, the standard wiring order of the optical endstop is different to endstop headers on all boards I know. **This will cause a short and kill your board**. Just make sure that +, - and Signal simply line up 1:1, doublecheck twice! So far, so good. The hardware should be assembled, now here comes the software part using Marlin as example.

Software:
========
Edit configuration.h
-	Make sure your head drives into the middle and up before homing Z
**\#define Z_SAFE_HOMING**
-	Disable MIN_SOFTWARE_ENDSTOPS so that you can adjust Nozzle/Probe Distance easily. However, once configured make sure you reenable them to give you extra safety if you want.
**//#define MIN_SOFTWARE_ENDSTOPS**
-	In our case we simply use the zMin Endstop Header that was used by the mechanical endstop **\#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN**
-	For the optical endstop sensor no pullup is needed, just for X and Y if you use mechanical enstops there:
Disable **//#define ENDSTOPPULLUPS**
Enable **\#define ENDSTOPPULLUP_XMIN** and ** \#define ENDSTOPPULLUP_YMIN**
-	The endstop logic for my optical sensor, might be different to yours. Check with M119 to make sure you have the correct enstop settings
**\#define Z_MIN_ENDSTOP_INVERTING false**
**\#define Z_MIN_PROBE_ENDSTOP_INVERTING false**
-	Tell Marlin you have a servo attached 
**\#define NUM_SERVOS 1** ,Servo index starts with 0 for M280 command
-	you need a delay so that the servo reaches its position, try it
**\#define SERVO_DELAY { 350 } **
-	No need to keep the servo always on
**\#define DEACTIVATE_SERVOS_AFTER_MOVE** , the servo is strong enough to hold the arm without  current in my case, test it with your servo!
-	Where is your servo attached?
**\#define Z_ENDSTOP_SERVO_NR 0   // Depends on what Slot you use**
-	And what are the stow and deploy angles **\#define Z_SERVO_ANGLES {110,39}** , works for me, figure out your values by issuing M280 Px Sy commands carfully. X=ServoSlot and Y = angle between 0 and 200

-	Choose your leveling method, **\#define AUTO_BED_LEVELING_BILINEAR **. Enable auto leveling, choose your leveling. Maybe start with Bilinear and if everything works check out UBL
-	Meshvalidation, **\#define G26_MESH_VALIDATION**, enable to give you a good check if your leveling works!
-	use M48 to check the accuracy of your probe, really handy to check the quality of your assembly. **\#define Z_MIN_PROBE_REPEATABILITY_TEST**
-	make sure the printhead is raised before homing 
**\#define Z_HOMING_HEIGHT 5**
-	ZProbe Offset to Nozzle (check the great documentation in marlin code):
**\#define X_PROBE_OFFSET_FROM_EXTRUDER -10  // X offset: -left  +right  [of the nozzle]**
**\#define Y_PROBE_OFFSET_FROM_EXTRUDER 69  // Y offset: -front +behind [the nozzle]**
**\#define Z_PROBE_OFFSET_FROM_EXTRUDER 0   // Z offset: -below +above  [the nozzle]**
For Z_PROBE_OFFSET_FROM_EXTRUDER start with** 0**!!! Until you find out your exact distance. Otherwise you might ram your nozzle into your bed!!!
-	For Z-Probe Clearance set those values for a start:
**\#define Z_CLEARANCE_DEPLOY_PROBE    7 // Z Clearance for Deploy/Stow**
**\#define Z_CLEARANCE_BETWEEN_PROBES  5 // Z Clearance between probe points**
Additionally:
// Travel limits (mm) after homing, check this to make sure your head stays in range. E.g. if your endstop position of your head is in the lower left but the print area starts 20mm to the right and 20mm up than you need to set this:
**\#define X_MIN_POS -20 **
**\#define Y_MIN_POS -20 **
**\#define Z_MIN_POS 0 **





Trimming your sensor
==================
After flashing your firmware check if your sensor is working correctly, by using the following GCODES:
Use **M401** to deploy probe and **M402** to stow the probe. Use **M119** at each stage to verify that your endstop fires. If the probe is stowed **M119** should tell you it is triggered. M401/M402 use the angels that you have configured above in code. If you do not feel confident about the correct angles you might want to detach the servoarm and verify stop/deploy with a loosely attached arm or piece of paper first. Just make sure you do not destroy your probe in the first test.
If that works correctly you can configure the distance between your nozzle and the probe. This is so that the firmware knows how far to lower the head towards the bed so that it can print.
Home all your axis with **G28**. The printer should home X,Y and Z. When homing Z the probe should be deployed automatically, if not hit reset, something went wrong. By the way, it is a good practice to have one finger at your reset button while trying those things the first time. 
After **G28** completed successfully move your nozzle above the probe point. Do not alter Z height, just X and Y. This is just that we measure the z-height exactly at the probing point. Now use your display and drive down Z so that just a piece of paper fits between the nozzle and printbed. Now read your Z-Value on your display. It should have a negative value telling you the exact distance between your nozzle and the bed. Persist this measure with **M851 Z-3.95**  followed by **M500** to save to your eeprom. Or if you have no eeprom persist it using code with **Z_PROBE_OFFSET_FROM_EXTRUDER -3.95 //replace with your value 😊**
That should be it. If you now use **G28** followed by **G29** your autolevel mesh should be up and running. You can use **M420 V1** to verify taht autolevel is active.

Enjoy configuring and good luck! 


Modifying the CAD Model to customize your sensor:
=======================================

for some easy adjustments I implemented variables in the design so that you can easily modify the the outer diameter of your rod and the height of the distance piece.

*[ Got to Onshape, its free](https://cad.onshape.com/documents/5978c36dc0ca21b99f599a2a/w/75a8ba594cae1145e1d0b6a2/e/51a3e3922bd20df9f2915f5f)
* create a free account if you do not have one @ onshape
* make a copy of the file so you can make changes
* on the left you will find two variables in the feature list, one is called **\#RodOD** an the other is named **\#BridgeDist**. **\#RodOD** is the diameter of your carbon rod plus some toleranz so that it runs smoothly, **\#BridgeDist** is the height in milimeter above the upper edge of the probe. Just change the value and you see how it works. My original distance piece with 14mm fits a TronxyX5S with that [Carriage](https://www.thingiverse.com/thing:2815399)
* now you can right click the part in the lower left and export as STL







## The End

Enjoy configuring, designing and happy leveling!