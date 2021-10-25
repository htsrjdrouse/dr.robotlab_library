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


http://www.thingiverse.com/thing:2394452
HEPA Filter for 3D Printer by jmillerfo is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

**Air Scrubber for 3D Printers**

The *Prusa i3 MK2S* is a great printer especially for the hobbyist or light industrial desktop user. That having been said it is a raw printer without a lot of accessories that would make it a great printer. The is the first in a series of accessories that I designed for the *i3*. The others are:

- Enclosure
https://www.thingiverse.com/thing:2396990
- Spool Holder
https://www.thingiverse.com/thing:2398480
- OctoPrint Print Server
https://www.thingiverse.com/thing:2401423

This accessory is intended to remove VOC and Ultra Fine particles from the enclosure housing the printer.

3D Printers produce VOC and Ultra Fine particles as a unwanted byproduct of melting and extruding plastics.  See recent study by Illinois Institute of Technology and The University of Texas at Austin among others: http://pubs.acs.org/doi/full/10.1021/acs.est.5b04983

Additionally some filaments emit a noxious odor when heated to high temperatures.

Originally the plan was to exhaust 100% of the filtered air either inside the enclosure (moisture elimination & heat retention) or outside the enclosure if internal ambient temperature was not a concern.  The exhaust configuration could be changed prior to each print.  After several experiments it was determined that a portion of the filtered air (about 40%) should be recirculated and the remainder ported outside the enclosure.   By porting a portion of the filtered air outside the enclosure, the pressure inside the enclose is lower compared to ambient.  This insures that no unfiltered air escapes from the enclosure during printing.  The current *Nozzle* design accomplishes this.  Included is a *Restrictor* plate to change the mix to 50/50% should the 40/60% cause the enclosure temperature to drop too much when printing ABS or other filament types that require a high stabilized temperature.

The design includes a *Extended Grate* that can be used to divide the chamber into two sections, one for silica (drying) and one for activated carbon pellets (VOC filtering).  In practice it was found that the *Activated Carbon Pellets* provided adequate anhydrous characteristics and silica was not needed.  Should your experience vary, simply insert the *Expanded Grate* at an appropriate location in the chamber.  Fill the section closest to the *Fan* with *Activated Carbon Pellets* and the other with Silica.  This insures all the air is filtered for VOCs.

This assembly is based on a design by RJ_Make that incorporates a HEPA filter originally designed for iRobot sweepers and a chamber which contains _Activated Carbon Pellets_.  This remix differs from the one by RJ_Make:
- Screws replace rubber bands to hold the various parts together,
- Part count reduced by combining several parts into one,
- Fan exit *Nozzle* has two outputs - One for overboard and one to recirculate filtered air within the enclosure,
- Adds *Exhaust Tube* from *Nozzle* to *Enclosure Grommet*,
- Includes *Enclosure Grommet* and optional *Restrictor*,
- Specification for *Fan* and optional *Speed Controller*.

7/12/2017 Update: Removed file "Chamber Top" as it is no longer needed.

1/7/2018 Update: 
 - Restore chamber *Baffle*,
 - Modify *Chamber* to capture the *Baffle* below filter flange in order to create space between Filter and *Baffle*,
 - Modify *Filter to Motor* and *Expanded Grate* by eliminating top several rows of holes to force more air to pass through activated carbon pile,
 - Support for alternative *Fans*.

3/5/2019 Update:
Added Strengthened Mount courtesy of beikeland.

# Print Settings

Printer: Prusa  i3 MK2S
Rafts: No
Supports: Yes
Resolution: 0.20
Infill: 20%

Notes: 
PLA or ABS may be used to print the various parts.  **ABS** or **PETG** should be used If ambient temperature will **exceed 55°C**.

The Tg (Glass Transition Temperature) for Materials:
 - PLA = 60°C
 - PTEG = 80°C
 - ABS = 105°C

# How I Designed This

## Main Body

The main body consists of two parts:
- Carbon Chamber
- Chamber to Fan Adapter

These two parts are joined together using epoxy, super glue, or hot glue.  Care should be taken to properly align both parts so that the HEPA filter can be easily inserted into the top of the resulting assembly.  The assembly could have been printed as one part but that would have resulted in excessive support material on the grate at the top of the chamber.

