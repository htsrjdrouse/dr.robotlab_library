import re

def parser(str,manu):
 strr = re.split(" -- ", str)
 dd = {}
 dd['manufacturer'] = strr[0]
 dd['sku'] = strr[1]
 dd['desc'] = strr[2]
 dd['price'] = strr[3]
 dd['units'] = strr[4]
 manu.append(dd) 
 return manu

manu = []
#parser("phidgets --  3340_0 --  42STH38 NEMA-17 Bipolar Precision Gearless Stepper 0.9 step angle --  $20.00 --  2",manu)
parser("stepperonline --  0.9deg 2A --  STEPPERONLINE 0.9deg Nema 17 Stepper Motor Bipolar 2A 46Ncm/65oz.in 42x42x48mm 4-wires DIY CNC --  $21.99 --  2",manu)
parser("Iverntech -- 300MM -- Iverntech MGN12 300mm Linear Rail Guide with MGN12H Carriage Block for 3D Printer and CNC Machine -- 29.99 -- 2",manu)
parser("Mercurry -- 5 meters -- Mercurry 5 Meters GT2 timing belt width 6mm Fit for RepRap Mendel Rostock Prusa GT2-6mm Belt -- 8.99 -- 1",manu)
parser("Kee Pang -- 300mm T8 lead screw -- Kee Pang 300mm T8 Lead Screw Integrated with Nema 17 Stepper Motor 1.5A 48Ncm/69 oz.in 4-Lead W/800mm Cable and Connector for DIY 3D Printer Kits -- 23.99 -- 2",manu)
parser("mouser -- 744-SP-L-0150-1033ST --  SP-L-0150-103-3%-ST SoftPot 150mm --  $8.010 -- 1",manu)
parser("mouser  -- 744-WP-M1-01-03014DI --  WP-M1-01-03-014-DI Wiper 1Newton-3N -- $4.12 --  3", manu)







print manu