![Alt text](https://cdn.thingiverse.com/assets/b1/85/37/94/94/Chamber__Fan_Adapter_Combined.png)

## Prepare Nozzle & Chamber to Fan Captive Nuts

These parts contain nut wells suitable for retaining lock nuts the M3x14 screws use to hold these parts to the fan.  The nuts must be inserted into the parts before the fan is attached to each in turn.  The best method to do this is to temporarily insert a screw of suitable length into the fan side of the part (without the fan installed) and to start the nut on the screw.  The Nut can then be properly seated by tightening the screw or by gently taping the nut with a nail set approximately the same size as the nut.  Once the nut is seated, remove the screw.

![Alt text](https://cdn.thingiverse.com/assets/a8/69/47/c0/ca/Fan_Mount_Nut_Wells.png)

## Prepare Fan for Installation

A *High Static Pressure Fan* is required to force air through the Carbon pellets at an acceptable flow rate.  The Fan used (See BOM) was chosen for its form factor (60x60x38mm), CFM flow rate, and cost.  This fan was originally used in a Dell computer and is a 4 wire system.  The fan is delivered with a connector that would normally plug into the Dell motherboard.  Remove this connector.  Wire the RED and BLACK wires to the Male Connector as shown below.  Note the Red Wire is on the left when observed from the pins side of the connector.  Cap and stow the Green & Yellow wires.  They are not used in this installation.

**CAUTION**
This motor is extremely polarity sensitive.  Reversing the Fan motor will __destroy__ the unit!

![Alt text](https://cdn.thingiverse.com/assets/64/ff/60/4b/a2/Fan_Connector.jpg)

## Install Fan & Exhaust Tube

Install Fan into the mating parts using 4 screws in each assembly.  The *Fan* and *Nozzle* can be rotated into any of 4 positions.  Rotate the *Fan* so that the power wire is positioned as required for your installation.  Likewise rotate the *Nozzle* so that the recirculating air port does not blow air on the print bed but is otherwise unobstructed. 

Install the *Exhaust Tube* to the *Nozzle*.  This is an interference fix.  Make sure that no extruded plastic is obstructing the *Exhaust Tube* opening or the *Nozzle* flange.  The *Exhaust Tube* should be able to rotate once installed but should not be so loose that it falls off the *Nozzle*.  See completed assembly below.

![Alt text](https://cdn.thingiverse.com/assets/5f/08/da/ac/d8/IMG_9420.jpg)
HEPA Filter Assembly

## Optional Fan Speed Control

The Fan can be operated at 100% rated speed by simply plugging the connector into a 12Vdc power supply.  However there are often times a slower fan speed is desirable.  For these cases a Speed Controller can be used to throttle down the Fan speed and therefore the filtered air volume.

Originally it was thought that the speed control potentiometer would be best located away from the speed control board and that the control board  incorporated into the filter body.  This proved impractical and the control board and potentiometer are now housed in a separate box with the output wired to the *Fan* through a mating connector to the one installed on the *Fan* in the steps above.  Files necessary to print the *Control Box* top and bottom are included in the files section.

An alternate speed control is available with the potentiometer incorporated on the control board.  The alternate part is listed below in the BOM.  This would require a modification to the included *Control Box* since the size required is somewhat less and the potentiometer and control board are positioned differently.

Control Board wiring is identical for either version of the control board.  See below.

**Caution**
The control board polarities are critical.  Reversing the polarities can damage the *Control Board* and *Fan*.  For this installation the input voltage _must_ be 12VDC.

![Alt text](https://cdn.thingiverse.com/assets/46/5b/9e/fc/80/Wiring_-_Speed_Contoller.jpg)
Speed Control Board Wiring

## Filter Mount

The mount below is designed to be screwed on to a vertical surface.

![Alt text](https://cdn.thingiverse.com/assets/b6/69/96/dc/ad/Mount.png)
Filter Wall Mount

## Installation in Prusa i3 MK2S Enclosure

The picture below shows the HEPA Filter mounted in the Prusa i3 MK2S enclosure.  Note the positioning of the *Mount*, *Exhaust Tube*, and power wire.  Not visible is the *Nozzle* recirculating vent which is pointed down.  Also note the *Fan* to *Speed Controller* connector that is just visible under the top i3 Support bar.

![Alt text](https://cdn.thingiverse.com/assets/34/07/4a/c8/93/IMG_9422.jpg)

## 1/7/2018 Update

- A *Baffle* has been introduced that will be installed below the *HEPA* filter flange in the *Chamber*.  This permits airflow from the entire filter length while forcing all of the flow through more of the activated carbon pile.

- The *Chamber* has been modified to add a flange beneath the filter flange offset by the thickness of the *Baffle*.  The flange extends from the *Fan Grate* aft 50mm.  This allows the *Baffle* to be installed and removed without use of adhesives.

- Several rows of holes have been removed from the *Chamber to Fan* and *Extended Grate* to keep airflow from byassing the activated carbon pile.

## Assembly Instructions

- Install the *Baffle* by inserting it into the aft portion of the *Chamber* and sliding the *Baffle* forward between the two flanges in the *Chamber*.  The *Baffle* can be sealed with the *Chamber* using tape, RTV, hot glue, etc as desired,

- Fill the *Chamber* with activated carbon pellets flush with the aft end of the *Baffle* while holding the assembly *Fan* end down.

- Position *Extended Grate* forward to capture the carbon pile. The *Baffle* has two flanges incorporated at the aft bottom side that will capture the *Extended Grate* at the upper flat edge.


## Additional Supported Fans

Two additional fans have been added to the BOM to provide for varying levels of noise and airflow:

    Fan      Part Number      RPM   CFM  Noise Length
    Noctura  NF-A6x25 FLX     3000   17  19Dba 25mm
    Sunon    PMD1206PMB3-A    6000   42  47Dba 38mm
    San Ace  9G0612G101       11,800 65  58Dba 38mm
    
The Noctura fan is virtually silent but the airflow is not sufficient to purge the *Enclosure* in real time.  After printing PLA for an hour, one additional hour was required to remove all noticeable odor from the *Enclosure*.  The airflow does appear to be sufficient to create a slight vacuum in the *Enclosure*  therefore trapping the nono-particles within the *Enclosure*.  Temperature rise withing the *Enclosure* was modest, rising only 5°C to 35°C with a bed temperature of 60°C.  Care should be exercised in not opening the *Enclosure* door for a period of time in order to allow all the nono particles that can be removed to be removed.

The Sanon fan is sufficient for most applications.  The noise level is only noticeable when the printer is not running.  The Prusa i3 MK2S Hot End cooling fan drowns out the sound of the Sanon fan during printing operations.

Finally the San Ace fan should be used where maximum airflow is required to lower the *Enclosure* temperature.

# Custom Section

## Bill of Materials

- PLA or ABS Filament
- 8ea M3x14 Screws
https://www.amazon.com/gp/product/B0143GZU4W
- 8ea M3 Lock Nuts
https://www.amazon.com/gp/product/B01N90UFNA
- High Static Pressure Fan:
  - Noctura NF-A6x25 FLX
https://www.amazon.com/gp/product/B009NQMESS
  -  Sunon PMD1206PMB3-A 
https://www.amazon.com/gp/product/B00608LYVK
  - San Ace 9G0612G101
https://www.digikey.com/product-detail/en/sanyo-denki-america-inc/9G0612G101/1688-1409-ND/6192125 
     - 4 ea M3x60mm Screws for installation of the San Ace Fan.
https://www.amazon.com/gp/product/B076XKGNDB
- Fan Speed Controller
https://www.amazon.com/gp/product/B00RYKR83Q or
https://www.amazon.com/uniquegoods-Controller-1803BK-Adjustable-Driver/dp/B00QGMESHM
- 1 set Power Polarized Jack/Plug
https://www.amazon.com/Hilitchi-300Pcs-Housing-Terminal-Connector/dp/B0188YKCFC
- 1 Roomba 800 HEPA Filter
https://www.amazon.com/MZY-LLC-Filters-Replacement-Robotic/dp/B00K7DMEJ0
- Bulk Activated Carbon Pellets
https://www.amazon.com/gp/product/B000YIWT20
- Desiccant Indicating Silica Gel Beads
https://www.amazon.com/Premium-Desiccant-Indicating-Industry-Standard/dp/B01I5Y2DG6