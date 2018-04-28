
//firgilli linear actuator
include <azteegx5mini-box.scad>
include <arduino.scad>
include <imagingsource.scad>
include <case_maker_base.scad>
//include <syringe.scad>
include <raspicamera_mounts_prisms.scad>

include <PQ-12_mount.scad>
include <m8_clamp.scad>
include <utl.NEMA.scad>
include <lm12uu-railmount-tslot.scad>


smrd = 8.7; //smooth rod diameter

 //positioning stuff
 x =-120;
 y =30;
 z =5;
 //bracket  (yes = 1 or no = 0)
 br = 0;




/*
--module--
angled_alignments - this is the angled brackets that make the frame perfectly square and reinforce the strucuture. The module calls the angle_alingment_screws
angle_alignments_screws - This is the part that is used to screw the angled_alignment structure into the frame
anglecornersupport() - top corner support used to cap the tslot end to axis_slider_assay() - is the total axis slider assembly
axis_slider_base() - is the base of the total slider assembly
axis_slider_beltplate() - is the plate for screwing timing belt onto the axis slider connected to axis slider
axis_slider_plate() - is the plate for screwing timing belt onto the axis slider not connected to axis slider
axis_slider() - is axis slider base part not including bearing holder
axis_slider_beltclamp()  - is the one side of axis slider assembly that is used for clamping timing belt
axis_slider_shaft() - is the shaft part of the axis slider 
axis_slider_beltclamp2() - is the other side of the axis slider assembly that is used for clamping timing belt
bearingmodel - just to help visualize the rod alignments 
box(w,h,d) - basic box library  (its from thingiverse)
BottomRodHolder() - bottom smooth rod support it has a m4locknut for clamping
BottomThreadRodHolder() - bottom thread rod support
Bearingholder() - sized for holding a 608 bearing for Z drive
Bearingholder() - sized for holding a 608 bearing for XY drive .. the original holder which was too loose for the smooth rods
bearing() - LM8UU bushing holder inspired/derived from: http://www.thingiverse.com/thing:14814. Note: LM8UU_dia varies sometimes I have 15.2 other times 16.2 //for cross slider use 16.2 this is current ... because I have different bearings ... 16.2 for axis sliders. mount_plate() works with it.
a
CornerscadB(cx,cy,cz) - Part B for the top corner brackets (both for threaded and smooth) 
CornerscadA() - Part A for the top corner brackets (both for threaded)
corner_block()  - I tapped the ends of the aluminum extrusions in this is used to connect the conrners via screws 
cornerelement() - calls CornerscadA and CornerscadB for rendering the corner for threaded rod also calls the Bearingholder
complete_assembly(x,y,z,br) - is the complete assembly with all parts on it
cornersupport() - top corner support right next to anglecornersupport()
cubeassembly() - is the tslot assembly of the whole instrument
carriagebearing() - is the linear bearing holder that fits with the cross slider plate
carriagebearing_h() - is the linear bearing holder that fits with the cross slider plate that is 9mm higher
cross_slider_assy() - is the cross slider assembly with bearings fitting in
crossslider_coupler() - is the part that is connected to the cross_slider_plate that interfaces with the carriagebearing
cross_slider_plate() - is the cross slider plate which the extruder / dispenser can be connected to
dancross_slider() - calls Dan's original cross slider plate
dan_m3locknut(l) - is m3 lock nut
extrusioncube() - calls the extruded aluminum part
footbase() - adjustable feet on corners of instrument
hexagon(height, depth)  - basic hexagon library (its from thingiverse)
m4locknut() - locknut for clamping things on a 8mm smooth rod
motormount() - z motor mount just the part that holds the motor (could be used for xy motors)
MotorBottomRodHolder() - is the clamp that attaches to 20mm aluminum extrusion
mount_plate() - is part of LM8UU set up
roundedBox(size, radius, sidesonly) - is Marius Kintel roundedBox library
smoothCornerscadA() - Part A for the top corner brackets (both for smooth)
smoothcornerelement()  - calls smoothCornerscadA and CornerscadB for smooth rod also calls the m4locknut
shaft() - is part of the z bed thread holder that holds the platform
TopXYBearingHolderBracket() - sized for holding a 608 bearing for Z drive. This was used for the xy a 608 bearing for XY drive and its the module that you call when you want to see the whole assembly This one was tricky because the lower bearing was tight fit at 11.2 but the upper bearing loose so created another function XYBearing for this tigher fit this maybe because one side is printed in x direction and other side printed in y direction
TopXYLowerBearingHolderBracket - this is the open bracket holder so that means its just easier to move. You need to print 2 per corner and they have to be mirror images so you use this in OpenScad command -- mirror([0,0,1])
tslot20innerbracket() - is a bottom corner support
teardrop(radius, length, angle) - creates a teardrop shaped hole
tslot - Nathan Zadoks 2011 tslot library
tslot20(length,nut) - is part of Nathan Zadoks 2011 tslot library
tslot30(length,nut) - is part of Nathan Zadoks 2011 tslot library
tslot30_3060(length,nut) - is part of Nathan Zadoks 2011 tslot library
XYBearingholder() - sized for holding a 608 bearing for XY drive
xymotormount() - this is the xy motor mount. For some reason I have to color them to see them (xymotormount())
xymotormount_support() - this is the xy motor mount. Its combined with the diagonal support (angled_aligments()); 
zbedthread() - z bracket that travels down threaded rod for holding bed
zbedclampsmooth() - z bracket that travels down smooth rod for holding bed
zbedslot() - this is a cooler z bed holder for holding tslots
*/


module dancross_slider(){

 import("dan.cross_slider.stl");

}


module extrusioncube(){

//translate([-325,30,-20])
//cubeassembly_corner();
//cubeassembly();
translate([-325+365,45,-20])
cubeassembly_corner();

}



module foot(){

difference(){
union(){
cylinder(h = 15, r1 = 12, r2 = 6, center = false);
translate([0,0,-7])
cylinder(r=12,h=7);
}
cylinder(r=4.3,h=20);
translate([0,0,-7])
cylinder(r=7.6,h=16,$fn=6);
}

}


module footbase(){
 translate([50,0,0])
 difference(){
  union(){
   translate([-3.0,13,-2])
   difference(){
    roundedBox([40, 20, 4+5], 10, true);
    translate([12-2,0,-10])cylinder(r=5.7/2,h=20);
    translate([-13.75+4,12.75+0-13,-4])
    cylinder(r=8.7/2,h=300);
   }
   translate([-13.0,3,-2])
   rotate([0,0,90])
   difference(){
    roundedBox([40, 20, 4+5], 10, true);
    translate([-13+3,0,-10])cylinder(r=5.7/2,h=20);
    translate([-13.75+23.5,12.75-13,-4])
    cylinder(r=8.7/2,h=300);
   }
  translate([-13.75+1,12.75+0,-4])
  difference(){
   cylinder(r=10.3,h=24);
   translate([0,0,0])
   cylinder(r=8.7/2,h=300);
   translate([0,0,16])
   translate([0,0,-3])cylinder(r=15/2,h=7,$fn=6);
   translate([0,0,20])
   cylinder(r=7.5,h=10);
   } 
  }
}
}

module footbase_narrow(){
 translate([50,0,0])
 difference(){
  union(){
   translate([-3.0,13,-2])
   difference(){
    roundedBox([40, 20, 4+5], 10, true);
    translate([12-2,0,-10])cylinder(r=5.7/2,h=20);
    translate([-13.75+4,12.75+0-13,-4])
    translate([0,-2,0])cylinder(r=8.7/2,h=300);
    translate([-19,8,-6])cube([50,3,17]);
   }
   translate([-13.0,3,-2])
   rotate([0,0,90])
   difference(){
    roundedBox([40, 20, 4+5], 10, true);
    translate([-13+3,0,-10])cylinder(r=5.7/2,h=20);
    translate([-13.75+23.5,12.75-13,-4])
    translate([-2,0,0])cylinder(r=8.7/2,h=300);
    translate([18,7+10,-6])
    rotate([0,0,-90])
	cube([50,3,20]);
   }
  translate([-13.75+1,12.75+0-2,-4])
  difference(){
   cylinder(r=10.3,h=24);
   translate([0,0,0])
   cylinder(r=8.7/2,h=300);
   translate([0,0,16])
   translate([0,0,-3])cylinder(r=14.7/2,h=7,$fn=6);
   translate([0,0,20])
   cylinder(r=7.5,h=10);
   } 
  }
}
}

















module tslot20innerbracketlonger(){
 //bottom corner support
   translate([180-4,2,-40+3])
   difference(){
   union(){
   translate([-1,0,2-17])cube([5,20,30]);
   translate([-1-5,0,2-17])cube([10,5,35]);
   translate([-1-5,0+15,2-17])cube([10,5,35]);
   }
   translate([-20,10,17-25])rotate([90,0,90])cylinder(r=5.2/2,h=50);
   }
   translate([180,2,0])   rotate([0,90,-270]){
   difference(){   cube([30,30,20]);
   translate([27,0,-2])   cube([10,5,25]);
   translate([0,27,-2])   cube([10,5,25]);
   translate([0,30,25])   rotate([180,0,45])   cube([30,50,30]);   
   translate([5,5,5])   cube([20,20,9.5]);
   translate([-5,20,10])   rotate([0,90,0])   cylinder(r=5.2/2,h=50);
    //translate([19+8,15+4,10])    rotate([90,0,0])    cylinder(r=5.2/2,h=50);
   } 
    translate([-2,0,7.5])cube([5,13,5]);
   }
}


module tslot20innerbracketlonger_smfrnz_back(){
 //bottom corner support
   translate([180-4,2,-40+3])
   difference(){
   union(){
   translate([-1,0,2-17+9])cube([5,20,30-9]);
   translate([-1-5,0,2-17+9])cube([10,5,35-9]);
   translate([-1-5,0+15,2-17+9])cube([10,5,35-9]);
   }
   translate([-20+0,10,17-15])rotate([90,0,90])cylinder(r=5.2/2,h=50);
   }
   translate([180,2,0])   rotate([0,90,-270]){
   difference(){   cube([30,30,20]);
   translate([27,0,-2])   cube([10,5,25]);
   translate([0,27,-2])   cube([10,5,25]);
   translate([0,30,25])   rotate([180,0,45])   cube([30,50,30]);   
   translate([5,5,5])   cube([20,20,9.5]);
   translate([-5,20,10])   rotate([0,90,0])   cylinder(r=5.2/2,h=50);
    //translate([19+8,15+4,10])    rotate([90,0,0])    cylinder(r=5.2/2,h=50);
   } 
    translate([-2,0,7.5])cube([5,13,5]);
   }
}








module tslot20innerbracket(){
 //bottom corner support
   translate([180,2,0])
   rotate([0,90,-270]){
   difference(){
   cube([30,30,20]);
   translate([27,0,-2])
   cube([10,5,25]);
   translate([0,27,-2])
   cube([10,5,25]);
   translate([0,30,25])
   rotate([180,0,45])
   cube([30,50,30]);
   translate([5,5,5])
   cube([20,20,9.5]);
   translate([-5,20,10])
   rotate([0,90,0])
   cylinder(r=5.2/2,h=50);
    translate([19,15,10])
    rotate([90,0,0])
    cylinder(r=5.2/2,h=50);
   }
    translate([-2,0,7.5])
    cube([5,13,5]);
   }
}

module tslot20innerbracket_conveyer(){
  translate([180,2,-10])  rotate([0,90,-270])difference(){
  translate([0,0,0])cube([18,5,40]);
   translate([19-10,15,10])    rotate([90,0,0])    cylinder(r=5.2/2,h=50);
   translate([19-10,15,10+20])    rotate([90,0,0])    cylinder(r=5.2/2,h=50);
  }

 //bottom corner support
   translate([180,2,0])
   rotate([0,90,-270]){
   difference(){
   cube([30,30,20]);
   translate([27,0,-2])
   cube([10,5,25]);
   translate([0,27,-2])
   cube([10,5,25]);
   translate([0,30,25])
   rotate([180,0,45])
   cube([30,50,30]);
   translate([5,5,5])
   cube([20,20,9.5]);
   translate([-5,20,10])
   rotate([0,90,0])
   cylinder(r=5.2/2,h=50);
    translate([19,15,10])    rotate([90,0,0])    cylinder(r=5.2/2,h=50);
   }
    translate([-2,0,7.5])
    cube([5,13,5]);
   }
}









module tslot20innerbracket_rtangle(){
 //bottom corner support
   translate([180,2,0])
   rotate([0,90,-270]){
   difference(){
   union(){
   cube([30,30,20]);
    translate([-2,22.5,-0])rotate([90,0,0])    cube([5,13+7,5]);
   }
   translate([27,0,-2])
   cube([10,5,25]);

   translate([0,27,-2])
   cube([10,5,25]);
 
   translate([0,30,25])
   rotate([180,0,45])
   cube([30,50,30]);
   translate([5,5,5])
   cube([20,20,9.5]);

   translate([-5,20,10])
   rotate([0,90,0])
   cylinder(r=5.2/2,h=50);

    translate([19,15,10])
    rotate([90,0,0])
    cylinder(r=5.2/2,h=50);
   } 
   }
}










module tslot20innerbracket_noridge(){
 //bottom corner support
   translate([180,2,0])
   rotate([0,90,-270]){
   difference(){
   cube([30,30,20]);

   translate([27,0,-2])
   cube([10,5,25]);

   translate([0,27,-2])
   cube([10,5,25]);
 
   translate([0,30,25])
   rotate([180,0,45])
   cube([30,50,30]);
   translate([5,5,5])
   cube([20,20,9.5]);

   translate([-5,20,10])
   rotate([0,90,0])
   cylinder(r=5.2/2,h=50);

    translate([19,15,10])
    rotate([90,0,0])
    cylinder(r=5.2/2,h=50);
   } 
    //translate([-2,0,7.5])
    //cube([5,13,5]);
   }
}














module bearingmodel(){
    //remove bearing model
    difference(){
     cylinder(r=11,h=6);
     cylinder(r=4.1,h=7);
    }

}



module zbedthread(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;


  //translate([-20+2.+6,-2.-12.5,200])
  translate([-12,-14.5,200])
  rotate([0,0,45])
  {
  shaft(); 
  //translate([-20-15,-4.5,23])
  translate([-35,-4.5,23])
  difference(){
   cube([45,13,5]);
   translate([45*0.5,13/2,0])
   cylinder(r=4.3/2,h=10);
   translate([45*0.75,13/2,0])
   cylinder(r=4.3/2,h=10);
   translate([45*0.25,13/2,0])
   cylinder(r=4.3/2,h=10);
  }
  }
}


module zbedslot_516_smz_zbed(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;
  //bed 
  bl = 275;
  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;
  translate([-12,-14.5,200])  rotate([0,0,90])
  {
  translate([18,2,33])rotate([0,180,0])pololu_screw_nobacklash();
   
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   translate([-1,0,0])cube([28-3,15,8]);
   translate([-1-25+20,0,0-5])cube([28-3+22-20,15,13]);
   translate([15,13,0])   rotate([0,0,-30])cube([9,10,8]);
   translate([19,-7,0])   rotate([0,0,30])cube([10,10,8]);
   translate([0,-5-2.5,0])
   translate([-1-40,0,0])cube([28-4-3+40,30,8]);
   }
   translate([31,7.5,-22])cylinder(r=31/2,h=30);
   translate([0,-0.5,0]){
   translate([45*0.25-0.75-6+9-2.5-44,13/2+9-5+2+4,-2]){cylinder(r=4.7/2,h=20);translate([0,0,2])cylinder(r=9.7/2,h=5);}
   translate([45*0.25-0.75-6+9-2.5-44,13/2-5+2-3,-2]){cylinder(r=4.7/2,h=20);translate([0,0,2])cylinder(r=9.7/2,h=5);}
   }
  }
  }
}







































module zbedslot_516_syringe(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;
  //bed 
  bl = 275;
  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;
  translate([-12,-14.5,200])  rotate([0,0,90])
  {
  shaft_516(); 
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   translate([-1,0,0])cube([28-3,15,8]);
   translate([15,13,0])   rotate([0,0,-30])   cube([9,10,8]);
   translate([19,-7,0])   rotate([0,0,30])   cube([10,10,8]);
   translate([0,-5-2.5,0])
   translate([-1,0,0])cube([28-4-3,30,8]);
   }
   //translate([45*0.25-0.75-6,13/2+9-5+2,0])cylinder(r=4.2/2,h=10);
   //translate([45*0.25-0.75-6,13/2-5+2,0])cylinder(r=4.2/2,h=10);
   translate([0,-0.5,0]){
   translate([45*0.25-0.75-6+9-2.5,13/2+9-5+2,-2])cylinder(r=4.2/2,h=20);
   translate([45*0.25-0.75-6+9-2.5,13/2-5+2,-2])cylinder(r=4.2/2,h=20);
   }
  }
  }
}












module zbedslot_516(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  translate([-12,-14.5,200])
  rotate([0,0,90])
  {
  shaft_516(); 
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   cube([28-4,15,8]);
   translate([15,13,0])
   rotate([0,0,-30])
   cube([9,10,8]);
   translate([19,-7,0])
   rotate([0,0,30])
   cube([10,10,8]);
   translate([0,-5-2.5,0])
   cube([28-4-4,30,8]);
   }
   translate([45*0.25-0.75,13/2+9,0])
   cylinder(r=5.2/2,h=10);
   translate([45*0.25-0.75,13/2-6,0])
   cylinder(r=5.2/2,h=10);
  }
  }
}















module zbedslot(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  //translate([-20+2.+6,-2.-12.5,200])
  translate([-12,-14.5,200])
  rotate([0,0,90])
  {
  shaft(); 
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,23])
  difference(){
   union(){
   cube([28-4,15,5]);
   translate([0,-5,0])
   cube([28-4-4,26,5]);
   }
   translate([45*0.25-0.75,13/2+9,0])
   cylinder(r=5.2/2,h=10);
   translate([45*0.25-0.75,13/2-6,0])
   cylinder(r=5.2/2,h=10);
  }
  }
}











module zbedslot2bearings(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  //translate([-20+2.+6,-2.-12.5,200])
  translate([-12,-14.5,200])
  rotate([0,0,90])
  {
  translate([18,2,0]){
  difference(){
  union(){
  translate([0,0,-30])
  cylinder(r=21.2/2,h=30*2);
  translate([5,2,-30])
  cube([15,4,30*2]);
  translate([5,-6,-30])
  cube([15,4,30*2]);
  translate([-15,-23/2+4,25])
  cube([8,15,5]);
  }
  translate([0,0,-38])
  cylinder(r=16.2/2,h=42*2);
  translate([15,10,-24])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([15,10,-8])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([15,10,5])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([15,10,22])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([5,-2.3,-32])
  cube([20,5,32*2]);
  }
  }
  translate([-24+7+4,-23/2+6,23])
  difference(){
   union(){
   //cube([28-4,15,5]);
   translate([0,-5,2])
   cube([28-4-4,26,5]);
   }
   translate([45*0.25-0.75,13/2+9,0])
   cylinder(r=5.2/2,h=10);
   translate([45*0.25-0.75,13/2-6,0])
   cylinder(r=5.2/2,h=10);
  }
  }
}


module zbedconstraintbearing(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  translate([-12,-14.5,200])
  rotate([0,0,90])
  {
  translate([18,2,0]){
  difference(){
  union(){
  cylinder(r=21.2/2,h=28);
  translate([5,2,0])
  cube([15,4,28]);
  translate([5,-6,0])
  cube([15,4,28]);
  translate([-15,-23/2-5,20])
  cube([8,20,8]);
  }
  cylinder(r=15.2/2,h=30); //the adafruit one is 15.2mm I think the ultimachine is 16.2
  translate([15,10,5])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([15,10,22])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([5,-2.3,0])
  cube([20,5,30]);
  }
  }
  translate([-24+7+4,-23/2-7,20])
  difference(){
   union(){
   //cube([28-4,15,5]);
   translate([0,-11,0])
   cube([28-3,35,8]);
   translate([20.6,-11,-17])
   difference(){
   cube([5,25,25]);
   translate([0,12.5,7])
   rotate([0,90,0])
   cylinder(r=5.4/2,h=20);
   }
   translate([19,3-5.2,0])
   difference(){
   cube([10,15,8]);
   translate([8,-7,0])
   rotate([0,0,55])
   cube([17,10,8]);
   }
   }
   //translate([45*0.25-0.75,13/2+6,0])
   //cylinder(r=5.2/2,h=10);
   translate([45*0.25-0.75,13/2,0])
   cylinder(r=5.2/2,h=10);
   translate([31,20.5,0])
   cylinder(r=16.2/2,h=10);
  }
  }
}





module zbedslotbearing(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  //translate([-20+2.+6,-2.-12.5,200])
  translate([-12,-14.5,200])
  rotate([0,0,90])
  {
  translate([18,2,0]){
  difference(){
  union(){
  cylinder(r=21.2/2,h=28);
  translate([5,2,0])
  cube([15,4,28]);
  translate([5,-6,0])
  cube([15,4,28]);
  translate([-15,-23/2+4,23])
  cube([8,15,5]);
  }
  cylinder(r=16.2/2,h=30);
  translate([15,10,5])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([15,10,22])
  rotate([90,0,0])
  cylinder(r=3.3/2,h=40);
  translate([5,-2.3,0])
  cube([20,5,30]);
  }
  }
  translate([-24+7+4,-23/2+6,23])
  difference(){
   union(){
   //cube([28-4,15,5]);
   translate([0,-5,0])
   cube([28-4-4,26,5]);
   }
   translate([45*0.25-0.75,13/2+9,0])
   cylinder(r=5.2/2,h=10);
   translate([45*0.25-0.75,13/2-6,0])
   cylinder(r=5.2/2,h=10);
  }
  }
}





module zbedclampsmooth(){
  translate([1,0,205])
  rotate([0,0,45])
  {
  printable_lm8uu();
  translate([-49,-6.5,19])
  difference(){
   cube([45,13,5]);
   translate([45*0.5,13/2,0])
   cylinder(r=4.3/2,h=10);
   translate([45*0.75,13/2,0])
   cylinder(r=4.3/2,h=10);
   translate([45*0.25,13/2,0])
   cylinder(r=4.3/2,h=10);
   translate([52,13/2,0])
   cylinder(r=16.5/2,h=10);
  }
 }
}


module m4locknut(){
 rotate([90,90,90])
 difference(){
  translate([10,13,5])
  //cube([20,20,15]);
  roundedBox([20, 13, 13-5], 1, true);
  translate([9.5,13.5,-0]){
  //translate([0,0,3.3])  hexagon(7.30,3.95);
  translate([0,0,-25])
  //cylinder(r=4.3/2,h=100);
  cylinder(r=3.2/2,h=100);
  //translate([-4.05,0,1.5])
  //cube([8.1,12,3.75]);
  }
 }
}

module m4locknut_higher(){
 rotate([90,90,90])
 difference(){
  translate([10,13,5])
  roundedBox([20, 13, 13+10+5+5], 1, true);
  translate([9.5,13.5,7]){
  translate([0,0,3.3])hexagon(7.30,3.95);
  translate([0,0,-14])
  cylinder(r=4.3/2,h=90);
  translate([-4.05,0,1.5])
  cube([8.1,12,3.75]);
  }
 }
}


/*
module m4locknut_sphere(){
 rotate([90,90,90])
 difference(){
  translate([10,13,5])
  //roundedBox([20, 13, 13+10+5+5], 1, true);
  sphere(r=10);
  roundedBox([20, 13, 13+10+5+5], 1, true);
  translate([9.5,13.5,7]){
  translate([0,0,3.3])hexagon(7.30,3.95);
  translate([0,0,-14])
  cylinder(r=4.3/2,h=90);
  translate([-4.05,0,1.5])
  cube([8.1,12,3.75]);
  }
 }
}
*/

















module box(w,h,d) {
	scale ([w,h,d]) cube(1, true);
}
module hexagon(height, depth) {
	boxWidth=height/1.75;
		union(){
			box(boxWidth, height, depth);
			rotate([0,0,60]) box(boxWidth, height, depth);
			rotate([0,0,-60]) box(boxWidth, height, depth);
		}
}



//This one is tricky because the lower bearing was tight fit at 11.2 but the upper bearing loose so created another function XYBearing for this tigher fit. The open ended sides will be separated one will be called top and other bottom. Now seems even 11.2 is too loose for lower as this gets redesigned so reprinting again this time same conditions as the upper

module TopXYBearingHolderBracket(){
 cx = 23;
 cy = 30;
 cz = 5;

 difference(){
 union(){

   difference(){ 
    union(){
    //left support
    translate([-1.5,8,3.5])
    roundedBox([cx-2, cy+35, cz], 1, true);


    difference(){
     union(){
      translate([-1.5,5,9])
      roundedBox([cx-2, (cy+30)/2+9, cz+8], 1, true);

      //Upper bearing holder 
      translate([-17,-1,5]) 
      XYBearingholder();
     }
    //left bottom support
    translate([-2.5,-4,16])
    rotate([20,0,0])
    roundedBox([cx+17, (cy+30)/2+20, cz+10], 1, true);
    
    } 


    //right support
    translate([10.05,3,-6])
    rotate([90,90,90])
    roundedBox([cx+1, cy+25, cz], 1, true);


    difference(){
     union(){
      //right bottom support
      translate([15.05,-7.5,-6])
      rotate([90,90,90])
      roundedBox([cx+1, cy+3, cz+6], 1, true);

      //Lower Bearing holder
      translate([10.05,20,-23.5])
      rotate([180,-90,0])
      XYBearingholder();
    }

    //right bottom support
    translate([19.05,-15.5,-9])
    rotate([90,90,60])
    roundedBox([cx+18, cy+4, cz+10], 1, true);

    }
   }

  }

  /*
   //alignment guide
   translate([-5.5,-14,(-cy+10)/2+1])
   difference(){
   translate([10,0,0-5.8/2])
   cube([5.8,cy/3+4,5.8]);
   translate([17.5,-15,0-5.8/2])
   rotate([0,0,40])
   cube([8.8,(cy/3)+12,8.8]);
   }
 */

 }

  //big center 608 bearing the lower one
  translate([10,(cy+20)/2-20,(-cy+10)/2 + 1])
  rotate([0,90,0]){
  cylinder(r=11.5,h=50);
  //cylinder(r=11.05,h=50);
  translate([0,0,-10])
  cylinder(r=8.2/2,h=50);
  }

  //big center 608 bearing the upper one a little tigher
  translate([-2.5,14,5]){
  cylinder(r=11.5,h=50);
  translate([0,0,-10])
  cylinder(r=8.2/2,h=50);
  }

  //screw holes
  translate([-2.5,-17,-10])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-2.5,35.0,-10])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-15.5,26.0,(-cy+10)/2 + 1])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-10.5,-18,(-cy+10)/2+1])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

 }
}


// this one you need to do a mirror to see other side
// mirror([0,0,1])

module TopXYLowerBearingHolderBracket(){
 cx = 23;
 cy = 30;
 cz = 5;

      //basic bracket frame
      difference(){
      union(){

     //this part is the right angle bracket
     translate([-5,-20,-18])
     rotate([180,0,180]){
     translate([-0.5,2,3.5])
     roundedBox([cx-0, cy+32, cz], 1, true);
     //alignment guide
     /*
     translate([-2.5,-25.5,-11])
     rotate([-90,270,90])
     difference(){
       translate([10,0,0-5.8/2])
       cube([5.8,cy/3+4,5.8]);
       translate([17.5,-15,0-5.8/2])
       rotate([0,0,40])
       cube([8.8,(cy/3)+12,8.8]);
       cylinder(r=8.2/2,h=30);
      }
     */

     } //end rotate

      //base support on that side
      difference(){
       translate([-15.05,-12.35,-12.5])
       rotate([90,90,90])
       roundedBox([(cx+7)-7, (cy-5)+25, cz], 1, true);
       //clean out center of bearing
       translate([-10.05,0,-8.95])
       rotate([0,-90,0])
       cylinder(r=10.2/2,h=10);
      } //end difference


    } //end union
    //for support side angle screw holes
     translate([0,-25,0])
     rotate([180,0,0]){
     translate([-2.5,-3.0,-10])
     cylinder(r=5.3/2,h=50);
    }
    //for support side angle screw holes
     translate([0,3,0])
     rotate([180,0,0]){
     translate([-2.5,-3.0,-10])
     cylinder(r=5.3/2,h=50);
    }


    //for bearing side angle screw holes
    translate([-35.5,-32.0,-9.0])
    rotate([0,90,0])
    cylinder(r=5.3/2,h=50);

   //clean up the bottom
   translate([-35,-56,-50]) 
   cube([50,20,50]);

    } //end difference of basic bracket frame



     //Bearing piece and transisition
      difference(){
      union(){
       //the bearing
       translate([-15.05-2.5,-15,-23.5])
       rotate([0,-90,0])
       XYBearingholder();

       //transistion support
       translate([-25.05,-31.5,-cz/2-1])
       rotate([90,90,90])
       cube([(cx)/2, cy-12, cz+3]); 

      }
       //angled element support of transistion support
       translate([-24.05,-36.5,-cz/2+1])
       rotate([60,90,90])
       cube([(cx)/2+4, cy-7, cz+5]); 

      translate([-15.05,-15,-23.5])
      rotate([0,-90,0])
      translate([26.00,5.5,0])
      cube([5,20,11+10]);
     }
}



module BottomRodHolder(){
 cx = 23;
 cy = 30;
 cz = 5;

 difference(){
 union(){
  //left support
   roundedBox([cx, cy, cz], 1, true);
   translate([10.05,5,-9])
   rotate([90,90,90])
   //right support
   roundedBox([cx, cy+10, cz], 1, true);

   //alignment guide
   translate([-5.5,-4,0])
   difference(){
   translate([10,0,-12.5-5.8/2])
   cube([5.8,cy/3+4,5.8]);
   translate([17.5,-15,-15.4])
   rotate([0,0,40])
   cube([8.8,(cy/3)+12,8.8]);
   }

 }
  //screw holes
  translate([-2.5,4.0,-10])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-15.5,17.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

 }


 difference(){
  //protruded arm
  translate([26.0,-7.5,15])
  rotate([0,45,0])
  union(){
  roundedBox([15, 15, 55], 1, false);
  translate([-13,-14,27.5])
  m4locknut();
  }

  //screw holes room
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=10.3/2,h=50);

  //inside cleaner 
  translate([-11.5,-26.5,-22.3])
  cube([20,80,20]);
  
  //Guiding smooth rod
  translate([38.5,-20,27.5])
  rotate([0,90,90])
  cylinder(r=smrd/2, h=100);
  
  translate([4.5,-8.,62])
  rotate([0,90+45,0])
  cylinder(r=4.2/2,h=47);

 }
}










module BottomThreadRodHolder(){
 cx = 23;
 cy = 30;
 cz = 5;

 difference(){
 union(){
  //left support
   roundedBox([cx, cy, cz], 1, true);
   translate([10.05,5,-9])
   rotate([90,90,90])
   //right support
   roundedBox([cx, cy+10, cz], 1, true);

   //alignment guide
   translate([-5.5,-4,0])
   difference(){
   translate([10,0,-12.5-5.8/2])
   cube([5.8,cy/3+4,5.8]);
   translate([17.5,-15,-15.4])
   rotate([0,0,40])
   cube([8.8,(cy/3)+12,8.8]);
   }

 }
  //screw holes
  translate([-2.5,4.0,-10])
  cylinder(r=5.3/2,h=50);



  //screw holes
  translate([-15.5,17.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);


 }


 difference(){
  //protruded arm
  translate([19,-7.5,8])
  rotate([0,45,0])
  
   union(){
    roundedBox([15, 15, 33.5], 1, false);
    translate([-13,-14,27.5])
    //m4locknut();
    translate([-2,6.5,-14.5])
    rotate([-90,-90,0])
    Bearingholder();
   }


  //screw holes room
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=10.3/2,h=50);
  //inside cleaner 
  translate([-11.5,-26.5,-22.3])
  cube([20,80,20]);
 
  //Guiding smooth rod
  translate([38.5,-20,27.5])
  rotate([0,90,90])
  cylinder(r=smrd/2, h=100);

  }
  //for alignment
  //Guiding smooth rod
  //translate([38.5,-20,27.5])
  //rotate([0,90,90])
  //cylinder(r=smrd/2, h=100);
}


module XYBearingholder(){
  ox = 30;
  oy = 30;
  oz = 6;

  difference(){
   union(){
    translate([ox/2-0.5,oy/2,0])
    cylinder(r=15,h=oz*1.75);
    } //end union
  
   translate([ox/2-0.5,oy/2,0]){
    translate([0,0,-3])
    cylinder(r=10.2/2,h=60);
    translate([0,0,3])
    cylinder(r=11.5,h=30);
   }

  } //end difference
}






module Bearingholder(){
  ox = 30;
  oy = 30;
  oz = 6;

  difference(){
   union(){
    translate([ox/2-0.5,oy/2,0])
    cylinder(r=15,h=oz*1.75);
    } //end union
  
   translate([ox/2-0.5,oy/2,0]){
    translate([0,0,-3])
    cylinder(r=4.4,h=60);
    translate([0,0,-400])
    cylinder(r=4.4,h=600);
    translate([0,0,3])
    cylinder(r=10.2/2,h=30+5);
   }

  } //end difference
}






module CornerscadA(){
 cx = 115;
 cy = 20;
 cz = 4; 
  
 tx = 200;
 difference(){
  union(){
   cube([cx,cy,cz]);
   difference(){
   //reinforced support
   translate([0,cy/4,z/2])
   cube([cx,cy/2,cz]);

   //cut off one side in diagonal
   translate([-20,10,0])
   rotate([0,0,-45])
   cube([26.5,40,cz*3]);
  
   //cut off one side in diagonal
   translate([113,0,0])
   rotate([0,0,45])
   cube([26.5,40,cz*3]);

   //cut out center
   translate([cx/2+2,10,0])
   cylinder(r=15,h=cz*2);
   translate([0,0,3])
   cylinder(r=11,h=30);
   }
  }
  //cut out center
  translate([cx/2+2,10,0])
  cylinder(r=15,h=cz*2);
 }
}




module CornerscadB(cx,cy,cz){
 difference(){
  union(){
  roundedBox([cx, cy, cz], 5, true);
  translate([-5,-5.85/2,cz-6])
  cube([10,5.85,5]);
  }
  translate([cx/3,0,-5])
  cylinder(r=5.25/2, cz*2);
  translate([-cx/3,0,-5])
  cylinder(r=5.25/2, cz*2);
 } 
}


module cornerelement(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //tslot dimensions
  tx = 200;
  ty = 20;

  //Corner element
  translate([0,0,-10-25]){

  //Cornerscad

  //CornerscadA
  translate([tx-100,10,z])
  rotate([0,0,-45]){
   CornerscadA();
   translate([45,-5,0])
   Bearingholder();
  }
  //CornerscadB
  translate([tx/2+cbx/3-2,cbx/3,z +cbz/2]) 
  CornerscadB(cbx,cby,cbz);
  translate([tx-cby/2,0-cbx-cbx/3-1,z +cbz/2]) 
  rotate([0,0,90])
  CornerscadB(cbx,cby,cbz);

  } //end corner element
}



module anglecornersupport(){
  cbx = 19;
  cby = 19;
  cbz = 5;


  rotate([0,0,0])
  difference(){
   union(){
    roundedBox([cbx, cby, cbz], 5, true);
    translate([-5,-5.85/2,cbz-6])
    cube([10,5.85,4.5]);
   }
   translate([0,0,-5])
   cylinder(r=5.25/2, cbz*2);
  }


  //join piece
  rotate([0,0,0])
  translate([4.5,-9,-2.5])
  cube([18,18,5]);

  //end cap
  rotate([0,0,0])
  translate([17,-0,0])
  roundedBox([cbx, cby, cbz], 5, true);


  //angled join piece
  rotate([0,0,45])
  translate([-5.5,-25,-2.5])
  cube([7,20,5]);

  //angled join piece
  rotate([0,0,0])
  translate([15.0,-20,-2.5])
  cube([8,15,5]);


  translate([17,-25,0])
  rotate([0,0,0])
  difference(){
   union(){
    roundedBox([cbx, cby, cbz], 5, true);
    translate([-5.85/2,-10/2,cbz-6])
    rotate([0,0,0])
    //cube([10,5.85,4.5]);
    cube([5.85,10,4.5]);
   }

   translate([0,0,-5])
   cylinder(r=5.25/2, cbz*2);
  }


}



module cornersupport(){
  cbx = 19;
  cby = 19;
  cbz = 5;
  rotate([0,0,0])
  difference(){
   union(){
    roundedBox([cbx, cby, cbz], 5, true);
    translate([-5,-5.85/2,cbz-6])
    cube([10,5.85,4.5]);
   }

   translate([0,0,-5])
   cylinder(r=5.25/2, cbz*2);
  }


  //join piece
  translate([5,-5,-2.5])
  cube([10,10,5]);

  translate([22,25,0])
  rotate([0,0,90])
  difference(){
   union(){
    roundedBox([cbx, cby, cbz], 5, true);
    translate([-5,-5.85/2,cbz-6])
    cube([10,5.85,4.5]);
   }
   translate([0,0,-5])
   cylinder(r=5.25/2, cbz*2);
  }

  //join piece
  translate([27.5,7.5,-2.5])
  rotate([0,0,90])
  cube([10,10,5]);

  translate([22,0,0])
  rotate([0,0,90])
  difference(){
   union(){
    roundedBox([cbx, cby, cbz], 5, true);
    translate([-5,-5.85/2,cbz-6])
    cube([10,5.85,4.5]);
   }
   translate([0,0,-5])
   cylinder(r=5.25/2, cbz*2);
  }
}




module smoothCornerscadA(){ 
 cx = 115;
 cy = 20;
 cz = 4; 
  
 tx = 200;
 difference(){
 union(){
 cube([cx,cy,cz]);
 difference(){
  //reinforced support
  translate([0,cy/4,z/2])
  cube([cx,cy/2,cz]);

  //cut off one side in diagonal
  translate([-20,10,0])
  rotate([0,0,-45])
  cube([26.5,40,cz*3]);
  
  //cut off one side in diagonal
  translate([113.0,0,0])
  rotate([0,0,45])
  cube([26.5,40,cz*3]);

  //cut out center
  translate([cx/2+2,10,0])
  cylinder(r=smrd/2,h=cz*2);
  //translate([0,0,3])
  //cylinder(r=11,h=30);
 }
 }
  //cut out center
  translate([cx/2+2,10,0])
  cylinder(r=smrd/2,h=cz*2);
 }

 difference(){
  //position locknut
  union(){
  translate([cx/2-12,0,-3])
  rotate([90,0,0])
  m4locknut();
  translate([cx/2+2,10,5]){
  difference(){
  cylinder(r=8,h=15);
  translate([-50,0,5])
  rotate([0,90,0])
  cylinder(r=4.5/2,h=50);
  }
  }
  }
  //cut out center
  translate([cx/2+2,10,0])
  cylinder(r=smrd/2,h=cz*2+100);
 }
}



module smoothcornerelement(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;
  //tslot dimensions
  tx = 200;
  ty = 20;

  //Corner element
  translate([0,0,-35]){
  //Cornerscad
  //CornerscadA
  translate([tx-100,10,z])
  rotate([0,0,-45]){
  smoothCornerscadA();
  }
  translate([tx/2+cbx/3-2,cbx/3,z +cbz/2]) 
  CornerscadB(cbx,cby,cbz);

  translate([tx-cby/2,-cbx-cbx/3-1,z +cbz/2]) 
  rotate([0,0,90])
  CornerscadB(cbx,cby,cbz);

  } //end corner element
}



module MotorBottomRodHolder(){
 cx = 23;
 cy = 30;
 cz = 5;

 difference(){
 union(){
  //left support
   roundedBox([cx, cy, cz], 1, true);
   translate([10.05,5,-9])
   rotate([90,90,90])
   //right support
   roundedBox([cx, cy+10, cz], 1, true);

   //alignment guide
   translate([-5.5,-4,0])
   difference(){
   translate([10,0,-12.5-5.8/2])
   cube([5.8,cy/3+4,5.8]);
   translate([17.5,-15,-12.5-5.8/2])
   rotate([0,0,40])
   cube([8.8,(cy/3)+12,8.8]);
   }
 }
  //screw holes
  translate([-2.5,4.0,-10])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-15.5,17.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);
 }

 difference(){
  //protruded arm
  translate([26.0,-7.5,15])
  rotate([0,45,0])
  union(){
  translate([0,0,-15])
  roundedBox([15, 15, 28], 1, false);

  //translate([-21.5,-18.5,-22.5])
  translate([-21.5,-17.5,-22.5])
  rotate([90,0,0])
  motormount();
  }
  //screw holes room
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=10.3/2,h=50);
  //inside cleaner 
  translate([-11.5,-26.5,-22.3])
  cube([20,80,20]);
  
  //Guiding smooth rod
  translate([38.5,-20,27.5])
  rotate([0,90,90])
  cylinder(r=smrd/2, h=100);

  //to clean up area
  translate([26.0,-7.5,15])
  rotate([0,45,0])
  translate([-21,-10.5,-22.5])
  rotate([90,0,0])

  //motormount();
  translate([-1,19,-18.5])
  cube([43,43,9.5]);

  //clean stuff in motor inside
  translate([38.5-2,-20-4,25.5])
  rotate([0,90,90])
  cylinder(r=11.5, h=14);
 }

  translate([26.0,-7.5,15])
  rotate([0,45,0])
  //transition to motor
  translate([-7,-4,-15])
  difference(){
  cube([14,11.5,19]);
  translate([-0,16,8])
  rotate([45,0,0])
  cube([20,20,20]);
  }
}


module ZMotorMount(){
 cx = 23;
 cy = 30;
 cz = 5;

 difference(){
 union(){
  //left support
   roundedBox([cx-3, cy, cz], 1, true);
   translate([10.05,5,-9])
   rotate([90,90,90])
   //right support
   roundedBox([cx, cy+10, cz], 1, true);

   //alignment guide
   translate([-5.5,-4,0])
   difference(){
   translate([10,0,-12.5-5.8/2])
   cube([5.8,cy/3+4,5.8]);
   translate([17.5,-15,-12.5-5.8/2])
   rotate([0,0,40])
   cube([8.8,(cy/3)+12,8.8]);
   }

 }
  //screw holes
  translate([-2.5,4.0,-10])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-15.5,17.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);

  //screw holes
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=5.3/2,h=50);
 }

 difference(){
  //protruded arm
  translate([26.0,-7.5,15])
  rotate([0,45,0])
  union(){
  translate([0,0,-15])
  roundedBox([15, 15, 28], 1, false);

  //translate([-21.5,-18.5,-22.5])
  translate([-21.5,-17.5,-22.5])
  rotate([90,0,0])
  motormount();
  }
  //screw holes room
  translate([-10.5,-6.0,-12.5])
  rotate([0,90,0])
  cylinder(r=10.3/2,h=50);
  //inside cleaner 
  translate([-11.5,-26.5,-22.3])
  cube([20,80,20]);
  
  //Guiding smooth rod
  translate([38.5,-20,27.5])
  rotate([0,90,90])
  cylinder(r=smrd/2, h=100);

  //to clean up area
  translate([26.0,-7.5,15])
  rotate([0,45,0])
  translate([-21,-10.5,-22.5])
  rotate([90,0,0])

  //motormount();
  translate([-1,19,-18.5])
  cube([43,43,9.5]);

  //clean stuff in motor inside
  //translate([38.5+2,-20-10,25.5])
  //rotate([0,90,90])
  //cylinder(r=11.5, h=14);
 }

  translate([26.0,-7.5,15])
  rotate([0,45,0])
  //transition to motor
  translate([-7,-4,-15])
  difference(){
  cube([14,11.5,19]);
  translate([-0,16,8])
  rotate([45,0,0])
  cube([20,20,20]);
  }
 
}



module thinnermotormount(){
 mmx = 42;
 mmy = 42;
 //mmz = 5;
 mmz = 5-2+6-5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;

 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;

 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1]){
  cylinder(r=motrad, h=9);
  translate([0,0,-380])
  cylinder(r=4.3, h=400);
  }

  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1+5.7])
  cylinder(r=6.7/2, h=3.5);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1+5.7])
  cylinder(r=6.7/2, h=3.5);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1]){
  cylinder(r=m3rad, h=90);
  translate([0,0,5.7])cylinder(r=6.7/2, h=90);
  translate([0,-2,0])
  cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1]){
  cylinder(r=m3rad, h=90);
  translate([0,0,5.7])cylinder(r=6.7/2, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
 }
}




module motormountthin(){
 mmx = 42;
 mmy = 42;
 mmz = 5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 3.7/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  cylinder(r=motrad, h=9);
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  }
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz]){
  cylinder(r=m3rad, h=90);
  translate([0,-2,0])
  cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz]){
  cylinder(r=m3rad, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
 }
}














module motormount(){
 mmx = 42;
 mmy = 42;
 mmz = 8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  cylinder(r=motrad, h=10);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  

  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);


  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  translate([0,-2,0])
  cube([8,4.5,90]);

  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  translate([0,-2.25,0])
  cube([8,4.5,90]);

 }
}



module complete_assembly(){

 //positioning stuff
 x =-120;
 y =30;
 z =5;
 //bracket  (yes = 1 or no = 0)
 br = 0;

  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;

  //bed 
  bl = 275;

  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;

  extrusioncube();

  translate([x,y,z]){
   //threaded corner A
   translate([tx-cby/2-3,2.45,300])
   rotate([90,180,0])
   BottomThreadRodHolder(); //- bottom thread rod support
  
   //threaded rod
   translate([tx-cby-32,ty-cbx,-40]){
   cylinder(r=8./2,h=400);
   zbedthread();
   translate([-2.5,-15,0])
   rotate([0,0,-90])
   zbedslot(); 

   //x and y rod bracket
   translate([32,37.5,60])
   rotate([90,0,-90])
   TopXYBearingHolderBracket();

   //x rod
   translate([41,30,105.25-40])
   rotate([90,0,0])
   cylinder(r=8.2/2,h=350);

   //y rod
   translate([21,40,74.25])
   rotate([0,-90,0])
   cylinder(r=8.2/2,h=350);

  }
  cornerelement();

  //Top supports
  /*
  translate([203,15,7])
  //A
  rotate([0,90,180])
  cornersupport();
  translate([190,27.5,2])
  rotate([-90,90,180])
  anglecornersupport();

  translate([-174,-175,353])
  rotate([-270,0,90])
  tslot20innerbracket();
  */
 
  translate([175,52,380])
  rotate([0,0,270])
  footbase();
  

  //End Corner A



  //threaded corner B 
  translate([-202,-ctx+377,365])
  rotate([-90,180,-90])
  anglecornersupport();


  translate([-ctx+ctx-0,-ctx+30,0])
  rotate([0,0,180])
  {
  translate([tx-cby/2-3,2.45,300])
  rotate([90,180,0])
  //BottomRodHolder();
  BottomThreadRodHolder(); //- bottom thread rod support
  
  translate([tx-cby-32,ty-cbx,-40]){
  cylinder(r=8./2,h=400);
  //zbedslot();
   translate([-3.5,-12.5,0])
   rotate([0,0,-90])
   zbedslot(); 
  
  //x and y rod bracket
  translate([32,37.5,60])
  rotate([90,0,-90])
  TopXYBearingHolderBracket();


   //x rod
   translate([41,30,65.25])
   rotate([90,0,0])
   cylinder(r=8.2/2,h=350);

   //y rod
   translate([21,40,74.25])
   rotate([0,-90,0])
   cylinder(r=8.2/2,h=350);
}
  cornerelement();
  }

  translate([177-ctx,-ctx+15,7])
  rotate([90,90,-90-180])
  cornersupport();

  translate([190.7-ctx,-ctx+0.1,2])
  rotate([-0,90,-270])
  anglecornersupport();


  translate([0,0,380])
  rotate([270,0,180]) 
  tslot20innerbracket();

  translate([-177,-401,380])
  rotate([0,0,90])
  footbase();

  translate([-173,-ctx+2,365])
  rotate([-90,180,0])
  anglecornersupport();

  //End Corner B


  //threaded corner C
  translate([ctx/2-15,-ctx/2+15,0])
  rotate([0,0,270])
  {
  translate([tx-cby/2-3,2.45,300])
  rotate([90,180,0])
  MotorBottomRodHolder();
  
  //threaded rod
  translate([tx-cby-32,ty-cbx,-40]){
  cylinder(r=8./2,h=400);
   translate([15,-3,0])
   zbedslot(); 

   //x and y rod bracket
   //Open bracket system 
   translate([32,42.5,74])
   rotate([90,180,-90])
   TopXYLowerBearingHolderBracket();


   //x and y rod bracket
   //Open bracket system 
   translate([44,29.5,65])
   rotate([90,180,180])
   mirror([0,0,1])
   TopXYLowerBearingHolderBracket();

  }

  cornerelement();
  }
  //C
  translate([190,-ctx+2,7])
  rotate([0,90,-90-180])
  cornersupport();
  translate([202.7,-ctx+15.1,2])
  rotate([-90,90,-270])
  anglecornersupport();

  translate([0,0,350])
  rotate(a=90,v=[1,0,0])
  tslot20innerbracket();

  translate([227,-352,380])
  rotate([0,0,180])
  footbase();

  translate([202.7,-ctx+32,365])
  rotate([-90,180,90])
  anglecornersupport();

  //End Corner C



  //threaded corner D
  translate([-ctx/2+15,-ctx/2+15,0])
  rotate([0,0,450])
  {
  translate([tx-cby/2-3,2.45,300])
  rotate([90,180,0])
  //BottomRodHolder();
  MotorBottomRodHolder();
  
  //threaded rod
  translate([tx-cby-32,ty-cbx,-40]){
  cylinder(r=8./2,h=400);
   translate([15,-3,0])
   zbedslot(); 

   //x and y rod bracket
   //Open bracket system 
   translate([32,42.5,74])
   rotate([90,180,-90])
   TopXYLowerBearingHolderBracket();

   //x and y rod bracket
   //Open bracket system 
   translate([44,29.5,65])
   rotate([90,180,180])
   mirror([0,0,1])
   TopXYLowerBearingHolderBracket();
  }
  cornerelement();
  }
  //D
  //Top corner support
  translate([190-ctx,28,9.])
  rotate([-0,-270,-90])
  cornersupport();
  translate([177.7-ctx,15,3])
  rotate([0,90,0])
  anglecornersupport();
  
  translate([175,-175,377])
  rotate([-270,180,270])
  tslot20innerbracket();

  translate([-227,3,380])
  footbase();

  translate([172.7,-ctx+408,365])
  rotate([-90,180,180])
  anglecornersupport();

  //bed
  /*
  translate([-bl/2,-bl -35,178])
  cube([bl,bl,5]);
  */

  //tslot supports for bed

  //bed support
  translate([115,0,187])
  rotate([90,90,0])
  tslot20(350);
  translate([-145,0,187])
  rotate([90,90,0])
  tslot20(350);
  }

  //xymotormounts
  translate([-15,65,345])
  rotate([90,0,0])
  xymotormount();

  mirror([0,0,1])
  translate([87,-25,-345])
  rotate([-90,0,90])
  xymotormount();


}





module shaft_516(){
 sl = 30;
 //sl = 45;
 mx = -2; //adjust shaftx
 mz = 5.00;
 my = 2;
 translate([20,0,sl/2-2]){
  difference(){
   union(){
    translate([mx,my,mz]) //here
    rotate([0,0,30])
    hexagon(20.7,sl-10);
   }
   translate([mx,my,mz-15])rotate([0,0,30])cylinder(r=7.6,h=sl+4,$fn=6);
   translate([mx,my,mz-15-100])rotate([0,0,30])cylinder(r=8.7/2,h=200);
  }
}
}
















module shaft(){
 sl = 25;
 //sl = 45;
 mx = -2; //adjust shaftx
 mz = 5.00;
 my = 2;
 translate([20,0,sl/2-2]){
  difference(){
   union(){
    translate([mx,my,mz]) //here
    rotate([0,0,30])
    hexagon(20.7,sl);
    //base(); //tmp
   }
   translate([mx,my,mz]) //here
   rotate([0,0,30])
   hexagon(13.0,sl);
  }
  translate([mx,my,mz+5])
   difference(){
    rotate([0,0,30])
    hexagon(12.7,5);
    translate([0,0,-8]){
    cylinder(r=6.4,6);
    cylinder(r=6.0,6.5);
    cylinder(r=5.5,7);
    cylinder(r=5.0,7.5);
    cylinder(r=4.8,8);
    cylinder(r=4.4,20);
    }
}
}
}










/*
This script generates a teardrop shape at the appropriate angle to prevent overhangs greater than 45 degrees. The angle is in degrees, and is a rotation around the Y axis. You can then rotate around Z to point it in any direction. Rotation around Y or Z will cause the angle to be wrong.
*/

module teardrop(radius, length, angle) {
	rotate([0, angle, 0]) union() {
		linear_extrude(height = length, center = true, convexity = radius, twist = 0)
			circle(r = radius, center = true, $fn = 30);
		linear_extrude(height = length, center = true, convexity = radius, twist = 0)
			projection(cut = false) rotate([0, -angle, 0]) translate([0, 0, radius * sin(45) * 1.5]) cylinder(h = radius * sin(45), r1 = radius * sin(45), r2 = 0, center = true, $fn = 30);
	}
		
}

//(C) Nathan Zadoks 2011
//CC-BY-SA or GPLv2, pick your poison.
module tslot(
	size=10,	//size of each side
	length=10,	//length. descriptive enough, no?
	thickness=3,	//thickness of the 'sheet'
	gap=0,		//gap, thickness of the lower part of the 'T'
	center=false,	//somewhat vague. todo.
	nut=false,	//set to true to make a fitting T-slot nut
){
	start=thickness/sqrt(2);
	if(nut){
		linear_extrude(height=10)
		intersection(){
			polygon([[size/2-gap/2,0],[size/2-gap/2,thickness],[thickness+start,thickness],[size/2,size/2-2],[size-thickness-start,thickness],[size/2+gap/2,thickness],[size/2+gap/2,0]]);
			square([size,size/2-(gap+thickness)/2]);
		}
	}	
	else{
		color([0.5,0.5,0.5])
		linear_extrude(height=length,center=center)
		translate([15,15])
		difference(){
			union(){
				for(d=[0:3]) rotate([0,0,d*90]) polygon(points=[
					[0,0],
					[0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
					[size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
				]);
				square(gap+thickness,center=true);
			}
			circle(r=gap/2,center=true);
		}
	}
}
module tslot20(length,nut){
	tslot(size=20,gap=5.26,thickness=1.5,length=length,nut=nut);
}
module tslot30(length,nut){
	tslot(size=30,gap=8.13,thickness=2.55,length=length,nut=nut);
}
module tslot30_3060(length,nut){
	union(){
		tslot30(length,nut);
		translate([30,0,0])
		tslot30(length,nut);
	}
}


// EXAMPLE USAGE:
// roundedBox([20, 10, 4], 5, true);

// size is a vector [w, h, d]
module roundedBox(size, radius, sidesonly)
{
  rot = [ [0,0,0], [90,0,90], [90,90,0] ];
  if (sidesonly) {
    cube(size - [2*radius,0,0], true);
    cube(size - [0,2*radius,0], true);
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2]) {
      translate([x,y,0]) cylinder(r=radius, h=size[2], center=true);
    }
  }
  else {
    cube([size[0], size[1]-radius*2, size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1], size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1]-radius*2, size[2]], center=true);

    for (axis = [0:2]) {
      for (x = [radius-size[axis]/2, -radius+size[axis]/2],
             y = [radius-size[(axis+1)%3]/2, -radius+size[(axis+1)%3]/2]) {
        rotate(rot[axis]) 
          translate([x,y,0]) 
          cylinder(h=size[(axis+2)%3]-2*radius, r=radius, center=true);
      }
    }
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2],
           z = [radius-size[2]/2, -radius+size[2]/2]) {
      translate([x,y,z]) sphere(radius);
    }
  }
}

















module cubeassembly(){

 l = 380;


 //cube part
 //part 1
 translate([0,0,0])
 tslot20(l);


 //part 2
 translate([0,5,-5])
 rotate([90,0,0])
 tslot20(l);


 //part 3
 translate([5,0,-5])
 rotate([90,0,90])
 tslot20(l);


 //cube part
 //part 4 like part 1
 translate([l,0,20])
 tslot20(l);


 //part 5 like part 3
 translate([5,0,l-5])
 rotate([90,0,90])
 tslot20(l);

 //part 6 like part 2
 translate([l,25,-5])
 rotate([90,0,0])
 tslot20(l);

 //part 7 like part 3
 translate([25,-l,-5])
 rotate([90,0,90])
 tslot20(l);

 //part 8 like part 2
 translate([0,5,l-5])
 rotate([90,0,0])
 tslot20(l);

 //part 9 like part 1
 translate([0,-l,0])
 tslot20(l);

 //part 10 like part 7
 translate([25,-l,l-5])
 rotate([90,0,90])
 tslot20(l);

 //part 11 like part 6
 translate([l,25,l-5])
 rotate([90,0,0])
 tslot20(l);

 //part 12 like part 4
 //cube part
 //part 4 like part 1
 translate([l,-l,20])
 tslot20(l);

 //part 13 base part cross section
 translate([l/2,3,375])
 rotate([90,0,0])
 tslot20(l-24);

 //part 14 base part cross section
 translate([26,-l/2,375])
 rotate([90,0,90])
 tslot20((l-26-20)/2);

 //part 15 base part cross section
 translate([26+190,-l/2,375])
 rotate([90,0,90])
 tslot20((l-26-20)/2);


}
















 module carriagebearing(){
  translate([39.25+21/2-14.5/2,16.,-12.5])
  rotate([90,0,0]){
   difference(){
    union(){
     difference(){
      union(){
      //cube([14.5,25,5]);
      translate([7.5,13,0]) 
      cylinder(r=12,h=5);

      /*
      difference(){
      translate([7.5,13,0]) 
      cylinder(r=12,h=5);
      translate([-8.2,0,0]) 
      cube([5,20,500]);
      translate([17.5,0,0]) 
      cube([5,20,500]);
     }
     */

      }
      translate([-8.2,0,0]) 
      cube([5,20,500]);
      translate([17.5,0,0]) 
      cube([5,20,500]);
    
      translate([14.5/2,5+7.5,-50])
      cylinder(r=3.1/2,h=100);
     
      /*
      translate([-5.5,0,5]) //the x value will be adjusted for fitting
      rotate([0,60,0])
      cube([14.5,25,5]);

      translate([14.5,0,-5]) //the x value will be adjusted for fitting
      rotate([0,-60,0])
      cube([14.5,25,5]);
      */
     }
     translate([14.5/2,12.5,16.]){
      bearing();
      translate([-10.5,-12.5,-11])
      cube([21,25,11-1.5]);
     }

/*
     difference(){
      translate([7.5,13,0]) 
      cylinder(r=12,h=5);
      translate([-8.2,0,0]) 
      cube([5,20,500]);
      translate([17.5,0,0]) 
      cube([5,20,500]);
     }
*/






     translate([-3,-10,-2+20-9])
     difference(){
     translate([-.25,0,0])
     cube([21,10,18]);
     translate([9.75+0.5,5,15-0.90])
     rotate([90,0,0])
     //cylinder(r=16.2/2,h=100);
     union(){
     translate([0,0,-5.25])
     cylinder(r1=16.2/2, r2=9.4/2,h=10);
     translate([0,0,-30]){
     cylinder(r=9.4/2,h=100);
     translate([0,0,-80])
     cylinder(r=8.4/2,h=300);
     }
     }
     }

    }

    translate([(14.5/2-6/2),0,-2.4+3.95])
    cube([6,25,2.4]);

    translate([(14.5/2-3.5/2),0,-2.6+1.75])
    cube([3.5,25,2.6]);

   /*
    translate([14.5/2,5,-50])
    cylinder(r=3.1/2,h=100);

    translate([14.5/2,20,-50])
    cylinder(r=3.1/2,h=100);
   */
    translate([14.5/2,5+7.5,-50])
    cylinder(r=3.1/2,h=100);
   }
  }
}


 //higher carriage bearing 9mm
 module carriagebearing_h(){
  translate([39.25+21/2-14.5/2,16.,-12.5])
  rotate([90,0,0]){
   difference(){
    union(){
     difference(){
      cube([14.5,25,5]);
      translate([-5.5,0,5]) //the x value will be adjusted for fitting
      rotate([0,60,0])
      cube([14.5,25,5]);

      translate([14.5,0,-5]) //the x value will be adjusted for fitting
      rotate([0,-60,0])
      cube([14.5,25,5]);
     }
     translate([14.5/2,12.5,16.+9]){
      bearing();
      translate([-10.5,-12.5,-11-9])
      difference(){
      cube([21,25,11+9-1.5]);  // this is the higher one
      translate([10,30,28])
      rotate([90,0,0])
      cylinder(r=15.80/2,h=30);
      }
     }
    }

    translate([(14.5/2-6/2),0,-2.4+3.95])
    cube([6,25,2.4]);

    translate([(14.5/2-3.5/2),0,-2.6+1.75])
    cube([3.5,25,2.6]);

    translate([14.5/2,5,-50])
    cylinder(r=3.1/2,h=100);

    translate([14.5/2,20,-50])
    cylinder(r=3.1/2,h=100);
   }
  }
}


 //higher carriage bearing 9mm
 module carriagebearing_rh(){
  translate([39.25+21/2-14.5/2,16.,-12.5])
  rotate([90,0,0]){
   difference(){
    union(){
     translate([-3,-10,-2+20])
     difference(){
     translate([-.25,0,0])
     cube([21,10,18]);
     translate([9.75+0.5,5,15-0.90])
     rotate([90,0,0])
     //cylinder(r=16.2/2,h=100);
     union(){
     translate([0,0,-5.25])
     cylinder(r1=16.2/2, r2=9.4/2,h=10);
     translate([0,0,-30]){
     cylinder(r=9.4/2,h=100);
     translate([0,0,-100])
     cylinder(r=8.7/2,h=300);
     
     }
     }
     }
     difference(){
      translate([7.5,13,0]) 
      cylinder(r=12,h=5);
      translate([-8.2,0,0]) 
      cube([5,20,500]);
      translate([17.5,0,0]) 
      cube([5,20,500]);
     }



     translate([14.5/2,12.5,16.+9]){
      bearing();
      translate([-10.5,-12.5,-11-9])
      difference(){
      cube([21,25,11+9-1.5]);  // this is the higher one
      /*
      translate([10,30,28])
      rotate([90,0,0])
      cylinder(r=15.80/2,h=30);
      */
      }
     }
    }

    translate([(14.5/2-6/2),0,-2.4+3.95])
    cube([6,25,2.4]);

    translate([(14.5/2-3.5/2),0,-2.6+1.75])
    cube([3.5,25,2.6]);
    
    translate([14.5/2,5+7.5,-50])
    cylinder(r=3.1/2,h=100);

    /*
    translate([14.5/2,5,-50])
    cylinder(r=3.1/2,h=100);

    translate([14.5/2,20,-50])
    cylinder(r=3.1/2,h=100);
    */
   }
  }
}


































module crossslider_coupler(){
     difference(){
     translate([-5,0,0])
     cube([14.5+10,25,5]);
     translate([0,0,0.2])
     difference(){
      cube([14.5,25,5]);
      translate([-5.6,0,5]) //the x value will be adjusted for fitting original is -5.5
      rotate([0,60,0])
      cube([14.5,25,5]);

      translate([14.6,0,-5]) //the x value will be adjusted for fitting original is 14.5
      rotate([0,-60,0])
      cube([14.5,25,5]);

     }
}
}

module dan_m3locknut(l){
     difference(){
      cube([14.5,l,5]);
      translate([-5.6,0,5]) //the x value will be adjusted for fitting original is -5.5
      rotate([0,60,0])
      cube([14.5,l,5]);

      translate([14.6,0,-5]) //the x value will be adjusted for fitting original is 14.5
      rotate([0,-60,0])
      cube([14.5,l,5]);

      translate([14.5/2-6/2,0,2.5])
      cube([6,l,2.4]);
      translate([14.5/2-3.5/2,0,0])
      cube([3.5,l,2.6]);

      translate([14.25,0,0])
      cube([14.5,l,5]);
     }
}





module gesim_tipmount(){

m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr;
cubeln = 30;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;

union(){
 difference(){
 cube([cubeln,cubehi,3]);
 //screwhole
 translate([cubeln-m25diam*2-1,m25diam*1.5-1.5,0]) cylinder(r=m3diam/2,6);
  //screwhole
  translate([cubeln-m25diam*2-20,m25diam*1.5-1.5+30-3,-10])  cylinder(r=m3diam/2,30);
 //screwhole
  translate([cubeln-m25diam*2+1,m25diam*1.5-1.5+30-3,-10])  cylinder(r=m3diam/2,30);
 }
 //bottom plate
 translate([0+9.5,rldist,3]) cube([cubeln-9.5,3,6]);
 //mid vertical plate (the reference plate)
 translate([chpos,cubehi-11-shmr,3]) cube([3,6.5,6]);
 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])
 difference(){
  cube([6,19.5,6]);
  translate([-15,14,3])  rotate([0,90,0])  cylinder(r=m25diam/2,h=40);
  translate([2.0,11,6.5])  rotate([0,90,0])  cube([7,6,2.0]);
 }
  //top plate
 difference(){
  translate([0+8.0,rldist-12.5-3-1,2])  cube([cubeln-8,6,6]);
  translate([chpos-2+0.5,cubehi-9-3,5.5])  rotate([90,0,0])  cylinder(r=1.7,h=40);
  //translate([2.5+0.5,10.5-1,4-1])
  translate([chpos-4,10.5-1,4-1])  rotate([90,0,0])  cube([5,6,1.9]);  //need to make this screw tighter was 2.1
 }
}
}


module gesim_tipmount_formed(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
translate([30,0,0]){
 difference(){
 translate([20,30-1,0]) cube([cubeln+11.5+10-20,7,7]); 
 translate([11.5+cubeln-4.5-2.5,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13/2-1.2,32.5+1+10,3]) rotate([90,0,0])cylinder(r=4.8/2,h=30);
 }
}
union(){
 difference(){
 union(){
 difference(){
 translate([0,30-1,0]) cube([cubeln+11.5+10,7,3]); 
 translate([11.5+cubeln-4.5-2.5,32.5-1,0]) cylinder(r=3.5/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13,32.5-1,0]) cylinder(r=3.5/2,h=10);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4,rldist,3])cube([cubeln-9.5+3+6,3+4-3,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr,3]) cube([3,6.5,6]);
//top plate
 translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
 } 

 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])  cube([6,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])  cube([6+0.5,19.5+10,6]);
  }
 }
translate([(30-20)/2-0.5,5+0.25-0.1+3,-10.]){
translate([0,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([0,13.25,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,13.25,15.5])cylinder(r=4.2/2,h=3.5);

cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13.25,0])cylinder(r=3/2,h=20);
translate([15,13.25,0])cylinder(r=3/2,h=20);
}
}
}
}




module gesim_tipmount_formed_lego(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
translate([30,0,0]){
 difference(){
 translate([20,30-1,0]) cube([cubeln+11.5+10-20,7,7]); 
 translate([11.5+cubeln-4.5-2.5,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13/2-1.2,32.5+1+10,3]) rotate([90,0,0])cylinder(r=4.8/2,h=30);
 }
}
union(){
 difference(){
 union(){
 difference(){
 translate([0,30-1,0]) cube([cubeln+11.5+10,7,3]); 
 translate([11.5+cubeln-4.5-2.5,32.5-1,0]) cylinder(r=3.5/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13,32.5-1,0]) cylinder(r=3.5/2,h=10);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4,rldist,3])cube([cubeln-9.5+3+6,3+4-3,6]);
 //mid vertical plate (the reference plate)
 //translate([chpos-2.7,cubehi-11-shmr,3]) cube([3,6.5,6]);
//top plate
 //translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
 } 

 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])  cube([6,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])  cube([6+0.5,19.5+10,6]);
  }
 }
translate([(30-20)/2-0.5,5+0.25-0.1+3,-10.]){
translate([0,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([0,13.25,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,13.25,15.5])cylinder(r=4.2/2,h=3.5);

cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13.25,0])cylinder(r=3/2,h=20);
translate([15,13.25,0])cylinder(r=3/2,h=20);
}
}
}
}

module gesim_tipmount_formed_lego_vert(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
//translate([30-52,0+5+5,0+9]){
translate([30-20,0+5+5,0]){
 difference(){
 translate([21.5,30,0])color("blue") cube([cubeln+11.5+10-20,7,7]); 
 translate([11.5+cubeln-4.5-2.5,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,0]) cylinder(r=3.5/2,h=30);
 translate([11.5+cubeln-4.5-2.5+13,32.5+1,4.5]) cylinder(r=5.5/2,h=2.5);
 translate([11.5+cubeln-4.5-2.5+13/2-1.2+1.4,32.5+1+10,3]) rotate([90,0,0])cylinder(r=4.8/2,h=30);
 }
}
union(){
 difference(){
 union(){
 translate([-2,4,0])difference(){
 translate([2,30-4,0])color("lime") cube([22,15+5,6]); 
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=3.5/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=3.5/2,h=10);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4,rldist,3])cube([cubeln-9.5+3+6,3+4-3,6]);
 //mid vertical plate (the reference plate)
 //translate([chpos-2.7,cubehi-11-shmr,3]) cube([3,6.5,6]);
//top plate
 //translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
 } 

 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])cube([6,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])cube([6+0.5,19.5+10,6]);
  }
 }
translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10.]){
translate([0,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([0,13,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,13,15.5])cylinder(r=4.2/2,h=3.5);

cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13,0])cylinder(r=3/2,h=20);
translate([15,13,0])cylinder(r=3/2,h=20);
}
}
}
}






module gesim_tipmount_formed_modular(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
//translate([30-52,0+5+5,0+9]){

union(){
 difference(){
 union(){
 translate([-2,4,0])difference(){
 translate([2,30-4,0])color("lime")cube([22,15+5,6-1.75]); 
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 color("peru")cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
 } 
 //mid vertical plate for horizontal set screw
 translate([chpos-11-0.5,cubehi-11-shmr-3-5.5,3])cube([6.5,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])cube([6+0.5,19.5+10,6]);
 color("pink")translate([chpos-11-10,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
 color("pink")translate([chpos-11+21.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
  }
 }
translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10.]){
translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);

translate([-7.2,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.45/2,h=4+5,$fn=6);}
translate([-7.2+30,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.9/2,h=4+5,$fn=6);}

cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13,0])cylinder(r=3/2,h=20);
translate([15,13,0])cylinder(r=3/2,h=20);
}
}
}
}







//thus far z should be 1
module linearpotentiometer_wiper(z){
 color("lightorange")
 translate([0,0,0.7])difference(){
 union(){
 translate([0,2,0-1.5])cube([6+4,19.5+9-2,4.25+1.5]);
 translate([0-10+3+2,10.2,-2+2])cube([6+4+10-3-2,9,4.25+2-2]);
 translate([3,0,1.8-2+z])difference(){
 translate([0-10+2,10.2+4,-0.3])rotate([0,90,0])cylinder(r=3.8,h=10-2);
 translate([0-10+2,10.2+4,-0.3])rotate([0,90,0])cylinder(r=3.8,h=(8/3));
 translate([0-10+2+5.5,10.2+4,-0.3])rotate([0,90,0])cylinder(r=3.8,h=(8/3));
 translate([0-10,10.2,-2+4.4])cube([6+4+10,9,4.25+2-2]);
 translate([0-11,10.2+4-3,-0.3-10])rotate([-30,0,0])cube([11,30,30]);
 translate([0-11,10.2+4-3-20,-0.3-24])rotate([30,0,0])cube([11,30,30]);
 }
 }
 translate([4.5,7,-5.6]){cylinder(r=3.7/2,h=10);translate([0,0,5-1.75])cylinder(r=6.8/2,h=4.75,$fn=6);}
 translate([4.5,7+16,-5.6]){cylinder(r=3.7/2,h=10);translate([0,0,5-1.75])cylinder(r=6.8/2,h=4.75,$fn=6);}
 }
}















module gesim_tipmount_formed_modular_linearactuator(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
//translate([30-52,0+5+5,0+9]){
union(){
 difference(){
 union(){
 translate([-2,4,0])difference(){
 translate([2,30-4,0])color("lime")cube([22,15+5,6-1.75]); 
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 color("peru")cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
 } 
 //mid vertical plate for horizontal set screw
 translate([chpos-11-0.5,cubehi-11-shmr-3-5.5,3])cube([6.5,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])cube([6+0.5,19.5+10,6]);
 color("pink")translate([chpos-11-10,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
 color("lightblue")translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,0])difference(){
 cube([6+4,19.5+9,4.25]);
 translate([4.5,7,-5.6])cylinder(r=3.7/2,h=10);
 translate([4.5,7+16,-5.6])cylinder(r=3.7/2,h=10);
 }
 translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,-5])linearpotentiometer_wiper();
 color("pink")translate([chpos-11+21.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
  }
 }
translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10.]){
translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);
translate([-7.2,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.45/2,h=4+5,$fn=6);}
translate([-7.2+30,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.9/2,h=4+5,$fn=6);}
cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13,0])cylinder(r=3/2,h=20);
translate([15,13,0])cylinder(r=3/2,h=20);
}
}
}
}




module filament_linearactuator_shuttle(){
//works with TW-04-09
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
//translate([30-52,0+5+5,0+9]){
union(){
 difference(){
 union(){
 translate([-2,4,0])difference(){
 translate([2,30-4,0])color("lime")cube([22,15+5,6-1.75+1]); 
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,-0.3]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,-0.1-1.5+1]) cylinder(r=6.7/2,h=2.5,$fn=6);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,-0.3]) cylinder(r=3.7/2,h=10);
 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,-0.1-1.5+1]) cylinder(r=6.7/2,h=2.5,$fn=6);
 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
 }
 color("peru")cube([cubeln,cubehi,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
 } 
 //mid vertical plate for horizontal set screw
 translate([chpos-11-0.5,cubehi-11-shmr-3-5.5,3])cube([6.5,19.5+10,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])cube([6+0.5,19.5+10,6]);
 color("pink")translate([chpos-11-10+15.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
 color("pink")translate([chpos-11-10+15.5-6,cubehi-11-shmr-3-5.5+7,0])cube([6+4+5+7,8,11]);
/*
 color("lightblue")translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,0])difference(){
 cube([6+4,19.5+9,4.25]);
 translate([4.5,7,-5.6])cylinder(r=3.7/2,h=10);
 translate([4.5,7+16,-5.6])cylinder(r=3.7/2,h=10);
 }
*/
// translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,-5])linearpotentiometer_wiper();
 //color("pink")translate([chpos-11+21.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
  }
 }
translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10.]){
translate([0,0,15.6])cylinder(r=5.5/2,h=13.5);
translate([15,0,15.6])cylinder(r=5.5/2,h=13.5);
translate([0,13,15.6])cylinder(r=5.5/2,h=13.5);
translate([15,13,15.6])cylinder(r=5.5/2,h=13.5);

translate([-7.2+14.8+6,6-7+7,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5-4])cylinder(r=6.45/2,h=4+5,$fn=6);}
translate([-7.2+14.8-6,6-7+7,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5-4])cylinder(r=6.45/2,h=4+5,$fn=6);}
//translate([-7.2+14.8,6+5,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5-4])cylinder(r=6.45/2,h=4+5,$fn=6);}
/*
translate([-7.2+14.8,6-7,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5-4])cylinder(r=6.45/2,h=4+5,$fn=6);}
translate([-7.2+14.8,6+5,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5-4])cylinder(r=6.45/2,h=4+5,$fn=6);}
*/


//translate([-7.2+30,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.9/2,h=4+5,$fn=6);}
cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13,0])cylinder(r=3/2,h=20);
translate([15,13,0])cylinder(r=3/2,h=20);
}
}
}
}




































































module gesim_tipmount_formed_noigus(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;

union(){
 difference(){
 union(){
 /*
 difference(){
 translate([0,30-1,0]) cube([cubeln+11.5,7,3]); 
 translate([11.5+cubeln-4.5,32.5-1,0]) cylinder(r=3.5/2,h=10);
 }
 */
 cube([cubeln+8,cubehi+5,3]);
 translate([3,10,0]){
 //bottom plate
 translate([0,10,0]){
 translate([0+9.5-5-4,rldist,3]) cube([cubeln-9.5+3+6,3+4-4,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr,3]) cube([3,6.5,6]);
  //top plate
  translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
  }
 //mid vertical plate for horizontal set screw
 translate([chpos-11-3.5,cubehi-11-shmr-3-5.5-5.5,3])  cube([6+3.5,19.5+15.5,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5-5.5,3])  cube([6+5.5,19.5+15.5,6]);
  }
 }

translate([(30-20)/2-0.5,5+0.25-0.1+3,-10.]){

translate([0,0,15.5]){cylinder(r=6.2/2,h=5);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
translate([0,20,15.5]){cylinder(r=6.2/2,h=5);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
translate([20,0,15.5]){cylinder(r=6.2/2,h=5);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
translate([20,20,15.5]){cylinder(r=6.2/2,h=5);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
/*
translate([0,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,0,15.5])cylinder(r=4.2/2,h=3.5);
translate([0,13.25,15.5])cylinder(r=4.2/2,h=3.5);
translate([15,13.25,15.5])cylinder(r=4.2/2,h=3.5);

cylinder(r=3/2,h=20);
translate([15,0,0])cylinder(r=3/2,h=20);
translate([0,13.25,0])cylinder(r=3/2,h=20);
translate([15,13.25,0])cylinder(r=3/2,h=20);
*/
}
}
}
}





module gesim_tipmount_formed_noigus_2tips(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
union(){
 difference(){
 union(){
 cube([cubeln+8,cubehi+5.25,3]);
translate([-4,0,0]){
translate([3,10,0]){
 //bottom plate
 translate([0,10,0]){
 translate([0+9.5-5-4+0.5,rldist+0.2,3]) cube([cubeln-9.5+3+6,3+4-4,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr-0.2,3]) cube([3,6.5,6]);
  //top plate
  translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
  }
 //mid vertical plate for horizontal set screw
 //need to go back to this
 translate([chpos-11-3.5+5,cubehi-11-shmr-3-5.5-5.5+18.5,3])  cube([6+3.5-5,14.5,6]); 
  }
translate([3+9,10,0]){
 //bottom plate
 translate([0,10,0]){
 translate([0+9.5-5-4,rldist+0.2,3]) cube([cubeln-9.5+3+6,3+4-4,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr-0.2,3]) cube([3,6.5,6]);
  //top plate
  translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
  }
 //mid vertical plate for horizontal set screw
 //need to go back to this
 translate([chpos-11-3.5+5,cubehi-11-shmr-3-5.5-5.5+18.5,3])  cube([6+3.5-5,14.5,6]); 
  }
 translate([chpos-11-3.5+5+21,cubehi-11-shmr-3-5.5-5.5+18.5+10,3])  cube([6+3.5-5,14.5,6]); 
}
}
}
}
}





module gesim_tipmount_formed_noigus_1tip_basic(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
union(){
 difference(){
 union(){

//clamp part
translate([0,0,0])difference(){union(){translate([5,-4,-2])
cube([cubeln+8-11.5,cubehi+5.25+4-8,3+2]);
translate([3,2,-2])
cube([cubeln+8-11.5+6-2.5,8,3+2]);
}
translate([7.9,5.85,-20])cylinder(r=3.7/2,h=30);
translate([7.9,5.85,0.1])cylinder(r=8/2,h=3);
translate([7.9+12,5.85,-20])cylinder(r=3.7/2,h=30);
translate([7.9+12,5.85,0])cylinder(r=8/2,h=30);
}

//GeSiM Tip holder part
translate([28+0.5,40-2.4,0])rotate([0,0,180]){
translate([3,10-8,0]){
 //bottom plate
 translate([0,10,0]){
 translate([0+9.5-5-4+0.5+1,rldist+0.2,3])cube([cubeln-9.5+3+6-3,3+4-4,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr-0.2,3])cube([3,6.5,6]);
  //top plate
  translate([0+8.0-4,rldist-12.5-3-1+3,2])cube([cubeln-8+2,6-3,6]);
  }
 //mid vertical plate for horizontal set screw
 //need to go back to this
 translate([chpos-11-3.5+5,cubehi-11-shmr-3-5.5-5.5+18.5,3])cube([6+3.5-5,14.5,6]); 
  }
 translate([chpos-11-3.5+5+21-4,cubehi-11-shmr-3-5.5-5.5+18.5+10-8,3]) cube([6+3.5-5,14.5,6]); 
}
}
}
}
}


module disposablep200(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
union(){
 difference(){
 union(){

//clamp part
translate([0,0,0])difference(){union(){translate([5,-4,-2])
cube([cubeln+8-11.5,cubehi+5.25+4-8,3+2]);
translate([3,2,-2])
cube([cubeln+8-11.5+6-2.5,8,3+2]);
}
translate([7.9,5.85,-20])cylinder(r=3.7/2,h=30);
translate([7.9,5.85,0.1])cylinder(r=8/2,h=3);
translate([7.9+12,5.85,-20])cylinder(r=3.7/2,h=30);
translate([7.9+12,5.85,0])cylinder(r=8/2,h=30);
}

//GeSiM Tip holder part
difference(){
translate([28+0.5-24+0.5,40-2.4-25-0.35,0])cube([19-0.5,15,15]);
translate([28+0.5-24+10,40-2.4-25+15,10])rotate([90,90,0])cylinder(r=6.8/2,h=50);
}
/*
translate([28+0.5,40-2.4,0])rotate([0,0,180]){
translate([3,10-8,0]){
 //bottom plate
 translate([0,10,0]){
 translate([0+9.5-5-4+0.5+1,rldist+0.2,3])cube([cubeln-9.5+3+6-3,3+4-4,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr-0.2,3])cube([3,6.5,6]);
  //top plate
  translate([0+8.0-4,rldist-12.5-3-1+3,2])cube([cubeln-8+2,6-3,6]);
  }
 //mid vertical plate for horizontal set screw
 //need to go back to this
 translate([chpos-11-3.5+5,cubehi-11-shmr-3-5.5-5.5+18.5,3])cube([6+3.5-5,14.5,6]); 
  }
 translate([chpos-11-3.5+5+21-4,cubehi-11-shmr-3-5.5-5.5+18.5+10-8,3]) cube([6+3.5-5,14.5,6]); 
}
*/
}
}
}
}



























module gesim_tipmount_guide(){

m3diam = 3.4;
m25diam= 3;

shmr = 15;
cubehi = 25 + shmr-5;
cubeln = 30;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;

union(){
 translate([0,15,-20])cube([30,8,23]);
 translate([0,0,-20])cube([30/2,8,23]);
 difference(){
 cube([cubeln,cubehi,3]);
 //screwhole
 translate([cubeln-m25diam*2-1,m25diam*1.5-1.5,0])
 cylinder(r=m3diam/2,6);

  //screwhole
  translate([cubeln-m25diam*2-20,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);

 //screwhole
  translate([cubeln-m25diam*2+1,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);
 }

}
}















module tipmount_thread(){

difference(){
union(){
translate([-3,-1,0])
cube([43,35,8]);
translate([4,16.5,-7])
rotate([90,0,0]){
translate([-4,-3,-15])
difference(){
translate([-3,0,0.5])
cube([7,35,30]);
translate([-30,3,25.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,27.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,6.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}
}
}
}
}
}




module mp6_lid(){

difference(){
cube([22,40,5]);
translate([0,40-10-18,0])
cube([4,10,6]);
}
}





















module mp6_tipmount(){

m3diam = 3.4;

m25diam= 3;

shmr = 15;
cubehi = 25 + shmr;
cubeln = 30;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;

union(){
 difference(){
 cube([cubeln,cubehi,3]);
 //screwhole
 translate([cubeln-m25diam*2-1,m25diam*1.5-1.5,0])
 cylinder(r=m3diam/2,6);

  //screwhole
  translate([cubeln-m25diam*2-20,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);

 //screwhole
  translate([cubeln-m25diam*2+1,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);
 }

 translate([cubeln/2-11,cubehi-4,0]){
 difference(){
 union(){
 cube([22,38,10]);
 }
 translate([2.8,0,10-4])
 cube([16,35,4]);
 translate([cubeln/2-4,cubehi+90,7])
 rotate([90,90,0])
 cylinder(r=3.6/2,h=100);
 }
 }

 translate([cubeln/2-10,cubehi-4,0]){
 translate([2,cubehi-4-3-1.6,5]){
 cube([6,3.6,5]);
 translate([10,0,0])
 cube([6,3.6,5]);
 }
 }
}
}

module tipmount_thread(){

difference(){
union(){
translate([-3,-1,0])
cube([43,35,8]);
translate([4,16.5,-7])
rotate([90,0,0]){
translate([-4,-3,-15])
difference(){
translate([-3,0,0.5])
cube([7,35,30]);
translate([-30,3,25.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,27.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,6.5])
rotate([0,90,0]){
translate([0,0,30])
rotate([0,0,90])
cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}
}


}
}
translate([10+5,9,-50]){
translate([0,0,55])
cylinder(r=12/2, h=10, $fn=6);
cylinder(r=3.2, h=100);

translate([0,18,0]){
translate([0,0,55])
cylinder(r=12/2, h=10, $fn=6);
cylinder(r=3.2, h=100);
}

translate([9+4.5,9,0]){
translate([0,0,55])
cylinder(r=12/2, h=10, $fn=6);
cylinder(r=3.2, h=100);
}
}
}
}



module microscope_toolmount(){

 difference(){
 union(){
 translate([0,2,1.5+1-0.25])
 roundedBox([50, 39+5, 11.5], 5, true);

 //translate([-10,22+3,-10])
 //rotate([-270,0,-90])
 //m4locknut();
 //translate([-30,-7.5,-10])
 //rotate([90,0,0])
 //m4locknut();
 }

  translate([0,2,-10])
  cylinder(r=33/2,h=75);
  translate([13,-2.5,-100])
  cube([5,9,200]);

 /*
 translate([5,0,0])
 translate([17-5,-20,3.5])
 cube([13-5,15.5+35,9]);
 */
 
 //translate([-0.5,124.5-20,3.5])
 //rotate([90,0,0])
 //cylinder(r=4.5/2,h=100);

 /*
 translate([-100.5+50,2.0,3.5])
 rotate([90,90,90])
 cylinder(r=4.25/2,h=100);
 */


 //translate([-4.5,16.75+3,5.5-8])
 //cube([8,3.75,20]);


 /*
 translate([-18,9,-0]){
 translate([0,0,-4])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 */
 /*
 translate([-18,-9,-0]){
 translate([0,0,-4])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 */
 /*
 translate([-4.5,0,-0]){
 translate([0,0,-4])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 */
 }


}

module microscope_toolmount_thorlabs(){

 difference(){
 union(){
 //translate([0,2,1.5+1-0.25]) roundedBox([50, 39+5, 11.5], 5, true);
 translate([0,2,1.5+1-0.25+11.5])roundedBox([50, 39+5, 4], 5, true);

 }
  translate([0,2,-10])cylinder(r=6.5/2,h=70);
  //translate([0,2,-10])cylinder(r=33/2,h=20);
 translate([0,2,1.5+1-0.25])translate([25-4,(39+5)/2-4,-10])cylinder(r=3.5/2,h=50);
 translate([0,2,1.5+1-0.25])translate([25-4,-(39+5)/2+4,-10])cylinder(r=3.5/2,h=50);
 translate([0,2,1.5+1-0.25])translate([-25+4,(39+5)/2-4,-10])cylinder(r=3.5/2,h=50);
 translate([0,2,1.5+1-0.25])translate([-25+4,-(39+5)/2+4,-10])cylinder(r=3.5/2,h=50);
}
}
























module microscope_toolmount_celestron(){

 difference(){
 union(){
 translate([0,2,1.5+1-0.25]) roundedBox([50+5, 39+5, 11.5], 5, true);
 translate([-37-5,-9,-3.5]) cube([15,20,11.5]);
 }
 translate([-37-6,-15+12,-3.5]) cube([15+20,8,11.5]);
  translate([-5,2,-10])cylinder(r=(33+5)/2,h=75);
  translate([-35,-15+52,2.5])rotate([90,90,0])cylinder(r=(3.5)/2,h=75);
}
}

module microscope_toolmount_celestron_led(){

 difference(){
 union(){
 translate([0,2,1.5+1-0.25]) roundedBox([50, 39+4, 11.5], 5, true);
 translate([-37,-9,-3.5]) cube([15,20,11.5]);
 translate([-10,-32,-3.5]) cube([20,20,11.5]);
 }
 translate([-37-6,-15+12,-3.5]) cube([15+20,8,11.5]);
  translate([0,-32+6+5,-10.5])rotate([20,0,0])cylinder(r=(8.25)/2,h=75);
  translate([0,-32+6,-0])rotate([20,0,0])cylinder(r=(11.7)/2,h=75);
  translate([0,-32+6,0])sphere(r = 11.7/2);
  translate([0,2,-10])cylinder(r=(33+5)/2,h=75);
  translate([-35+3,-15+52,2.5])rotate([90,90,0])cylinder(r=(3.5)/2,h=75);
  translate([-10+7/2,-32,-3.5+5]) cube([20-7,10,11.5]);

}
}















module toolmount(){

 difference(){
 union(){
 roundedBox([45, 35, 7], 5, true);
 translate([-10,0,13])
 //cube([30,30,20]);
 translate([12,0,0])
 roundedBox([25, 28.5, 20], 5, true);
 }
 translate([-18+12,9,-0]){
 translate([0,0,-4])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 translate([-18+12,-9,-0]){
 translate([0,0,-4])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 translate([-4.5+12,0,-0]){
 translate([0,0,-25])
 cylinder(r=3.2,h=100);
 //cylinder(r=11.7/2, h=10, $fn=6);
 }
 }


}



module cross_slider_plate_tips(){
translate([0,0,4])
difference(){
 union(){
 difference(){
 roundedBox([80, 80, 7], 5, true);
 translate([-36,-25,0])
 roundedBox([20,20,10],5, true);
 translate([-36,25,0])
 roundedBox([20,20,10],5, true);
 }
 translate([-18-10,-18-9,0])
 toolmount();

 translate([-18-10,18+9,0])
 toolmount();

 /*
 translate([-14.5/2,14,3])
 crossslider_coupler();

 translate([-14.5/2,14-53,3])
 crossslider_coupler();
 */

 translate([-14,-7-0.45,3])
 rotate([0,0,90])
 crossslider_coupler();

 translate([39,-7-0.45,3])
 rotate([0,0,90])
 crossslider_coupler();
 }
 //translate([-29,31,0])
 //roundedBox([35, 40, 4], 5, true);
 translate([34,35,0])
 roundedBox([19, 40, 10], 5, true);
 translate([34,-35,0])
 roundedBox([19, 40, 10], 5, true);
 //roundedBox([31, 40, 4], 5, true);
 translate([34.5,0,-25])
 cylinder(r=3.4/2,h=100); 
 translate([19.5,0,-25])
 cylinder(r=3.4/2,h=100); 

 translate([-34.5,0,-25])
 cylinder(r=3.4/2,h=100); 

 translate([-19.5,0,-25])
 cylinder(r=3.4/2,h=100); 

 translate([0,34.5,-25])
 cylinder(r=3.4/2,h=100); 

 //middle screws
 translate([0,27,-25])
 cylinder(r=3.4/2,h=100); 

 translate([0,19.5,-25])
 cylinder(r=3.4/2,h=100); 

 translate([0,-34.5,-25])
 cylinder(r=3.4/2,h=100); 

 translate([0,-19.5,-25])
 cylinder(r=3.4/2,h=100); 

 //middle screws
 translate([0,-27,-25])
 cylinder(r=3.4/2,h=100); 


 /*
 translate([-3,-3,-50])
 cylinder(r=6.2/2,h=100);

 translate([-38,-38,-50])
 cylinder(r=6.2/2,h=100);

 translate([-22.15,-23.5,-25])
 cylinder(r=9,h=100);
 */

 }

}


//new correct small plate to print
module small_cross_slider_plate_tips_newassy(){

/*
translate([-9,50,-29])rotate([180,180,0])translate([0,0,50])bearing_assy();


translate([25,9,-20])rotate([0,0,90])translate([0,0,50])bearing_assy();


translate([-50,-35,23])rotate([-90,0,0])carriagebearing();
translate([-50,50,23])rotate([-90,0,-90])carriagebearing_rh();
*/


//new correct small plate to print
difference(){
small_cross_slider_plate_tips();
translate([-16.25,43,3]){
translate([0,0,-200])
cylinder(r=8.7/2,h=400);
cylinder(r=15.5/2,h=10,$fn=6);
}

translate([-16.25+35-0.5,13+3,3]){
translate([0,0,-200])
cylinder(r=8.7/2,h=400);
cylinder(r=15.5/2,h=10,$fn=6);
}
}





}

module small_cross_slider_plate_tips(){
translate([0,0,4])
difference(){
 union(){
 difference(){
 roundedBox([95, 98+10, 7], 5, true);
 translate([-36,-25,0])
 roundedBox([20,20,10],5, true);
 translate([-100,15,-5])
 cube([70,60,10]);
 translate([-70,-75,-5])
 cube([60,60,10]);
 }
 translate([-64,-14,-3.5])
 cube([30,30,7]);

 translate([-18-10,-18-9,0])
 toolmount();

 translate([-18-10-10-15,18+9+7,0]){
 difference(){
 union(){
 microscope_toolmount();
 //translate([21-0.25,-19,3])
 //crossslider_coupler();
 }
 translate([0,2,-10])
 cylinder(r=33/2,h=75);
 translate([13,-2.5,-100])
 cube([5,9,200]);

 //translate([17-5,-20,3.5])
 //cube([13,15.5+35,9]);


 }
}

 /* 
 translate([-14.5/2,14+0.5,30])
 crossslider_coupler();
 */

 translate([-14.5/2,14-53,3])
 //crossslider_coupler();
 difference(){
 translate([-6.5,-10,0])
 cube([28,30,5]);
 translate([7.5,4.5,0]){
 cylinder(r=12.15,h=100);
 translate([0,0,-60])
 cylinder(r=3.1/2,h=100);
 }
 }

 /*

 translate([-14,-7-0.45,3])
 rotate([0,0,90])
 crossslider_coupler();
*/


 translate([-79-4,0,0])
 translate([39,-7-0.45,3])
 rotate([0,0,90])
 union(){
 //crossslider_coupler();

 difference(){
 translate([-6.5,-10,0])
 cube([28,30,5]);
 translate([7.5,4.5,0]){
 cylinder(r=12.15,h=100);
 translate([0,0,-60])
 cylinder(r=3.1/2,h=100);
 }
 }

 }

 }
 //translate([-29,31,0])
 //roundedBox([35, 40, 4], 5, true);
 translate([34+10,0,0])
 roundedBox([35, 120, 10], 5, true);
 //translate([8,25,0])
 //roundedBox([29, 50, 10], 5, true);
 //roundedBox([31, 40, 4], 5, true);


 translate([-79-4,0,0]){
 translate([34.5,0,-25])
 cylinder(r=3.4/2,h=100); 
 //translate([19.5,0,-25])
 //cylinder(r=3.4/2,h=100); 
 }


 //translate([-34.5,0,-25])
 //cylinder(r=3.4/2,h=100); 

 //translate([-19.5,0,-25])
 //cylinder(r=3.4/2,h=100); 

 //translate([7,-5,0]){
 translate([0,34.5,-25])
 cylinder(r=3.4/2,h=100); 
 //middle screws
 //translate([0,27,-25])
 //cylinder(r=3.4/2,h=100); 
 //translate([0,19.5,-25])
 //cylinder(r=3.4/2,h=100); 
 //}

 translate([7-5+13,-27-5,0]){
 translate([0,34.5,-25])
 cylinder(r=3.4/2,h=100); 
 //middle screws
 translate([0,27,-25])
 cylinder(r=3.4/2,h=100); 
 translate([0,19.5,-25])
 cylinder(r=3.4/2,h=100); 
 translate([3,17-2.5+2.5,-30])
 cube([25,25+5-10,50]);
 }



 translate([0,-34.5,-25])
 cylinder(r=3.4/2,h=100); 

 //translate([0,-19.5,-25])
 //cylinder(r=3.4/2,h=100); 

 //middle screws
 //translate([0,-27,-25])
 //cylinder(r=3.4/2,h=100); 

/*
 translate([-3,-3,-50])
 cylinder(r=6.2/2,h=100);

 translate([-38,-38,-50])
 cylinder(r=6.2/2,h=100);

 translate([-22.15,-23.5,-25])
 cylinder(r=9,h=100);
*/
 
}
}




module cross_slider_plate(){
translate([0,0,4])
difference(){
 union(){
 roundedBox([80, 80, 4], 5, true);
 translate([-18,-18,0])
 rotate([0,0,45])
 roundedBox([80, 27, 4], 5, true);

 translate([-14.5/2,14,2.])
 crossslider_coupler();

 translate([-14.5/2,14-53,2.])
 crossslider_coupler();

 translate([-14,-7,2.])
 rotate([0,0,90])
 crossslider_coupler();

 translate([39,-7,2.])
 rotate([0,0,90])
 crossslider_coupler();
 }
 translate([-29,31,0])
 roundedBox([35, 40, 4], 5, true);
 translate([34,31,0])
 roundedBox([19, 40, 4], 5, true);
 translate([30,-31,0])
 roundedBox([31, 40, 4], 5, true);
 translate([34.5,0,-25])
 cylinder(r=3.2/2,h=100); 

 translate([19.5,0,-25])
 cylinder(r=3.2/2,h=100); 

 translate([-34.5,0,-25])
 cylinder(r=3.2/2,h=100); 

 translate([-19.5,0,-25])
 cylinder(r=3.2/2,h=100); 

 translate([0,34.5,-25])
 cylinder(r=3.2/2,h=100); 

 translate([0,19.5,-25])
 cylinder(r=3.2/2,h=100); 

 translate([0,-34.5,-25])
 cylinder(r=3.2/2,h=100); 

 translate([0,-19.5,-25])
 cylinder(r=3.2/2,h=100); 

 translate([-3,-3,-50])
 cylinder(r=6.2/2,h=100);

 translate([-38,-38,-50])
 cylinder(r=6.2/2,h=100);

 translate([-22.15,-23.5,-25])
 cylinder(r=9,h=100);

 }

}






//This is the function that calls the whole assembly
module axis_slider_assay(){
 axis_slider_base();
 bearing();
 difference(){
  translate([13,14.5,0])
  rotate([90,0,0])
  dan_m3locknut(15);
  translate([29.5-19/2,31,44/2-14])
  rotate([90,90,0])
  cylinder(r=2.9/2,h=50);
 } 
 difference(){
  translate([13,-14.5,15])
  rotate([-90,0,0])
  dan_m3locknut(15);
  translate([19-19/2+10.5,19+12,44/2-4-10])
  rotate([90,90,0])
  cylinder(r=2.9/2,h=50);
 }
}


module axis_slider_base(){
//base part
rotate([0,0,180])
translate([-2*19+8.5,-19/2,0]){
difference(){
 axis_slider();
 
 translate([15,-10,30])
 rotate([0,0,0])
 cube([50,60,15]); 

translate([-15,-10,30])
 rotate([0,0,0])
 cube([20,60,15]);
 }
 }


}


//this is the belt plate that aligns the screws and calles axis_slider_plate
module axis_slider_beltplate(){

//Belt plate
translate([30,4.5,34])
difference(){
  axis_slider_plate();
  //screw holes
  translate([0,4,6]){
   translate([-10,3,-12])
   rotate([0,90,0])
   cylinder(r=3.25/2,h=200);

   translate([-50,3,1])
   rotate([0,90,0])
   cylinder(r=3.25/2,h=200);
  }
  translate([0,-20,6]){
  translate([-10,3,-12])
  rotate([0,90,0])
  cylinder(r=3.25/2,h=200);

  translate([-50,3,1])
  rotate([0,90,0])
  cylinder(r=3.25/2,h=200);
  }
 }//end plate

}

module axis_slider_plate(){
  cl = 4;
  ct = 23;
  mcl = -4;
  r=3.25;
  difference(){
  union(){
  translate([2,0,0]){
  difference(){
		translate([mcl,0,-13])
		cube([cl,12,ct]);
		translate([mcl,10-2.5 ,-10.5+0-13])
		rotate([42,0,0])
		cube([cl,45,10]);
  }
  }
  translate([-6,-10,0])
  rotate([180,180,0])
  {
  difference(){
	translate([mcl-4,0,-13])
	cube([cl,12,ct]);
	translate([mcl-4,10-2.5,-10.5+0-13])
	rotate([42,0,0])
	cube([cl,45,10]);
  }
  }
  //plate
  translate([-2,-10,-13])
  cube([cl,15,ct]);
  //alignment screw holes
  /*
  translate([0,4,6]){
   translate([-10,3,-12])
   rotate([0,90,0])
   cylinder(r=3/2,h=200);

   translate([-50,3,1])
   rotate([0,90,0])
   cylinder(r=3/2,h=200);
  }

 translate([0,-20,6]){
  translate([-10,3,-12])
  rotate([0,90,0])
  cylinder(r=3/2,h=200);

  translate([-50,3,1])
  rotate([0,90,0])
  cylinder(r=3/2,h=200);
 }
 */ //end alignment screws

 } //end union

  translate([-17.5,-15,-26.5])
  cube([20,20.3,ct]);

 } //end difference
 }


//axis slider base part not including bearing holder
module axis_slider(){
	difference(){
	axis_slider_shaft();
	translate([20,9.5,18.5])
	rotate([0,90,0])
	cylinder(r=4.4/2,h=10, center=true, $fn=20);
	}

	//beltclamp();
	translate([9,18+1,37.5-13/2-0]){
	translate([0,0,9])
	axis_slider_beltclamp();
	}

	translate([9,1,37.5+13-13/2]){
	rotate([180,180,0])
	translate([-2,0,-4])
	axis_slider_beltclamp2();
	}

}


module axis_slider_beltclamp(){
	cl = 10;
	mcl = -4;
	difference(){
	union(){
	//difference(){
	difference(){
 		translate([-4,0,0])
		cube([10,6.90,4]);
		//translate([-7,1,2])
		//cube([13,4,9]);
	}

	translate([0,-4,-6])   
	difference(){
		translate([mcl,0,-13])
		cube([cl,12,23]);
		translate([mcl,10-2.5 ,-10.5+0-13])
		rotate([42,0,0])
		cube([cl,45,10]);
	}
	}
	translate([-10,3,-12])
	rotate([0,90,0])
        cylinder(r=3/2,h=200);

	translate([-50,3,1])
	rotate([0,90,0])
        cylinder(r=3/2,h=200);

	}



}


module axis_slider_beltclamp2(){
	cl = 10;
	mcl = -4;

	difference(){
	union(){
	//difference(){
	difference(){
 		translate([-4,0,0])
		cube([10,6.90,4]);
		//translate([-7,1,2])
		//cube([15,4,9]);
	}

	translate([0,-4,-6])   
	difference(){
		translate([mcl,0,-13])
		cube([cl,12,23]);
		translate([mcl,10-2.5 ,-10.5+0-13])
		rotate([42,0,0])
		cube([cl,45,10]);
	}
	}
	//translate([2.5,3.,-15])
        //cylinder(r=3/2,h=200);

	translate([-10,3,-12])
	rotate([0,90,0])
        cylinder(r=3/2,h=200);

	translate([-50,3,1])
	rotate([0,90,0])
        cylinder(r=3/2,h=200);

	}



}



module axis_slider_shaft(){
	difference(){
		union(){
		cube([19,19,44]);
		//translate([10,10,0])
		//roundedRect([19, 19, 44], 2, $fn=12);
		}
		translate([19/2,19/2,-1])
		cylinder(r=8.7/2,h=44*2);

		/*
		//set screws
		translate([-19/2,19/2,44-17])
		rotate([0,90,0])
		cylinder(r=2.9/2,h=50);
		*/

		//set screws to hole axis bar in place
		translate([19-19/2,19+12,44/2-4-10])
		rotate([90,90,0])
		cylinder(r=2.9/2,h=50);

	}


}



module nextgen_axis_slider_beltclamp(){

translate([-5,-20,10])
rotate([0,90,0])
difference(){
cube([19,10,4]);
translate([4,6,0])
cylinder(r=3.4/2,h=60);
translate([16,6,0])
cylinder(r=3.4/2,h=60);
}



}



module nextgen_axis_slider(){

// screw/nut dimensions
body_height = 20;
nut_dia = 6.9;
nut_height=2;
screw_dia = 4.2;
screw_elevation = body_height-1.5;

difference(){
rotate([0,90,0])
union(){
cylinder(r=20,h=11);
translate([-10,-20,0])
cube([10,40,11]);

translate([20,18,-7.5])
rotate([90,0,-90])
m4locknut();


//left side
//translate([20,15,-25])
//right side
translate([20,15-41,-25])
difference(){
cube([20,11,22]);
translate([8,20,11])
rotate([90,0,0])
cylinder(r=9.4/2,h=200);
}

}


translate([5.5,0,-50])
cylinder(r=8.6/2,h=100);

translate([-1,-20,20])
rotate([0,90,0])
cube([10,40,13]);

translate([-10,14,6])
rotate([0,90,0])
cylinder(r=3.8/2,h=50);
translate([-10,14,-6])
rotate([0,90,0])
cylinder(r=3.8/2,h=50);

translate([-10,-14,6])
rotate([0,90,0])
cylinder(r=3.8/2,h=50);
translate([-10,-14,-6])
rotate([0,90,0])
cylinder(r=3.8/2,h=50);

translate([-2,7.5,-5])
cube([40,3,10]);

translate([-2,-11,-5])
cube([40,3,10]);

}
translate([-5,-10,-40]){
difference(){
translate([-20,-5,0])
union(){

difference(){
translate([20,5,0])
cube([20,20,30]);
translate([31,50,10.5])
rotate([90,0,0])
cylinder(r=4.4/2,h=40);
translate([30.5,15,-10])
cylinder(r=8.4/2,h=100);
}

cube([22,30,24]);
translate([15,10,24]){
cube([5,10,4.5]);
cube([2.5,10,8]);
}


translate([0,10,24])
difference(){
cube([7,10,8]);
translate([-7,5,3])
rotate([0,90,0])
cylinder(r=7/2,h=10);
}
}

translate([-9,26,12])
rotate([90,0,0]){
cylinder(r=15.2/2,h=35);
//this is for shaft collar to make it go straighter alignment purposes
cylinder(r=9.4/2,h=100);
}
translate([-13,-5,15])
cube([8,35,22]);

translate([-3,10,27]){
rotate([0,90,0])
cylinder(r=nut_dia/2, h=nut_height+1.5,$fn=6);

translate([-50,0,0])
rotate([0,90,0])
cylinder(r=3.8/2,h=60);

}
}
//For optical endstop flag
rotate([0,90,0])
translate([-9,-5-9,-20])
cube([9,25+14+9,3]);

}


}





module cross_slider_assy(){
 translate([-40-19.5/2,-26,23])
 rotate([270,0,0])
 carriagebearing();

 translate([-40-19.5/2,26,23])
 rotate([270,0,0])
 carriagebearing();

 translate([-26.5,-50,23])
 rotate([270,0,90])
 carriagebearing_h();

 translate([26.5,-50,23])
 rotate([270,0,90])
 carriagebearing_h();

 cross_slider_plate();
}


module small_cross_slider_assy(){

 /*
 translate([-40-19.5/2,-26,23])
 rotate([270,0,0])
 carriagebearing();
 */
 /*
 translate([-40-19.5/2,26,23])
 rotate([270,0,0])
 carriagebearing();
 */
 /*
 translate([-79,0,0])
 translate([-26.5,-50,23])
 rotate([270,0,90])
 carriagebearing_rh();
 */

 /* 
 translate([-79-4,0,0])
 translate([39,-7-0.45,3])
 rotate([0,0,90])
 crossslider_coupler();


 translate([26.5,-50,23])
 rotate([270,0,90])
 carriagebearing_rh();
 */
 //cross_slider_plate();
 small_cross_slider_plate_tips();
}






module mount_plate(){
// screw/nut dimensions
screw_dia = 4.2;
{
	difference()
	{
		translate([0,0,1.5])
		cube([37,10,3], center=true);

		translate([14,0,0])
		cylinder(r=screw_dia/2, h=3, $fn=20);

		translate([-14,0,0])
		cylinder(r=screw_dia/2, h=3, $fn=20);
	}
}
}

module bearing(){

// LM8UU bushing holder
// Inspired/derived from:
// http://www.thingiverse.com/thing:14814


// screw/nut dimensions
screw_dia = 4.2;
nut_dia = 6.9;
nut_height=2;

// main body dimensions
body_width = 21;
gap_width = 10;
body_height = 23;

//this was the original way LM8UU_dia = 16.2; //for cross slider use 16.2 because I have different bearings ... 15.2 for axis sliders
// should be LM8UU_dia = 15.2; //for cross slider use 16.2 this is current ... because I have different bearings ... 16.2 for axis sliders
LM8UU_dia = 16.2; //temporary for cross slider use 16.2 because I have different bearings ... 15.2 for axis sliders
screw_elevation = body_height-1.5;



// main body
difference()
{
	union()
	{
		//mount_plate();

		translate([0,0,10])
			cube([body_width,25,body_height], center=true);

		// nut trap surround
		translate([gap_width/2,0,screw_elevation])
			rotate([0,90,0])
				cylinder(r=nut_dia/2+2, h=body_width/2 - gap_width/2, $fn=6);

		// Screw hole surround
		translate([-gap_width/2,0,screw_elevation])
			rotate([0,-90,0])
				cylinder(r=nut_dia/2+2, h=(body_width-gap_width)/2 - nut_height, $fn=20);
	}

	// bushing hole
	translate([0,0,LM8UU_dia/2+2-3])
		rotate([90,0,0])
			cylinder(r=LM8UU_dia/2, h=25.1+100, center=true);

	// top gap
	translate([0,0,20])
		cube([gap_width,25.1,20],center=true);

	// screw hole (one all the way through)
	translate([0,0,screw_elevation])
		rotate([0,90,0])
			cylinder(r=screw_dia/2, h=100, center=true, $fn=20);

	// nut trap
	translate([body_width/2-nut_height-1,0,screw_elevation])
		rotate([0,90,0])
			cylinder(r=nut_dia/2, h=nut_height+1.5,$fn=6);
	translate([body_width/2-nut_height-1,0,screw_elevation+3])
		rotate([0,90,0])
			cylinder(r=nut_dia/2, h=nut_height+1.5,$fn=6);

	// Screw hole
	translate([-(body_width/2-nut_height),0,screw_elevation])
		rotate([0,-90,0])
			cylinder(r=nut_dia/2, h=nut_height+.01,$fn=20);
 }
}







module xymotormount(){

  difference(){
  union(){
  translate([0,11.15,21])
  rotate([90,0,0])
  roundedBox([60, 42, 7], 10, true);

  translate([-39.5,7.65,0])
  cube([80,7,16.5]);

  translate([-33,11.15,15])
  rotate([90,0,0])
  roundedBox([15, 30, 7.0], 3, true);

  translate([33,11.15,13])
  rotate([90,0,0])
  roundedBox([15, 25, 7.0], 3, true);

  translate([2,22,3.5])
  difference(){
  roundedBox([58, 28, 7], 6, true);
  translate([38,5,0])
  roundedBox([20, 25, 7], 3, true);
 }

 translate([25.,-13,21])
 rotate([0,90,0])
 roundedBox([42, 45, 7.0], 1, true);

 translate([22.,-30.,21])
 rotate([0,90,0])
 roundedBox([42, 10, 7.0], 1, true);

 translate([22.,3.5,21])
 rotate([0,90,0])
 roundedBox([42, 11, 7.0], 1, true);
 }

 translate([10,2,5.65])
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);

 translate([15,-13.5,21.1])
 rotate([0,90,0])
 cylinder(r=7/2,h=25);

 translate([34.6,23.5,17])
 rotate([90,0,0])
 cylinder(r=5.6/2,h=25);

 translate([-34.6,23.5,17])
 rotate([90,0,0])
 cylinder(r=5.6/2,h=25);

 translate([-18.6,24.6,-4])
 rotate([0,0,0])
 cylinder(r=5.6/2,h=25);

 translate([18.6,24.6,-4])
 rotate([0,0,0])
 cylinder(r=5.6/2,h=25);

 translate([10,2-31,5.65])
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);

 translate([10,2,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([0,-2,0])
 cube([19,3.9,7]);
 }

 translate([10,2-31,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([0,-2,0])
 cube([19,3.9,7]);
}
}
}



module motormount_base(){

  difference(){
  union(){

  translate([25.,-13,21])
  rotate([0,90,0])
  roundedBox([42, 45, 7.0], 1, true);

  translate([22.,-14.,37])
  rotate([0,90,0])
  roundedBox([10, 42, 7.0], 1, true);

  translate([22.,-14,5])
  rotate([0,90,0])
  roundedBox([10, 42, 7.0], 1, true);
 }

 translate([10,2,5.65])
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);

 translate([15,-13.5,21.1])
 rotate([0,90,0])
 cylinder(r=7/2,h=25);

 translate([10,2-31,5.65]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([5,-17,-2])
 cube([15,17,3.9]);
 }

 translate([10,2,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 //translate([0,-2,0])
 //cube([19,3.9,7]);
 }

 translate([10,2-31,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([5,-17,-2])
 cube([15,17,3.9]);
}
}












}





module xymotormount_support(){

  difference(){
  union(){

  translate([-39.5+28+2,7.65,0])
  cube([38,7,16.5]);

  translate([2+7.5,22,3.5])
  roundedBox([38, 28, 7], 6, true);

  translate([25.,-13,21])
  rotate([0,90,0])
  roundedBox([42, 45, 7.0], 1, true);

  translate([22.,-30.,21])
  rotate([0,90,0])
  roundedBox([42, 10, 7.0], 1, true);

  translate([22.,3.5,21])
  rotate([0,90,0])
  roundedBox([42, 11, 7.0], 1, true);
 }

 translate([10,2,5.65])
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);

 translate([15,-13.5,21.1])
 rotate([0,90,0])
 cylinder(r=7/2,h=25);

 translate([-18.6+16,24.6,-4])
 rotate([0,0,0])
 cylinder(r=5.3/2,h=25);

 translate([18.6,24.6,-4])
 rotate([0,0,0])
 cylinder(r=5.3/2,h=25);

 translate([10,2-31,5.65])
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);

 translate([10,2,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([0,-2,0])
 cube([19,3.9,7]);
 }

 translate([10,2-31,5.65+31]){
 rotate([0,90,0])
 cylinder(r=4.3/2,h=25);
 translate([0,-2,0])
 cube([19,3.9,7]);
}
}









 //diagnonal support part
 translate([16,8,0])
 rotate([0,0,-45])
 difference(){
 cube([96,17,3]);
 cube([5,5,6]);
 }

 translate([83,-63,0])
 difference(){
 cube([18,35,6]); 
 translate([8.8,6,0])
 cylinder(r=5.3/2,h=7);
 translate([8.8,30,0])
 cylinder(r=5.3/2,h=7);
 }
}


module beltadjuster(){

 difference(){
 cube([20,45,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,40,0])
 cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=300);
 }
}

module beltadjuster_ymotor(){

 difference(){
 translate([0,0,-0])cube([20,45,6]);
 translate([10,5,-4.7])cylinder(r=5.7/2,h=10);
 translate([10,5,5.25])cylinder(r=9.5/2,h=4);
 translate([10,40,-4.7])cylinder(r=5.7/2,h=10);
 translate([10,40,5.25])cylinder(r=9.5/2,h=4);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-95,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=8.7/2,h=300);
 }
}

module beltadjuster_ymotorstable(){

 difference(){
 translate([0,0,-11.5])cube([20,45,4+12]);
 translate([10,5,-15.8+0.5])cylinder(r=5.7/2,h=16);
  translate([10,5,0.1+0.5])cylinder(r=9.5/2,h=4);
 translate([10,40,-15.8+0.5])cylinder(r=5.7/2,h=16);
  translate([10,40,0.1+0.5])cylinder(r=9.5/2,h=4);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5-150,7,5.5])rotate([0,90,0])cylinder(r=8.7/2,h=300);
 }
}





module beltadjuster_reinforce(){

 difference(){
 cube([20,45,4+8]);
 translate([10,5,0])
 cylinder(r=5.3/2,h=17);
 translate([10,40,0])
 cylinder(r=5.3/2,h=17);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10+8.4+2]);
 translate([0,0,8.4+3])rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4+8.4])
 rotate([0,90,0])
 cylinder(r=4.2,h=300);
 }
}




module beltadjuster_topthicker(){

 difference(){
 translate([0,0,-3.5])cube([20,45,4+3.5]); 
 translate([10,5,-10])
 cylinder(r=5.3/2,h=17);
 translate([10,40,-10])
 cylinder(r=5.3/2,h=17);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=300);
 }
}








module beltadjuster_diag(){
 difference(){
 union(){
 translate([0,45/2,0])cube([20,45/2,5]); 
 translate([0,10,0])cube([20,45/2,5]); 
 translate([-45,-5,0])rotate([0,0,-50])cube([20,60,5]); 
 }
 translate([-37,-38,-4])cube([20,45/2,20]); 
 translate([-30,-6,0]) cylinder(r=5.3/2,h=7);
 translate([10,40,0]) cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=30);
 }
}


module beltadjuster_diag_longer(){
 difference(){
 translate([-45+22.2-15,-5-59.5+45,0])rotate([0,0,0])cube([20+15,15,5]); 
 translate([-12-20,-6-50+46,0])cylinder(r=5.3/2,h=7);
 }
 difference(){
 union(){
 translate([0,45/2,0])cube([20,45/2,5]); 
 translate([0,10,0])cube([20,45/2,5]); 
 translate([-45+22,-5,0])rotate([0,0,-50+20])cube([20,60-10,5]); 
 }
 translate([-37,-38,-4])cube([20,45/2,20]); 
 translate([-30,-6,0]) cylinder(r=5.3/2,h=7);
 translate([10,40,0]) cylinder(r=5.3/2,h=7);
 translate([-12,-6-50+46,0])cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=30);
 }
}











module beltadjuster_tube(){

 difference(){
 union(){
 //translate([0,45/2,0])cube([20,45/2,5]); 
// translate([0,10,0])cube([20,45/2,5]); 
 //translate([-45,15,0])rotate([0,0,-70])cube([18,60,5]); 
 }
 //translate([-37,-38,-4])cube([20,45/2,20]); 
 translate([-30,-6,0]) cylinder(r=5.3/2,h=7);
 translate([10,40,0]) cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 rotate([0,90,0])
 cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=30);
 }
}







module beltadjuster_lower(){

difference(){
union(){
 difference(){
 translate([0,-2.5,0])cube([20,50,4]); 
 translate([10,5,0])
 cylinder(r=5.7/2,h=7);
 translate([10,40,0])
 cylinder(r=5.7/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,10]);
 //rotate([0,90,0])
 //cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,5.5+4])
 rotate([0,90,0])
 cylinder(r=4.2,h=30);
 }
 }
translate([-50,22,6.5])rotate([0,90,0])cylinder(r=8.7/2,h=200);
}
}


module beltadjuster_lower_little_higher(){

difference(){
union(){
 difference(){
 cube([20,45,4]);
 translate([10,5,0])
 cylinder(r=4.5/2,h=7);
 translate([10,40,0])
 cylinder(r=4.5/2,h=7);
 }
 translate([-0,45/2-7.5,8])
 difference(){
 difference(){
 translate([0,7,5]){
 translate([20,11,-10])
 rotate([0,0,180])
 cube([20,22,15]);
 //rotate([0,90,0])
 //cylinder(r=11,h=20);
 }
 translate([0,-3,-15])
 cube([22,22,10]);
 }
 translate([-5,7,3.5])
 rotate([0,90,0])
 cylinder(r=4.2,h=30);
 }
 }
//translate([-50,22,3.5])rotate([0,90,0])cylinder(r=8.7/2,h=200);
}
}








//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_longer_for_topdoor(){

m5screw = 6;

translate([25+5,1.25,0])
translate([-10,-10,0]){
difference(){
cube([20,20,20+7+2.5]);
//cube([20,20,20+14+6.5-2]);
translate([10,10,-21-4]){ 
cylinder(r=10.2/2,h=53.5-6-2.5);
translate([0,0,10])cylinder(r=m5screw/2,h=46);
translate([-2.5,-13.5,33.5-10])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-55])cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3,17+7+2.5])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17+7+2.5])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5,17.5+7+2.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14,17.5+7+2.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}

//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_evenalittlelonger_for_topdoor(){

m5screw = 6;

translate([25+5,1.25,0])
translate([-10,-10,0]){
difference(){
cube([20,20,20+7+2.5]);
//cube([20,20,20+14+6.5-2]);
translate([10,10,-21-4]){ 
cylinder(r=10.2/2,h=53.5-6-2.5+2+2);
translate([0,0,10])cylinder(r=m5screw/2,h=56);
translate([-2.5,-13.5,33.5-10])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-55])cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3,17+7+2.5])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17+7+2.5])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5,17.5+7+2.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14,17.5+7+2.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}








//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_longerwider_for_topdoor(){

//11mm wide

m5screw = 6;

//translate([15,-2.25+2.5-0.5,35])tslot20(360);
//translate([15,-7,25])rotate([90,90,0])tslot20(360);
/*
translate([15,-392,40-2])tslot20(360);
*/

translate([25+5,1.25,0])
translate([-10,-10+2,0]){
difference(){
cube([20,20+11.5-2+2.5-0.5,20+14+6.5-11-1.5]);
translate([10,10+2+6.75+2.5-0.5,-20+10-10]){ 
translate([0,0.75,0])cylinder(r=10.2/2,h=63.5-6-11-1.5);
translate([0,0.75,15])cylinder(r=m5screw/2,h=60);
translate([-10,-10.2-10.75-2.5-0.5,20+20])cube([22,10.75+1+2.5,40]);
translate([-2.5,-37,33.5])cube([5,30,10]);
translate([-2.5,-13.5,33.5])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-52-3])cylinder(r=10.2/2,h=55-4);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3+11.5-2.2,17+14+6.5-11-1.5])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17+14+6.5-11])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5+11.5-2.25+2.5-0.25,17.5+14+6.5-11-1.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14+11.5-2.0+2.5-0.5,17.5+14+6.5-11-1.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}





































//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_longer_for_door(){

m5screw = 6;

translate([25+5,1.25,0])
translate([-10,-10,0]){
difference(){
cube([20,20,20+14+6.5-2]);
translate([10,10,-20+10+1-3]){ cylinder(r=10.2/2,h=53.5-6);
translate([0,0,10])cylinder(r=m5screw/2,h=46);
translate([-2.5,-13.5,33.5-10])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-55])cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3,17+14+6.5-2])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17+14+6.5-2])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5,17.5+14+6.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14,17.5+14+6.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}





module door_cornerblock(){
difference(){
translate([60.0,10.75,120])rotate([0,180,0])corner_block();
translate([27.5,-3.5,48.5])cube([5,10,60]);
translate([40,8.5,68.5])cube([5,10,60]);
}
}



//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_wider_for_door(){

//11mm wide

m5screw = 6;

translate([25+5,1.25,0])
translate([-10,-10,0]){
difference(){
cube([20,20+11,20]);
translate([10,10+11,-20+10-10]){ cylinder(r=10.2/2,h=40-3);
translate([0,0,10])cylinder(r=m5screw/2,h=50);
translate([-2.5,-37,33.5])cube([5,30,10]);
translate([-2.5,-13.5,33.5])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-55])cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3+11,17])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5+11,17.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14+11,17.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}




//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block_longerwider_for_door(){

//11mm wide

m5screw = 6;

translate([15,-3,40])tslot20(360);
translate([15,-392,40-2])tslot20(360);
translate([15,-7,25])rotate([90,90,0])tslot20(360);

translate([25+5,1.25,0])
translate([-10,-10+2,0]){
difference(){
cube([20,20+11-2,20+14+6.5]);
translate([10,10+2+6.75,-20+10-10]){ cylinder(r=10.2/2,h=63.5-6);
translate([0,0,15])cylinder(r=m5screw/2,h=60);
translate([-10,-11-10.75,20+20])cube([22,10.75+1,40]);
translate([-2.5,-37,33.5])cube([5,30,10]);
translate([-2.5,-13.5,33.5])cube([5,10,60]);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-52-3])cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])cylinder(r=m5screw/2,h=50);
translate([0,10-3+11-2.2,17+14+6.5])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17+14+6.5])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5+11-2.25,17.5+14+6.5])cube([6,5.,5]);
//translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14+11-2.0,17.5+14+6.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}





































//corner block comes from this http://www.thingiverse.com/thing:39591
module corner_block(){

m5screw = 6;

translate([25+5,1.25,0])
translate([-10,-10,0]){
difference(){
cube([20,20,20]);
translate([10,10,-20]){ cylinder(r=10.2/2,h=40-3);
cylinder(r=m5screw/2,h=50);
 }
rotate([90,0,0])translate([10,10,-40])cylinder(r=m5screw/2,h=50);
rotate([90,0,0]) translate([10,10,-55])  cylinder(r=10.2/2,h=55-3);
translate([10-7,10,10]) rotate([0,90,0])  cylinder(r=10.2/2,h=60);
translate([-10,10,10]) rotate([0,90,0])  cylinder(r=m5screw/2,h=50);
translate([0,10-3,17])rotate([0,-45,0])cube([6,6,5]);
translate([10-3,0,17])rotate([45,0,0])cube([6,6,5]);
}
translate([14,10-3+0.5,17.5])cube([6,5.,5]);
translate([-2.5,10-3,6])rotate([0,90,0])cube([6,6,5]);
translate([10-3+0.5,14,17.5])cube([5.0,6,5]);
translate([10-3,-2.5,0])cube([6,6,5]);
}
}





module cubeassembly_corner(){
tslotlen = 360;

//horizontal 
translate([15,-9,-5])
rotate([90,0,0])
tslot20(tslotlen);

//horizontal 
translate([15-380,-9,-5])
rotate([90,0,0])
tslot20(tslotlen);


corner_block();

//top
translate([0,-377.5,0]){
mirror([0,1,0])
corner_block();
}

//vertical end 
translate([15,-13.5,20])
tslot20(tslotlen);

//bottom
translate([0,-377.5,400]){
mirror([0,0,0])
rotate([0,180,180])
corner_block();

threadrod_corner_assembly();

translate([-185+50,13.5,0])
mirror([0,1,0])
rotate([0,180,0])
bottomsupportbracket();

translate([-185+50,13.5+160,0])
mirror([0,0,0])
rotate([0,180,0])
bottomsupportbracket();

translate([67,10,5])
rotate([0,0,-180]){
footbase();
translate([37,13,40])
rotate([0,180,0])
foot();
}

translate([17,1,-80])
rotate([-90,0,90])
BottomRodHolder();


translate([-88,-129,-197])
rotate([0,0,90]){
tslot20innerbracket();
translate([0,120,0])
tslot20innerbracket();
}

//vertical smooth rod, zbedslotbearing and bed support
translate([-10,40,-410])
rotate([0,0,180]){
cylinder(r=4.3,h=380);
//translate([14,-3.8,-19])
//zbedslotbearing();
translate([-30,-36,209])
rotate([0,90,0]){
tslot20(350);
translate([0,-258,0])
tslot20(350);
}
}
}

//bottom
translate([0,0,400]){
mirror([0,0,1])
corner_block();

mirror([0,1,0]){

threadrod_corner_assembly();

translate([-185+50,13.5,0])
mirror([0,1,0])
rotate([0,180,0])
bottomsupportbracket();

translate([-185+50,13.5+160,0])
mirror([0,0,0])
rotate([0,180,0])
bottomsupportbracket();

translate([67,10,5])
rotate([0,0,-180]){
footbase();
translate([37,13,40])
rotate([0,180,0])
foot();

translate([17+34,9,-80])
rotate([-90,0,-90])
BottomRodHolder();
}

translate([-88,-129,-197])
rotate([0,0,90]){
tslot20innerbracket();
translate([0,120,0])
tslot20innerbracket();
}



//vertical smooth rod 
translate([-10,40,-410])
rotate([0,0,0]){
cylinder(r=4.3,h=380);
//rotate([0,0,180])
//translate([14,-3.8,-19])
//zbedslotbearing();
}

}
}

//horizontal 
translate([15,-9,375])
rotate([90,0,0])
tslot20(tslotlen);

//horizontal 
translate([15-380,-9,375])
rotate([90,0,0])
tslot20(tslotlen);

//vertical  
translate([15,-13.5-360-20,20])
tslot20(tslotlen);

//vertical  
translate([15-380,-13.5-360-20,20])
tslot20(tslotlen);

//vertical  
translate([15-380,-13.5,20])
tslot20(tslotlen);

//horizontal 
translate([15+5,16,375])
rotate([90,0,-90])
tslot20(tslotlen);

//horizontal 
translate([15+5,16,375-380])
rotate([90,0,-90])
tslot20(tslotlen);

//horizontal 
translate([15+5,16-380,375])
rotate([90,0,-90])
tslot20(tslotlen);

//horizontal 
translate([15+5,16-380,375-380])
rotate([90,0,-90])
tslot20(tslotlen);

//bottom 
translate([-348.5,-29,400]){
mirror([0,0,1])
rotate([0,0,90])
corner_block();

rotate([0,0,180])
translate([-30,-30,0]){

threadrod_corner_assembly();


translate([67,10,5])
rotate([0,0,-180]){
footbase();
translate([37,13,40])
rotate([0,180,0])
foot();
translate([17+34,9,-80])
rotate([-90,0,-90])
BottomRodHolder();

}
//vertical smooth rod 
translate([-10,40,-410])
rotate([0,0,0]){
cylinder(r=4.3,h=380);
//rotate([0,0,180])
//translate([14,-3.8,-19])
//zbedslotbearing();
}


}
}


//top 
translate([-348.5,-377.5+29,400]){
mirror([0,0,0])
rotate([0,180,180-90])
corner_block();

rotate([0,0,180+90])
translate([0,-1,0]){
translate([43,69+23,-36])
rotate([90,0,-90])
mirror([0,0,0]){
//xymotormount_support();
motormount_base_for_threads();

}


//threadrod_corner_assembly();

translate([20,60,0])
rotate([0,0,0])
threaded_angle_support();

translate([-80,-10,0])
rotate([0,0,90])
mirror([0,1,0])
threaded_angle_support();


translate([40,9,-250])
rotate([90,180,90])
beltadjuster();


translate([40,9,-50])
rotate([90,180,90])
threaded_angle_support();

translate([40,37,-20])
rotate([90,180+90,90])
mirror([0,1,0])
difference(){
threaded_angle_support_fit_motor();
translate([-8,0,0])
cube([10,80,10]);
}


translate([30,30,0])
rotate([0,0,-90])
mirror([0,1,0]){
translate([40,9,-50])
rotate([90,180,90])
threaded_angle_support();

translate([40,37,-20])
rotate([90,180+90,90])
mirror([0,1,0])
difference(){
threaded_angle_support_fit_motor();
translate([-8,0,0])
cube([10,80,10]);
}
}

translate([-185+50,13.5,0])
mirror([0,1,0])
rotate([0,180,0])
bottomsupportbracket();

translate([-185+50,13.5+351,0])
mirror([0,0,0])
rotate([0,180,0])
bottomsupportbracket();

translate([67,10,5])
rotate([0,0,-180]){
footbase();
translate([37,13,40])
rotate([0,180,0])
foot();
translate([17+34,9,-80])
rotate([-90,0,-90])
BottomRodHolder();
}

//vertical smooth rod 
translate([-10,40,-410])
rotate([0,0,0]){
cylinder(r=4.3,h=380);
//rotate([0,0,-90])
//translate([14,-3.8,-19])
//zbedslotbearing();
}

}

translate([-18+4,9+53,-36])
rotate([-90,0,90+90+90])
mirror([0,1,0])
motormount_base_for_threads();
}

//top 
translate([-348.5,-29,400-380-20])
mirror([0,0,0])
rotate([0,0,90])
corner_block();

//top 
translate([-348.5,-377.5+28.5,400-380-20])
mirror([0,0,1])
rotate([0,180,180-90])
corner_block();


//horizontal 
translate([15-5,16-380/2,375])
rotate([90,0,-90])
tslot20(340);

//horizontal 
translate([15-380/2,-9-10,375])
rotate([90,0,0])
tslot20(150);

//horizontal 
translate([15-380/2,-9-380/2-10,375])
rotate([90,0,0])
tslot20(150);


//motor mount center
translate([-210+70,-34+30,300]){
mirror([0,1,0])
zmotorbase();
}


translate([-115,-10,198])
rotate([90,0,0])
tslot20(358);

translate([-235,-10,198])
rotate([90,0,0])
tslot20(358);


//motor mount center
translate([-210+70,-34-310-30,300]){
zmotorbase();
}


}



module threadrod_corner_assembly(){
mirror([0,1,0]){
translate([12,-30,0])
rotate([180,180,-90]){
translate([40,120,0])
rotate([0,90,0])
mirror([0,1,0])
threaded_angle_support_m8();
translate([40,-10,-100])
rotate([90,180,90])
threaded_angle_support_m8();
}
}
translate([0,18,0])
rotate([180,180,-180]){
translate([40,120,0])
rotate([0,90,0])
mirror([0,1,0])
threaded_angle_support_m8();
translate([40,-10,-100])
rotate([90,180,90])
threaded_angle_support_m8();
}
translate([10,-10,-40])
rotate([270,270,-180]){
translate([40,120,0])
rotate([0,90,0])
mirror([0,1,0])
threaded_angle_support_m8();
translate([40,-10,-100])
rotate([90,180,90])
threaded_angle_support_m8();
}

}

























module threaded_angle_support_fit_motor(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([-0,45/2-7.5+5,6])
 difference(){
 difference(){
 translate([0+2,7-7,5])
 rotate([0,90,45])
 cylinder(r=11,h=20);
 translate([-8,-10,-10])
 cube([35,35,11]);
 translate([-8,-4-1,-2.5])
 cube([10,50,25]);
 }
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=4.2,h=100);
 }

 difference(){
 translate([10-3.25+3,55/2-15.25,0])
 rotate([0,0,45])
 cube([20,22,10]);
 translate([-7,0,1.5])
 cube([6,50,10]);
 }
}



module threaded_angle_support_60(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([3,0,0]){
 translate([-0,45/2-7.5+5,6])
 difference(){
 difference(){
 translate([0+2,7-7,5])
 rotate([0,90,60])
 cylinder(r=11,h=20);
 translate([-7,-10,-10])
 cube([35,35,11]);
 }
 translate([-5+4,-5,9.5])
 rotate([0,90,60])
 cylinder(r=4.2,h=100);
 }

 translate([10+1.5,55/2-15.25+2.25,0])
 rotate([0,0,60])
 cube([20,22,10]);
 }
}


module threaded_angle_support_30(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([-1.5,3,0]){
 translate([-0,45/2-7.5+5,6])
 difference(){
 difference(){
 translate([0+2,7-7,5])
 rotate([0,90,30])
 cylinder(r=11,h=20);
 translate([-7,-10,-10])
 cube([35,35,11]);
 }
 translate([-5-2,-5,9.5])
 rotate([0,90,30])
 cylinder(r=4.2,h=100);
 }

 translate([10-2.455,55/2-15.25-1.8,0])
 rotate([0,0,30])
 cube([20,22,10]);
 }
}


module threaded_angle_support_m8(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([-0,45/2-2.5,6])
 difference(){
 difference(){
 union(){
 translate([0+2,7-7,4])
 rotate([0,90,45])
 cylinder(r=11,h=20);
 translate([9.75,-7.75,-6])
 rotate([0,0,45])
 cube([20,22,10]);
 }
 translate([-7,-10,-15])
 cube([35,35,11]);
 translate([-15,-10,-10])
 cube([15,35,41]);
 translate([20,-10,-10])
 cube([15,35,41]);
 }
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=4.2,h=100);
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=7.45,h=7+5,$fn=6);
 translate([-5+2+16,-5+16,9.5])
 rotate([0,90,45])
 cylinder(r=7.45,h=7+5,$fn=6);
 }
 /*
 translate([10-0.25,55/2-15.25,0])
 rotate([0,0,45])
 cube([20,22,10]);
 */

}











module threaded_angle_support_5_16(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([-0,45/2-2.5,6])
 difference(){
 difference(){
 union(){
 translate([0+2,7-7,4])
 rotate([0,90,45])
 cylinder(r=11,h=20);
 translate([9.75,-7.75,-6])
 rotate([0,0,45])
 cube([20,22,10]);
 }
 translate([-7,-10,-15])
 cube([35,35,11]);
 translate([-15,-10,-10])
 cube([15,35,41]);
 translate([20,-10,-10])
 cube([15,35,41]);
 }
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=4.2,h=100);
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=7.4,h=7+5,$fn=6);
 translate([-5+2+16,-5+16,9.5])
 rotate([0,90,45])
 cylinder(r=7.4,h=7+5,$fn=6);
 }
 /*
 translate([10-0.25,55/2-15.25,0])
 rotate([0,0,45])
 cube([20,22,10]);
 */
}













module threaded_angle_support(){

 difference(){
 cube([20,55,4]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }

 translate([-0,45/2-7.5+5,6])
 difference(){
 difference(){
 translate([0+2,7-7,5])
 rotate([0,90,45])
 cylinder(r=11,h=20);
 translate([-7,-10,-10])
 cube([35,35,11]);
 }
 translate([-5+2,-5,9.5])
 rotate([0,90,45])
 cylinder(r=4.2,h=100);
 }

 translate([10-0.25,55/2-15.25,0])
 rotate([0,0,45])
 cube([20,22,10]);

}








module motormount_base_for_threads(){


motormount_base();
translate([0,9.25,0]){
translate([18.5,-3.25,0])
difference(){
union(){
cube([10,6.75,42]);
translate([-20,3.25,0])
cube([50,6.75,20]);
translate([-20,3.25,20])
cube([30,6.75,22]);
}
translate([-9,3.5+3,12.5])
rotate([90,0,0]){
cylinder(r=5.2,h=20);
translate([0,0,-10])
cylinder(r=5.3/2,h=20);
}
translate([-9,3.5+3,33])
rotate([90,0,0]){
cylinder(r=5.2,h=20);
translate([0,0,-10])
cylinder(r=5.3/2,h=20);
}




translate([20,3.5+3,12.5])
rotate([90,0,0]){
cylinder(r=5.2,h=20);
translate([0,0,-10])
cylinder(r=5.3/2,h=20);
}
}
}
}


module zmotorbase(){

translate([-34,-21,-300])
rotate([0,0,180])
zbedslot();

translate([-70,-19,-72])
rotate([0,90,0])
tslot20(100);

translate([-78.5,-14,-57])
rotate([0,90,90])
corner_block();

translate([-78.5+117.5,-14,-57])
rotate([0,90,90])
mirror([0,1,0])
corner_block();

translate([-41,-65,36])
ztslotmotormount();

translate([-5,-55,85])
rotate([-90,90,0])
tslot20(100);

translate([-5,-100,55])
rotate([-90,180,0])
ztslotextrusionclamp1();

translate([-10,20,99])
rotate([0,90,0])
ztslotparallelclamp();

translate([-35,20,99])
rotate([0,90,0])
ztslotparallelclamp();

translate([0,-50,140])
rotate([180,0,0])
ztslotmotormount_threadclamp();

translate([-40,0,140])
rotate([0,180,0])
ztslotmotormount_threadclamp();

translate([5.5,0,0])
ztopthreadedrodclamp();

translate([5.5,375,0])
mirror([0,1,0])
ztopthreadedrodclamp();



//to keep support from wobbling
translate([5.5-47,0,0]){
ztopsmoothrodclamp();
translate([-11.5,-21,123])
rotate([0,180,180])
zbedconstraintbearing();
}


translate([5.5-47,0,380])
ztopsmoothrodclamp();


}


module ztslotparallelclamp(){
difference(){
cube([38,20,4]);
translate([9,10,-1])
cylinder(r=5.3/2,h=10);
translate([29,10,-1])
cylinder(r=5.3/2,h=10);
}

}


module ztslotmotormount_threadclamp(){
translate([-10,-47.5,79])
rotate([0,90,0])
difference(){
cube([18,45,7]);
translate([9,6,-1])
cylinder(r=5.3/2,h=10);
translate([9,39,-1])
cylinder(r=5.3/2,h=10);
}

translate([11,-25,61])
difference(){
union(){
cylinder(r=10,h=10);
translate([-20,-10,0])
cube([20,20,10]);
}
translate([0,0,5])
cylinder(r=7.6,h=7,$fn=6);
translate([0,0,-30])
cylinder(r=4.3,h=50);
}
}



module ztslotmotormount(){
motormount();
translate([-20,30,-18.5])
difference(){
cube([20,20,8]);
translate([10,10,-5])
cylinder(r=4.3,h=200);
}
translate([42,30,-18.5])
difference(){
cube([20,20,8]);
translate([10,10,-5])
cylinder(r=4.3,h=200);
}
}

module ztopsmoothrodclamp(){

translate([-11,-40,-265]){
//rotate([0,180,0])
//Bearingholder();
//translate([-14.5,15,-150])
//cylinder(r=6.3,h=500);
translate([-14.5,14,-7.5])
rotate([-90,-0,180]){
difference(){
roundedBox([15, 15, 22], 1, false);
translate([0,15,-1])
rotate([90,0,0])
cylinder(r=4.3,h=500);

translate([4,-0,-1])
rotate([0,-90,0])
cylinder(r=2.2,h=30);
}
translate([-16,-14,8.5])
m4locknut();
}
}

translate([-26,-5,-280])
difference(){
union(){
cylinder(r=15,h=15);
translate([-15,10,-20])
difference(){
cube([30,5,35]);
translate([6,10,10])
rotate([90,0,0])
cylinder(r=5.3/2,h=100);
translate([25,10,10])
rotate([90,0,0])
cylinder(r=5.3/2,h=100);
}
}

//translate([1,-21,0])
//cylinder(r=15.5,h=15);
translate([-12,15,0])
cube([25,20,15]);
translate([0,0,4])
cylinder(r=5.0,h=11);
cylinder(r=5.3/2,h=400);
}

}









module ztopthreadedrodclamp(){

translate([-11,-40,-265])
rotate([0,180,0])
Bearingholder();
translate([-26,-5,-280])
difference(){
union(){
cylinder(r=15,h=15);

//translate([-15,-35,15])
//cube([31,50,5]);


translate([-15,10,-20])
difference(){
cube([30,5,35]);
translate([6,10,10])
rotate([90,0,0])
cylinder(r=5.3/2,h=100);
translate([25,10,10])
rotate([90,0,0])
cylinder(r=5.3/2,h=100);
}
}
translate([1,-21,0])
cylinder(r=15.5,h=15);
translate([-12,15,0])
cube([25,20,15]);
translate([0,0,4])
cylinder(r=5.0,h=110);
cylinder(r=5.3/2,h=400);
}



}








module ztslotextrusionclamp2(){

translate([1,6,63])
difference(){
translate([0,0,1])
cube([4,18,35]);
translate([-4,9,30])
rotate([0,90,0])
cylinder(r=5.3/2,h=10);
translate([-4,9,10])
rotate([0,90,0])
cylinder(r=5.3/2,h=10);
}

translate([-20,21,81])
difference(){
cube([25,4,18]);
translate([8,8,9])
rotate([90,0,0])
cylinder(r=5.3/2,h=20);
}
}

module ztslotextrusionclamp1(){

translate([5,25,55])
difference(){
cube([20,4,25]);
translate([10,20,10])
rotate([90,0,0])
cylinder(r=5.3/2,h=20);
}
translate([-5,25,76])
difference(){
cube([40,20,4]);
translate([7.5,10,-3])
cylinder(r=5.3/2,h=20);
translate([32.5,10,-3])
cylinder(r=5.3/2,h=20);
}



}

module angled_alignments(){

translate([30,30,0]){
 translate([31,-43,0])
 rotate([0,0,45])
 cube([17,105,4]);
 translate([30,-50,0])
 angle_alignments_screws();
 translate([-50,30,0])
 rotate([0,0,90])
 mirror([0,1,0])
 angle_alignments_screws();
}


}



module angle_alignments_screws(){
 difference(){
  cube([20,40,4]);
  translate([10,8,0])
  cylinder(r=5.2/2,10);
  translate([10,32,0])
  cylinder(r=5.2/2,10);

 }
 

 translate([-13,25,0]){
  difference(){
  cube([15,15,4]);
  translate([10,17,0])
  cylinder(r=5.8,6);
  }
 }

}


module bottomsupportbracket(){

{
 difference(){
 union(){
  cube([50,5,20]);
  translate([15,-4.7,0])
  cube([20,7,20]);
  translate([15,-25,-4])
  difference(){
  cube([20,30,4]);
  translate([10,8,0])
  cylinder(r=5.4/2,h=10);
  }

  }
  translate([7,6,9.5])
  rotate([90,0,0])
  cylinder(r=5.5/2,h=40);

  translate([7+36,6,9.5])
  rotate([90,0,0])
  cylinder(r=5.5/2,h=40);

 }
}
}


module tear(r, h) {
  union() {
    cylinder(r=r, h=h);
    rotate([0, 0, 135]) cube([r, r, h]);
  }
}



module halloendstop(){

$fn=24;

difference() {
  union() {
	translate([1,.5,0])
	cube([19, 11.2+4, 17+15]);


	translate([8.4, 11.2, 0])
	cylinder(r=16 / 2, h=17+15);

	translate([25,1,32])
	rotate([-90,0,90]) 
	dan_m3locknut(20);
  }

        /*
	translate([-0.1, 4.9, 5.3+27])
	rotate([0, 90, 0])
	tear(r=3.1 / 2, h=23);
        */

	translate([-0.1, 4.9, 6])
	rotate([0, 90, 0])
	tear(r=3.1 / 2, h=23);


	translate([8.4, 11.2, -1])
	cylinder(r=4.2, h=70);

	translate([4.7, -1, -1])
	cube([7.2, 11.2, 20+20]);

	translate([-9, 21, 4.5])
	rotate([90, 0, 0])
	cylinder(r=3/2, h=9);

  	translate([3.9, -5, -1])
  	cylinder(r=1.5, h=6);
}
}



module m3locknut(){

difference(){
cube([10,10,4]);
translate([5,5,0]){
cylinder(r=6.2/2,h=2,$fn=6);
cylinder(r=3.2/2,h=20);
}
}

}



module center_motormount(){

motormount();

}

module tubemount(){
length=25;
width = 25;

difference(){
cube([length,width,4]);
translate([5,width-5,0])
cylinder(r=3.2/2,h=15);

translate([length/2,8,0])
cylinder(r=10/2,h=10);

translate([length-5,width-5,0])
cylinder(r=3.2/2,h=15);
}

}


module squaretool(){

translate([0,0,7.5])
rotate([0,0,-90])
clamp();
difference(){
union(){
//cylinder(r=7.4,h=10);
/*
translate([3,0,0])
cube([3,15,10]);
translate([-6,0,0])
cube([3,15,10]);
*/
translate([-5,-25,0])
cube([10,25,5]);
translate([-10,-25-5,0])
difference(){
cube([40,10,20]);
translate([-20,0,8])
cube([40,10,20]);
translate([30,10,12])
cube([40,10,20]);
translate([30,20,12])
rotate([90,0,0])
cylinder(r=4.4,h=100);
}
}
cylinder(r=7,h=100);

translate([-3,0,-5])
cube([6,10,35]);
/*
translate([-10,10,5])
rotate([90,90,90])
cylinder(r=4.5/2,h=100);
*/
}
}


module ydrive(){

//rotate([0,0,0])
//tslot20(300);


translate([0,0,30]){
translate([-0,22,0])
rotate([0,0,45])
translate([-30,0,0])
xyarmplate();


//translate([-0,22-51.5,0])rotate([0,0,45])translate([5,0,0])cube([70,5,50]);
translate([-0,22-51.5,0])rotate([0,0,45])translate([5,0,0])xyarmplate();


translate([7.5,-3.0,30/2+5])rotate([0,0,0]){
difference(){
union(){
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
translate([-11.06/2-8.1,-8.2+4+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
}
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])translate([0,0,-50])cylinder(r=8.7/2,h=100);
}
}

translate([7.5+34.3,-3.0+36.5,0])rotate([0,0,0]){
difference(){
union(){
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
translate([-11.06/2-8.1,-8.2+4+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
}
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])translate([0,0,-50])cylinder(r=8.7/2,h=100);
}
}


translate([7.5+34.3,-3.0+36.5,30+10])rotate([0,0,0]){
difference(){
union(){
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
translate([-11.06/2-8.1,-8.2+4+8,10])rotate([45,90,0])cylinder(r=22/2,h=7.0);
}
translate([-11.06/2-4.10,-8.2+8,10])rotate([45,90,0])translate([0,0,-50])cylinder(r=8.7/2,h=100);
}
}
}

translate([13.4-6.6,-13.4+6.6,0])yarmcrossconnect();
translate([13.4-6.6,-13.4+6.6,121])mirror([0,0,1])yarmcrossconnect();
}



module xyarmplate(){
difference(){
union(){
/*
cube([70,3,50+10]);
translate([25-25,0,13-13])difference(){cube([23,7,9]);translate([7.5,5-3,0])cube([7,5,15]);}
translate([25-25,0,70-19])difference(){cube([23,7,9]);translate([7.5,5-3,0])cube([7,5,15]);}
*/


translate([25+50-10,0,13+45])rotate([0,90,0])difference(){cube([23,4*5,15]);translate([5,50,7.5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,7.5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([8,0,0])cube([7,5,15]);}
translate([25+50-10,0,13+45+20])rotate([0,90,0])difference(){translate([7,0,0])cube([13,4*5,15]);translate([23/2+4,4*5/2,-5])cylinder(r=4.5/2,h=30);}


translate([25+50+30,0,13+20])rotate([0,90,0])difference(){cube([23,4*5,15]);translate([5,50,7.5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,7.5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([8,0,0])cube([7,5,15]);}
translate([25+50+30,0,13+20+20])rotate([0,90,0])difference(){translate([7,0,0])cube([13,4*5,15]);translate([23/2+4,4*5/2,-5])cylinder(r=4.5/2,h=30);}


translate([25+50+15,23-8,13+45])rotate([0,90,0])difference(){cube([23,4,9]);translate([5,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);}
translate([25+50+15,23-8,13+20])rotate([0,90,0])difference(){cube([23,4,9]);translate([5,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);}

}


translate([25-2,0,13-13])rotate([90+90,90+90,0]){translate([5,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);}
translate([25-2,0,70-19])rotate([180,180,0]){translate([5,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);translate([18,50,5])rotate([90,0,0])cylinder(r=4/2,h=500);}






/*
translate([10.6+2.0,15+5,25+5])rotate([90,0,0])cylinder(r=8.7/2,h=100);
translate([10.6+4.0,15+5,25+5])rotate([90,0,0])cylinder(r=8.7/2,h=100);
translate([10.6+6.0,15+5,25+5])rotate([90,0,0])cylinder(r=8.7/2,h=100);
translate([10.6+8.0,15+5,25+5])rotate([90,0,0])cylinder(r=8.7/2,h=100);
translate([10.6+50.2,15.5,25/2-2.45])rotate([90,0,0])cylinder(r=8.7/2,h=100);
translate([10.6+50.2,15.5,25/2-2.45+30+10])rotate([90,0,0])cylinder(r=8.7/2,h=100);
*/

}
}


module yarmcrossconnect(){

translate([-305+15,35,70+5])rotate([0,90,0]){
//translate([0,4,4])tslot20(300);

translate([6-1,25-5,300-30])
difference(){
union(){
//translate([-4,4,0])cube([18+8,5,30]);
//translate([19,-16,5])cube([20,20,18]);
translate([15+5,5-7,5+15])rotate([-45,0,0])cube([18,20,30]);
translate([15+5,5-7,5+15])rotate([-45,0,0])translate([0,0,-11-5])cube([8,20,35]);
translate([15+5,5-7,5+15])rotate([0,0,0])translate([0,-10,-40])cube([8,20,30]);
}
translate([15+5,5-5,5+15])rotate([-45,0,0])translate([9,-0,7.5])rotate([90,0,0])translate([0,0,-50])cylinder(r=8.7/2,2,h=350);
//translate([9,20,5])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([9,20,30])rotate([0,90,0])translate([0,0,-50])cylinder(r=8.7/2,h=200);
translate([9,20,30])rotate([0,90,0])translate([22,-22,-50])cylinder(r=5.5/2,h=200);
translate([9,20,30])rotate([0,90,0])translate([38+5,-22,-50])cylinder(r=5.5/2,h=200);

}
}
}

//ydrive belt clamp

module ydrivebelt(){
translate([-30,60,51.5])
difference(){
union(){
cube([30,9,18]);
difference(){
translate([7+0,4,-8-5])cube([20,5,45]);
translate([7+7.5,-4,-8-2])cube([6,15,4]);
translate([7+3.5,40,-8-0.5])rotate([90,0,0])cylinder(r=3.5/2,h=100);
translate([23.5,40,-8-0.5])rotate([90,0,0])cylinder(r=3.5/2,h=100);

translate([7+7.5,-4,-8-2+35])cube([6,15,4]);
translate([7+3.5,40,-8-0.5+35])rotate([90,0,0])cylinder(r=3.5/2,h=100);
translate([23.5,40,-8-0.5+35])rotate([90,0,0])cylinder(r=3.5/2,h=100);

}
}
translate([7,0,9])rotate([-90,0,0])cylinder(r=5.5/2,h=20);
translate([30-7,0,9])rotate([-90,0,0])cylinder(r=5.5/2,h=20);
}
}


module ydriveassembly(){

//still pretty generic

ydrivebelt();
tslot20(300);
ydrive();
translate([8,30,45.5])rotate([0,-90,0])tslot20(220-14);
translate([-220,0,0])tslot20(300);
translate([-220+30,0,0])mirror([1,0,0])ydrive();

}

module xdrivemotormount(){
//tslot20(300);

h=20;

//moving the motor, rods and pully
translate([0,0,90]){
//motor stuff
translate([-h+1,-13-3,170+20])rotate([90,180,0])motormount();
//blocks
difference(){
union(){
translate([-h-30,4-10,170-5])cube([18,16,25]);
translate([-h-30,4-10,105+5])cube([18,16,25]);
}
//vertical rods
translate([-80,13-10,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);
translate([-80,13-10,120])rotate([0,90,0])cylinder(r=8.7/2,h=200);
}
//end motor stuff

//belt guide
translate([0,0,200])m5beltguidelowprofile();
translate([0,0,-70])m5beltguidelowprofile();
translate([0,0,44.])m5beltguidecombo();

//pulley
translate([-12,0,0]){
translate([-28,35,150])rotate([90,0,0])union(){cylinder(r=27.7/2,h=2);
translate([0,0,0])cylinder(r=22.4/2,h=11.3);
translate([0,0,22.4/2])cylinder(r=27.7/2,h=2);}
}

//belt one side
translate([-20,0,40]){
translate([0,0,0])rotate([90,0,0])verticallinearpulleybearing();
translate([0,40,0])rotate([90,0,0])verticallinearpulleybearing();
}

//belt one side
translate([-20,0,0]){
translate([0,0,0])rotate([90,0,0])verticallinearpulleybearing();
translate([0,40,0])rotate([90,0,0])verticallinearpulleybearing();
}
}
}



module xydrivemotormount(){
//tslot20(300);

h=20;

//moving the motor, rods and pully
translate([0,0,90]){
//motor stuff
translate([-h+1,-13-3,170+20])rotate([90,180,0])motormount();
//blocks
difference(){
union(){
translate([-h-30,4-10,170-5])cube([18,16,25]);
translate([-h-30,4-10,105+5])cube([18,16,25]);
}
//vertical rods
translate([-80,13-10,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);
translate([-80,13-10,120])rotate([0,90,0])cylinder(r=8.7/2,h=200);
}
//end motor stuff
}
}



module verticalrodextrusionsupport(){
h=8;
translate([12,-5,0]){
translate([0,-10,0]){
difference(){
union(){
difference(){
union(){
translate([-h-30+30.5,13,180])rotate([90,0,90])cylinder(r=8,h=21);
translate([-h-30+30.5,13+7-5,180])rotate([0,0,0])cube([21,5,20]);
translate([-h-30+30.5,13+7-5,160])rotate([0,0,0])cube([21,5,20]);
}
translate([-h-30+32-5,13+7,180-10])rotate([90,0,90])cube([30,25,30]);
}
}
//vertical rods
translate([-80,13,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);

translate([3,13+50,166])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([3,13+50,166+28])rotate([90,0,0])cylinder(r=5.5/2,h=200);

}
}
}
}


module verticalrodextrusionsupporthigher(){
h=8;
translate([12,-5,0]){
translate([0,-10,0]){
difference(){
union(){
difference(){
union(){
translate([-h-30+30.5,13-5,180])rotate([90,0,90])cylinder(r=8,h=21);
translate([-h-30+30.5,13-5,180-8.5])rotate([90,0,90])cube([20,17,20]);
translate([-h-30+30.5,13+7-5,180])rotate([0,0,0])cube([21,5,20]);
translate([-h-30+30.5,13+7-5,160])rotate([0,0,0])cube([21,5,20]);
}
translate([-h-30+32-5,13+7,180-10])rotate([90,0,90])cube([30,25,30]);
}
}
//vertical rods
translate([-80,13-5,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);

translate([3,13+50,166])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([3,13+50,166+28])rotate([90,0,0])cylinder(r=5.5/2,h=200);

}
}
}
}


module m5beltguidelowprofile(){
h=8;
translate([12,-5,0]){
translate([0,-10,0]){
difference(){
union(){
difference(){
union(){
translate([-h-30+30.5,13,180])rotate([90,0,90])cylinder(r=8,h=21);
translate([-h-30+30.5,13+7-5,170])rotate([0,0,0])cube([21,5,20]);
translate([-h-30+30.5-10+10-2,13+7-5-10,167+13])rotate([0,90,90])cylinder(r=8,h=15);
translate([-h-30+30.5-10+10-2-20,13+7-5-10,167+13])rotate([0,90,90])cylinder(r=8,h=15);
translate([-h-30+30.5-22.5,13+7-5-3,170+2])rotate([0,0,0])cube([25,8,16]);
}
translate([-h-30+32-5,13+7,180-10])rotate([90,0,90])cube([30,25,30]);
}
}
//vertical rods
//translate([-80,13,180])rotate([0,90,0])cylinder(r=5.5/2,h=200);
//translate([-80,13,120])rotate([0,90,0])cylinder(r=9/2,h=20);

translate([3,13+20,166+14])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([3,13+12-5-4-1.3,166+14])rotate([90,0,0])cylinder(r=9/2,h=20-2);


//cut cylinder off
//translate([3-10,13+3+3-30,155])cube([10,23,20]);

translate([-h-30+30.5-10+6-1,13+7-5+13-50,167+13])rotate([0,90,90])
cylinder(r=5.2/2,h=200);
translate([-h-30+30.5-10+6-1-20,13+7-5+13-50,167+13])rotate([0,90,90])
cylinder(r=5.2/2,h=200);

}
}
}
}


module m5beltguide(){
h=8;
translate([12,-5,0]){
translate([0,-10,0]){
difference(){
union(){
difference(){
union(){
translate([-h-30+30.5,13,180])rotate([90,0,90])cylinder(r=8,h=21);
translate([-h-30+30.5,13+7-5,180])rotate([0,0,0])cube([21,5,20]);
translate([-h-30+30.5,13+7-5,160])rotate([0,0,0])cube([21,5,20]);
translate([-h-30+30.5-10+10-2,13+7-5-10,167+13])rotate([0,90,90])cylinder(r=8,h=15);
//translate([-h-30+30.5-10,13+7-5-10,160])rotate([0,0,0])cube([21+10,15,13]);
}
translate([-h-30+32-5,13+7,180-10])rotate([90,0,90])cube([30,25,30]);
}
}
//vertical rods
//translate([-80,13,180])rotate([0,90,0])cylinder(r=5.5/2,h=200);
translate([-80,13,120])rotate([0,90,0])cylinder(r=5.5/2,h=200);

translate([3,13+20,166])rotate([90,0,0])cylinder(r=5.5/2,h=200);
//translate([3,13+3+1.0,166])rotate([90,0,0])cylinder(r=9/2,h=20);
translate([3,13+30,166+28])rotate([90,0,0])cylinder(r=5.5/2,h=200);
//translate([3,13+3+1.0,166+28])rotate([90,0,0])cylinder(r=9/2,h=20);

//cut cylinder off
//translate([3-10,13+3+3-30,155])cube([10,23,20]);

translate([-h-30+30.5-10+6-1,13+7-5+13-50,167+13])rotate([0,90,90])
cylinder(r=5.5/2,h=200);

}
}
}
}






module verticallinearpulleybearingtop(){

difference(){
union(){
cylinder(r=29/2,h=15);
//translate([7,-29/2+5,45])rotate([0,0,0])cube([45,25,8]);
translate([0,-29/2+5,0])cube([35,18,8]);
}
translate([0,0,2])cylinder(r=13/2,h=40);
translate([24,0,-100])rotate([0,0,90])cylinder(r=8.7/2,h=300);
translate([0,0,2+5])cylinder(r=22.5/2,h=40);
translate([0,0,-100])cylinder(r=8.7/2,h=200);
}
}







module verticallinearpulleybearingbottom(){
difference(){
union(){
cylinder(r=29/2,h=15);
translate([0,-29/2+5,0])cube([35,18,8]);
}
translate([0,0,2])cylinder(r=13/2,h=40);
translate([0,0,2+5])cylinder(r=22.5/2,h=40);
translate([26,0,-100])rotate([0,0,90])cylinder(r=8.7/2,h=300);
}
}

module conveyer_verticallinearpulleybearingbottom(){

//for graphical purposes
/*
difference(){
color([100/255,100/255,100/255])translate([0,0,2+5])cylinder(r=23/2,h=10);
translate([0,0,-10])cylinder(r=8.7/2,h=40);
}
*/
color([200/255,200/255,200/255])difference(){
union(){
cylinder(r=29/2,h=15);
translate([-10,-29/2+5-6-2,0])cube([70,7,18]);
translate([-10+70-5.5-6.8,-29/2+5-6-2,0])cube([5.5,7+4,10]);
translate([42,-29/2+5-6-2,10])cube([18,7,18]);
}
translate([-10+26,-29/2+5-6+2,0])cube([25,5,18]);
translate([0,0,2])cylinder(r=13/2,h=40);
translate([0,0,2+5])cylinder(r=22.5/2,h=40);
translate([0,0,-10])cylinder(r=8.7/2,h=40);
//translate([50.5,-5,5])rotate([90,90,0]){translate([0,0,-2])#cylinder(r=4.7/2,h=20);translate([0,0,8])#cylinder(r=10/2,h=5);}
translate([50.5,-5,20])rotate([90,90,0]){cylinder(r=4.7/2,h=20);translate([0,0,8])cylinder(r=10/2,h=5);}
}
}





//This one is being used. 
module verticallinearpulleybearing(){

difference(){
union(){
cylinder(r=29/2,h=10);
//translate([7,-29/2+5,45])rotate([0,0,0])cube([45,25,8]);
translate([22,-29/2+5-10,0])cube([20,18,8+5]);
translate([22,-29/2+5+10,0])cube([20,18,8+5]);
translate([0,-29/2+5+0,0])cube([42,18,8]);
}
translate([0,0,2])cylinder(r=13/2,h=50);
translate([0,0,4])cylinder(r=22.5/2,h=40);
translate([0,0,-100])cylinder(r=8.7/2,h=200);
translate([32,12,-10])rotate([0,0,90])cylinder(r=5.5/2,h=30);
translate([32,12,15-8])rotate([0,0,90])cylinder(r=9.0/2,h=30);
translate([32,-12,-10])rotate([0,0,90])cylinder(r=5.5/2,h=30);
translate([32,-12,15-8])rotate([0,0,90])cylinder(r=9/2,h=30);
}
}












module m5beltguidecombo(){
h=8;

translate([12,-15,-16]){
difference(){
union(){
difference(){
union(){
translate([-h-30+30.5,13+7-5,160])rotate([0,0,0])cube([21,5,20]);

difference(){
union(){
translate([-h-30+30.5-10-3,13+7-5-10,167+13])rotate([0,0,0])cube([21+10+3,15,13]);
translate([-h-30+30.5-10-3,13+7-5-10,167+48+6.5])rotate([0,0,0])cube([21+10+3,15,13+5]);
}
translate([-h-30+35.5,13+7-15,160+15])rotate([0,0,0])cube([20,10,30]);
translate([-h-30+35.5,13+7-15,167+48])rotate([0,0,0])cube([20,10,30]);
}


difference(){
union(){
translate([-h-30+30.5-10-3,13,180])rotate([90,0,90])cylinder(r=8,h=21+10+3);
translate([-h-30+30.5-10-3,13,180+60])rotate([90,0,90])cylinder(r=8,h=21+10+3);
translate([-h-30+30.5,13+7-5,180])rotate([0,0,0])cube([21,5,83]);
translate([-h-30+30.5,13+7-5,160])rotate([0,0,0])cube([21,5,20]);
}
}
} //end union
translate([-80,13,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);
translate([-h-30+32-15,13+7,180-20])rotate([90,0,90])cube([30,105,40]);
//vertical rods
translate([-80,13,180])rotate([0,90,0])cylinder(r=8.7/2,h=200);
//vertical rods
translate([-80,13,180+60])rotate([0,90,0])cylinder(r=8.7/2,h=200);
translate([-h+11,35,256])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([-h+11,35,256-45])rotate([90,0,0])cylinder(r=5.5/2,h=200);
translate([-h+11,35-20,256-45])rotate([90,0,0])cylinder(r=9/2,h=20);

translate([-h+11,35,256-90])rotate([90,0,0])cylinder(r=5.5/2,h=200);

}
}

//bearing guide
translate([-h-30+30.5-10+6-1-2.5,13+7-5+13-50,167+13+8])rotate([0,90,90])cylinder(r=5.5/2,h=200);
translate([-h-30+30.5-10+6-1-2.5,13+7-5+13-50,167+13+8+40])rotate([0,90,90])cylinder(r=5.5/2,h=200);

}
}
}

module ballbearingholder(){
difference(){
union(){
translate([0,-10,0])difference(){cube([18,20,6+4+5]);}
translate([0,0,0])difference(){cube([18,20,6+4+5]);}
translate([0,10,0])difference(){cube([18,20,6+4+5]);}

translate([0,30+11,0])difference(){cube([18,12+4,6+4+5]);}
translate([0,-20-11-3,0])difference(){cube([18,12+4,6+4+5]);}

translate([0,-30+11+0,0])difference(){cube([18,12+3,6+4+5]);}
translate([0,40-11-3,0])difference(){cube([18,12+3,6+4+5]);}
}

translate([5.5,-16-30,-20])translate([9,10,5.4]){cube([30,36+60,60]);}
translate([-38.5+3,-16-30,-20])translate([9,10,5.4]){cube([30,36+60,60]);}

translate([0,-19,0])translate([9,10,5.4+4+5]){sphere(r = 4.3);}
translate([0,-10,0])translate([9,10,5.4+4+5]){sphere(r = 4.3);}
translate([0,0,0])translate([9,10,5.4+4+5]){sphere(r = 4.3);}
translate([0,10,0])translate([9,10,5.4+4+5]){sphere(r = 4.3);}
translate([0,19,0])translate([9,10,5.4+4+5]){sphere(r = 4.3);}

translate([0,30+11+3,0])translate([9,5,5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25+2.75-1])cylinder(r=9/2,h=30);}
translate([0,-20-11-3,0])translate([9,7,5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25+2.75-1])cylinder(r=9/2,h=30);}
translate([0,30+11+3,0])translate([9,5,-5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25])cylinder(r=5.5/2,h=100);}
translate([0,-20-11-3,0])translate([9,7,-5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25])cylinder(r=5.5/2,h=100);}

//translate([0,30,0])translate([9,5,5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25+2.75])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
translate([-5,-30+11+3-2,-3])difference(){translate([28/2-20,6-2,5+5])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
translate([-5,40-11+3,-3])difference(){translate([28/2-20,6+2,5+5])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
}
}



module ballbearingjoiner(){
difference(){
union(){
translate([2+1,-10-3,0])difference(){rotate([0,0,-15])cube([12+2-8,20+3,6+4]);}
translate([10-4,0,0])difference(){cube([12+2,20,6+4]);}
translate([12-2,10+5-3,0])difference(){rotate([0,0,15])cube([12+2-8,20+5,6+4]);}



translate([3,-30+11-2,0])difference(){cube([12-2,12,6+4]);}
translate([3,40-11+4,0])difference(){cube([12-2,12,6+4]);}

//translate([10,40-11-35,0])difference(){cube([4,12+20,6+4+10]);}
}

//translate([5.5+2,-16-5,-20])translate([9,10,5.4]){cube([30,36+10,65]);}
//translate([-38.5+3-2,-16-5,-20])translate([9,10,5.4]){cube([30,36+10,65]);}

translate([10-3,0,0])translate([6,10,-50]){cylinder(r=8.7/2,h=100);}


//translate([0,30,0])translate([9,5,5.4]){cylinder(r=5.5/2,h=10);translate([0,0,-3.25+2.75])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
translate([-5,-30+11-2,0])difference(){translate([28/2-20,6,5])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
translate([-5,40-11+4,0])difference(){translate([28/2-20,6,5])rotate([90,0,90])cylinder(r=8.7/2,h=100);}
}
}












module ballbearingholderside(){
difference(){
union(){
translate([0,-7.5,0])difference(){cube([18,15,6+15]);}
translate([0,0,0])difference(){cube([18,15,6+15]);}
translate([0,10,0])difference(){cube([18,15,6+15]);}

//translate([0,27,0])difference(){cube([18,12-3,15]);}
//translate([0,-17,0])difference(){cube([18,12-3,13]);}

}
translate([0,-7.5,0])translate([9,10,5.4+15]){sphere(r = 4.3);}
translate([0,7.5,0])translate([9,10,5.4+15]){sphere(r = 4.3);}

//translate([0,-18,-57.5])translate([9,10,5.4+15]){cube([20,40,50]);}

//translate([0,-18,-57.5])translate([9-8-5,20-3,5.4+15+3])rotate([30,0,0]){cube([25,20,60]);}
//translate([0,-18,-57.5])translate([9-8-5,20-3,5.4+15+3+5])rotate([-30,0,0]){cube([25,20,60]);}

translate([0,4,0])translate([9,5,-5.4]){translate([0,0,12.25-1.5])rotate([0,90,0])cylinder(r=14.5/2,h=10);}

translate([0,4,0])translate([9,5,-5.4]){translate([-40,0,12.25-1.5])rotate([0,90,0])cylinder(r=8.7/2,h=100);}


//translate([0,4,0])translate([9,5,-5.4]){translate([-40,0,12.25-1.5])rotate([90,0,0])cylinder(r=8.7/2,h=100);}

}
}

module tslot20_2060(length,nut){
	union(){
		tslot20(length,nut);
		translate([20,0,0])
		tslot20(length,nut);
	}
}


module tslot40_2060(length,nut){
	union(){
		tslot20(length,nut);
		translate([20,0,0])
		tslot20(length,nut);
		translate([40,0,0])
		tslot20(length,nut);
	}
}




/*
module reinforedcubeassembly(){
 l = 380;
 //cube part
 //part 1
 translate([-20,0,0]) tslot20_2060(l);
 //part 2
 translate([0,5,-5]) rotate([90,0,0]) tslot20(l);
 //part 3
 translate([5,0,-5]) rotate([90,0,90]) tslot20(l);
 //cube part part 4 like part 1
 translate([l,0,20]) tslot20(l);
 //part 5 like part 3
 translate([5,0,l-5]) rotate([90,0,90]) tslot20(l);
 //part 6 like part 2
 translate([l,25,-5]) rotate([90,0,0]) tslot20(l);
 //part 7 like part 3
 translate([25,-l,-5]) rotate([90,0,90]) tslot20(l);
 //part 8 like part 2
 translate([0,5,l-5]) rotate([90,0,0]) tslot20(l);
 //part 9 like part 1
 translate([0,-l,0]) tslot20(l);
 //part 10 like part 7
 translate([25,-l,l-5]) rotate([90,0,90]) tslot20(l);
 //part 11 like part 6
 translate([l,25,l-5]) rotate([90,0,0]) tslot20(l);
 //part 12 like part 4 //cube part //part 4 like part 1
 translate([l,-l,20]) tslot20(l);
 //part 13 base part cross section
 translate([l/2,3,375]) rotate([90,0,0]) tslot20(l-24);
 //part 14 base part cross section
 translate([26,-l/2,375]) rotate([90,0,90]) tslot20((l-26-20)/2);
 //part 15 base part cross section
 translate([26+190,-l/2,375]) rotate([90,0,90]) tslot20((l-26-20)/2);
}

*/




module simple_bearingholder(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
}
translate([20,10-1,0])cylinder(r=5.5/2,h=8);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.5/2,h=8);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
translate([20,27,1])cylinder(r=22.4/2,h=7);
translate([20,27,0])cylinder(r=14/2,h=2);
}
}

module basic_bearingholder(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8);
translate([0,19,0])cube([14,20,8]);
}
translate([20,27,1])cylinder(r=22.4/2,h=7.1);
translate([20,27,-0.1])cylinder(r=14/2,h=2);
translate([20,27,-0.1])cylinder(r=8.7/2,h=200);
}
}






module simple_bearingholder_m4bearing(){
difference(){
union(){
translate([-8,12,0])cube([20,20,5]);
translate([20,27,0])cylinder(r=28/2,h=8);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);

translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);

translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);

}
translate([0,20,0])cylinder(r=4.7/2,h=8);
translate([20,10-1,0])cylinder(r=5.5/2,h=8);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.5/2,h=8);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
translate([20,27,1])cylinder(r=22.4/2,h=7);
translate([20,27,0])cylinder(r=14/2,h=2);
}
}











module simple_nut_bearingholder(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=9.5);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);

translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);

translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);

}
translate([20,10-1,0])cylinder(r=5.5/2,h=8);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.5/2,h=8);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
translate([20,27,0])cylinder(r=14.6/2,h=7,$fn=6);
translate([20,27,0])cylinder(r=8.5/2,h=10);
translate([20,27,0])cylinder(r=12/2,h=2);
}
}


module yarmbeltclamp(){




difference(){
union(){
//middle section
translate([-4,9,0])difference(){
translate([-4,-2.5,0])cube([20+4,30,6]);
translate([14,7.5,0])cylinder(r=5.5/2,h=10);
translate([14,7.5,4.5])cylinder(r=9.5/2,h=2);

}
translate([-9,0,5])difference(){
union(){
translate([5-4,6.5,-3])cube([6+4,30,15]);
//translate([5-4,20.5,-3-3])cube([6+4,20,15]);
}
//translate([5-4,32.5,-3])cube([10,4,8]);
//translate([5-4,12.5,2])cube([8+4,8,3.5]);
}
difference(){
translate([-4-4,9-2.5,-15-2])cube([4+4,30,15+2]);
translate([-13+4,10+6.5,-10])rotate([90,0,90])cylinder(r=9.5/2,h=6);
translate([-13,10+6.5,-10])rotate([90,0,90])cylinder(r=5.5/2,h=20);
}


/*
translate([-9-4,25,5])difference(){
translate([5,6.5,-3])cube([3,20,7]);
translate([3,10,1])rotate([90,0,90])cylinder(r=3.5/2,h=20);
translate([3,10+13,1])rotate([90,0,90])cylinder(r=3.5/2,h=20);
//translate([5,12.5,2])cube([8,8,3.5]);
}

translate([-9-4,25,15])difference(){
translate([5,6.5,-3])cube([3,20,7]);
translate([3,10,1])rotate([90,0,90])cylinder(r=3.5/2,h=20);
translate([3,10+13,1])rotate([90,0,90])cylinder(r=3.5/2,h=20);
//translate([5,12.5,2])cube([8,8,3.5]);
}
*/
}

translate([0,17,-24])rotate([90,0,0]){
translate([3-4-11,10,9-9-7-3])rotate([90,0,90]){translate([0,0,4+3])cylinder(r=5.7/2,h=15,$fn=6);cylinder(r=3.5/2,h=20);}
translate([3-4-11,10+26,9-9-7-3])rotate([90,0,90]){translate([0,0,4+3])cylinder(r=5.7/2,h=15,$fn=6);cylinder(r=3.5/2,h=20);}
}
} //end difference()

translate([-8,18,0]){
difference(){
translate([0,22,-21])cube([5,10,40]);
translate([0,17,-24])rotate([90,0,0]){
translate([3-4-11,10,9-9-7-3])rotate([90,0,90]){
cylinder(r=3.5/2,h=20);}
translate([3-4-11,10+26,9-9-7-3])rotate([90,0,90]){
cylinder(r=3.5/2,h=20);}
}
} //end difference
} //end translate

translate([-8,30,0]){
difference(){
translate([0,22,-21])cube([2.5,10,40]);
translate([0,17,-24])rotate([90,0,0]){
translate([3-4-11,10,9-9-7-3])rotate([90,0,90]){
cylinder(r=3.5/2,h=20);}
translate([3-4-11,10+26,9-9-7-3])rotate([90,0,90]){
cylinder(r=3.5/2,h=20);}
}
} //end difference
} //end translate





}


module motormountsimple(){
translate([25,-25,100])
union(){
motormount();
translate([42,19-5,-18.5])
difference(){
cube([20,20,8.5]);
translate([20/2,20/2,0])
cylinder(r=4.5/2,h=20);
}
translate([-18,50,-18.5])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
}




module motormountsimplesyringe(){
translate([25,-25,100])
difference(){union(){
motormount();
translate([10,10,-18.5])cube([20,10,8.5]);
translate([10,60,-18.5])cube([20,10,8.5]);
translate([-18,30-0.1,-18.5])mirror([0,1,0])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
translate([-18,50,-18.5])difference(){
cube([18,8,35]);
//translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
//translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,18])rotate([90,0,0])cylinder(r=5.7/2,h=100);
translate([8,18-4,18])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
translate([21,20.5,-100])cylinder(r=8.7/2,h=150);
translate([21,20.5+39,-100])cylinder(r=8.7/2,h=150);
}
}














module motormountsimple_secure(){
translate([25,-25,100])
union(){
//translate([34.75+32.91,24.5,-50])cylinder(r=3.7/2,h=200);
//translate([34.75+22.3+1.9,24.5,-50])tslot20(200);
//translate([34.75+32.91,24.5,-0])rotate([-90,0,0])cylinder(r=3.7/2,h=200);
motormount();
translate([42,19-5,-18.5])
difference(){
cube([20,40,8.5]);
translate([20/2,20/2,0])
cylinder(r=4.5/2,h=20);
}
translate([-18,50,-18.5])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}

translate([65,25,81.5])difference(){cube([42,8,35]);
translate([26,0,0]){
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}


}








module motormountsimple_syringe(){
//translate([46,15,90-5])nema17();
//translate([0,0,60])tslot20(300);
translate([25,-25,100])
union(){
difference(){
motormount();
translate([31-18,60.5-5,-15])cylinder(r=5./2,h=130);
translate([31-18,60.5-5-31,-15])cylinder(r=5./2,h=130);
}
/*
translate([42,19-5,-18.5])difference(){
cube([20,20,8.5]);
translate([20/2,20/2,0])
cylinder(r=4.5/2,h=20);
}
*/
translate([-18,50,-18.5])difference(){
union(){
cube([18,8,35]);
translate([18,-19,0])cube([8,18,25]);
}
translate([15-1+3,-2,25])rotate([90,90,0]){translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);translate([8,18-4+2,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);}
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
}






module mauk_longergliderbearingcloser(){
translate([-5,23,-5])
difference(){
union(){
translate([9,-17.5,0])cube([70,15,4]);
translate([10,-10,0])cylinder(r=16/2,h=7);
translate([80,-10,0])cylinder(r=16/2,h=7);
}
translate([45,-10,0])cylinder(r=4.5/2,h=7);
translate([45-10,-10,0])cylinder(r=4.5/2,h=20);
translate([45-20,-10,0])cylinder(r=4.5/2,h=20);
translate([45+10,-10,0])cylinder(r=4.5/2,h=20);
translate([45+20,-10,0])cylinder(r=4.5/2,h=20);

translate([80,-10,0])cylinder(r=8.8/2,h=30,$fn=6);
translate([80,-10,0])cylinder(r=4.5/2,h=30);
translate([10,-10,0])cylinder(r=4.5/2,h=30);
}
}


module mauk_longergliderbearingcloser2(){
translate([-5,23,-5])
difference(){
union(){
translate([9,-17.5-10+3,0])cube([70,15+10-3,4]);
translate([10,-10,0])cylinder(r=16/2,h=7);
translate([80,-10,0])cylinder(r=16/2,h=7);
translate([9,-17.5-7,0])cube([70,4,14+5]);
translate([3,-17.5-7,0])cube([8-2,8+3,7]);
translate([79,-17.5-7,0])cube([8-2,8+3,7]);
}
translate([45,-10,0])cylinder(r=4.5/2,h=7);
translate([45-10,-10,0])cylinder(r=4.5/2,h=20);
translate([45-20,-10,0])cylinder(r=4.5/2,h=20);
translate([45+10,-10,0])cylinder(r=4.5/2,h=20);
translate([45+20,-10,0])cylinder(r=4.5/2,h=20);

translate([45+20-5,-10-4,14.5])rotate([90,0,0])cylinder(r=4.5/2,h=20);
translate([45+20-35,-10-4,14.5])rotate([90,0,0])cylinder(r=4.5/2,h=20);

translate([80,-10,0])cylinder(r=4.5/2,h=30);
translate([10,-10,0])cylinder(r=4.5/2,h=30);
}
}


module mauk_longergliderbearingcloser2_top(){
translate([-5,23,-5])
difference(){
union(){
translate([9,-17.5-10+10,0])cube([70,15,5]);
translate([10,-10,0])cylinder(r=20/2,h=5);
translate([80,-10,0])cylinder(r=20/2,h=5);
//translate([9,-17.5-7,0])cube([70,4,5]);
//translate([3,-17.5-7,0])cube([8-2,8+3,5]);
//translate([79,-17.5-7,0])cube([8-2,8+3,5]);
}
//translate([45,-10,0])cylinder(r=4.5/2,h=7);
translate([45-10,-10,0])cylinder(r=6.1/2,h=20);
translate([45-10,-10,0])cylinder(r=4.5/2,h=20);
//translate([45-20,-10,0])cylinder(r=4.5/2,h=20);
translate([45+10,-10,0])cylinder(r=6.1/2,h=20);
translate([45+10,-10,0])cylinder(r=4.5/2,h=20);
//translate([45+20,-10,0])cylinder(r=4.5/2,h=20);

/*
translate([45+20-5,-10-4,14.5])rotate([90,0,0])cylinder(r=4.5/2,h=20);
translate([45+20-35,-10-4,14.5])rotate([90,0,0])cylinder(r=4.5/2,h=20);
*/

translate([80,-10,5-2.5])cylinder(r=4.3,h=5,$fn=6);
translate([80,-10,0])cylinder(r=4.5/2,h=30);
translate([10,-10,5-2.5])cylinder(r=4.3,h=5,$fn=6);
translate([10,-10,0])cylinder(r=4.5/2,h=30);
}
}







module motormountsimplematchingbearing(){
mirror([0,1,0]){
translate([25,-25,100])
union(){
//motormount();
difference(){
union(){
difference(){
translate([0,23,-19])cube([30,35,18]);
translate([0,20,-19])rotate([0,0,-60])cube([20,41,18]);
translate([0,20,-19])rotate([0,0,0])cube([20,11,18]);
translate([35,40,-19])rotate([0,0,60])cube([20,41,18]);
}
translate([20,40,-19])cylinder(r=13,h=18);
}

translate([21,40,-50])cylinder(r=8.5/2,h=100);
}
translate([-18,50,-19])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
}
}


module motormountsimplematchingbearing_stretch(){
mirror([0,1,0]){
translate([25,-25,100])
union(){
//motormount();
difference(){
union(){
difference(){
translate([0,23,-19])cube([30,35,18]);
translate([0,20,-19])rotate([0,0,-60])cube([20,41,18]);
translate([0,20,-19])rotate([0,0,0])cube([20,11,18]);
translate([35-20,40-30,-19])rotate([0,0,60])cube([20,41,18]);
}
translate([20,40+10,-19])cylinder(r=13,h=18);
}
translate([21,40+10,-50])cylinder(r=8.5/2,h=100);
}
translate([-18,50,-19])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-4,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
}
}







module threaded_support_5_16(){

 difference(){
 cube([20,55,5]); 
 translate([10,5,0])
 cylinder(r=5.3/2,h=7);
 translate([10,50,0])
 cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-2.5,6])
 difference(){
 difference(){
 union(){
 translate([0,7,4])
 rotate([0,90,0])
 cylinder(r=11,h=20);
 translate([0,-7.75+3.75,-6]) rotate([0,0,0]) cube([20,22,10]);
 }

 translate([-7,-10,-15])
 cube([35,35,11]);
 translate([-15,-10,-10])
 cube([15,35,41]);
 translate([20,-10,-10])
 cube([15,35,41]);
 }
 translate([-5+2-70,7,9.5-3]) rotate([0,90,0]) cylinder(r=8.7/2,h=100);
 }

}



module threaded_support_5_16_breadboard(){

 difference(){
 cube([20,55+5,5]); 
 translate([10,5,0])
 cylinder(r=6.3/2,h=7);
 translate([10,5+50,0])
 cylinder(r=6.3/2,h=7);
 }
 translate([-0,45/2-2.5+2.5,6])
 difference(){
 difference(){
 union(){
 translate([0,7,4]) rotate([0,90,0]) cylinder(r=11,h=20);
 translate([0,-7.75+3.75,-6]) rotate([0,0,0]) cube([20,22,10]);
 }

 translate([-7,-10,-15])
 cube([35,35,11]);
 translate([-15,-10,-10])
 cube([15,35,41]);
 translate([20,-10,-10])
 cube([15,35,41]);
 }
 translate([-5+2-70,7,9.5-3]) rotate([0,90,0]) cylinder(r=8.7/2,h=100);
 }
}












module threaded_support_5_16_by_2(){

 difference(){
 cube([20,55,5]); 
 translate([10,5,0]) cylinder(r=5.3/2,h=7);
 translate([10,50,0]) cylinder(r=5.3/2,h=7);
 }
 translate([-0,45/2-2.5,6])
 difference(){
 difference(){
 union(){
 translate([0,7,4]) rotate([0,90,0]) cylinder(r=16,h=20);  
 translate([0,-7.75+3.75,-6]) rotate([0,0,0]) cube([20,22,10]);
 }

 translate([-7,-10,-15])
 cube([35,35,11]);
 translate([-15,-10,-10])
 cube([15,35,41]);
 translate([20,-10,-10])
 cube([15,35,41]);
 }
 translate([-5+2-70,7-10,9.5-3]) rotate([0,90,0]) cylinder(r=8.7/2,h=100);
 translate([-5+2-70,7+10,9.5-3]) rotate([0,90,0]) cylinder(r=8.7/2,h=100);
 }
}


















module verticalymotormount(){
difference(){
union(){
translate([0,0,50]){
//translate([-6,-23-49,0])rotate([90,0,0])motormount();
translate([-6-8,-23-49,0])rotate([90,0,0])nema23motormount();
translate([18-9.5+19.5-25-35,-23-39,0])cube([30+55,8.5,20]);
translate([18-9.5+19.5-25,-23-39,61+16])cube([30+20,8.5,18]);
}
}
translate([40.5-17.5+19.5,30,60])rotate([90,0,0])cylinder(r=8.7/2,h=120);
translate([40.5-17.5+19.5,30,60+62+15])rotate([90,0,0])cylinder(r=8.7/2,h=120);
translate([40.5-17.5+19.5-62.5,50,58.5])rotate([90,0,0])cylinder(r=8.7/2,h=120);

}
}





module simple_bearingholder_m4bearingsupport(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8+5);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);

translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);

translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);

}
translate([20,10-1,0])cylinder(r=5.5/2,h=8);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.5/2,h=8);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,1])cylinder(r=13.4/2,h=7);
translate([20,27,0])cylinder(r=8.7/2,h=2);
translate([20,27,6.5])cylinder(r=8.7/2,h=250+6);
}
}



module simple_bearingholder_m4bearingsupport_m5rodstyle(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8+5);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);

translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);

translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);

}
translate([20,10-1,0])cylinder(r=5.5/2,h=8);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.5/2,h=8);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
//translate([20,27,1+5])cylinder(r=22.4/2,h=70);
translate([20,27,1+5])cylinder(r=16.5/2,h=70);
translate([20,27,1])cylinder(r=13.4/2,h=7);
translate([20,27,0])cylinder(r=8.7/2,h=2);
translate([20,27,6.5])cylinder(r=8.7/2,h=250+6);
}
}



module bottom_simple_m8_smoothrodholder_for_z(){
//translate([5,75,-30])rotate([90,0,0])tslot20(200);
difference(){translate([-33,1.7,0])rotate([0,0,0])cube([50,53.7,2]);
translate([20,27,1])cylinder(r=8.7/2,h=20);
translate([20,27,0])cylinder(r=5.7/2,h=2);
}
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=12);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);

translate([20,10-1,0])cylinder(r=5.7/2,h=18);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.7/2,h=18);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,1])cylinder(r=8.7/2,h=20);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);

}
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();
}










module simple_m8_smoothrodholder_for_z(){
//translate([5,75,-30])rotate([90,0,0])tslot20(200);
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=12);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);

translate([20,10-1,0])cylinder(r=5.7/2,h=18);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=8);
translate([20,45,0])cylinder(r=5.7/2,h=18);
translate([20,45,4.1])cylinder(r=8.9/2,h=8);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,1])cylinder(r=8.7/2,h=20);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);

}
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();
}







/*
comment module seq_maukyarm(){
 m8barclampforseq_maukyarm();
 translate([-20,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-20-340,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(360);
 translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-354-26,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-150+130-270+100,40,-25])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
 //translate([-150+130-270+75,40,-33-6])rotate([0,0,0])import_stl("mauk_GliderBearingCloser.stl");
 translate([-150+130-270+75,40,-33-6])rotate([0,0,0])mauk_longergliderbearingcloser();
}
*/




module maukyarm(){
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(334);
 translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-354,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-150+130-270,40,-20])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
}

module maukbed(){
 //20x20x334 profile
 translate([-10,37.5+270,15])rotate([90,90,-90])tslot20(334);
 translate([-10,37.5,15])rotate([90,90,-90])tslot20(334);
 rotate([90,90,0])import_stl("HFS5-2020-315-TPW-Z5-XA22.5-XB292.5-YA10-YB305.stl");
 translate([-25,22.5,0])rotate([90,0,90])cylinder(r=5.5/2,h=50);
 translate([-25,315-22.5,0])rotate([90,0,90])cylinder(r=5.5/2,h=50);
 translate([-334-20,0,0])rotate([90,90,0])import_stl("HFS5-2020-315-TPW-Z5-XA22.5-XB292.5-YA10-YB305.stl");
}

/*
module m8barclampforseq_maukyarm(){
translate([20,0,0]){
difference(){
union(){
translate([-10-400,38-15,10])cube([18,44,16]);
translate([-10-389,55,28.5])rotate([0,0,-90])m4locknut();
translate([-10-388,38-8,10])cube([18.5,14,16]);
}
translate([-25,38,19.5])rotate([0,-90,0])cylinder(r=8.7/2,h=365);
translate([-10-375.5,90,19])rotate([90,110,0])cylinder(r=4.5/2,h=50);
translate([-10-390,60,-50])cylinder(r=4.5/2,h=100);
translate([-10-390,60,26-4.5])cylinder(r=7.5/2,h=10);
translate([-10-390,30,-50])cylinder(r=4.5/2,h=100);
translate([-10-390,30,26-4.5])cylinder(r=7.5/2,h=100);
translate([-10-390,30,-0])cube([30,30,10]);
translate([-10-390,30,26])cube([30,30,10]);
 }
}
translate([-11.5,48,10])rotate([0,0,-90])import_stl("CDCholder.stl");
}
*/



module m8barclampforseq_maukyarm(xarlen,yarlen){

translate([20,0,0]){
difference(){
union(){
difference(){
translate([-410,38-15,10])cube([18,44,16]);
translate([-395.5,54,0])cube([5,12.6,50]);
}
translate([-402,65.5,28.5])rotate([0,0,-90])m4locknut();
translate([-399,19.25,8.5])rotate([0,180,-90])m4locknut();
translate([-413.5,19.25-15.3,21.5])rotate([90,90,-0])m4locknut();
translate([-398,38-8,10])cube([18.5,14,16]);
}
translate([-25,38,19.5])rotate([0,-90,0])cylinder(r=8.7/2,h=365);
translate([-385.5,40,19])rotate([90,110,0])cylinder(r=4.5/2,h=50);
//translate([-13-375.5,118,19])rotate([90,110,0])cylinder(r=9/2,h=50);
translate([-400,60,-50])cylinder(r=4.5/2,h=100);
translate([-400,60,26-4.5])cylinder(r=7.5/2,h=10);
translate([-400,30,-50])cylinder(r=4.5/2,h=100);
translate([-400,30,26-4.5])cylinder(r=7.5/2,h=100);
translate([-400,15,-0])cube([30,55,10]);
translate([-400,15,26])cube([30,55,10]);
 }
}
//translate([-11.5,48,10])rotate([0,0,-90])import_stl("CDCholder.stl");
}


module m8barclampforseq_maukyarm2(xarlen,yarlen){

normx = 385.5;

//translate([20-normx,0,0]){
translate([-xarlen-5,0,0]){
difference(){
union(){
difference(){
translate([-24.5,23,10])cube([18,44,16]);
translate([-10,54,0])cube([5,12.6,50]);
}
translate([-16.5,65.5,28.5])rotate([0,0,-90])m4locknut();
translate([-13.5,19.25,8.5])rotate([0,180,-90])m4locknut();
translate([-28,3.95,21.5])rotate([90,90,-0])m4locknut();
translate([-12.5,30,10])cube([18.5,14,16]);
}
translate([360.5,38,19.5])rotate([0,-90,0])cylinder(r=8.7/2,h=365);
translate([0,40,19])rotate([90,110,0])cylinder(r=4.5/2,h=50);
//translate([-13-375.5,118,19])rotate([90,110,0])cylinder(r=9/2,h=50);
translate([-14.5,60,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,60,26-4.5])cylinder(r=7.5/2,h=10);
translate([-14.5,30,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,30,26-4.5])cylinder(r=7.5/2,h=100);
translate([-14.5,15,-0])cube([30,55,10]);
translate([-14.5,15,26])cube([30,55,10]);
 }
}
//translate([-11.5,48,10])rotate([0,0,-90])import_stl("CDCholder.stl");
}

module m8barclampforseq_maukyarm3(xarlen,yarlen){

normx = 385.5;

//translate([20-normx,0,0]){
translate([-xarlen-5,0,0]){
difference(){
union(){
difference(){
translate([-24.5,23,10])cube([18,44,16]);
translate([-10,54,0])cube([5,12.6,50]);
}
translate([-16.5,65.5,28.5])rotate([0,0,-90])m4locknut();
translate([-13.5,19.25,8.5])rotate([0,180,-90])m4locknut();
translate([-28,3.95+62,21.5])rotate([90,90,-0])m4locknut();
translate([-12.5,30,10])cube([18.5,14,16]);
}
translate([360.5,38,19.5])rotate([0,-90,0])cylinder(r=8.7/2,h=365);
translate([0,40,19])rotate([90,110,0])cylinder(r=4.5/2,h=50);
//translate([-13-375.5,118,19])rotate([90,110,0])cylinder(r=9/2,h=50);
translate([-14.5,60,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,60,26-4.5])cylinder(r=7.5/2,h=10);
translate([-14.5,30,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,30,26-4.5])cylinder(r=7.5/2,h=100);
translate([-14.5,15,-0])cube([30,55,10]);
translate([-14.5,15,26])cube([30,55,10]);
 }
}
//translate([-11.5,48,10])rotate([0,0,-90])import_stl("CDCholder.stl");
}



module endstopside_yarmslider(){

normx = 385.5;

//translate([20-normx,0,0]){
translate([-5,0,0]){
difference(){
union(){
difference(){
translate([-24.5,23,10])cube([19,44-5,16]);
//translate([-10,54,0])cube([5,12.6,50]);
}
//translate([-16.5,65.5,28.5])rotate([0,0,-90])m4locknut();
//translate([-13.5,19.25,8.5])rotate([0,180,-90])m4locknut();
translate([-28,3.95+62-5,21.5])rotate([90,90,-0])m4locknut();
//translate([-12.5,30,10])cube([18.5,14,16]);
}
//translate([360.5,38,19.5])rotate([0,-90,0])cylinder(r=8.7/2,h=365);
translate([0,40,19])rotate([90,110,0])cylinder(r=4.5/2,h=50);
//translate([-13-375.5,118,19])rotate([90,110,0])cylinder(r=9/2,h=50);
translate([-14.5,60-10,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,60-10,26-4.5])cylinder(r=7.5/2,h=10);
translate([-14.5,30,-50])cylinder(r=4.5/2,h=100);
translate([-14.5,30,26-4.5])cylinder(r=7.5/2,h=100);
translate([-14.5,15,-0])cube([30,55,10]);
translate([-14.5,15,26])cube([30,55,10]);
 }
}
//translate([-11.5,48,10])rotate([0,0,-90])import_stl("CDCholder.stl");
}











module avoidwobblezdrive(){

translate([-21,-40,-36.5+3.5])thinnermotormount();
difference(){
union(){
translate([-10,-40+3,-55+3.5])cube([20,20-2,5]);
translate([-10,-40+60,-55+3.5])cube([20,20-2,5]);
}
translate([0,-40+10,-55])cylinder(r=5.7/2,h=20);
translate([0,-40+60+10,-55])cylinder(r=5.7/2,h=20);
}
nema17();


}





module motormountsimplezdrive(){
translate([25,-25,100])
difference(){
union(){
motormount();
translate([42,19+10,-18.5])
difference(){
cube([20,20,8.5+5]);
translate([20/2,20/2,0])
cylinder(r=4.5/2,h=20);
}
translate([42+20,19+10,-18.5])cube([20,20,8.5+5]);
translate([-18,50,-18.5])rotate([90,0,0])difference(){
cube([18,8,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-3,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
translate([8,18-3,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}

}

translate([72,200,-12])rotate([90,90,0])cylinder(r=8.7/2,h=200);
}
}




module motormountsimplezdrive_nema23(){
translate([25,-25,100])
difference(){
union(){
nema23motormount();
translate([42+16.25,19+10+8-4,-18.5-6.5])difference(){
cube([20,30,8.5+5+1.5]);
translate([10,8,-15])cylinder(r=3.7/2,h=30);
translate([10,22,-15])cylinder(r=3.7/2,h=30);
}
//translate([42+20+16.25,19+10,-18.5])cube([20,20,8.5+5]);

translate([-18,50+15,-18.5])rotate([90,0,0])difference(){
cube([18,8.5,35]);
translate([8,50,8])rotate([90,0,0])cylinder(r=5.5/2,h=100);
//translate([8,18-3,8])rotate([90,0,0])cylinder(r=9.5/2,h=10);
translate([8,50,25])rotate([90,0,0])cylinder(r=5.5/2,h=100);
//translate([8,18-3,25])rotate([90,0,0])cylinder(r=9.5/2,h=10);
}
}
translate([72+16.25,200,-12])rotate([90,90,0])cylinder(r=8.7/2,h=200);
}
}


module motormountsimplezdrive_nema23_constraintmodule(){
translate([25,-25,100])
difference(){
union(){
translate([42+16.25,19+5,-18.5])difference(){cube([20,30,8.5+5]);
translate([10,8,0])cylinder(r=3.7/2,h=30);
translate([10,8,0])cylinder(r=7.3/2,h=6,$fn=6);
translate([10,22,0])cylinder(r=3.7/2,h=30);
translate([10,22,0])cylinder(r=7.3/2,h=6,$fn=6);
}
translate([42+20+16.25,19+10,-18.5])cube([20,20,8.5+5]);
}
translate([72+16.25,200,-12])rotate([90,90,0])cylinder(r=8.7/2,h=200);
}
}


module motormountsimplezdrive_nema23_shim(){
translate([25,-25,100])
difference(){
union(){

translate([42+16.25,19+5,-18.5])difference(){
union(){
cube([20-1,30,20.5]);
translate([0.5,-16.5,0])cube([18,62,5]);
}
translate([9.75,-8,0])cylinder(r=5.7/2,h=30);
translate([9.75,-8+62-16,0])cylinder(r=5.7/2,h=30);
translate([9.75,7,0])cylinder(r=3.7/2,h=30);
translate([9.75,7,0])cylinder(r=7.5/2,h=6,$fn=6);
translate([9.75,24,0])cylinder(r=3.7/2,h=30);
translate([9.75,24,0])cylinder(r=7.5/2,h=6,$fn=6);
}
}
}
}


module bearingmodule(){

translate([-10,-50,80]){
difference(){union(){
//cylinder(r=22.5/2,h=6.4);
translate([-10,-15,-18])cube([25,30,12]);
translate([10,-32,-18])cube([5,65,18]);

}
translate([0,0,-25])cylinder(r=9/2,h=126.4);
translate([0,0,-9])cylinder(r=15/2,h=5,$fn=6);
translate([0,0,-14])cylinder(r=15/2,h=5,$fn=6);
translate([0,-24,-9])rotate([90,0,90])cylinder(r=6/2,h=100);
translate([0,24,-9])rotate([90,0,90])cylinder(r=6/2,h=100);
}
}


}






























module seq_assy(){

//note smooth rod length is: 365
translate([15,-250,40])seq_maukyarm();

rotate([90,0,0])tslot20_2060(360);
translate([27,-180,5])rotate([0,0,90])tslot20innerbracket();
translate([3,-180,25])rotate([180,0,90])tslot20innerbracket();
translate([2,-180,5])rotate([0,0,-90])tslot20innerbracket();
translate([27,-180,25])rotate([180,0,-90])tslot20innerbracket();
translate([0,0,-285])rotate([90,0,0])tslot20_2060(360);

translate([-380,0,0]){
rotate([90,0,0])tslot20(360);
translate([27,-180,5])rotate([0,0,90])tslot20innerbracket();
translate([3,-180,25])rotate([180,0,90])tslot20innerbracket();
translate([2,-180,5])rotate([0,0,-90])tslot20innerbracket();
translate([27,-180,25])rotate([180,0,-90])tslot20innerbracket();
translate([0,0,-285])rotate([90,0,0])tslot20(360);
translate([190,0,-285])rotate([90,0,0])tslot20(340/2);
}

//vertical supports
translate([0,-5,-260])tslot20(360);
translate([-380,-5,-260])tslot20(360);
translate([0,-385,-260])tslot20(360);
translate([-380,-385,-260])tslot20(360);

//other horizontal supports
translate([5,25,-285])rotate([90,0,-90])tslot20(360);
translate([5,25-190,-285])rotate([90,0,-90])tslot20(360);
translate([5,25-380,-285])rotate([90,0,-90])tslot20(360);

translate([-15,9,-280])rotate([0,0,0])corner_block();
translate([-363.5,-20,-280])mirror([0,0,0])rotate([0,0,90])corner_block();

translate([0,-360,0])mirror([0,1,0]){
translate([-15,9,-280])rotate([0,0,0])corner_block();
translate([-363.5,-20,-280])mirror([0,0,0])rotate([0,0,90])corner_block();
}


//idler
translate([-355,-10,5])rotate([90,0,90])simple_bearingholder();
translate([5,30,5])rotate([90,0,-90])simple_bearingholder();

//pulley and rod
translate([5,-350,5])rotate([90,0,-90])simple_bearingholder();
translate([-355,-390,5])rotate([90,0,90])simple_bearingholder();

translate([0,-370,30])rotate([90,0,-90])cylinder(r=8.7/2,h=360);

//bed support
translate([11.5,-166,80])rotate([0,180,-90])zbedslot_516();
translate([-20.5,-130,-150])rotate([90,0,0])tslot20(100);
translate([-360.5,-194,80])rotate([0,180,90])zbedslot_516();
translate([-357.5,-130,-150])rotate([90,0,0])tslot20(100);
translate([5,-225,-150])rotate([90,0,-90])tslot20(360);
translate([5,-105,-150])rotate([90,0,-90])tslot20(360);

//z drive bearings 
// NOTE: threaded and smooth rods measure to be 256mm
translate([-5,-207,-260])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-385,-207,-260])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-35+70,-207,5])rotate([0,180,0])simple_bearingholder();
translate([-345,-207,5])rotate([0,180,0])simple_bearingholder();

//zdrive sets
translate([0,-257,75])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();
translate([15,-260.5,-255])cylinder(r=8.7/2,h=250);
translate([-5,-287.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-35+70,-287.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();


translate([0,-103,75])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([15,-99.5,-255])cylinder(r=8.7/2,h=250);
translate([-35+70,-126.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-126.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


translate([-350,-103,75])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-365,-99.5,-255])cylinder(r=8.7/2,h=250);
translate([-385,-126.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-345,-126.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();


translate([-350,-257,75])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
translate([-365,-260.5,-255])cylinder(r=8.7/2,h=250);
translate([-385,-287.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-345,-287.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();

//y motormount (2arms) unit
translate([-100,-385,-270])rotate([0,0,90])verticalymotormount();
translate([5,-360,-125+14])rotate([-90,0,0])beltadjuster();
translate([5+30,-360+17.5,-125-22+14])rotate([-90,90,90])cylinder(r=8.7/2,h=150);

translate([5,-360,-188])rotate([-90,0,0])beltadjuster();

//x motormount (crazy belt setup) maukstyle
translate([30,-5,-120])rotate([0,0,180])motormountsimplematchingbearing();
translate([-380,-5,-120])motormountsimple();
//translate([380,0,0])yarmbeltclamp();

//z motormount
translate([-190+30,-100,-320-21.5])
rotate([0,0,180])
motormountsimplezdrive();

translate([-190+30-75,-190,-320+60])
rotate([0,0,90])beltadjuster_lower();

//yglider
//%translate([-220,-192,40])rotate([90,-90,0])import_stl("mauk_ygliderbracket.stl");

//energy chain x drive
translate([29,-252,77])rotate([180,0,90])import("igus_06_10_018_0_420_1.stl");

}













module ybeltholdermaukstyle(){
translate([35,0,0]){
difference(){
cube([21,10,4+2]);
translate([14,5,0]){
//translate([0,0,0])cylinder(r=5.8/2,h=2.5, $fn=6);
translate([0,0,-10])cylinder(r=3.1/2,h=40);
//translate([-9,0,0])cylinder(r=5.8/2,h=2.5, $fn=6);
translate([-9,0,-10])cylinder(r=3.1/2,h=40);
}
}
}
//translate([-5,-50,5])rotate([-90,0,0])tslot20(200);
difference(){
cube([21,10,4]);
translate([14,5,0]){
translate([0,0,0])cylinder(r=5.8/2,h=2.5, $fn=6);
translate([0,0,-10])cylinder(r=3.1/2,h=40);
translate([-9,0,0])cylinder(r=5.8/2,h=2.5, $fn=6);
translate([-9,0,-10])cylinder(r=3.1/2,h=40);
}
}
difference(){
translate([2,-10,0])cube([19,10,4]);
translate([2+8,-10+5,0])cylinder(r=5.5/2,h=10);
}
difference(){
translate([20,-10,-18])cube([4+3,15,22]);
translate([20-10,-10+8,-18+8])rotate([90,90,90])cylinder(r=5.5/2,h=100);
translate([23,-10+8,-18+8])rotate([90,90,90])cylinder(r=9.5/2,h=5);
}
}



module mauk_slider_assy(){
difference(){
union(){
//translate([-203,-167,32.7-4])rotate([0,0,-90])microscope_toolmount_thorlabs();
translate([-220,-200,-34])rotate([-90,90,180])mirror([0,0,1])new_gliderbracket_modular();
translate([-220,-200,-34])rotate([-90,90,180])mirror([0,0,1])new_gliderbracket_topbreadboard_raspimount();


translate([-224,-170-13,14-0.5])rotate([0,90+90,180-90])gesim_mauk_tipmount_thread();
//translate([-224,-170-13,14-0.5])rotate([0,90+90,180-90])gesim_mauk_tipmount_thread_breadboard_mod();

//translate([-253,-167-13,24])rotate([-90,0,0])gesim_tipmount_mauk();
//translate([-208.75,-192,74])rotate([-90,0,0])import("mauk_Hall-Oholder.stl");
}

translate([0,0,3]){
//translate([-245,-220+30,-34+120])rotate([-90,90,180])cube([100,100,50]);
translate([-212,-162,31-2])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-3])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-4])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-5])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-6])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-7])rotate([90,0,0])cylinder(r=3.5/2,h=50);



//translate([-212,-162-13.5,31])rotate([90,0,0])cylinder(r=6.2/2,h=100);
translate([-212,-194,31-2])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-3])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-4])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-5])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-6])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-7])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
}


translate([22,0,3]){
translate([-212,-162,31-2])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-3])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-4])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-5])rotate([90,0,0])cylinder(r=3.5/2,h=50);
translate([-212,-162,31-6])rotate([90,0,0])cylinder(r=3.5/2,h=50);
//translate([-212,-162,31-7])rotate([90,0,0])cylinder(r=3.5/2,h=50);
//m3 nut
//translate([-212,-162-13.5,31-0])rotate([90,0,0])cylinder(r=6.2/2,h=10);
translate([-212,-194,31-2])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-3])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-4])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-5])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
translate([-212,-194,31-6])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
//translate([-212,-194,31-7])rotate([90,0,0])cylinder(r=6.2/2,h=10,$fn=6);
}
}
}



module gesim_mauk_tipmount_thread(){

difference(){
union(){
translate([-3,-1+5,0])cube([25-13,35-10,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
difference(){
translate([-3,0,0.5])cube([7,35,30]);
translate([-30,3,25.5])rotate([0,90,0]){
translate([0,0,30])rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,27.5])rotate([0,90,0]){
translate([0,0,30])rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}

translate([-30,30,6.5])rotate([0,90,0]){
translate([0,0,30])rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);
cylinder(r=3.4/2,h=100);
}
}
}
}
translate([0,31.5,-10])rotate([90,0,0]){
translate([-0,15,15-17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15-17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
translate([-0,15,15+17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15+17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
}
}
}


module gesim_mauk_tipmount_thread_breadboard_mod(){

translate([0,50,5])

//translate([-3,-1+5-42,-22.5-2.5])
/* attach plate */
difference(){
cube([5,30,10]);
translate([0,14,5])rotate([0,90,0]){
//cylinder(r=6.8/2,h=10, $fn=6);
translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([0,4,5 ])rotate([90,0,90]){cylinder(r=3.5/2,h=500);}
translate([0,4+22,5 ])rotate([90,0,90]){cylinder(r=3.5/2,h=500);}
}

/* main unit */
/*
difference(){
union(){
translate([-3,-1+5,0])cube([25-13,35-10,10]);
//translate([-3,-1+5-42,-22.5-2.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,0.5-10])cube([7,35+35,40+20+20+10]);
}
}


translate([-3,0-50,5])cube([7,30,40]);
translate([-3,0-50,-45])cube([7,30,20]);
translate([-3.1,-34,-20 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22,-20 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}

for (x = [0,1,4,6]) {
for (z = [0,1,2,3,4,5,6,7,8]) {
    translate([0,26-(z*10)+10,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [2,3]) {
for (z = [-1,1,3,4,5,6,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}

}

for (x = [5]) {
for (z = [-1,0,1,2,3,5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
translate([0,31.5,-10])rotate([90,0,0]){
translate([-0,15,15-17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15-17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
translate([-0,15,15+17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15+17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
}
}
*/

}
















module gesim_mauk_tipmount_thread_breadboard(){

difference(){
union(){
translate([-3,-1+5,0])cube([25-13,35-10,10]);
translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,0.5])cube([7,35+35,40+20+20]);
}
}

translate([-3.1,-34,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}

for (x = [0,1,4,6]) {
for (z = [0,1,2,3,4,5,6,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [2,3]) {
for (z = [1,3,4,5,6,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [5]) {
for (z = [0,1,2,3,5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
translate([0,31.5,-10])rotate([90,0,0]){
translate([-0,15,15-17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15-17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
translate([-0,15,15+17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15+17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
}
}
}



module gesim_mauk_tipmount_thread_breadboard_left(){

difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,35.5])cube([7,35+35,40+20-13]);
}
}

translate([-3.1,-34,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}

for (x = [0,1,4,6]) {
for (z = [4,5,6,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}


for (x = [2,3]) {
for (z = [4,5,6,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [5]) {
for (z = [5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}




module gesim_mauk_tipmount_thread_breadboard_right(){

difference(){
union(){
translate([-3,-1+5,0])cube([25-13,35-10,10]);
//translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,-15.5])cube([7,35+35,40+20-13]);
}
}

//translate([-3.1,-34,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
//translate([-3.1,-34+22,-17.5 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}

for (x = [0,1,4,6]) {
for (z = [1,2,3,4,5]) {
    translate([0,53-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
for (x = [2,3]) {
for (z = [1,2,4]) {
    translate([0,53-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [5]) {
for (z = [1,2,3,4,5]) {
    translate([0,53-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
translate([0,31.5,-10])rotate([90,0,0]){
translate([-0,15,15-17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15-17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
translate([-0,15,15+17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15+17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
}
}
}






/*
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
difference(){
translate([-3,0-20,0.5])cube([7,35+30,40+20]);
translate([-30,30,6.5-3.06+2])rotate([0,90,0]){
translate([0,-1,0]){
translate([0,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([0,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
}
}


}}}}}

difference(){
union(){
translate([-3,-1+5,0])cube([25-13,35-10,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
difference(){
translate([-3,0-20,0.5])cube([7,35+30,40+20]);



translate([-30,30,6.5-3.06+2])rotate([0,90,0]){

translate([0,-1,0]){
translate([0,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([0,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-10,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-10,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-20,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-20,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}


}
translate([-30,10-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-30,-2-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-40,10-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-40,-2-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-50,10-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-50,-2-1,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}



translate([0,-40,0]){
translate([0,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([0,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-10,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-10,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-20,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-20,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-30,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-30,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-30,25,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-40,25,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-40,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-40,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}

translate([-50,25,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-50,10,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}
translate([-50,-2,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}


}
}
}
}
}

translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
translate([0,31.5,-10])rotate([90,0,0]){
translate([-0,15,15-17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15-17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);
translate([-0,15,15+17/2])rotate([0,90,0])cylinder(r=4.5/2,h=100);
translate([-3.2,15,15+17/2])rotate([0,90,0])cylinder(r=7.5/2,h=6);


}
}
}
}
*/

















module gesim_tipmount_mauk(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr;
cubeln = 30;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
union(){
 difference(){
 cube([cubeln,cubehi-5,3]);
 //screwhole 
 translate([cubeln-m25diam*2-1,m25diam*1.5-1.5,0]) cylinder(r=m3diam/2,6);
  //screwhole
  translate([cubeln-m25diam*2-20,m25diam*1.5-1.5+30-3,-10])  cylinder(r=m3diam/2,30);
  //screwhole
  translate([cubeln-m25diam*2+1,m25diam*1.5-1.5+30-3,-10])  cylinder(r=m3diam/2,30);
 }
 //bottom plate
 translate([0+9.5,rldist,3]) cube([cubeln-9.5,3,6]);
 //mid vertical plate (the reference plate)
 translate([chpos,cubehi-11-shmr,3]) cube([3,6.5,6]);
 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])
 difference(){
  cube([6,19.5,6]);
  translate([-15,14,3])  rotate([0,90,0])  cylinder(r=m25diam/2,h=40);
  translate([2.0,11,6.5])  rotate([0,90,0])  cube([7,6,2.0]);
 }
  //top plate
 difference(){
  translate([0+8.0,rldist-12.5-3-1,2])  cube([cubeln-8,6,6]);
  translate([chpos-2+0.5,cubehi-9-3,5.5])  rotate([90,0,0])  cylinder(r=1.7,h=40);
  //translate([2.5+0.5,10.5-1,4-1])
  translate([chpos-4,10.5-1,4-1])  rotate([90,0,0])  cube([5,6,1.9]);  //need to make this screw tighter was 2.1
 }
}
}

module new_gliderbracket(){

translate([-106.3-12,9.1-9,-21.7-36])rotate([0,0,0])energychainconnect();
difference(){
union(){
translate([-50+5+3.5-0.75-1.5,-20,4])roundedBox([18, 46, 8], 5, true);
translate([-108+3.5,-40,4])cube([65,90,4]);
translate([-108+3.4,24,-16-4])cube([21-2,16,24]);
translate([-108+7,-40,-16-4])cube([21-3-2,16,28]);
translate([-90.5+10.5,-28,1.5])cube([5,70,2.5]);
}
translate([-0.75-1.5,-1,0]){
translate([-50+8.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+8.5,-20-8,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20-8,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+8.5,-20-17,-10])cylinder(r=4.5/2,h=20);
}
translate([-74,-40,-50])cylinder(r=12,h=100);
translate([-45,23,3])roundedBox([25, 40, 10], 5, true);
translate([-57,47,3])rotate([0,0,40])roundedBox([25, 80-10, 10], 10, true);
translate([-45,49,3])roundedBox([35, 40, 10], 5, true);
translate([-103,0,3])roundedBox([25, 50, 10], 8, true);
translate([-93.5,150,-12])rotate([90,0,0])cylinder(r=11.2/2,h=500);
translate([-100,45,0])cylinder(r=3.5/2,h=200);
translate([-91,46,0])cylinder(r=4.5/2,h=200);
translate([-83,45,0])cylinder(r=3.5/2,h=200);
translate([-121,-42,0])cube([20,20,20]);
}
}

module new_gliderbracket_modular(){

//need to print seperately
translate([-106.3-12,9.1-9.1,-21.7-36])rotate([0,0,0])energychainconnect();
difference(){
union(){
translate([-50+5+3.5-0.75-1.5+5,-20,4])roundedBox([18, 46, 8], 5, true);
translate([-108+3.5,-40,4])cube([65,90,4]);

/* need to print this separately */
color("red"){
translate([-108+3.4,24,-16-4])cube([21-2,16,24]);
translate([-108+7,-40,-16-4])cube([21-3-2,16,28-4]);
}
translate([-90.5+10.5,-28,1.5])cube([5,70,2.5]); //rigid bar which I forgot
}

//bigger rod holder
translate([-108+3.4+10,24+12,-10]){
translate([-3,0,0])cylinder(r=3.5/2,h=20);
translate([-2,0,0])cylinder(r=3.5/2,h=20);
translate([-1,0,0])cylinder(r=3.5/2,h=20);
cylinder(r=3.5/2,h=20);
translate([3,0,0])cylinder(r=3.5/2,h=20);
translate([2,0,0])cylinder(r=3.5/2,h=20);
translate([1,0,0])cylinder(r=3.5/2,h=20);
translate([0,0,7]){rotate([0,0,90])cylinder(r=6.8/2,h=4,$fn=6);
//translate([20.8/2,-55,0])cube([10.6,50,24]);
//translate([69.8/2,-59,0])rotate([0,0,40])cube([10.6,20,24]);
translate([-5.8/2,0,0])cube([5.6,5,4]);
}
}
//smaller rod holder
translate([-93.5,-35,-10]){
translate([-3,0,0])cylinder(r=3.5/2,h=20);
translate([-2,0,0])cylinder(r=3.5/2,h=20);
translate([-1,0,0])cylinder(r=3.5/2,h=20);
cylinder(r=3.5/2,h=20);
translate([3,0,0])cylinder(r=3.5/2,h=20);
translate([2,0,0])cylinder(r=3.5/2,h=20);
translate([1,0,0])cylinder(r=3.5/2,h=20);
translate([0,0,7]){rotate([0,0,90])cylinder(r=6.8/2,h=4,$fn=6);translate([-5.8/2,-5,0])cube([5.8,5,4]);}}

translate([-0.75-1.5+5,-1,0]){
translate([-50+7.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+9.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+8.5,-20-8,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20-8,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+7.5,-20-17,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20-17,-10])cylinder(r=4.5/2,h=20);
translate([-50+9.5,-20-17,-10])cylinder(r=4.5/2,h=20);
}
translate([-74,-40,-50])cylinder(r=12,h=100);
translate([-45+5,23,3])roundedBox([25, 40, 20], 5, true);
translate([-57+5,47,3])rotate([0,0,40])roundedBox([25, 80-10, 20], 10, true);
translate([-45+5,49,3])roundedBox([35, 35, 10], 5, true);
translate([-103,0,3])roundedBox([25, 50, 10], 8, true);
//translate([-93.5,150,-12-1-0.75])rotate([90,0,0])cylinder(r=10.4/2,h=500);
translate([-93.5,150,-12-1-0.75])rotate([90,0,0])cylinder(r=10/2,h=500); //for nylon bushing
translate([-100,45,0])cylinder(r=3.5/2,h=200);
translate([-91,46,0])cylinder(r=4.5/2,h=200);
translate([-83,45,0])cylinder(r=3.5/2,h=200);
translate([-121,-42,0])cube([20,20,20]);
}
}









module new_gliderbracket_modular_lmu(){

/*
difference(){
translate([-106.3-12,9.1-9.1,-21.7-36])rotate([0,0,0])energychainconnect();
translate([-93.5,150,-12-1-0.75])rotate([90,0,0])cylinder(r=15.4/2,h=500);
}
*/
difference(){
union(){
//color("green")translate([-50+5+3.5-0.75-1.5+5,-20,4])roundedBox([18, 46, 8], 5, true);
//color("blue")translate([-108+3.5,-40,4])cube([65,90,4]);
color("red"){
//translate([-108+3.4,24,-16-4-2])cube([21-2,16+4,24]);
translate([-108+5,-40,-16-4-2-0.85])cube([21-3+2,16+4,28-2.0]);
}
//translate([-90.5+10.5,-28,1.5])cube([5,70,2.5]);
}

//bigger rod holder
translate([-108+3.4+10,24+12,-10]){
translate([-3,0,0])cylinder(r=3.5/2,h=20);
translate([-2,0,0])cylinder(r=3.5/2,h=20);
translate([-1,0,0])cylinder(r=3.5/2,h=20);
cylinder(r=3.5/2,h=20);
translate([3,0,0])cylinder(r=3.5/2,h=20);
translate([2,0,0])cylinder(r=3.5/2,h=20);
translate([1,0,0])cylinder(r=3.5/2,h=20);
translate([0,0,7]){rotate([0,0,90])cylinder(r=6.8/2,h=4,$fn=6);
//translate([20.8/2,-55,0])cube([10.6,50,24]);
//translate([69.8/2,-59,0])rotate([0,0,40])cube([10.6,20,24]);
translate([-5.8/2,0,0])cube([5.6,5,4]);
}
}
//smaller rod holder
translate([-93.5,-35,-10]){
/*
translate([-3,0,0])cylinder(r=3.5/2,h=20);
translate([-2,0,0])cylinder(r=3.5/2,h=20);
translate([-1,0,0])cylinder(r=3.5/2,h=20);
translate([3,0,0])cylinder(r=3.5/2,h=20);
translate([2,0,0])cylinder(r=3.5/2,h=20);
translate([1,0,0])cylinder(r=3.5/2,h=20);
*/
cylinder(r=3.5/2,h=20);
translate([0,0,7]){rotate([0,0,90])cylinder(r=6.8/2,h=4,$fn=6);translate([-5.8/2,-5,0])cube([5.8,5,4]);}}


translate([-0.75-1.5+5,-1,0]){
translate([-50+7.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+9.5,-20+18,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20+9,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+8.5,-20-8,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20-8,-1])cylinder(r=8/2,h=5,$fn=6);
translate([-50+7.5,-20-17,-10])cylinder(r=4.5/2,h=20);
translate([-50+8.5,-20-17,-10])cylinder(r=4.5/2,h=20);
translate([-50+9.5,-20-17,-10])cylinder(r=4.5/2,h=20);
}
translate([-74,-40,-50])cylinder(r=12,h=100);
translate([-45+5,23,3])roundedBox([25, 40, 10], 5, true);
translate([-57+5,47,3])rotate([0,0,40])roundedBox([25, 80-10, 10], 10, true);
translate([-45+5,49,3])roundedBox([35, 35, 10], 5, true);
translate([-103,0,3])roundedBox([25, 50, 10], 8, true);
translate([-93.5,150,-12-1-0.75])rotate([90,0,0])cylinder(r=15.4/2,h=500);
//translate([-100,45,0])cylinder(r=3.5/2,h=200);
translate([-91,46,0])cylinder(r=4.5/2,h=200);
//translate([-83,45,0])cylinder(r=3.5/2,h=200);
translate([-121,-42,0])cube([20,20,20]);
}
}































































module ledholder(){
 l = 20;
 w = 20;
 h = 10;
 leddia=12;

difference(){
 //cube([l,w,h]);
 union(){
 translate([l/2,w/2,2])cylinder(r=9,h+3);
 translate([-4,-15-20,2])cube([4,30+20,13]);
 translate([-0,5,2])cube([4,10,13]);
 }
 translate([l/2,w/2,5-3])cylinder(r=leddia/2,h);
 translate([l/2,w/2,0])cylinder(r=4/2,35);
 translate([2,0,0])cube([16,5,20]);
 translate([-8,-9.5-20,8.5])rotate([90,0,90])cylinder(r=5.5/2,h=10);
 translate([-8,-9.5-6,8.5])rotate([90,0,90])cylinder(r=5.5/2,h=10);
 translate([-8,-1.5,8.5])rotate([90,0,90])cylinder(r=5.5/2,h=10);
 translate([-4,-10-20,5.7])cube([4,9,5.5]);
 translate([-4,-10,5.7])cube([4,9,5.5]);
 //translate([-4,-10-20,5.7])cube([4,9+20,5.5]);
}
}


module energychainconnect(){
translate([17.5,24,22])cube([13,15,16]);
difference(){
translate([17.5-1.55,24+11,29.5])rotate([90,0,90])cylinder(r=5.7/2,h=16);
translate([17.5-7.5,24+7,27.5])rotate([0,50,0])cube([5,8,5]);
translate([17.5+13,24+7,27.5])rotate([0,50,0])cube([5,8,5]);
translate([17.5+13/2,24+7+25,29])rotate([90,0,0])cylinder(r=8/2,h=40);
}
}




module seq_maukyarm(){
 m8barclampforseq_maukyarm2();
 translate([-20,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-20-340,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(360);
 translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-354-26,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-150+130-270+100,40,-24.5+5-10])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
 translate([-150+130-270+75,40,-33-6])rotate([0,0,0])import_stl("mauk_GliderBearingCloser.stl");
 translate([-150+130-270+75-40,40-12.5,-33-6])rotate([0,0,0])mauk_longergliderbearingcloser();
}






module seq_maukyarm2(){
 m8barclampforseq_maukyarm();
 translate([-20,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-20-340,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(360);
 translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-354-26,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-150+130-270+100,40,-24.5+5-10])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
 //translate([-150+130-270+75,40,-33-6])rotate([0,0,0])import_stl("mauk_GliderBearingCloser.stl");
 translate([-150+130-270+75-40,40-12.5,-33-6])rotate([0,0,0])mauk_longergliderbearingcloser2();
}








module htsr_mauk_CDCholder(){

difference(){
translate([57.7,7.3,0])rotate([0,0,0])cylinder(r=8.2/2,h=27.5);
translate([57.7,7.3,2])rotate([0,0,0])cylinder(r=7.2/2,h=30);
}

difference(){
cube([44,18,20-4]);
translate([16,9,0])cylinder(r=4.5/2,h=50);
translate([16,9,16-4])cylinder(r=9/2,h=5);
translate([36,9,0])cylinder(r=4.5/2,h=50);
translate([36,9,16-4])cylinder(r=9/2,h=5);
translate([8,9.5,9.5])rotate([90,0,0])cylinder(r=8.2/2,h=10);

}

difference(){
translate([48,37,27])rotate([90,0,0])cylinder(r=5.5/2,h=17);
translate([43,35,23])rotate([-30,0,0])cube([10,10,5]);
translate([43,13,19])rotate([30,0,0])cube([10,10,5]);
translate([30,28.5,25])rotate([90,0,90])cylinder(r=8/2,h=30);
}

difference(){
union(){
translate([44,0,0])cube([24,35,21+6.5]);
translate([44,22,21])cube([12,13,12]);
}

translate([57.7,7.3,15])rotate([0,0,0])cylinder(r=8.2/2,h=18);
translate([57.7,7.3,1])rotate([0,0,0])cylinder(r=7.2/2,h=100);

translate([30,28.5,25])rotate([90,0,90])cylinder(r=8/2,h=30);
translate([42,22,31])cube([3,13,3]);
translate([35,18,16.5])cube([21,4,12]);
translate([56,18,14.5])cube([9.25,15,15]);
translate([56,18,21])cube([9.25+10,15+3,15]);

translate([56-15,26,-0])rotate([-45,0,0])cube([9.25+20,15+3,15]);
translate([49.9,-1,2.5+6.5])cube([15.5,19,14]);
translate([49.9+3.5,-1,2.5+6.5-2.5])rotate([40,0,0])cube([15.5-6.5,5,5]);
translate([55.9,17,4.5])rotate([50,0,0])cube([9.5,13,7]);
}
}


module lasercutplate_one(){

translate([45,-380,-260])difference(){
translate([-20,0,0]){

difference(){

translate([25,-380,-260])cube([75,385+15,5]);
translate([25,-380,-261])cube([20.25,25,15]);

translate([25,-380+379.5,-264])cube([21,385+15-50,15]);
//translate([90,-370-1,-270])cylinder(r=5.0/2,h=20);
translate([90,-370,-270])cylinder(r=5.0/2,h=20);
translate([25,-380+410,-262])cube([75,385+15-50,15]);

translate([7,0,0]){
translate([25+50,-355,-261])cube([5.4,40.4,15]);
translate([55.5+22.5,-370+62,-270])cylinder(r=4.8/2,h=20);
translate([55.5+22.5,-370+62-55,-270])cylinder(r=4.8/2,h=20);
}

translate([7,80,0]){
translate([25+50,-355,-261])cube([5.4,40.4,15]);
translate([55.5+22.5,-370+62,-270])cylinder(r=4.8/2,h=20);
translate([55.5+22.5,-370+62-55,-270])cylinder(r=4.8/2,h=20);
}

translate([7,160,0]){
translate([25+50,-355,-261])cube([5.4,40.4,15]);
translate([55.5+22.5,-370+62,-270])cylinder(r=4.8/2,h=20);
translate([55.5+22.5,-370+62-55,-270])cylinder(r=4.8/2,h=20);
}

translate([7,160+80,0]){
translate([25+50,-355,-261])cube([5.4,40.4,15]);
translate([55.5+22.5,-370+62,-270])cylinder(r=4.8/2,h=20);
translate([55.5+22.5,-370+62-55,-270])cylinder(r=4.8/2,h=20);
}

translate([7,160+135,0]){
translate([25+50,-355,-261])cube([5.4,40.4,15]);
translate([55.5+22.5,-370+62,-270])cylinder(r=4.8/2,h=20);
//translate([55.5+22.5,-370+62-55,-270])cylinder(r=4.8/2,h=20);
}


translate([55.5+9.5,-370+62-62,-275])cylinder(r=5.4/2,h=50);
translate([55.5+9.5,-370+380,-275])cylinder(r=5.4/2,h=50);



//translate([55.5+22.5,-370+62-385+15-50,-270])cylinder(r=4.8/2,h=20);



translate([100-65,-370,-270])cylinder(r=5.0/2,h=20);
translate([90,-370+380,-270])cylinder(r=5.0/2,h=20);
translate([90,-370+380,-270])cylinder(r=5.0/2,h=20);
translate([100-65,-370+380,-270])cylinder(r=5.0/2,h=20);
translate([55.5,-370+52,-270])cylinder(r=5.0/2,h=20);
translate([55.5-20,-370+45,-270])cylinder(r=5.0/2,h=20);
translate([55.5,-370+76,-270])cylinder(r=5.0/2,h=20);
translate([55.5-20,-370+74.5,-270])cylinder(r=5.0/2,h=50);
translate([55.5-20,-370+105.5+43,-270])cylinder(r=5.0/2,h=50);
translate([55.5-20,-370+105.5+53+65,-270])cylinder(r=5.0/2,h=50);
translate([55.5-20,-370+105.5+53+80,-270])cylinder(r=5.0/2,h=50);
translate([69.,-370+105.5+53+72+101.5,-270])cylinder(r=5.0/2,h=50);

translate([55.5-31,-370+84.1,-270])cube([30,50.7,29]);
translate([55.5-31,-370+84.1+80.6,-270])cube([30,50.7,29]);
translate([55.5-31,-370+84.1+161.0,-270])cube([30,50.7,29]);



}
}

//parts to cut to make smaller
//translate([5,-439,-260])cube([85,300,15]);
//translate([5,-139,-260])cube([85,400,15]);

}
}



module maukzlimitclamp(){
translate([30,0,0])import("mauk_MagnetHolder.stl");
/*
translate([20,-4,20])m4locknut();
difference(){
cube([20,20,20]);
translate([10,10,-10])cylinder(r=8.5/2,h=40);
}
*/

}

module energychainclamp(){

difference(){
cube([20,20,20]);
translate([-2,2.5,3.4])cube([20,15,20]);
translate([8,22.5,11])rotate([90,0,0])cylinder(r=6./2,h=30);
translate([8+3,10,-11])rotate([0,0,0])cylinder(r=6./2,h=100);
 }
}


module powerswitch(){

difference(){
cube([29+8,15+6,35]);
translate([37/2,21/2,0])cylinder(r=12/2,h=50);
translate([3,2,0])cube([33,17,30]);
}
difference(){
translate([-0,20,10])cube([4,20,18]);
translate([-5,30,18.5])rotate([90,0,90])cylinder(r=5.5/2,h=200);
}

translate([0,-40,0])difference(){
translate([-0,20,10])cube([4,20,18]);
translate([-5,30,18.5])rotate([90,0,90])cylinder(r=5.5/2,h=200);
}

translate([0,10,4.5])
difference(){
translate([0.5,0,0])rotate([90,0,90])cylinder(r=9/2,h=36);
translate([0.5,0,0])rotate([90,0,90])cylinder(r=7/2,h=36);
}

translate([0,10,21.5])
difference(){
translate([0.5,0,0])rotate([90,0,90])cylinder(r=9/2,h=36);
translate([0.5,0,0])rotate([90,0,90])cylinder(r=7/2,h=36);
}

//translate([])cube([18,18,4]);

}



module powerplug(){

difference(){
union(){
translate([4,0,0])difference(){
translate([0,-75,-10])cube([30,50,25]);
translate([1,-75+75/8+1,-10])cube([30,29,25]);
translate([6.5,-75+75/8+1+11,-10+6])cube([30-6.5,29,25]);
translate([6.5,-75+75/8+1-15,-10+6])cube([30-6.5,29,25]);
//translate([0,-75+75/8+2,-10])cube([30,29,15]);
translate([15,-70,-30])cylinder(r=3.5/2,h=100);
translate([15,-70+40,-30])cylinder(r=3.5/2,h=100);
}
translate([-0,-75,-10])cube([5,50,25]);
}

translate([0,-30,3])rotate([90,0,90])cylinder(r=5.5/2,h=100);
translate([6.5,-30,3])rotate([90,0,90])cylinder(r=9.5/2,h=4);

translate([0,-30-40,3])rotate([90,0,90])cylinder(r=5.5/2,h=100);
translate([6.5,-30-40,3])rotate([90,0,90])cylinder(r=9.5/2,h=4);

}
}


module psxpowersupplymount(){
x = 15;

difference(){
union(){
cube([70,5,6+6]);
translate([0,-15,0])cube([70,15,5]);
}
translate([x,0,6])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([x,20,6])rotate([90,0,0])cylinder(r=3.5/2,h=100);
translate([x+25,20,6])rotate([90,0,0])cylinder(r=3.5/2,h=100);
translate([x+25,0,6])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([x+50,20,6])rotate([90,0,0])cylinder(r=3.5/2,h=100);
translate([x+50,0,6])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([61,-9,-5])cylinder(r=4.5/2,h=100);
translate([31,-9,-5])cylinder(r=4.5/2,h=100);
translate([5,-9,-5])cylinder(r=4.5/2,h=100);
}
}



module gesim_tipmount_longer(){

m3diam = 3.4;
m25diam= 3;

shmr = 15;
cubehi = 25 + shmr+15;
cubeln = 30;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;

union(){
 difference(){
 cube([cubeln,cubehi,3]);
 //screwhole
 translate([cubeln-m25diam*2-1,m25diam*1.5-1.5,0])
 cylinder(r=m3diam/2,6);

  //screwhole
  translate([cubeln-m25diam*2-20,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);

 //screwhole
  translate([cubeln-m25diam*2+1,m25diam*1.5-1.5+30-3,-10])
  cylinder(r=m3diam/2,30);
 }

//begin move down
translate([0,15,0]){
 //bottom plate
 translate([0+9.5,rldist,3])
 cube([cubeln-9.5,3,6]);

 //mid vertical plate (the reference plate)
 translate([chpos,cubehi-11-shmr,3])
 cube([3,6.5,6]);

 //mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5,3])
 difference(){
  cube([6,19.5,6]);
  //translate([-15,14,3])
  //rotate([0,90,0])
  //cylinder(r=m25diam/2,h=40);
  //translate([2.0,11,6.5])
  //rotate([0,90,0])
  //cube([7,6,2.0]);
 }

  translate([0+8.0+2.5,rldist-12.5-3-1+14,2])
  cube([2.5,2.5,7]);


  //top plate
 difference(){
  translate([0+8.0,rldist-12.5-3-1,2])
  cube([cubeln-8,6,6]);

  translate([chpos-2+0.5,cubehi-9-3,5.5])
  rotate([90,0,0])
  cylinder(r=1.7,h=40);

  //translate([2.5+0.5,10.5-1,4-1])
  translate([chpos-4,10.5-1+15,4-1])
  rotate([90,0,0])
  cube([5,6,2.1]);  //need to make this screw tighter was 2.1
 }
} //end movedown
}
}


module nema23motormount(){
 mmx = 56.25+2;
 mmy = 56.25+2;
 mmz = 8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;

 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 39/2;
 //motrad = 4;

 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  cylinder(r=motrad, h=9);
  translate([0,0,-380])
  cylinder(r=4.3, h=400);
  }

  //m3 motor screws

  translate([4.5+1,mmposy+4.5+1,mmposz])
  cylinder(r=5.7/2, h=9);

  translate([4.5+1,mmposy+4.5+1+47,mmposz])
  cylinder(r=5.7/2, h=9);

  translate([4.5+1+47,mmposy+4.5+1,mmposz]){
  cylinder(r=5.7/2, h=9);
  translate([0,-2.7,0])
  cube([8,5.5,90]);
  }

  translate([4.5+1+47,mmposy+4.5+1+47,mmposz]){
  cylinder(r=5.7/2, h=9);
  translate([0,-2.7,0])
  cube([8,5.5,90]);
  }
 }
}


module toppart(){

translate([0,0,95])rotate([90,0,0])tslot20(360);
translate([-380,0,95])rotate([90,0,0])tslot20(360);

translate([5,25,95])rotate([90,0,-90])tslot20(360);
translate([5,25-380,95])rotate([90,0,-90])tslot20(360);

translate([-363.5-11.5,-20,109])mirror([0,0,0])rotate([90,0,90])corner_block();
translate([-15,20,109])rotate([90,0,0])corner_block();
translate([0,-360,0])mirror([0,1,0]){translate([-15,20,109])rotate([90,0,0])corner_block();}
translate([0,-360,0])mirror([0,1,0]){translate([-363.5-11.5,-20,109])mirror([0,0,0])rotate([90,0,90])corner_block();}
//translate([-15,69,219])rotate([90,0,0])corner_block();

}


module sepcase(){

//figuring out a gasket layer
//frost king 3/8" diameter 20' long ... from homedepot
//using poly foam caulk saver moisture repellent
profile = 4;
//not sure about height too
vert = 440;

translate([-70,-5,-285])rotate([90,0,90])caseclamp();
translate([-350,-5,-285])rotate([90,0,90])caseclamp();
translate([-430,-5,-285])rotate([90,0,0])caseclamp();
translate([-430,-265,-285])rotate([90,0,0])caseclamp();
translate([-70,-5-430,-285])rotate([90,0,90])caseclamp();
translate([-70,-5-430,-285])rotate([90,0,90])caseclamp();
translate([-70-270,-5-430,-285])rotate([90,0,90])caseclamp();
translate([5,25+50,-285+50])rotate([90,90,-90])tslot20_2060(410);
translate([-15,9+50,-280])rotate([0,0,0])corner_block();

//vertical
translate([0,-5+50,-260])tslot20(vert);
translate([-15,70,188.75])rotate([90,0,0])corner_block();
translate([-50,0,0]){
translate([-363.8,-20+50,-280])mirror([0,0,0])rotate([0,0,90])corner_block();

//vertical
translate([-380,-5+50,-260])tslot20(vert);
}
translate([-363.5-61.5,-20+50,188.75])mirror([0,0,0])rotate([90,0,90])corner_block();



translate([-380-50,50,-285+50])rotate([90,90,0])tslot20_2060(460);
//vertical
translate([-380-50,-435,-260])tslot20(vert);
translate([-61.5,-410,468.75])mirror([0,1,0]){translate([-363.5,-20,-280])mirror([0,0,0])rotate([90,0,90])corner_block();}

translate([-50.2,-410,0])mirror([0,1,0])translate([-363.5,-20,-280])mirror([0,0,0])rotate([0,0,90])corner_block();

translate([5,-405,-235])rotate([90,90,-90])tslot20_2060(410);


translate([0,-360-50,0])mirror([0,1,0])translate([-15,9,-280])rotate([0,0,0])corner_block();

//vertical
translate([0,-435,-260])tslot20(vert);
translate([40,-360-39,468.75])mirror([0,0,0])translate([-15,9,-280])rotate([90,0,-90])corner_block();

//lid frame -- messed up by putting it in corner block loop
translate([-61.5,-410,498])mirror([0,1,0]){
translate([66.5,-455.,-323])rotate([90,0,-90])tslot20(410);
translate([-368.5,0,-323])rotate([90,0,0])tslot20(460);
translate([61.5,-0.,-323])rotate([90,0,0])tslot20(460);
translate([66.5,25,-323])rotate([90,0,-90])tslot20(410);
}

topdoorpart();
translate([-4+profile,-230,128-profile])
rotate([90,0,0])frontdoorpart();

}








module topdoorpart(){
profile = 4;
//door part
translate([-61.5,-410,498])mirror([0,1,0]){
translate([-348.5+profile,-profile-20,-323])rotate([90,0,0])tslot20(420-(profile*2));
translate([50.5-profile-4,-435.25+profile,-323])rotate([90,0,-90])tslot20(370-(profile*2));
translate([38.25+profile,5-profile,-323])rotate([90,0,-90])tslot20(370-(profile*2));
translate([41.5-profile,-profile-20,-323])rotate([90,0,0])tslot20(420-(profile*2));
}


translate([-405+profile,10-profile,188.5])mirror([0,0,0])rotate([90,0,90])corner_block();
translate([-36.5+profile,-384+profile,468])mirror([0,1,0]){translate([-364.5-profile,-20+profile+2,-280])mirror([0,0,0])rotate([90,0,90])corner_block();}
translate([20-profile,-379+profile,468])mirror([0,0,0])translate([-15,9,-280])rotate([90,0,-90])corner_block();
translate([-35-profile,50-profile,188.5])rotate([90,0,0])corner_block();

}


module adahinge_frontdoorpart(){

profile = 4;

//door part
translate([-61.5,-410,498])mirror([0,1,0]){
/*
translate([-348.5+profile-4,-profile-20-46.25-4+8+20,-323])rotate([90,0,0])tslot20(420-(profile*2)-46.25+14+40);
translate([4+50.5-profile-4,-435.25+profile-10,-323])rotate([90,0,-90])tslot20(370-(profile*2)+4+4);
translate([38.25+profile+4+20,-41-profile+4,-323])rotate([90,0,-90])tslot20(370-(profile*2)+8+20);
translate([41.5-profile+4,4-profile-20-46.25,-323])rotate([90,0,0])tslot20(420-(profile*2)-46.25+10+4+20);

translate([-348.5,-46.25,-323])rotate([90,0,0])tslot20(420);
translate([41.5,-66.25,-323])rotate([90,0,0])tslot20(400);
translate([46.5,-441.25,-323])rotate([90,0,-90])tslot20(370);
translate([66.25,-41,-323])rotate([90,0,-90])tslot20(390);
*/

//translate([-348.5,-46.25,-323])rotate([90,0,0])tslot20(420);
translate([41.5,-46.25,-323])rotate([90,0,0])tslot20(420);
translate([-348.5+500,-56,-323+15])rotate([90,0,-90])cylinder(r=5.6/2,620);
translate([-348.5+500,-56-400-0.25,-323+15])rotate([90,0,-90])cylinder(r=5.6/2,620);
translate([46.5,-441.25,-323])rotate([90,0,-90])tslot20(370);
//translate([46.5+20,-441.25,-323])rotate([90,0,-90])tslot20(410);
translate([46.25,-41,-323])rotate([90,0,-90])tslot20(370);




//adafruithinge
/*
translate([27,-100-386,-298])rotate([0,0,90])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}

translate([27,-46-20,-298])rotate([0,0,90])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}

translate([47,-100,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
translate([47,-100-200,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
translate([47-410.5,-100,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
*/

}
//translate([-405+profile-4,10+10-profile,188.5])mirror([0,0,0])rotate([90,0,90])corner_block();
//translate([-36.5+profile-4,-384+profile+46.25-4,468])mirror([0,1,0]){translate([-364.5-profile,-20+profile+2,-280])mirror([0,0,0])rotate([90,0,90])corner_block();}
//translate([4+20-profile,-4-379+profile+46.25,468])mirror([0,0,0])translate([-15,9,-280])rotate([90,0,-90])corner_block();
//translate([4-35-profile,50-profile+10,188.5])rotate([90,0,0])corner_block();
}




module frontdoorpart(){

profile = 4;

//door part
translate([-61.5,-410,498])mirror([0,1,0]){
translate([-348.5+profile-4,-profile-20-46.25-4+8,-323])rotate([90,0,0])tslot20(420-(profile*2)-46.25+14);
translate([4+50.5-profile-4,-435.25+profile-10,-323])rotate([90,0,-90])tslot20(370-(profile*2)+4+4);
translate([38.25+profile+4,-41-profile+4,-323])rotate([90,0,-90])tslot20(370-(profile*2)+8);
translate([41.5-profile+4,4-profile-20-46.25,-323])rotate([90,0,0])tslot20(420-(profile*2)-46.25+10+4);

//adafruithinge
/*
translate([27,-100-386,-298])rotate([0,0,90])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}

translate([27,-46-20,-298])rotate([0,0,90])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}

translate([47,-100,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
translate([47,-100-200,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
translate([47-410.5,-100,-298])difference(){cube([40,30,5]);translate([10,10,-2])cylinder(r=5.5/2,h=20);translate([10+20,10,-2])cylinder(r=5.5/2,h=20);}
*/

}
translate([-405+profile-4,10+10-profile,188.5])mirror([0,0,0])rotate([90,0,90])corner_block();
translate([-36.5+profile-4,-384+profile+46.25-4,468])mirror([0,1,0]){translate([-364.5-profile,-20+profile+2,-280])mirror([0,0,0])rotate([90,0,90])corner_block();}
translate([4+20-profile,-4-379+profile+46.25,468])mirror([0,0,0])translate([-15,9,-280])rotate([90,0,-90])corner_block();
translate([4-35-profile,50-profile+10,188.5])rotate([90,0,0])corner_block();
}



//IMPORTANT
module seq_assy3(){

/*
arlen = 360;
xarlen = 360+50;
yarlen = 360+20;
zarlen = 360+0;
*/


//this is for the second build
arlen = 360;
xarlen = 400+240;
yarlen = 400+120;
zarlen = 400;


/* Here is info for the improvement of the z drive
Igus - PTGSG-12x25-R-290-ES
*/


//note smooth rod length is: 365
//Here I made made the mistake not paying attention since the arm was 20mm too long
translate([15,-yarlen/2,zarlen-65])seq_maukyarm3(xarlen-20,yarlen,zarlen);

//z supports (vertical)
translate([0,-5,5])tslot20(zarlen); //1
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5,5-20])tslot20(zarlen+40); //2
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0,-5-yarlen-20,5])tslot20(zarlen); //3
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5-yarlen-20,5-20])tslot20(zarlen+40); //4
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw 
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
//end z supports

//right side
translate([0,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //5

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

//should fit this
//translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-80,0]){
//translate([15,-92.5,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
//translate([15,-92.5-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}



translate([0,0,zarlen-105])rotate([90,0,0])tslot40_2060(yarlen);  //6

translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([0,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen);  //7
//end right side

//left side 
translate([-20-xarlen,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //8
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw

translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}





translate([-20-xarlen,0,zarlen-105])rotate([90,0,0])tslot20_2060(yarlen); //9
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([-20-xarlen,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //10

//don't know where these go
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

//end left side 

//lower x longer supports
translate([5+220,25,-20])rotate([90,0,-90])tslot20(xarlen+220); //11
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw




translate([5+220,25-yarlen-20,-20])rotate([90,0,-90])tslot20(xarlen+220); //12
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end lower x longer supports


//top part
translate([5+220,25,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //13
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw



translate([5+220,25-yarlen-20,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //14

translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end top part



//case part
translate([360-140,-yarlen-25,-15])tslot20(zarlen+40); //15
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-140,-5,-15])tslot20(zarlen+40); //16
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-160,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //17
translate([360-160,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //18
//end case part



//z drive 

//first set
translate([15,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-5,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([35,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([15,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([15,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2-77,zarlen-5])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();


//second set
translate([-xarlen-5,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-xarlen-25+40,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([-xarlen-5,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([-xarlen-5,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+10,-yarlen/2+77,zarlen-5])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,zarlen-5])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
//end z drive 



//bed support
translate([11.5,-yarlen/2+14,zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5-2,-yarlen/2-14,zarlen])rotate([0,180,90])zbedslot_516();
translate([-20.5,-yarlen/2+50,zarlen-230])rotate([90,0,0])tslot20(100); //19
translate([-xarlen+2.5-2.5,-yarlen/2+(50),zarlen-230])rotate([90,0,0])tslot20(100); //20


translate([5,-yarlen/2-25-20,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //21
translate([-xarlen+15,-yarlen/2+(50)-50,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2-0,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


translate([5,-yarlen/2+75,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //22
translate([-xarlen+15,-yarlen/2+100,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2+100,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


translate([-xarlen+0,-yarlen+50,zarlen-200])cube([xarlen,yarlen-100,3]);
//end bed support



//z motormount
translate([-xarlen/2,0,-20])rotate([90,0,0])tslot20(yarlen);
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
translate([-xarlen/2+5,-yarlen/2+40,-20])rotate([90,0,-90])tslot20(xarlen/2-20);
translate([-xarlen/2+30,-yarlen/2+100,-77])rotate([0,0,180])motormountsimplezdrive();
translate([-xarlen/2-75+30,-yarlen/2+14,5])rotate([0,0,90])beltadjuster_lower();
//translate([-xarlen/2-16,-yarlen/2+85,5])rotate([0,0,90])nema17();

//this is a better design to remove the wobble
//translate([-xarlen-5,-yarlen/2+0,56.5])rotate([0,0,180])avoidwobblezdrive();
//end z motormount




//motor mount
//x motormount (crazy belt setup) maukstyle
translate([30,-5,zarlen-200])rotate([0,0,180])motormountsimplematchingbearing();
translate([-xarlen-20,-5,zarlen-200])motormountsimple();
//translate([-xarlen+26,15,zarlen-118])nema17();


//y motormount (2arms) unit
translate([-xarlen+20,25,197-30])rotate([0,180,90])verticalymotormount();
//translate([-xarlen+70,5,100-30])rotate([90,0,90])nema23();

translate([-xarlen+5,-0,50+30-30])rotate([-90,0,180])beltadjuster();
translate([-xarlen+5,-0,50+110-30])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();
translate([-xarlen-30,-yarlen-38,zarlen-92])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen+80);
translate([25,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-10,zarlen-100])rotate([90,0,90])simple_bearingholder();
translate([5,30,zarlen-100])rotate([90,0,-90])simple_bearingholder();
translate([-xarlen+5,0,zarlen-72])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen);

}























module seq_assy4(){

/*
arlen = 360;
xarlen = 360+50;
yarlen = 360+20;
zarlen = 360+0;
*/

arlen = 360;
xarlen = 400;//+240;
yarlen = 400;//+120;
zarlen = 400;

//note smooth rod length is: 365
translate([15,-yarlen/2,zarlen-65])seq_maukyarm3(xarlen-20,yarlen,zarlen);

//z supports (vertical)
translate([0,-5,5])tslot20(zarlen); //1
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5,5-20])tslot20(zarlen+40); //2
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0,-5-yarlen-20,5])tslot20(zarlen); //3
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5-yarlen-20,5-20])tslot20(zarlen+40); //4
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw 
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
//end z supports

//right side
translate([0,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //5

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

//should fit this
//translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-80,0]){
//translate([15,-92.5,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
//translate([15,-92.5-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}








translate([0,0,zarlen-105])rotate([90,0,0])tslot40_2060(yarlen);  //6

translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([0,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen);  //7
//end right side

//left side 
translate([-20-xarlen,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //8
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw

translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}





translate([-20-xarlen,0,zarlen-105])rotate([90,0,0])tslot20_2060(yarlen); //9
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([-20-xarlen,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //10

//don't know where these go
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

//end left side 

//lower x longer supports
translate([5+220,25,-20])rotate([90,0,-90])tslot20(xarlen+220); //11
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw




translate([5+220,25-yarlen-20,-20])rotate([90,0,-90])tslot20(xarlen+220); //12
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end lower x longer supports


//top part
translate([5+220,25,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //13
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw



translate([5+220,25-yarlen-20,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //14

translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end top part



//case part
translate([360-140,-yarlen-25,-15])tslot20(zarlen+40); //15
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-140,-5,-15])tslot20(zarlen+40); //16
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-160,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //17
translate([360-160,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //18
//end case part



//z drive 

//first set
translate([15,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-5,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([35,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([15,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([15,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2-77,zarlen-5])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();


//second set
translate([-xarlen-5,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-xarlen-25+40,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([-xarlen-5,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([-xarlen-5,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+10,-yarlen/2+77,zarlen-5])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,zarlen-5])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
//end z drive 



//z bed support
translate([11.5,-yarlen/2+14,zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5-2,-yarlen/2-14,zarlen])rotate([0,180,90])zbedslot_516();
translate([-20.5,-yarlen/2+50,zarlen-230])rotate([90,0,0])tslot20(100); //19
translate([-xarlen+2.5-2.5,-yarlen/2+(50),zarlen-230])rotate([90,0,0])tslot20(100); //20

//translate([5,-yarlen/2-25-20,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //21
translate([5,-yarlen/2-25-20,zarlen-200])rotate([90,0,-90])cylinder(r=8.7/2,h=(xarlen)); //21
translate([5,-yarlen/2-25-20,zarlen-200])rotate([90,0,0])cylinder(r=8.7/2,h=(100)); //21
translate([5,-yarlen/2-25-20,zarlen-185])rotate([180,0,-0])bar_clamp();

translate([-xarlen+15,-yarlen/2+(50)-50,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2-0,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


//translate([5,-yarlen/2+75,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //22
translate([-xarlen+15,-yarlen/2+100,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2+100,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


//translate([-xarlen+0,-yarlen+50,zarlen-200])cube([xarlen,yarlen-100,3]);
//end bed support



//z motormount
translate([-xarlen/2,0,-20])rotate([90,0,0])tslot20(yarlen);
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
translate([-xarlen/2+5,-yarlen/2+40,-20])rotate([90,0,-90])tslot20(xarlen/2-20);
translate([-xarlen/2+30,-yarlen/2+100,-77])rotate([0,0,180])motormountsimplezdrive();
translate([-xarlen/2-75+30,-yarlen/2+14,5])rotate([0,0,90])beltadjuster_lower();
translate([-xarlen/2-16,-yarlen/2+85,5])rotate([0,0,90])nema17();
//end z motormount




//motor mount
//x motormount (crazy belt setup) maukstyle
translate([30,-5,zarlen-200])rotate([0,0,180])motormountsimplematchingbearing();
translate([-xarlen-20,-5,zarlen-200])motormountsimple();
translate([-xarlen+26,15,zarlen-118])nema17();


//y motormount (2arms) unit
translate([-xarlen+20,25,197-30])rotate([0,180,90])verticalymotormount();
translate([-xarlen+70,5,100-30])rotate([90,0,90])nema23();

translate([-xarlen+5,-0,50+30-30])rotate([-90,0,180])beltadjuster();
translate([-xarlen+5,-0,50+110-30])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();
translate([-xarlen-30,-yarlen-38,zarlen-92])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen+80);
translate([25,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-10,zarlen-100])rotate([90,0,90])simple_bearingholder();
translate([5,30,zarlen-100])rotate([90,0,-90])simple_bearingholder();
translate([-xarlen+5,0,zarlen-72])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen);

}








module seq_assy5(){

/*
arlen = 360;
xarlen = 360+50;
yarlen = 360+20;
zarlen = 360+0;
*/

arlen = 360;
xarlen = 400;//+240;
yarlen = 400;//+120;
zarlen = 400;

//note smooth rod length is: 365
color("blue")translate([15,-yarlen/2,zarlen-65])seq_maukyarm3(xarlen-20,yarlen,zarlen);

//z supports (vertical)
translate([0,-5,5])tslot20(zarlen); //1
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5,5-20])tslot20(zarlen+40); //2
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0,-5-yarlen-20,5])tslot20(zarlen); //3
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5-yarlen-20,5-20])tslot20(zarlen+40); //4
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw 
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
//end z supports

//right side
translate([0,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //5

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

//should fit this
//translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-80,0]){
//translate([15,-92.5,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
//translate([15,-92.5-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}








translate([0,0,zarlen-105])rotate([90,0,0])tslot40_2060(yarlen);  //6

translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([0,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen);  //7
//end right side

//left side 
translate([-20-xarlen,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //8
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw

translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}





translate([-20-xarlen,0,zarlen-105])rotate([90,0,0])tslot20_2060(yarlen); //9
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([-20-xarlen,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //10

//don't know where these go
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

//end left side 

//lower x longer supports
translate([5+220,25,-20])rotate([90,0,-90])tslot20(xarlen+220); //11
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw




translate([5+220,25-yarlen-20,-20])rotate([90,0,-90])tslot20(xarlen+220); //12
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end lower x longer supports


//top part
translate([5+220,25,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //13
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw



translate([5+220,25-yarlen-20,zarlen])rotate([90,0,-90])tslot20(xarlen+220); //14

translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end top part



//case part
translate([360-140,-yarlen-25,-15])tslot20(zarlen+40); //15
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-140,-5,-15])tslot20(zarlen+40); //16
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-160,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //17
translate([360-160,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //18
//end case part



//z drive 

//first set
translate([15,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-5,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([35,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([15,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([15,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2-77,zarlen-5])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();


//second set
translate([-xarlen-5,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-xarlen-25+40,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([-xarlen-5,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([-xarlen-5,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+10,-yarlen/2+77,zarlen-5])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,zarlen-5])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
//end z drive 



//z bed support
translate([11.5,-yarlen/2+14,zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5-2,-yarlen/2-14,zarlen])rotate([0,180,90])zbedslot_516();
translate([-20.5,-yarlen/2+50,zarlen-230])rotate([90,0,0])tslot20(100); //19
translate([-xarlen+2.5-2.5,-yarlen/2+(50),zarlen-230])rotate([90,0,0])tslot20(100); //20

//translate([5,-yarlen/2-25-20,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //21
translate([5,-yarlen/2-25-20,zarlen-200])rotate([90,0,-90])cylinder(r=8.7/2,h=(xarlen)); //21
translate([5,-yarlen/2-25-20,zarlen-200])rotate([90,0,0])cylinder(r=8.7/2,h=(100)); //21
translate([5,-yarlen/2-25-20,zarlen-185])rotate([180,0,-0])bar_clamp();

translate([-xarlen+15,-yarlen/2+(50)-50,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2-0,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


//translate([5,-yarlen/2+75,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //22
translate([-xarlen+15,-yarlen/2+100,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2+100,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


//translate([-xarlen+0,-yarlen+50,zarlen-200])cube([xarlen,yarlen-100,3]);
//end bed support



//z motormount
translate([-xarlen/2,0,-20])rotate([90,0,0])tslot20(yarlen);
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
translate([-xarlen/2+5,-yarlen/2+40,-20])rotate([90,0,-90])tslot20(xarlen/2-20);
translate([-xarlen/2+30,-yarlen/2+100,-77])rotate([0,0,180])motormountsimplezdrive();
translate([-xarlen/2-75+30,-yarlen/2+14,5])rotate([0,0,90])beltadjuster_lower();
translate([-xarlen/2-16,-yarlen/2+85,5])rotate([0,0,90])nema17();
//end z motormount




//motor mount
//x motormount (crazy belt setup) maukstyle
translate([30,-5,zarlen-200])rotate([0,0,180])motormountsimplematchingbearing();
translate([-xarlen-20,-5,zarlen-200])motormountsimple();
translate([-xarlen+26,15,zarlen-118])nema17();


//y motormount (2arms) unit
translate([0,-420,239+40]){
translate([-xarlen+20,25,197-30])rotate([0,180,90])verticalymotormount();
translate([-xarlen+70,5+5,100-30])rotate([90,0,90])nema23();

translate([-xarlen+5,-0,50+30-30])rotate([-90,0,180])color("green")beltadjuster();
translate([-xarlen+5,-0,50+110-30])rotate([-90,0,180]){beltadjuster_diag();
translate([-xarlen+5+415,4,50+30-147])rotate([-90,180,0])color("green")beltadjuster();
}
}

translate([-xarlen-30,-yarlen-38+23+5,zarlen-92+40])rotate([0,90,0])cylinder(r=4.7/2,h=xarlen+80);


//translate([-xarlen+5,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();
translate([-xarlen-30,-yarlen-38,zarlen-92])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen+80);
translate([25,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-10,zarlen-100])rotate([90,0,90])simple_bearingholder();
translate([5,30,zarlen-100])rotate([90,0,-90])simple_bearingholder();
translate([-xarlen+5,0,zarlen-72])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen);


}





































module bar_clamp(){



rodsize = 8;
fn = 90;

partthick = rodsize * 2;

module rod(length) cylinder(h = length, r = rodsize / 2, center = true, $fn = fn);

module ybar_clamp() difference() {
	union() {
		translate([0, 0, -(partthick / 2 + rodsize) /2]) cube([partthick, partthick, partthick / 2 + rodsize], center = true);
		rotate([0, 90, 0]) cylinder(h = partthick, r = partthick / 2, center = true, $fn = fn);
	}
	translate([0, 0, partthick - rodsize]) cube([rodsize * sin(45), partthick * 2, partthick * 2], center = true);
	rotate([0, 90, 0]) rod(partthick + 1);
	translate([0, 0, -rodsize]) rotate([90, 0, 0]) rod(partthick + 1);
}

translate([0, 0, partthick / 2 + rodsize]) ybar_clamp();





}

















module seq_assy2(){


arlen = 360;
xarlen = 360+50;
yarlen = 360;
zarlen = 360+100;

//note smooth rod length is: 365
translate([15,-250,40])seq_maukyarm3(xarlen,yarlen,zarlen);

//right side
rotate([90,0,0])tslot40_2060(yarlen);
translate([0,0,75-zarlen])rotate([90,0,0])tslot40_2060(yarlen);
translate([0,0,455-zarlen])rotate([90,0,0])tslot40_2060(yarlen);

//left side 
translate([-20-xarlen,0,0])rotate([90,0,0])tslot20(yarlen);
translate([-20-xarlen,0,75-zarlen])rotate([90,0,0])tslot20_2060(yarlen);
translate([-20-xarlen,0,455-zarlen])rotate([90,0,0])tslot20_2060(yarlen);


//z supports
translate([0,-5,100-zarlen])tslot20(zarlen);
translate([-xarlen-20,-5,100-zarlen])tslot20(zarlen);
translate([0,-5-yarlen-20,100-zarlen])tslot20(zarlen);
translate([-xarlen-20,-5-yarlen-20,100-zarlen])tslot20(zarlen);


//lower x longer supports
translate([5+220,25,75-zarlen])rotate([90,0,-90])tslot20(xarlen+240);
translate([5+220,25-yarlen-20,75-zarlen])rotate([90,0,-90])tslot20(xarlen+240);


//top part
translate([5+220,25,455-zarlen])rotate([90,0,-90])tslot20(xarlen+240);
translate([5+220,25-yarlen-20,455-zarlen])rotate([90,0,-90])tslot20(xarlen+240);

/*
translate([xarlen-140,-yarlen-25,80-zarlen])tslot20(zarlen+40);
translate([xarlen-140,-5,80-zarlen])tslot20(zarlen+40);
translate([xarlen-160,0,75-zarlen])rotate([90,0,0])tslot20_2060(yarlen);
translate([xarlen-160,0,zarlen-265])rotate([90,0,0])tslot20_2060(yarlen);
*/

//case part
translate([360-140,-yarlen-25,80-zarlen])tslot20(zarlen+40);
translate([360-140,-5,80-zarlen])tslot20(zarlen+40);
translate([360-160,0,75-zarlen])rotate([90,0,0])tslot20_2060(yarlen);
translate([360-160,0,455-zarlen])rotate([90,0,0])tslot20_2060(yarlen);



//bed support
translate([11.5,-yarlen/2+14,440-zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5,-yarlen/2-14,440-zarlen])rotate([0,180,90])zbedslot_516();
translate([-20.5,-yarlen/2+50,-zarlen+210])rotate([90,0,0])tslot20(100);
translate([-xarlen+2.5,-yarlen/2+(50),-zarlen+210])rotate([90,0,0])tslot20(100);
translate([5,-yarlen/2-25-20,-zarlen+210])rotate([90,0,-90])tslot20(xarlen);
translate([5,-yarlen/2+75,-zarlen+210])rotate([90,0,-90])tslot20(xarlen);





//z drive bearings 
translate([-xarlen-25,-yarlen/2-27.5,-zarlen+100])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-xarlen+15,-yarlen/2-27.5,5])rotate([0,180,0])simple_bearingholder();
translate([-xarlen-5,-yarlen/2,-255+5])cylinder(r=8.7/2,h=250);
translate([-35+70,-yarlen/2-27.5,5])rotate([0,180,0])simple_bearingholder();
translate([-5,-yarlen/2-27.5,-260])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([15,-yarlen/2,-255+5])cylinder(r=8.7/2,h=250);



//zdrive sets
translate([0,-yarlen/2-77,75])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();
translate([15,-yarlen/2-80,-255])cylinder(r=8.7/2,h=250);
translate([-5,-yarlen/2-27.5-80,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-35+70,-yarlen/2-27.5-80,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();

//translate([0,-103,75])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2+77,75])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([15,-yarlen/2+80,-255])cylinder(r=8.7/2,h=250);
translate([-35+70,-yarlen/2+80-27.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();









//translate([-350,-103,75])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
//translate([-350,-yarlen/2+77,75])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
//translate([-365,-yarlen/2+80,-255])cylinder(r=8.7/2,h=250);
//translate([-385,-yarlen/2+80-27.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//translate([-345,-yarlen/2+80-27.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();

/*
translate([-xarlen+30,-yarlen/2+77,75])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-365,-yarlen/2+80,-255])cylinder(r=8.7/2,h=250);
translate([-385,-yarlen/2+80-27.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-345,-yarlen/2+80-27.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
*/

translate([-xarlen+10,-yarlen/2+77,75])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen-5,-yarlen/2+80,-255])cylinder(r=8.7/2,h=250);
translate([-xarlen-25,-yarlen/2+80-27.5,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+15,-yarlen/2+80-27.5,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();


//translate([-350,-257,75])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,75])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
translate([-xarlen-5,-yarlen/2-80,-255])cylinder(r=8.7/2,h=250);
translate([-xarlen-25,-yarlen/2-27.5-80,-260])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+15,-yarlen/2-27.5-80,5])rotate([0,180,0])simple_m8_smoothrodholder_for_z();

//y motormount (2arms) unit
translate([-100,-yarlen-25,-270])rotate([0,0,90])verticalymotormount();
translate([5,-yarlen,-125+14])rotate([-90,0,0])beltadjuster();
translate([5,-yarlen,-188])rotate([-90,0,0])beltadjuster();


//idler
//this design will be changed
translate([-xarlen+5,-10,5])rotate([90,0,90])simple_bearingholder();
translate([-xarlen-15,-yarlen-20,55-45])rotate([90,0,0])beltadjuster();
translate([5,-yarlen-20,55-45])rotate([90,0,0])beltadjuster();
translate([50,-yarlen-37.5,32])rotate([90,0,-90])cylinder(r=8.7/2,h=xarlen+100);
translate([5,30,5])rotate([90,0,-90])simple_bearingholder();


//translate([5,30,5])rotate([90,0,-90])simple_bearingholder();
//pulley and rod=
//translate([5,-yarlen+10,5])rotate([90,0,-90])simple_bearingholder();
//translate([-xarlen+5,-yarlen-30,5])rotate([90,0,90])simple_bearingholder();





//x motormount (crazy belt setup) maukstyle
translate([30,-5,-120])rotate([0,0,180])motormountsimplematchingbearing();
translate([-xarlen-20,-5,-120])motormountsimple();


//translate([380,0,0])yarmbeltclamp();

//z motormount
translate([-xarlen/2+30,-100,-320-21.5])rotate([0,0,180])motormountsimplezdrive();
translate([-xarlen/2-75+30,-190,-320+60])rotate([0,0,90])beltadjuster_lower();
translate([-xarlen/2,0,-285])rotate([90,0,0])tslot20(yarlen);
translate([-xarlen/2+5,-yarlen/2+40,-285])rotate([90,0,-90])tslot20(xarlen/2-20);


//translate([29,-252,77])rotate([180,0,90])import("igus_06_10_018_0_420_1.stl");

}


module sepcase2(){

arlen = 360;
xarlen = 360;
yarlen = 360+150;
zarlen = 360;



//figuring out a gasket layer
//frost king 3/8" diameter 20' long ... from homedepot
//using poly foam caulk saver moisture repellent
profile = 4;
//not sure about height too
vert = zarlen + 80;



/*
translate([-70,-5,-285])rotate([90,0,90])caseclamp();
translate([-350,-5,-285])rotate([90,0,90])caseclamp();
translate([-430,-5,-285])rotate([90,0,0])caseclamp();
translate([-430,-265,-285])rotate([90,0,0])caseclamp();
translate([-70,-5-430,-285])rotate([90,0,90])caseclamp();
translate([-70,-5-430,-285])rotate([90,0,90])caseclamp();
translate([-70-270,-5-430,-285])rotate([90,0,90])caseclamp();
*/

translate([5,25+50,-285+50])rotate([90,90,-90])tslot20_2060(410);
//translate([-15,9+50,-280])rotate([0,0,0])corner_block();

//vertical
translate([0,-5+50,-260-20])tslot20(vert+20);
translate([0,50,-235+360])rotate([0,90,-90])tslot20_2060(30);
translate([0,50,-235])rotate([0,90,-90])tslot20_2060(30);



translate([-15,70,188.75])rotate([90,0,0])corner_block();
translate([-50,0,0]){
//translate([-363.8,-20+50,-280])mirror([0,0,0])rotate([0,0,90])corner_block();

//vertical
translate([-380,-5+50,-260-20])tslot20(vert+20);
}
translate([-363.5-61.5,-20+50,188.75])mirror([0,0,0])rotate([90,0,90])corner_block();



translate([-380-50,50,-285+50])rotate([90,90,0])tslot20_2060(460);
//vertical
translate([-380-50,-435,-260-20])tslot20(vert+20);
translate([-61.5,-410,468.75])mirror([0,1,0]){translate([-363.5,-20,-280])mirror([0,0,0])rotate([90,0,90])corner_block();}

//translate([-50.2,-410,0])mirror([0,1,0])translate([-363.5,-20,-280])mirror([0,0,0])rotate([0,0,90])corner_block();

translate([5,-405,-235])rotate([90,90,-90])tslot20_2060(410);
translate([0,-405+25,-235+360])rotate([0,90,-90])tslot20_2060(30);
translate([0,-405+25,-235])rotate([0,90,-90])tslot20_2060(30);
//translate([0,-360-50,0])mirror([0,1,0])translate([-15,9,-280])rotate([0,0,0])corner_block();

//vertical
translate([0,-435,-260-20])tslot20(vert+20);
translate([40,-360-39,468.75])mirror([0,0,0])translate([-15,9,-280])rotate([90,0,-90])corner_block();

//lid frame -- messed up by putting it in corner block loop
translate([-61.5,-410,498])mirror([0,1,0]){
translate([66.5,-455.,-323])rotate([90,0,-90])tslot20(410);
translate([-368.5,0,-323])rotate([90,0,0])tslot20(460);
translate([61.5,-0.,-323])rotate([90,0,0])tslot20(460);
translate([66.5,25,-323])rotate([90,0,-90])tslot20(410);
}

topdoorpart();
translate([-4+profile,-230,128-profile])
rotate([90,0,0])frontdoorpart();

}


module seq_maukyarm3(xarlen,yarlen,zarlen){
 m8barclampforseq_maukyarm2(xarlen,yarlen);
 translate([-20,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-xarlen,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(xarlen);
 //translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 //translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-xarlen-20,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-xarlen/2,40,-24.5+5-10])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
 //translate([-xarlen/2-25,40,-33-6])rotate([0,0,0])import_stl("mauk_GliderBearingCloser.stl");
 translate([-xarlen/2-65,40-12.5,-33-6])rotate([0,0,0])mauk_longergliderbearingcloser();
}


module seq_maukyarm4(xarlen,yarlen,zarlen){
 //translate([-20,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 //translate([-xarlen,20,-10])rotate([0,-180,0])import_stl("mauk_xbracket.stl");
 translate([-10,55,-15])rotate([90,0,-90])tslot20_2060(xarlen);
 //translate([25,40,0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 //translate([25,20,-0])rotate([90,0,-90])cylinder(r=5.5/2,h=400);
 /*
 translate([0,90,0])rotate([-90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA50-XB70-YA10-YB30-YC60-YD80.stl");
 translate([-xarlen-20,0,-0])rotate([90,-90,0])import_stl("HFS5-2020-90-TPW-Z5-XA20-XB40-YA10-YB30-YC60-YD80.stl");
 translate([-xarlen/2,40,-24.5+5-10])rotate([-90,0,-90])import_stl("HFS5-2020-50-TPW-Z5-XA15-XB35.stl");
 */
 //translate([-xarlen/2-25,40,-33-6])rotate([0,0,0])import_stl("mauk_GliderBearingCloser.stl");
 //translate([-xarlen/2-65,40-12.5,-33-6])rotate([0,0,0])mauk_longergliderbearingcloser();
}

















module nextgen_led_setscrewclamp(){

difference(){
union(){
cube([18,40,5]);
translate([0,20-7.5,0])cube([18,15,13]);
}
translate([9,6,-2])cylinder(r=5.3/2,h=20);
translate([9,40-6,-2])cylinder(r=5.3/2,h=20);

translate([-9,20,7])rotate([0,90,0])cylinder(r=4.3/2,h=200);
}

}


module doorhandle(){

difference(){
union(){
translate([-40,-100,0])cube([80,12,18]);
translate([-40+10,-100+6,0])rotate([0,0,90+30])cube([50,12,18]);
translate([40,-100+0,0])rotate([0,0,90-30])cube([50,12,18]);


}

translate([-57,0,9])rotate([90,0,0])cylinder(r=4.5/2,h=300);
translate([-57,-60-5,9])rotate([90,0,0])cylinder(r=8.5/2,h=20);

translate([113,0,0]){
translate([-57,0,9])rotate([90,0,0])cylinder(r=4.5/2,h=300);
translate([-57,-60-5,9])rotate([90,0,0])cylinder(r=8.5/2,h=20);
}

translate([-80,-60,0])cube([280,12,20]);

}

}



module strobclamp_plate(){
translate([40,-53,0])
difference(){ 
 union(){ 
 translate([-2,0,0])cube([25+10,55+3,5]);
 translate([-7,55+3,0])cube([40,20,5]);
 }
 translate([12.5,5,0]){
 translate([-8,0,0])cylinder(r=5.5/2,h=10); 
 translate([-9,-5.5/2,0])cube([25,5.5,20]);
 translate([15,0,0])cylinder(r=5.5/2,h=10); 
 translate([-8,44,0])cylinder(r=5.5/2,h=10);
 translate([-9,-5.5/2+44,0])cube([25,5.5,20]);
 translate([15,44,0])cylinder(r=5.5/2,h=10);
 translate([14,44+19,0])cylinder(r=5.5/2,h=10);
 translate([-14,44+19,0])cylinder(r=5.5/2,h=10);
 }
}

}




module adafruit_microscope_mount(){
//screw holes for strob assembly is 44mm spaced
//And its 55mm long

translate([-31,26,39])rotate([0,-90,0]){
//camera mount
translate([0-4,-17.5,0])rotate([0,0,10])cube([4,2,1.5]);
translate([0-0.5,-17.5,4])rotate([0,90,0])cube([4,2,1]);

translate([0-4,15.5,0])rotate([0,0,-10])cube([4,2,1.5]);
translate([0-0.5,15.5,4])rotate([0,90,0])cube([4,2,1]);

difference(){
union(){
//translate([-38+15,-17,8])rotate([0,90,0])cube([8,35,38+10]);
cylinder(r=42/2,h=8);
//translate([-44+20,0.4,0])cylinder(r=35/2,h=8);
}
cylinder(r=33/2,h=12);
translate([5,-22,0])cube([30,45,13]);
//translate([-26.5,11,-10])cylinder(r=8.7/2,h=100);
//translate([-26.5,-9,-10])cylinder(r=8.7/2,h=100);

translate([-35.5,1,-60])cylinder(r=6.5/2,h=100);
translate([-28.5,30,-43])rotate([90,0,0])cylinder(r=3.5/2,h=100);

}
}

}


module ybelt_idler(){
ybeltidler();
module ybeltidler(){
difference(){
union(){
translate([5,0,0])beltadjuster_lower_little_higher();
translate([25,0,0])beltadjuster_lower_little_higher();
}
translate([30,7,5])cube([20,30,18]);
translate([30,15,2])cube([20,14,20]);
}
//translate([0,150,-25])rotate([90,0,0])tslot20_2060(200);
}
}


module washbowl_drypad(){

difference(){
translate([-24.5,-40,0])cube([40,80,3]);
translate([-16,-40,0]){
translate([0,14.5,5-6])cube([20,51,50]);
translate([-4,7,-5])cylinder(r=3.7/2,h=200);
translate([-4,73,-5])cylinder(r=3.7/2,h=200);
}
}
translate([-16,-40,0])difference(){
translate([0,-21,5-5])cube([25,21,10]);
translate([6,-12,-5])cylinder(r=4.7/2,h=200);
translate([19,-12,-5])cylinder(r=4.7/2,h=200);

//translate([-13,6,-5])cylinder(r=3.7/2,h=200);

}

}


module washbowl_watervacinput(){

translate([7,2,10])cube([12,6,15]);
translate([0,0,3])difference(){
translate([25,-40,3])cube([12,14,27-3]);

/*
translate([0,0,5]){
translate([30,-33,2])rotate([0,0,90])cylinder(r=7.2/2,h=3.5,$fn=6);
translate([26.75,-41,2])cube([6.5,7,3]);
}
*/
translate([30,-33,-20])cylinder(r=3.2/2,h=45);
}


translate([0,66,3])difference(){
translate([25,-40,3])cube([12,14,27-3]);

/*
translate([0,0,5]){
translate([30,-33,2])rotate([0,0,90])cylinder(r=7.2/2,h=3.5,$fn=6);
translate([26.75,-32,2])cube([6.5,7,3]);
}
*/

translate([30,-33,-20])cylinder(r=3.2/2,h=45);
}
difference(){
translate([0,-40,10])cube([25,80,20]);
difference(){
translate([12,-16,2])sphere(r=22);
translate([17.5,-35,-20])cube([15,40,50]);
translate([-7.5,-35,-20])cube([15,40,50]);
translate([-7.5,-45,-20])cube([45,15,50]);
}

/*
translate([0,40,0])difference(){
translate([0,-40,10])cube([25,80,15]);
*/
translate([0,38,0])difference(){
translate([12,-16,2])sphere(r=22);
translate([17.5,-35,-20])cube([15,40,50]);
translate([-7.5,-35,-20])cube([15,40,50]);
translate([-7.5,-45,-20])cube([45,15,50]);
translate([-7.5,-5,-20])cube([45,15,50]);
}

translate([7,-34,5])cube([11,68,15]);
//r=7.2
translate([4,4,6]){cylinder(r=3/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([25-4,4,6]){cylinder(r=3/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([4,40-4,6]){cylinder(r=3/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([25-4,40-4,6]){cylinder(r=2.8/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([4,-30-4,6]){cylinder(r=3/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([25-4,-30-4,6]){cylinder(r=3/2,h=22);}//translate([0,0,15])rotate([0,0,90])cylinder(r=7.2/2,h=10,$fn=6);}
translate([12.5,-17,0])cylinder(r=10.45/2,h=35);
translate([12.5,21,0])cylinder(r=10.45/2,h=35);
translate([-15.5,20,18])rotate([0,90,0])cylinder(r=10.4/2,h=30);
}
}


module drypad(){
difference(){
union(){
translate([-75.5-5,-40,0])cube([55,81,3]);
translate([-75.5-5+45,-40,0])cube([10,81,5]);
}
translate([-30,33,-10]){
cylinder(r=3.7/2,h=30);translate([0,0,10])
cylinder(r=6.7/2,h=3.2);
}
translate([-30,33-66,-10]){
cylinder(r=3.7/2,h=30);
translate([0,0,10])cylinder(r=6.7/2,h=3.2);
}
for(a=[0:3]){
translate([-44-(a*10),-40+5,-1])cube([5,71,13]);
}
}
}






module washbowl_2tip(){
xd=5.5;
xdd=1.5;
translate([0,-43,0])difference(){
union(){
difference(){translate([0,-21,5])cube([25,21,5]);
translate([6,-12,-5])cylinder(r=4.7/2,h=200);
translate([19,-12,-5])cylinder(r=4.7/2,h=200);
}
cube([25,40,10]);
}
for (y = [0:5]) // two iterations, z = -1, z = 1
{
    translate([0.5, y, 0])
    translate([12,32.5-(xd*y),0])sphere(r=5);
	translate([11.5,32.5-((xd-1)*y),2.5])sphere(r=5);
	translate([12.5,35.5-(xd*y),2])cylinder(r=4.5/2,h=10);
    cube(size = 1, center = false);
}
for (y = [0:17]) // two iterations, z = -1, z = 1
{
    //translate([0.5, y, 0])
    //translate([12,32.5-(xd*y),0])sphere(r=5);
	//translate([12,32.5-((xd-1)*y),4])sphere(r=5);
	translate([12.5,34.5-(xdd*y),2])cylinder(r=4.5/2,h=10);
    cube(size = 1, center = false);
}
translate([4,6,-5])cylinder(r=3.7/2,h=20);
translate([4,6,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,6,-5])cylinder(r=3.7/2,h=20);
translate([25-4,6,-0.1])cylinder(r=6.2/2,h=3.5);
}
translate([0,-3,0])difference(){
cube([25,40,10]);
//translate([12,60,0])sphere(r=10);
for (y = [0:1]) // two iterations, z = -1, z = 1
{
    translate([0.5, y, 0])
    translate([12,27.5-(15.5*y),0])sphere(r=7);
	translate([12.5,27.5-(15.*y),2.5])sphere(r=5);
	translate([12.5,27.5-(15.5*y),2])cylinder(r=3.5/2,h=10);
    cube(size = 1, center = false);
}
translate([4,4,-5])cylinder(r=3.7/2,h=20);
translate([4,4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([4,40-4,-5])cylinder(r=3.7/2,h=20);
translate([4,40-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,40-4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,40-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([4,-30-4,-5])cylinder(r=3.7/2,h=20);
translate([4,-30-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,-30-4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,-30-4,-0.1])cylinder(r=6.2/2,h=3.5);
}
}


module washbowl_shim(){
translate([0,-43+3,8]){
translate([0,2,0])difference(){translate([0,-21,5-3])cube([25,17,7]);
translate([6,-13,5-3])cylinder(r=4.7/2,h=10+10);
translate([19,-13,5-3])cylinder(r=4.7/2,h=10+10);
}
}
}

module washbowl_1tip(){
xd=5.5;
xdd=1.5;

translate([0,-43,0])difference(){
union(){
translate([0,2,0])difference(){translate([0,-21,5])cube([25,20,5]);
translate([6,-13,5-3]){translate([0,0,-0])cylinder(r=10/2,h=4);translate([0,0,4])cylinder(r=4.7/2,h=10+6);}
translate([19,-13,5-3]){translate([0,0,-0])cylinder(r=10/2,h=4);translate([0,0,4])cylinder(r=4.7/2,h=10+6);}
}
cube([25,40,10]);
}

translate([10,32,0])cube([5,20,3]);
translate([8,12,-2])cube([10,26,20]);
translate([4,6,-5])cylinder(r=3.7/2,h=20);
translate([4,6,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,6,-5])cylinder(r=3.7/2,h=20);
translate([25-4,6,-0.1])cylinder(r=6.2/2,h=3.5);
}
translate([0,-3,0])difference(){
cube([25,40,10]);
translate([10,-10,0])cube([5,20,3]);
//translate([12,60,0])sphere(r=10);
for (y = [0:0]) // two iterations, z = -1, z = 1
{
    translate([0.5, y, 0])
    translate([12,27.5-(15.5*y)-8,0])sphere(r=10);
	translate([12.5,27.5-(15.*y)-8,2.5])sphere(r=5);
	translate([12.5,27.5-(15.5*y)-8,2])cylinder(r=3.5/2,h=10);
    cube(size = 1, center = false);
}
translate([4,4,-5])cylinder(r=3.7/2,h=20);
translate([4,4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([4,40-4,-5])cylinder(r=3.7/2,h=20);
translate([4,40-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,40-4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,40-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([4,-30-4,-5])cylinder(r=3.7/2,h=20);
translate([4,-30-4,-0.1])cylinder(r=6.2/2,h=3.5);
translate([25-4,-30-4,-5])cylinder(r=3.7/2,h=20);
translate([25-4,-30-4,-0.1])cylinder(r=6.2/2,h=3.5);
}
}















module coolwashassembly(){

translate([0,-70,35])rotate([0,90,0])tslot20(100);
translate([0,-70+102.5,35+9])rotate([0,90,0])tslot20(100);
translate([0,-3,0])washbowl_watervacinput();
translate([50-50,-3,1])rotate([0,0,180])drypad();
washbowl_1tip();
translate([0,-43,5])washbowl_9mm_shim();
}

module washbowl_9mm_shim(){
translate([0,100,0])difference(){translate([0,-21+2,5])cube([25,18,5+4]);
translate([6,-10,-5])cylinder(r=4.7/2,h=20);
translate([19,-10,-1])cylinder(r=4.7/2,h=20);
}
}




//IMPORTANT
module seq_assy6(){

/*
arlen = 360;
xarlen = 360+50;
yarlen = 360+20;
zarlen = 360+0;
*/


//this is for the second build
arlen = 360;
xarlen = 400+240;
yarlen = 400+120;
zarlen = 400;


/* Here is info for the improvement of the z drive
Igus - PTGSG-12x25-R-290-ES
*/


//note smooth rod length is: 365
//Here I made made the mistake not paying attention since the arm was 20mm too long
translate([15,-yarlen/2,zarlen-65])seq_maukyarm3(xarlen-20,yarlen,zarlen);

//z supports (vertical)
translate([0,-5,5])tslot20(zarlen); //1
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5,5-20])tslot20(zarlen+40); //2
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0,-5-yarlen-20,5])tslot20(zarlen); //3
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([-xarlen-20,-5-yarlen-20,5-20])tslot20(zarlen+40); //4
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw 
translate([-5-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
//end z supports

//right side
translate([0,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //5

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

//should fit this
//translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-80,0]){
//translate([15,-92.5,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
//translate([15,-92.5-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}



translate([0,0,zarlen-105])rotate([90,0,0])tslot40_2060(yarlen);  //6

translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([0,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen);  //7
//end right side

//left side 
translate([-20-xarlen-20,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //8 modified
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw

translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}





translate([-20-xarlen,0,zarlen-105])rotate([90,0,0])tslot20_2060(yarlen); //9 mod
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}




translate([-20-xarlen-20,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen); //10 mod

//don't know where these go
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

//end left side 

//lower x longer supports
translate([5+220,25+20+20,-20])rotate([90,0,-90])tslot40_2060(xarlen+220); //11 mod
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw




translate([5+220,25-yarlen-20,-20])rotate([90,0,-90])tslot20_2060(xarlen+220); //12 mod
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end lower x longer supports


//top part
translate([5+220,25+20+20,zarlen])rotate([90,0,-90])tslot40_2060(xarlen+220); //13
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw



translate([5+220,25-yarlen-20,zarlen])rotate([90,0,-90])tslot20_2060(xarlen+220); //14

translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end top part



//case part
translate([360-140,-yarlen-25,-15])tslot20(zarlen+40); //15
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-140,-5,-15])tslot20(zarlen+40); //16
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-160,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //17
translate([360-160,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //18
//end case part



//z drive 

//first set
translate([15,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-5,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([35,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([15,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([15,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2-77,zarlen-5])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();


//second set
translate([-xarlen-5,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
translate([-xarlen-25+40,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([-xarlen-5,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([-xarlen-5,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
translate([-xarlen-25+40,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+10,-yarlen/2+77,zarlen-5])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,zarlen-5])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
//end z drive 



//bed support
translate([11.5,-yarlen/2+14,zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5-2,-yarlen/2-14,zarlen])rotate([0,180,90])zbedslot_516();
translate([-20.5,-yarlen/2+50,zarlen-230])rotate([90,0,0])tslot20(100); //19
translate([-xarlen+2.5-2.5,-yarlen/2+(50),zarlen-230])rotate([90,0,0])tslot20(100); //20


translate([5,-yarlen/2-25-20,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //21
translate([-xarlen+15,-yarlen/2+(50)-50,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2-0,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


translate([5,-yarlen/2+75,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //22
translate([-xarlen+15,-yarlen/2+100,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2+100,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);


translate([-xarlen+0,-yarlen+50,zarlen-200])cube([xarlen,yarlen-100,3]);
//end bed support



//z motormount
translate([-xarlen/2,0,-20])rotate([90,0,0])tslot20(yarlen);
translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
translate([-xarlen/2+5,-yarlen/2+40,-20])rotate([90,0,-90])tslot20(xarlen/2-20);
translate([-xarlen/2+30,-yarlen/2+100,-77])rotate([0,0,180])motormountsimplezdrive();
translate([-xarlen/2-75+30,-yarlen/2+14,5])rotate([0,0,90])beltadjuster_lower();
//translate([-xarlen/2-16,-yarlen/2+85,5])rotate([0,0,90])nema17();

//this is a better design to remove the wobble
//translate([-xarlen-5,-yarlen/2+0,56.5])rotate([0,0,180])avoidwobblezdrive();
//end z motormount




//motor mount
//x motormount (crazy belt setup) maukstyle
translate([30,-5,zarlen-200])rotate([0,0,180])motormountsimplematchingbearing();
translate([-xarlen-20,-5,zarlen-200])motormountsimple();
//translate([-xarlen+26,15,zarlen-118])nema17();


//y motormount (2arms) unit
translate([-xarlen+20,25,197-30])rotate([0,180,90])verticalymotormount();
//translate([-xarlen+70,5,100-30])rotate([90,0,90])nema23();

translate([-xarlen+5,-0,50+30-30])rotate([-90,0,180])beltadjuster();
translate([-xarlen+5,-0,50+110-30])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();
translate([-xarlen-30,-yarlen-38,zarlen-92])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen+80);
translate([25,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();

translate([-xarlen+5,-10,zarlen-100])rotate([90,0,90])simple_bearingholder();
translate([5,30,zarlen-100])rotate([90,0,-90])simple_bearingholder();
translate([-xarlen+5,0,zarlen-72])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen);

}




//IMPORTANT
module seq_assy7(arlen,xarlen,yarlen,zarlen){
//module seq_assy7(){

/*
arlen = 360;
xarlen = 360+50;
yarlen = 360+20;
zarlen = 360+0;
*/

/*
arlen = 360;
xarlen = 800+240;
yarlen = 500+120;
//yarlen = 1100;
zarlen = 400;
*/
/* Here is info for the improvement of the z drive
Igus - PTGSG-12x25-R-290-ES
*/


//note smooth rod length is: 365
//Here I made made the mistake not paying attention since the arm was 20mm too long
//translate([15,-yarlen/2,zarlen-65])seq_maukyarm4(xarlen-20,yarlen,zarlen);



//z supports (vertical)
color("silver")translate([0,-5,5])tslot20(zarlen); //1
/*
translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15,yarlen/2,zarlen-105+15-30])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15,yarlen/2,zarlen-105+15-60])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
*/
color("silver")translate([-xarlen-20,-5,5-20+20])tslot20(zarlen+40-40); //2 needs to be shorter on the top
/*
translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen-105+15-30])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen-105+15-60])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
*/
color("silver")translate([0,-5-yarlen-20,5])tslot20(zarlen); //3
//translate([15,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

color("silver")translate([-xarlen-20,-5-yarlen-20,5-20+20])tslot20(zarlen+40-40); //4 need to be sorter
//translate([-5-xarlen,yarlen/2,zarlen-105+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw 



//right side
color("silver")translate([0,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //5
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw

//should fit this
//translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();


/*
translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
*/

//This part needs to be lower for shuttle enclosure
color("silver")translate([0,0,zarlen-105])rotate([90,0,0])tslot40_2060(yarlen);  //6

/*
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([15,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([15,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
*/

color("silver")translate([0,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen);  //7
//end right side

//left side 
color("silver")translate([-20-xarlen-20,0,-20])rotate([90,0,0])tslot40_2060(yarlen); //8 modified

//translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
//translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
//translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
/*
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
*/




color("silver")translate([-20-xarlen,0,zarlen-105])rotate([90,0,0])tslot20_2060(yarlen); //9 mod

/*
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([0,-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
translate([0,-80-80,0]){
translate([-5-xarlen,-yarlen/2+80-27.5+45,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
translate([-5-xarlen,-yarlen/2+80-27.5+45-36,zarlen-105-50])rotate([0,0,0])cylinder(r=5/2,h=100); //screw
}
*/



color("silver")translate([-20-xarlen-20,0,zarlen])rotate([90,0,0])tslot40_2060(yarlen); //10 mod

//don't know where these go
/*
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
*/

//end left side 

//lower x longer supports
color("silver")translate([5+220-160,25+20+20,-20])rotate([90,0,-90])tslot40_2060(xarlen+220-120); //11 mod 
/*
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55-20,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen-40,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([15-xarlen-20,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
*/



color("silver")translate([5+220-160,25-yarlen-20,-20])rotate([90,0,-90])tslot20_2060(xarlen+220-120); //12 mod
/*
translate([215,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([-xarlen/2+15,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen-20,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=15.7/2,h=zarlen*2); //screw
*/
//end lower x longer supports


//top part
color("silver")translate([5+220-160,25+20+20,zarlen])rotate([90,0,-90])tslot40_2060(xarlen+220-120); //13

/*
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
translate([-5-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
*/


color("silver")translate([5+220-160,25-yarlen-20,zarlen])rotate([90,0,-90])tslot20_2060(xarlen+220-120); //14

/*
translate([215,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([0+55,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([15-xarlen,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([0+15,-yarlen-10,-zarlen/2])rotate([0,0,0])cylinder(r=5.7/2,h=zarlen*2); //screw
//end top part
*/

/*
//case part
translate([360-140,-yarlen-25,-15])tslot20(zarlen+40); //15
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw

translate([360-140,-5,-15])tslot20(zarlen+40); //16
translate([235,yarlen/2,-5])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([235,yarlen/2,zarlen+15])rotate([90,0,0])cylinder(r=5.7/2,h=yarlen*2); //screw
translate([360-160,0,zarlen])rotate([90,0,0])tslot20_2060(yarlen); //17
translate([360-160,0,-20])rotate([90,0,0])tslot20_2060(yarlen); //18
//end case part
*/


//z drive 

//first set
translate([15,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
//translate([-5,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
//translate([35,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();
//smooth side
translate([15,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
//translate([35,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-5,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([15,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
/*
translate([35,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-5,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([0,-yarlen/2+77,zarlen-5])rotate([180,0,180])mirror([0,0,0])zbedconstraintbearing();
translate([0,-yarlen/2-77,zarlen-5])rotate([180,0,180])mirror([0,1,0])zbedconstraintbearing();
*/

//second set
translate([-xarlen-5,-yarlen/2,10])cylinder(r=8.7/2,h=zarlen-110);
//translate([-xarlen-25,-yarlen/2-27.5,5])rotate([0,0,0])simple_bearingholder_m4bearingsupport();
//translate([-xarlen-25+40,-yarlen/2-27.5,zarlen-100])rotate([0,180,0])simple_bearingholder_m4bearingsupport();

//smooth side
translate([-xarlen-5,-yarlen/2-80,10])cylinder(r=8.7/2,h=zarlen-110);
//translate([-xarlen-25+40,-yarlen/2-27.5-80,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
//translate([-xarlen-25,-yarlen/2-27.5-80,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//smooth side
translate([-xarlen-5,-yarlen/2+80,10])cylinder(r=8.7/2,h=zarlen-110);
/*
translate([-xarlen-25+40,-yarlen/2+80-27.5,zarlen-100])rotate([0,180,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen-25,-yarlen/2+80-27.5,5])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
translate([-xarlen+10,-yarlen/2+77,zarlen-5])rotate([180,0,0])mirror([0,1,0])zbedconstraintbearing();
translate([-xarlen+10,-yarlen/2-77,zarlen-5])rotate([180,0,0])mirror([0,0,0])zbedconstraintbearing();
*/
//end z drive 



//bed support
/*
translate([11.5,-yarlen/2+14,zarlen])rotate([0,180,-90])zbedslot_516();
translate([-xarlen-0.5-2,-yarlen/2-14,zarlen])rotate([0,180,90])zbedslot_516();
color("white")translate([-20.5,-yarlen/2+50,zarlen-230])rotate([90,0,0])tslot20(100); //19
*/

translate([0,0,-200]){
color("silver")translate([-xarlen+2.5-2.5,-yarlen/2+(50),zarlen-230])rotate([90,0,0])tslot20(100); //20
//color("silver")translate([5,-yarlen/2-25-20,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //21
translate([-xarlen+15,-yarlen/2+(50)-50,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2-0,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);
//color("silver")translate([5,-yarlen/2+75,zarlen-230])rotate([90,0,-90])tslot20(xarlen); //22
translate([-xarlen+15,-yarlen/2+100,zarlen-230+15])rotate([90,0,0])cylinder(r=5.6/2,h=100);
translate([-20.5+15,-yarlen/2+100,zarlen-215])rotate([90,0,0])cylinder(r=5.6/2,h=100);
}

//translate([-xarlen+0,-yarlen+50,zarlen-200])cube([xarlen,yarlen-100,3]);
//end bed support



//z motormount
color("silver")translate([-xarlen/2,0,-20])rotate([90,0,0])tslot20(yarlen);
//translate([-5-xarlen-xarlen/2,-yarlen/2+25,-5])rotate([90,0,90])cylinder(r=5.7/2,h=xarlen*2); //screw
color("silver")translate([-xarlen/2+5,-yarlen/2+40,-20])rotate([90,0,-90])tslot20(xarlen/2-20);

//translate([-xarlen/2+30,-yarlen/2+100,-77])rotate([0,0,180])motormountsimplezdrive();
//translate([-xarlen/2-75+30,-yarlen/2+14,5])rotate([0,0,90])beltadjuster_lower();
//translate([-xarlen/2-16,-yarlen/2+85,5])rotate([0,0,90])nema17();

//this is a better design to remove the wobble
//translate([-xarlen-5,-yarlen/2+0,56.5])rotate([0,0,180])avoidwobblezdrive();
//end z motormount


//motor mount
//x motormount (crazy belt setup) maukstyle
//translate([30,-5,zarlen-200])rotate([0,0,180])motormountsimplematchingbearing();
//translate([-xarlen-20,-5,zarlen-200])motormountsimple();
//translate([-xarlen+26,15,zarlen-118])nema17();


//y motormount (2arms) unit
//translate([-xarlen+20,25,197-30])rotate([0,180,90])verticalymotormount();
//translate([-xarlen+70,5,100-30])rotate([90,0,90])nema23();

//translate([-xarlen+5,-0,50+30-30])rotate([-90,0,180])beltadjuster();
//translate([-xarlen+5,-0,50+110-30])rotate([-90,0,180])beltadjuster();

//translate([-xarlen+5,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();
//translate([-xarlen-30,-yarlen-38,zarlen-92])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen+80);
//translate([25,-yarlen-20,zarlen-70])rotate([-90,0,180])beltadjuster();

//translate([-xarlen+5,-10,zarlen-100])rotate([90,0,90])simple_bearingholder();
//translate([5,30,zarlen-100])rotate([90,0,-90])simple_bearingholder();
translate([-xarlen+5,0,zarlen-72])rotate([0,90,0])cylinder(r=8.7/2,h=xarlen);

}


module verticalymotormount_smaller(){
difference(){
union(){
translate([0,0,50]){
//translate([-6,-23-49,0])rotate([90,0,0])motormount();
translate([-6,-23-49,0])rotate([90,0,0])nema23motormount();
translate([18-9.5+19.5,-23-39,2])cube([30,8.5,18]);
translate([18-9.5+19.5,-23-39,61+16])cube([30,8.5,18]);
}
}
translate([40.5-17.5+19.5,30,60])rotate([90,0,0])cylinder(r=8.7/2,h=120);
translate([40.5-17.5+19.5,30,60+62+15])rotate([90,0,0])cylinder(r=8.7/2,h=120);

}
}



module beltclamp_fin_plate(){

difference(){
union(){
translate([-18,10,0])cube([10,20,6]);
}
translate([-13,14,0])cylinder(r=3.7/2,h=20);
translate([-13,26,0])cylinder(r=3.7/2,h=20);
}
}


module beltclamp_fin(){

difference(){
union(){
cube([20,40-10,7]);
translate([-18,10-10,0])cube([18,20,10]);
}
translate([10,6,-5])cylinder(r=4.7/2,h=12);
translate([10,30-7,-5])cylinder(r=4.7/2,h=12);
translate([0,-10,0]){
translate([-8,15,0])cube([5,10,20]);
translate([-13,14,0])cylinder(r=3.7/2,h=20);
translate([-13,14,7.6])cylinder(r=7/2,h=2.5,$fn=6);
translate([-13,26,0])cylinder(r=3.7/2,h=20);
translate([-13,26,7.6])cylinder(r=7/2,h=2.5,$fn=6);
}}
}

module xmotorassembly_openbuilds(){

//nema17();
//translate([0,0,10])cylinder(r=15.9/2,h=14.5);
translate([0,0,0])difference(){
translate([-22.5,-22.5-45,0])cube([45,45+45,8.5]);
cylinder(r=11.25,h=10);
translate([-15.5,-15.5,-5])cylinder(r=3.7/2,h=10);
translate([-15.5,15.5,-5])cylinder(r=3.7/2,h=10);
translate([15.5,15.5,-5])cylinder(r=3.7/2,h=10);
translate([15.5,-15.5,-5])cylinder(r=3.7/2,h=10);
translate([-15.5,-15.5,5])cylinder(r=5.7/2,h=3.5);
translate([-15.5,15.5,5])cylinder(r=5.7/2,h=3.5);
translate([15.5,15.5,5])cylinder(r=5.7/2,h=3.5);
translate([15.5,-15.5,5])cylinder(r=5.7/2,h=3.5);

translate([0,-2,0]){
translate([0,0,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([30,0,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([0,-20,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([30,-20,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
}
}
}


module xmotorassembly_openbuilds_idler(){

//translate([0,5.5,10])cylinder(r=22.5/2,h=14.5);
translate([0,0,0])difference(){
translate([-22.5,-22.5-45,0])cube([45,45+45,8.5]);
translate([0,5.5,0])cylinder(r=4.7/2,h=10);
translate([0,0,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([30,0,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([0,-20,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
translate([30,-20,0]){translate([-15.5,-15.5-22.5,1.])cylinder(r=4.7/2,h=12);translate([-15.5,-15.5-22.5,-3])cylinder(r=9/2,h=4);}
}
}

module xbeltclampplate(){

difference(){
cube([10,30,6]);
translate([5,5,0])cylinder(r=3.7/2,h=20);
translate([5,5+20,0])cylinder(r=3.7/2,h=20);
}
}


module xbeltclamp(){

difference(){
translate([0,-8,0])cube([12+10,70,6]);
translate([6,5,-3])cylinder(r=3.7/2,h=20);
for (a =[0:6]){
translate([16,-3+(a*10),-3]){cylinder(r=3.7/2,h=20);translate([0,0,3])rotate([0,0,90])cylinder(r=6.7/2,h=3.5,$fn=6);}
}
translate([6,5+44,-3])cylinder(r=3.7/2,h=20);
}
}






/*
module xbeltclamp(){

difference(){
translate([0,-8,0])cube([12+10,70,6]);
translate([6,5,-3])cylinder(r=3.7/2,h=20);
for (a =[0:6]){
translate([16,-3+(a*10),-3]){cylinder(r=3.7/2,h=20);translate([0,0,3])rotate([0,0,90])cylinder(r=6.7/2,h=3.5,$fn=6);}
}
translate([6,5+44,-3])cylinder(r=3.7/2,h=20);
}
}
*/

//remember you got to mirror this
//mirror([0,1,0])raspi2_bottom();
module raspi2_bottom(){
//color("lime")
translate([106,6,0])
difference(){
union(){
cube([62,90.5+2,10.5]);
}
translate([2,2,2])cube([62-4,86.5+1,15.5]);
//translate([42.7,75,7])cube([14.5,20,35.5]);
//translate([42.7-18,75,7])cube([14.5,20,35.5]);
translate([4.5,75,7])cube([14.5+38,20,35.5]);
translate([42.7-28,-10,7])cube([34.5,20,35.5]);
translate([42.7-20,-10,2])cube([16,20,35.5]);
translate([4.5-10,72-45-2.5,5])cube([14.5,21,65.5]);
translate([-5,56.6,10])rotate([0,90,0])cylinder(r=4.5,h=20);
translate([4.5-10,72-45-2.5-17,5])cube([14.5,12.5,65.5]);
translate([45-1.5+9-0.5-48,72-60,-5]){for (b=[0:6]){translate([6.5,b*10,0])cube([40,5,20]);}}
}//end difference
translate([106,6,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([0,58,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
}
}
translate([106,6,0]){
translate([60,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([-10,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([0,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([50,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
}
}




//remember you got to mirror this
module raspi2_bottom_lego_female(){

/*
//translate([90,90,5])rotate([0,90,0])tslot20(100);
translate([120,95,0])difference(){
translate([0,2,0])cube([30,20-2,5]);
translate([6,10,-10]){cylinder(r=4.7/2,h=20);translate([0,0,13])cylinder(r=8.3/2,h=3);}
translate([6+18,10,-10]){cylinder(r=4.7/2,h=20);translate([0,0,13])cylinder(r=8.3/2,h=3);}
}
*/


translate([120+77,95-50,0])rotate([0,0,90])difference(){
translate([0,2,0])cube([30,20-2,5]);
translate([6,10,-10]){cylinder(r=4.7/2,h=20);translate([0,0,13])cylinder(r=8.3/2,h=3);}
translate([6+18,10,-10]){cylinder(r=4.7/2,h=20);translate([0,0,13])cylinder(r=8.3/2,h=3);}
}



/*
translate([76,36,0])difference(){
cube([30,50,5]);
translate([8,10,-2])cylinder(r=6/2,h=30);
translate([8,40,-2])cylinder(r=6/2,h=30);
}
*/
//color("lime")
translate([106,6,0])
difference(){
union(){
cube([62,90.5+2,10.5]);
}
translate([2,2,2])cube([62-4,86.5+1,15.5]);
//translate([42.7,75,7])cube([14.5,20,35.5]);
//translate([42.7-18,75,7])cube([14.5,20,35.5]);
translate([4.5,75,7])cube([14.5+38,20,35.5]);
translate([42.7-28,-10,7])cube([34.5,20,35.5]);
translate([42.7-20,-10,2])cube([16,20,35.5]);
translate([4.5-10,72-45-2.5,5])cube([14.5,21,65.5]);
translate([-5,56.6,10])rotate([0,90,0])cylinder(r=4.5,h=20);
translate([4.5-10,72-45-2.5-17,5])cube([14.5,12.5,65.5]);
translate([45-1.5+9-0.5-48,72-60,-5]){for (b=[0:6]){translate([6.5,b*10,0])cube([40,5,20]);}}
}//end difference
translate([106,6,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([0,58,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=3/2,h=30);}}
}
}
translate([106,6,0]){
translate([-10,80,0])difference(){cube([11,10,12.45]);translate([5.5,5,1])lego_male(6,17);}
translate([-10,80,0])difference(){cube([11,10,12.45]);translate([5.5,5,1])lego_male(6,17);}
translate([0,-10,0])difference(){cube([11,10,12.45]);translate([6.5,5,1])lego_male(6,17);}
translate([50,-10,0])difference(){cube([11,10,12.45]);}//translate([6.5,5,1])lego_male(6,17);}





/*
//translate([60,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([-10,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([0,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([50,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
*/

}
translate([106,6,0]){
translate([60,-10,0])difference(){cube([11,90+8,12.45]);for(a=[0:2]){translate([6.5,5+(43*a),1])lego_male(6,17);}}
}


}



module raspi2_top(){
//color("peru")
translate([106,6,0])
difference(){
union(){
cube([62,90.5+2,12.5]);
}
translate([2,2,2])cube([62-4,86.5+1,15.5]);
translate([42.7-18-20.2,72+1,-2])cube([14.5+32+7,20+10,35.5]);
translate([4.5-10,72-45-2.5,2])cube([14.5,21,65.5]);
translate([-5,56.6,13])rotate([0,90,0])cylinder(r=4.5,h=20);
translate([4.5-10,72-45-2.5-17,10])cube([14.5,12.5,65.5]);
translate([45-1.5+9-0.5,72-45-2.5-17,-5])cube([7,55,65.5]);
translate([45-1.5+9-0.5-48,72-27,-5])cube([20,5,65.5]);
}
translate([106,6,0]){
translate([60,80,0])difference(){cube([11,10,12.45]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);}}}
translate([-10,80,0])difference(){cube([11,10,12.45]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);}}}
translate([0,-10,0])difference(){cube([11,10,12.45]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);}}}
translate([50,-10,0])difference(){cube([11,10,12.45]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);}}}
}
translate([106,6,0]){
translate([60,-10,0])difference(){cube([15,90,12.45]);for(a=[0:8]){translate([9.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,11.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}
translate([106-83,6+72,0]){
translate([60,-10,0])difference(){cube([15,18,12.45]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,11.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}
translate([106-83,6+72-57,0]){
translate([60,-10,0])difference(){cube([15,18,12.45-5]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){translate([0,0,0])cylinder(r=3.7/2,h=30);translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}
translate([106-73,6+72,0])translate([60,-10,0])cube([15,18,12.45-5]);
translate([106-73,6+72-57,0])translate([60,-10,0])cube([15,18,12.45-5]);
}



module lego_male(diam,h){
cylinder(r=diam/2,h);
//for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);}}
}

module raspi2_top_lego(){
//color("peru")

translate([106,6,0]){
translate([45-1.5+9-0.5-9,72-45-2.5-17+7,0])cube([7,15,16.5]);
translate([45-1.5+9-0.5-9+7,72-45-2.5-17+6,0])rotate([0,0,90])cube([7,15+10,16.5]);
translate([45-1.5+9-0.5-9,72-45-2.5-17+35,0])cube([7,15,16.5]);
}

translate([106,6,0])
difference(){
union(){
cube([62,90.5+2,12.5]);
cube([22,90.5+2-13,12.5+1.6]);
translate([14.8,0,0])cube([62-27.7,10,12.5+1.9+3.5-1.2]);
}
translate([2,2,2])cube([62-4,86.5+1,15.5+2]);
translate([42.7-18-20.2,72+1,-2])cube([14.5+32+7,20+10,35.5]);
translate([4.5-10,72-45-2.5,2+5])cube([14.5,21,65.5]);
translate([-5,56.6,13+1])rotate([0,90,0])cylinder(r=4.5,h=20);
translate([4.5-10,72-45-2.5-17,10])cube([14.5,12.5,65.5]);
translate([45-1.5+9-0.5,72-45-2.5-17,-5])cube([7,55,65.5]);
translate([45-1.5+9-0.5-48,72-27,-5])cube([20,5,65.5]);
}
translate([106,6,0]){
//translate([60,80,0]){cube([11,10,12.45]);}//translate([6.5,5,0])lego_male(5.1,17);}
translate([-10,80,0]){cube([11,10,12.45]);translate([5.5,5,0])lego_male(5.1,17);}
translate([0,-10,0]){cube([11,10,12.45]);translate([6.5,5,0])lego_male(5.1,17);}
translate([50,-10,0]){cube([11,10,12.45]);}//translate([6.5,5,0])lego_male(5.1,17);}
}
translate([106,6,0]){
translate([60,-10,0]){cube([11,90+8,12.45]);for(a=[0:2]){translate([6.5,5+(43*a),0])lego_male(5.1,17);}}
}

//screw holes for brace
/*
translate([106-83,6+72,0]){
//translate([60,-10,0]){cube([15,18,12.45]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){cylinder(r=5.1/2,h=17);}}}
translate([60,-10,0])difference(){cube([15,18,12.45]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,11.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}
*/

//lego male
/*
translate([106-83,6+72-57,0]){
translate([60,-10,0]){cube([15,18,12.45-5]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){translate([0,0,2])cylinder(r=5.1/2,h=10);}}}//translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
//translate([60,-10,0])difference(){cube([15,18,12.45-5]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){translate([0,0,0])cylinder(r=3.7/2,h=30);translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}
*/
//translate([106-73,6+72,0])translate([60,-10,0])cube([15,18,12.45-5]);
//translate([106-73,6+72-57,0])translate([60,-10,0])cube([15,18,12.45-5]);
}
















module xenergy_chain_shuttle(){

difference(){
union(){
cube([61,30,5]);
translate([10+2,11.5,-18])cube([11,18.5,18]);
translate([21+13+2,11.5,-18])cube([11,18.5,18]);
}
translate([0,30-3.5-2.5,-3-7])rotate([90,0,90])cylinder(r=6.6/2,h=160);
translate([5,6,-4])cylinder(r=3.7/2,h=15);
translate([55,6,-4])cylinder(r=3.7/2,h=15);

}
}


module raspiconnector_adjust(){
difference(){
union(){
cube([15,15,10]);
cube([15,15+15,5]);
translate([-2.5,15,0])cube([20,15,5]);
}
translate([7.5,17.5,7])rotate([90,0,0]){translate([0,0,-2])cylinder(r=5.7/2,h=20);translate([-0,-0,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);translate([-0,3,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);}


for(a=[-5:5]){
translate([15/2+a,25,-4])cylinder(r=3.7/2,h=20);
}
}
}


module raspiconnector(){
difference(){
union(){
cube([15,15,10]);
cube([15,15+15,5]);
}
translate([7.5,17.5,7])rotate([90,0,0]){translate([0,0,-2])cylinder(r=5.7/2,h=20);translate([-0,-0,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);translate([-0,3,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);}
translate([15/2,25,-4])cylinder(r=3.7/2,h=20);
}
}

module endstop_optical(){

difference(){
translate([0,0,0])cube([18+6,40+5,3]);
translate([3,0,1.5])cube([18,40,6]);
translate([3+3,40-3,-2])cylinder(r=3.7/2,h=20);
translate([3+3,40-4,-2])cylinder(r=3.7/2,h=20);
translate([3+3,40-5,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-3,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-4,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-5,-2])cylinder(r=3.7/2,h=20);

}
}

module energychainconnect_xchain_stationary(){
//translate([17.5,24,22])cube([13,15,16]);
difference(){
translate([17.5-1.55,24+11-5,29.5])rotate([90,0,90])cylinder(r=5.7/2,h=16-8);
translate([17.5-7.5+1,24+7-5,27.5])rotate([0,50,0])cube([5,8,5]);
translate([17.5+13,24+7,27.5])rotate([0,50,0])cube([5,8,5]);
translate([17.5+13/2,24+7+25,29])rotate([90,0,0])cylinder(r=8/2,h=40);
}
}


module raspi_rack(){

// RaspberryPi Rack
// imagifab 20120618

// set constants
rp_l = 88.4;				// 85, add a couple of mm for wiggle room
rp_w = 57;			// 55, add a couple of mm for wiggle room
rp_t=1;
lift_h = 10;			// height off of table
leg_t = 3;				// thickness of legs at corners
frame_t = 5;			// thickness of frame
frame_h = 25;			// height of the frame without legs
lip_h = 2;				// lip height
lip_t = 2;				// lip thickness
min_a = 0.1;			// minimum angle in curves - lower is better, bigger renders quickly

// locations and sizes of ports
sd_slot_lcn = [12,-frame_t,-4+lip_t];
sd_slot_size=[30,frame_t*2,4];

power_slot_lcn = [43,-frame_t,rp_t+lip_t];
power_slot_size=[12,frame_t*2,10];

hdmi_slot_lcn = [rp_w-frame_t,37,rp_t+lip_t];
hdmi_slot_size=[frame_t*2,18,6];

enet_slot_lcn = [38,rp_l-2,rp_t+lip_t];
enet_slot_size=[16,frame_t*2,14];

usb_slot_lcn = [18,rp_l-2,rp_t+lip_t];
usb_slot_size=[14,frame_t*2,17];

audio_jack_lcn = [-frame_t*2,65,8];
audio_jack_r=4;

svid_jack_lcn = [-frame_t*2,48,10];
svid_jack_r=6;


// calculate useful values

// calculate the radius and center for the lengthwise arc
// I worked out the formula for this on paper using basic trigonometry
calc_l=rp_l-2*leg_t;
length_r = sqrt( ( pow(calc_l/2,2) 
			* (1 + 1/(2 * sqrt( pow(calc_l/2,2) + pow(lift_h,2) ) )
			   ) 
			)
		     + ( pow(lift_h,2) / (2 * sqrt( pow(calc_l/2,2)+pow(lift_h,2) ) )
			)
		      );
length_arc_center = [-frame_t,calc_l/2+leg_t,-length_r];

// calculate the radius and center for the widthwise arc
calc_l2=rp_w-2*leg_t;
width_r = sqrt( ( pow(calc_l2/2,2) 
		      * (1 + 1/(2 * sqrt( pow(calc_l2/2,2) + pow(lift_h,2) ) )
			  ) 
		      )
		    + ( pow(lift_h,2) / (2 * sqrt( pow(calc_l2/2,2)+pow(lift_h,2) ) )
		      )
		    );
width_arc_center = [leg_t+calc_l2/2,-frame_t,-width_r];
sd_arc_center = [leg_t+calc_l2/2,-frame_t,-width_r+6];

union()
{


	difference()
	{
		// build the basic frame envelope
		minkowski()
		{
			union()
			{
				// basic box
				cube([rp_w,rp_l,frame_h]);
				// add leg area
				//translate([0,0,-lift_h])
				//	cube([rp_w,rp_l,lift_h]);
			}
			cylinder(r=frame_t,$fa=min_a);
		}	



		// carve the lip area
		translate([lip_t, lip_t, -lift_h])
			cube([rp_w - 2*lip_t, rp_l - 2*lip_t, lip_h+lift_h]);
		// carve out the upper lip area and any bovine perspiration
		translate([0, 0, lip_h])
			cube([rp_w, rp_l,frame_h]);

		// carve out length arc for legs
		translate(length_arc_center) rotate([0,90,0])
			cylinder(r=length_r,h=rp_w+3*frame_t,$fa=min_a); //extra frame_t to avoid 0-thickness walls
		// carve out width arc for legs
		translate(width_arc_center) rotate([-90,0,0])
			cylinder(r=width_r,h=rp_l+3*frame_t,$fa=min_a); //extra frame_t to avoid 0-thickness walls

		// carve out width arc for SD card
		translate(sd_arc_center) rotate([-90,0,0])
			cylinder(r=width_r,h=3*frame_t,$fa=min_a); //extra frame_t to avoid 0-thickness walls

		// carve out power slot
		translate(power_slot_lcn)
			cube(power_slot_size);

		// carve out HDMI slot
		translate(hdmi_slot_lcn)
			cube(hdmi_slot_size);

		// carve out ethernet slot
		translate(enet_slot_lcn)
			cube(enet_slot_size);

		// carve out usb slot
		translate(usb_slot_lcn)
			cube(usb_slot_size);

		// carve out audio jack
		translate(audio_jack_lcn) rotate([0,90,0])
			cylinder(r=audio_jack_r,h=3*frame_t,$fa=min_a);

		// carve out s-video jack
		translate(svid_jack_lcn) rotate([0,90,0])
			cylinder(r=svid_jack_r,h=3*frame_t,$fa=min_a);

		// cut off the top on this version
		translate([-frame_t,-frame_t,lip_t*4])
			cube([rp_w+4*frame_t,rp_l+4*frame_t,frame_h*2]);

	}



}
}


module lowerprofile_angle_raspi(){
difference(){union(){
translate([0,85,10])mirror([0,1,0])raspi_rack();
//translate([-40,140,-6])rotate([90,0,0])tslot20(200);
translate([-15,-30,0])cube([10,40,18]);
translate([-15,70,0])cube([10,40,18]);
}
translate([-17,-20,9])rotate([90,0,90])cylinder(r=4.7/2,h=20);
translate([-17,100,9])rotate([90,0,90])cylinder(r=4.7/2,h=20);
}
}


module extrusion_lid_coupler(){
//translate([0,0,20])rotate([90,0,0])tslot20(250);
//rotate([90,0,0])tslot20_2060(250);
translate([25.5,-100,25]){
difference(){union(){
translate([0,2.5,0])cube([18,45,5]);
translate([0,13+1.5,0])cube([18,21,18]);
}
translate([9,9,0])cylinder(r=5.7/2,h=30);
translate([9,50-9,0])cylinder(r=5.7/2,h=30);
translate([-6,25,10])rotate([90,0,90])cylinder(r=5.7/2,h=10);
for (a=[0,1,2,3,4,5,6,7,8]){
translate([4,25,10+(a)])rotate([90,0,90])cylinder(r=12/2,h=16);
}
translate([-4,13,20])rotate([0,30,0])cube([28,24,18]);
}
}}




module extrusion_lid_coupler_breadboard(){
//translate([0,0,20])rotate([90,0,0])tslot20(250);
//rotate([90,0,0])tslot20_2060(250);
translate([25.5,-100,25]){
difference(){union(){
translate([0,2.5-12.5,0])cube([18,70,5]);
translate([5,2.5-12.5,0])cube([18,20,5]);
translate([5,2.5-12.5+50,0])cube([18,20,5]);
translate([0,13+1.5,0])cube([18,21,18]);
}
translate([9+6,0,0])cylinder(r=6.7/2,h=30);
translate([9+6,50,0])cylinder(r=6.7/2,h=30);
translate([-6,25,10])rotate([90,0,90])cylinder(r=5.7/2,h=10);
for (a=[0,1,2,3,4,5,6,7,8]){
translate([4,25,10+(a)])rotate([90,0,90])cylinder(r=12/2,h=16);
}
translate([-4,13,20])rotate([0,30,0])cube([28,24,18]);
}
}}




module controlbox(){
//tslots misumi

translate([200-20,0,0])difference(){rotate([90,0,0])tslot20_2060(360);}
//HFS5-2040-360-TPW

difference(){rotate([90,0,0])tslot20_2060(360);}
//HFS5-2040-360-TPW

translate([0,0,100]){
translate([180,0,0])rotate([90,0,0])tslot20_2060(360);
//HFS5-2020-360-TPW
rotate([90,0,0])tslot20(360);
//HFS5-2020-360-TPW
}

translate([0,0,200]){
translate([0,0,0])rotate([90,0,0])tslot20(360);
//HFS5-2040-360-TPW
translate([180,0,0])rotate([90,0,0])tslot20_2060(360);
//HFS5-2040-360-TPW
}

translate([0,-5,-30])difference(){color("green")tslot20(300);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245
translate([200,-5,-30])difference(){color("green")tslot20(300);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245


//this one is a mirror
translate([0,-400+20,0]){
translate([0,-5,-30])difference(){color("green")tslot20(300);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255

translate([200,-5,-30])difference(){color("green")tslot20(300);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
}
//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255


//no holes for these
/*
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW


translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([0,-400+20,0]){
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
}
*/

//End frame

//HFS5-2020-180-TPW
/*
translate([0,0,300]){
translate([200,0,0])rotate([90,0,0])tslot20(380);
rotate([90,0,0])tslot20(380);
}
*/
//case acrylic plastic

//end piece projection(cut = false)
//789.94 mm x 383.54mm works
//projection(cut = false)rotate([90,0,0])

/*
//end_1
projection(cut = false)
translate([230+10,0,-405])rotate([90,0,0])
translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}

/*
//end_2
//end piece projection(cut = false)
projection(cut = false)
rotate([90,0,0])translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}


//side piece
//side_1
/*
projection(cut = false)
translate([270,0,-225])rotate([0,90,0])translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}


/*
//side piece
//side_2
projection(cut = false)
rotate([0,90,0])translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}



//top piece
/*
projection(cut = false)
translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}
*/
translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}


//top shelf I haven't had this design laser cut yet
translate([8,-380+25,270-145])difference(){cube([200,200,5]);translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);translate([182,0,0]){translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);}}


/*
//base piece
projection(cut = false)
translate([235,0,270])
translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
*/
translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}

}



//13818
module controlbox_aluminum_extrusions(){
//tslots misumi
color("silver")translate([200-20,0,0])difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//tslot20_2060(360);
//HFS5-2040-360-TPW

color("silver")difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//tslot20_2060(360);

//HFS5-2040-360-TPW

translate([0,0,100]){
color("silver")translate([180,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
//tslot20_2060(360);

//HFS5-2020-360-TPW
color("silver")rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
//tslot20(360);
//HFS5-2020-360-TPW
}

translate([0,0,200]){
color("silver")translate([0,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_360.stl");
//tslot20(360);
//HFS5-2040-360-TPW
translate([180,0,0])rotate([90,0,0])tslot20_2060(360);
//HFS5-2040-360-TPW
}

//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245
//this is for a pretty picture
translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}

//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245
//this is for a pretty picture
translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}

//this one is a mirror
translate([0,-400+20,0]){
//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255
//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255

//no holes for these
/*
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW


translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([0,-400+20,0]){
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
}
*/

//End frame
//HFS5-2020-180-TPW
/*
translate([0,0,300]){
translate([200,0,0])rotate([90,0,0])tslot20(380);
rotate([90,0,0])tslot20(380);
}
*/
}




module controlbox_aluminum_extrusions_electronics(){
//tslots misumi
//color("silver")translate([200-20,0,0])difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//color("silver")translate([200-20,0,0])difference(){rotate([90,0,0])tslot20_2060(360);}

//import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//HFS5-2040-360-TPW

//color("silver")difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//tslot20_2060(360);

//HFS5-2040-360-TPW

translate([0,0,100]){
color("silver")translate([180,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
//tslot20_2060(360);

//HFS5-2020-360-TPW
color("silver")rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
//tslot20(360);
//HFS5-2020-360-TPW
}

translate([0,0,200]){
color("silver")translate([0,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_360.stl");
//tslot20(360);
//HFS5-2040-360-TPW
translate([180,0,0])rotate([90,0,0])tslot20_2060(360);
//HFS5-2040-360-TPW
}

//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245

//this is for a pretty picture
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([0,-5,-30+100])difference(){color("silver")tslot20(200);}

//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245
//this is for a pretty picture
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([200,-5,-30+100])difference(){color("silver")tslot20(200);}

//this one is a mirror
translate([0,-400+20,0]){
//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([0,-5,-30+100])difference(){color("silver")tslot20(200);}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255
//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([200,-5,-30+100])difference(){color("silver")tslot20(200);}
}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255

//no holes for these


/*
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW


translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([0,-400+20,0]){
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
}
*/

//End frame
//HFS5-2020-180-TPW
/*
translate([0,0,300]){
translate([200,0,0])rotate([90,0,0])tslot20(380);
rotate([90,0,0])tslot20(380);
}
*/
}





module controlbox_aluminum_extrusions_fluidics(){
//tslots misumi
//color("silver")translate([200-20,0,0])difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//color("silver")translate([200-20,0,0])difference(){rotate([90,0,0])tslot20_2060(360);}

//import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//HFS5-2040-360-TPW

//color("silver")difference(){rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");}
//tslot20_2060(360);

//HFS5-2040-360-TPW

translate([0,0,100]){
//color("silver")translate([180,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
color("silver")translate([180-50,0,0])rotate([90,0,0])tslot20_2060(360*3/4);
//tslot20_2060(360);

//HFS5-2020-360-TPW
//color("silver")rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_2060_360.stl");
color("silver")rotate([90,0,0])tslot20_2060(360*3/4);
//tslot20(360);
//HFS5-2020-360-TPW
}

translate([0,0,200]){
//color("silver")translate([0,0,0])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_360.stl");
//color("silver")translate([0,0,0])rotate([90,0,0])tslot20_2060(360*3/4);
//tslot20(360);
//HFS5-2040-360-TPW
//translate([180,0,0])rotate([90,0,0])tslot20_2060(360*3/4);
//HFS5-2040-360-TPW
}

//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245

//this is for a pretty picture
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([0,-5,-30+100])difference(){color("silver")tslot20(150);}

//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-300-TPW-Z5-XA45-XB145-XC245
//this is for a pretty picture
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([150,-5,-30+100])difference(){color("silver")tslot20(150);}

//this one is a mirror
translate([0,-400+20+90,0]){
//this identifies the holes
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
//translate([0,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([0,-5,-30+100])difference(){color("silver")tslot20(150);}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255
//this identifies the holes
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");translate([15,50,45])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,145])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,245])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//this is for a pretty picture
//translate([200,-5,-30])difference(){color("silver")import("/Users/richard/Documents/009Reprapcatcube010715/controlbox/tslot20_300.stl");}
translate([150,-5,-30+100])difference(){color("silver")tslot20(150);}
}

//HFS5-2020-300-TPW-Z5-XA55-XB155-XC255

//no holes for these


/*
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW


translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([0,-400+20,0]){
translate([25,-5,0])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//HFS5-2020-180-TPW
translate([25,-5,200])difference(){rotate([90,0,90])tslot20(180);translate([170,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([10,50,15])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
}
*/

//End frame
//HFS5-2020-180-TPW
/*
translate([0,0,300]){
translate([200,0,0])rotate([90,0,0])tslot20(380);
rotate([90,0,0])tslot20(380);
}
*/
}





















module controlbox_lasercutpanels(pcolor){
//tslots misumi
//end piece projection(cut = false)
//789.94 mm x 383.54mm works
//projection(cut = false)rotate([90,0,0])
/*
//end_1
projection(cut = false)
translate([230+10,0,-405])rotate([90,0,0])
translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}

/*
//end_2
//end piece projection(cut = false)
projection(cut = false)
rotate([90,0,0])translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//side piece
//side_1
/*
projection(cut = false)
translate([270,0,-225])rotate([0,90,0])translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
/*
//side piece
//side_2
projection(cut = false)
rotate([0,90,0])translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}

//top piece
/*
projection(cut = false)
translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}

//top shelf I haven't had this design laser cut yet
//color(pcolor)translate([8,-380+25,270-145])difference(){cube([200,200,5]);translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);translate([182,0,0]){translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);}}

/*
//base piece
projection(cut = false)
translate([235,0,270])
translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
}


module controlbox_lasercutpanels_electronics(pcolor){
//tslots misumi
//end piece projection(cut = false)
//789.94 mm x 383.54mm works
//projection(cut = false)rotate([90,0,0])
/*
//end_1
projection(cut = false)
translate([230+10,0,-405])rotate([90,0,0])
translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,20,100])difference(){cube([230,5,270-100]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}

/*
//end_2
//end piece projection(cut = false)
projection(cut = false)
rotate([90,0,0])translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-385,100])difference(){cube([230,5,270-100]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//side piece
//side_1
/*
projection(cut = false)
translate([270,0,-225])rotate([0,90,0])translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([0,-380,5+100])difference(){cube([5,400,265-100]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
/*
//side piece
//side_2
projection(cut = false)
rotate([0,90,0])translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([225,-380,5+100])difference(){cube([5,400,265-100]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}

//top piece
/*
projection(cut = false)
translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}
*/
//color(pcolor)translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}

//top shelf I haven't had this design laser cut yet
color(pcolor)translate([8,-380+25,270-145])difference(){cube([200,200,5]);translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);translate([182,0,0]){translate([5,30,0])cylinder(r=5.7/2,h=100);translate([5,170,0])cylinder(r=5.7/2,h=100);}}

/*
//base piece
projection(cut = false)
translate([235,0,270])
translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-380,100])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
}









module controlbox_lasercutpanels_fluidics(pcolor){
//tslots misumi
//end piece projection(cut = false)
//789.94 mm x 383.54mm works
//projection(cut = false)rotate([90,0,0])
/*
//end_1
projection(cut = false)
translate([230+10,0,-405])rotate([90,0,0])
translate([0,20,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,20,100])difference(){cube([230-50,5,270-100-50]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200-50,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250-150])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200-50,50,250-150])rotate([90,0,0])cylinder(r=5.7/2,h=100);}

/*
//end_2
//end piece projection(cut = false)
projection(cut = false)
rotate([90,0,0])translate([0,-385,5])difference(){cube([230,5,270]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200,50,250])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-38-255-2,100])difference(){cube([230-50,5,270-150]);translate([15,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200-50,50,30])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15,50,250-150])rotate([90,0,0])cylinder(r=5.7/2,h=100);translate([15+200-50,50,250-150])rotate([90,0,0])cylinder(r=5.7/2,h=100);}
//side piece
//side_1
/*
projection(cut = false)
translate([270,0,-225])rotate([0,90,0])translate([0,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([0,-380+90,5+100])difference(){cube([5,400-90,265-150]);translate([-40,390-90,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390-90,110-15])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110-15])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
/*
//side piece
//side_2
projection(cut = false)
rotate([0,90,0])translate([225,-380,5])difference(){cube([5,400,265]);translate([-40,390,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}
*/
color(pcolor)translate([225-50,-380+90,5+100])difference(){cube([5,400-90,265-150]);translate([-40,390-90,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,10])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390-90,110-15])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,110-15])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,390,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);translate([-40,10,240])rotate([90,0,90])cylinder(r=5.7/2,h=200);}

//top piece
/*
projection(cut = false)
translate([0,-380,270])difference(){cube([230,400,5]);translate([15,10,-50])cylinder(r=5.7/2,h=100);translate([15,390,-50])cylinder(r=5.7/2,h=100);translate([15+200,10,-50])cylinder(r=5.7/2,h=100);translate([15+200,390,-50])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-380+85,270-50])difference(){cube([230-50,400-80,5]);translate([15,10+5,-50])cylinder(r=5.7/2,h=100);translate([15,390-85,-50])cylinder(r=5.7/2,h=100);translate([15+200-50,10+5,-50])cylinder(r=5.7/2,h=100);translate([15+200-50,390-85,-50])cylinder(r=5.7/2,h=100);}

//top shelf I haven't had this design laser cut yet

/*
//base piece
projection(cut = false)
translate([235,0,270])
translate([0,-380,-0])difference(){cube([230,400,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5,-5])cube([25.5,20.5,25]);translate([210-5.5,380,-5])cube([25.5,20.5,25]);translate([210-5,0,-5])cube([25.5,20.5,25]);translate([120,390,-40])cylinder(r=5.7/2,h=100);translate([120,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320,-40])cylinder(r=5.7/2,h=100);translate([215,90,-40])cylinder(r=5.7/2,h=100);translate([215,320,-40])cylinder(r=5.7/2,h=100);}
*/
color(pcolor)translate([0,-380+90,100])difference(){cube([230-50,400-90,5]);translate([0,0,-5])cube([25.5,20.5,25]);translate([0,380-0.5-90,-5])cube([25.5,20.5,25]);translate([210-5.5-50,380-90,-5])cube([25.5,20.5,25]);translate([210-5-50,0,-5])cube([25.5,20.5,25]);translate([120-25,390-90,-40])cylinder(r=5.7/2,h=100);translate([120-25,10,-40])cylinder(r=5.7/2,h=100);cylinder(r=5.7/2,h=100);translate([15,90,-40])cylinder(r=5.7/2,h=100);translate([15,320-90,-40])cylinder(r=5.7/2,h=100);translate([215-50,90,-40])cylinder(r=5.7/2,h=100);translate([215-50,320-90,-40])cylinder(r=5.7/2,h=100);}
}



module stepper_linear_m5nut_coupler(){
translate([0,-20-9,0])difference(){
union(){
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=15/2,h=23);
translate([-38.25+14-13.9,-70+30.,22.5+3.8])cube([31,11,3.7]);
}
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=9.3/2,h=41,$fn=6);
translate([-38.25+14-13.9+13.7,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
translate([-38.25+14-13.9+13.7+13,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
}
}

module stepper_linear_m6nut_coupler(){
translate([0,-20-9,0])difference(){
union(){
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=15.5/2,h=23);
translate([-38.25+14-13.9,-70+30.,22.5+3.8])cube([31,11,3.7]);
}
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=41);
translate([-38.25+14-13.9+13.7,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
translate([-38.25+14-13.9+13.7+13,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
}
}

module stepper_linear_m8nut_coupler(){
translate([0,-20-9,0])difference(){
union(){
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=17.5/2,h=23+3);
translate([-38.25+14-13.9,-70+30.-5,22.5+3.8])cube([31,11+5,3.7+1.25]);
}
//cylinder(r=7.4,h=sl+4,$fn=6);
//translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30-10+8,22.5])rotate([-90,0,0])cylinder(r=7.,h=28,$fn=6);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=8.7/2,h=241);
translate([-38.25+14-13.9+13.7,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
translate([-38.25+14-13.9+13.7+13,-70+34,22.5+3.8])cylinder(r=3.7/2,h=20);
}
}

module conveyer_stepper_linear_m8nut_coupler(){

conveyer_stepper_linear_m8nut_coupler_a();
conveyer_stepper_linear_m8nut_coupler_b();

}


module conveyer_stepper_linear_m8nut_coupler_a(){

//the wheel for graphical purposes
/*
color([140/255,140/255,140/255])translate([0,-20-9,0])translate([-38.25+14-13.9-20+52.7+0.5,-70+30.-5+12-4,22.5+3.8-2.3-6])difference(){
cylinder(r=15.5/2,h=9);
translate([0,0,-10])cylinder(r=5/2,h=60);
}
*/

color([200/255,200/255,200/255])translate([0,-20-9,0])difference(){
union(){



translate([-38.25+14-13.9-20,-70+30.-5,22.5+3.8-2.3])cube([17,11+5,6]);
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=20/2,h=23);

translate([-38.25+14-13.9+3,-70+30.-5,22.5+3.8-2.3+4-15])cube([17+3,11+5,16]);
translate([-38.25+14-13.9+3,-70+30.-5,22.5+3.8-2.3+4-15])cube([17+19,11+5,4]);
translate([-38.25+14-13.9+3,-70+30.-5,22.5+3.8-2.3+4])cube([17+19,11+5,4]);
}
translate([-38.25+14-13.9-20+52.7+0.5,-70+30.-5+12-4,22.5+3.8-2.3-6])
translate([0+1.5,0,-10])cylinder(r=5/2,h=60);
translate([-38.25+14-13.9,-70+30-10,22.5])rotate([-90,0,0])cylinder(r=7.3,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=8.7/2,h=241);
translate([-38.25+14-13.9+13.7-27,-70+34-5,22.5+3.8-11+4]){cylinder(r=3.2/2,h=16);translate([0,0,16])cylinder(r=9/2,h=3);}
translate([-38.25+14-13.9+13.7-27,-70+34+3,22.5+3.8-11+4]){cylinder(r=3.2/2,h=16);translate([0,0,16])cylinder(r=9/2,h=3);}
}
}

module conveyer_stepper_linear_m8nut_coupler_b(){
translate([-20-55-10+2+5-4,-70-2-15,20+0-3-3.25-3])rotate([0,-90,-90])ada_solenoid_2776();
color([175/255,175/255,175/255])translate([-20-55-10+14+2+5-4,-70-2-15-2,20+10-3])cube([13-2-3-5+3,15,6]);
color([175/255,175/255,175/255])translate([0,-20-9,0])difference(){
union(){
translate([-38.25+14-13.9-24,-70+30.-5-15,22.5+3.8-2.3+6])cube([5+12,11+4+16,8]);
}
translate([-38.25+14-13.9+13.7-27,-70+34-5,22.5+3.8-11+4]){cylinder(r=3.7/2,h=16.1);translate([0,0,16])cylinder(r=9/2,h=3);}
translate([-38.25+14-13.9+13.7-27,-70+34+3,22.5+3.8-11+4]){cylinder(r=3.7/2,h=16.1);translate([0,0,16])cylinder(r=9/2,h=3);}
}
}
















module pump_stepper_linear_actuator_assy(x){
translate([x,0,0]){
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_lego_vert();
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_modular();
translate([-22,20-1,0]){
//translate([30+3-10,-6-10,40+1])rotate([-180,0,90])mirror([0,1,0])newfirgelli_mount();
translate([89-4-20,95-0,13+0]){
translate([-20,35-18,-9.99]){
translate([-38.25,-100,30])rotate([-90,0,0])adafruit5Vsteppermotor();
translate([-38.25+14,-100,45])rotate([-90,0,0])adafruit5Vsteppermotormount();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=5.7/2,h=60);
translate([0,-8.15,0])stepper_linear_m5nut_coupler();
translate([-13+7,-110+2,13+2])spectralsymbol_encoder();

difference(){
translate([-7,-20,30-8])rotate([0,0,180])gesim_tipmount_formed_modular_linearactuator();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=60);
}

}
translate([-40+2,-25+18.8,3])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TS_04_09_50_3.stl");
translate([0,-10,3]){translate([-38,-40+18,4.5])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TW_04_09_4.stl");}
translate([-38,-6,3])igus_lowprofile_assy();

//translate([0,-0,0])igus_slidermount();

//translate([-38,20,27+3.5])rotate([-90,0,0])syringe_3ml_assy();
translate([0,-0,0])igus_slidermount_encoder();
translate([-43+5.5+0.5,11-84,-3.6])igus_slidermount_encoder_part();
//translate([-43+5.5+2+4,11-84+100+100+200,-4.5])rotate([90,0,0])tslot20(400);
}
}
}
}




module stepper_linear_actuator_assy(x){
translate([x,0,0]){
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_lego_vert();
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_modular();
translate([-22,20-1,0]){
//translate([30+3-10,-6-10,40+1])rotate([-180,0,90])mirror([0,1,0])newfirgelli_mount();
translate([89-4-20,95-0,13+0]){
translate([-20,35-18,-9.99]){
//translate([-38.25,-100,30])rotate([-90,0,0])adafruit5Vsteppermotor();
translate([-38.25+14,-100,45])rotate([-90,0,0])adafruit5Vsteppermotormount();
//translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=5.7/2,h=60);
//stepper_linear_m5nut_coupler();
//translate([-13+2,-110,13])spectralsymbol_encoder();
/*
difference(){
translate([-7,-20,30-8])rotate([0,0,180])gesim_tipmount_formed_modular_linearactuator();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=60);
}
*/
}
//translate([-40+2,-25+18.8,3])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TS_04_09_50_3.stl");
//translate([0,-10,3]){translate([-38,-40+18,4.5])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TW_04_09_4.stl");}
//translate([0,-0,0])igus_slidermount();
translate([0,-0,0])igus_slidermount_encoder();
translate([-43+5.5+0.5,11-84,-3.6+1])igus_slidermount_encoder_part();
//translate([-43+5.5+2,11-84+100,-5.5])rotate([90,0,0])tslot20(100);
}
}
}
}



module linear_actuator_assy(x){
translate([x,0,0]){
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_lego_vert();
//translate([15,92.8+18,20])rotate([0,0,180])gesim_tipmount_formed_modular();
translate([-22,20-1,0]){
translate([30+3-10,-6-10,40+1])rotate([-180,0,90])mirror([0,1,0])newfirgelli_mount();

translate([89-4-20,95-0,13]){
/*
translate([-40+2,-25+18.8,0])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TS_04_09_50_3.stl");
translate([0,-10,0]){translate([-38,-40+18,4.5])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TW_04_09_4.stl");}
*/
translate([0,-0,0])igus_slidermount();
}
}
}
}




module newfirgelli_mount(){
translate([5-3+20+20,13.5-8.5-1.25,-0])cylinder(r=3/2,h=20);
difference(){
union(){
translate([-3,-10,0])cube([53,16+5+5+3,20+5]);
}
translate([23+8-5,-10-5.5,0])cube([23+5,16,20+5]);
translate([23+8-2,10,-9.5])cube([12,10,20+5]);

translate([5,-10,-1])cube([37,13.5+10,15.5+1]);
translate([5-3,13.9-16-1-1,0])cylinder(r=3.7/2,h=30);

translate([0,-1,0]){
translate([-10,-0.5,0]){
translate([5-3+20,13.5-16,0])cylinder(r=3.7/2,h=30);
translate([5-3+20,13.5-16,15.5])cylinder(r=6.5/2,h=3);
}

/*
translate([-10,-0.5+10,0]){
translate([5-3+20,13.5-16,0])cylinder(r=3.7/2,h=30);
translate([5-3+20,13.5-16,15.5])cylinder(r=6.5/2,h=3);
}
translate([-0,-0.5+10,0]){
translate([5-3+20,13.5-16,0])cylinder(r=3.7/2,h=30);
translate([5-3+20,13.5-16,15.5])cylinder(r=6.5/2,h=3);
}
*/


/*
translate([10,-0.5+10,0]){
translate([5-3+20,13.5-16,0])cylinder(r=3.7/2,h=30);
translate([5-3+20,13.5-16,15.5])cylinder(r=6.5/2,h=3);
}

translate([-20,-0.5+10,0]){
translate([5-3+20,13.5-16,0])cylinder(r=3.7/2,h=30);
translate([5-3+20,13.5-16,15.5-18])cylinder(r=6.5/2,h=13);
}
*/


translate([-20,0,0]){
translate([5-3+20,13.-16,0])cylinder(r=4.7/2,h=30);
//translate([5-3+20,13.5-16,15.5])cylinder(r=6.5/2,h=3);
}

//translate([5-3+20,13.5-16-0.5,0])cylinder(r=3.7/2,h=30);
//translate([5-3+20,13.5-16-0.5,15.5])cylinder(r=6.5/2,h=3);
}

translate([-3,13.5-19-5,0])cube([10,16,15.5-5]);

}
}





module firgelli_actuator_shim(){

difference(){union(){
cube([14,64,5]);
translate([-10,0,0])cube([20,24,5]);
}
translate([4,9.5,-5])cylinder(r=3.7/2,h=20);
translate([4,9.5+50,-5])cylinder(r=3.7/2,h=20);
}
}




module igus_slidermount(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
color("pink")
translate([0-7.5,-40,0])cube([10+15,68+40+23,6+3]);
color("yellow")
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
color("lime")
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[4,6,8,10]){
translate([5,20+(a*10),-5]){cylinder(r=3/2,h=40);translate([0,0,5])cylinder(r=5.0/2,h=3+4,$fn=6);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}

for(a=[0,4]){
translate([5,-26+(a*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
}
}
}//end translate
}





module smaller_igus_slidermount(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){

bgg=0.4;color([bgg,bgg,bgg])translate([0-7.5,-40+20+10+3-8,0])cube([10+15,10,6+3-5+25]);
bg=0.4;color([bg,bg,bg])translate([0-7.5,-40+20+10+3,0])cube([10+15,68+40+23-30-15-20,6+3-5]);
//color("yellow")translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
//color("lime")translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([5,-40+20+10+3-8+20,17])rotate([90,0,0])cylinder(r=10/2,h=30);
translate([5,-40+20+10+3-8+20+60,17])rotate([90,0,0])cylinder(r=2/2,h=60);
//translate([5+20,20+(-5.5*10)-1.5,0]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[4,6,8,10]){
translate([5,20+(a*10),-5]){cylinder(r=3/2,h=40);translate([0,0,5-4.5])cylinder(r=5.4/2,h=3+4,$fn=6);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
//for(a=[0,4]){
translate([5,-26+26,-0.0]){translate([0,0,-10.2])cylinder(r=3.7/2,h=200);}//translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
translate([12,-26+40,-0.0]){translate([0,0,-10.2])cylinder(r=3.7/2,h=200);}//translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
translate([5-7,-26+40,-0.0]){translate([0,0,-10.2])cylinder(r=3.7/2,h=200);}//translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
//}
}
}//end translate
}












module spectralsymbol_encoder(){

l = 128;
w = 20.5;
h = 0.58;
color("yellow")cube([w,l,h]);

}


module linearactuator_igus_slidermount_encoder_part(){
difference(){
translate([0-7.5+18+1.5-6.5,-40+18+1,3])cube([28,131+2,8-4+2]);
translate([17.5,-33,0])for(a=[0,4,8,12]){
//translate([5-6,20+(a*10),-5]){translate([0,0,2])cylinder(r=3/2,h=16);translate([0,0,10-1.3])cylinder(r=5.0/2,h=13+4,$fn=6);}
//translate([5-14,20+(a*10)-6-10,-5+14])cube([23,50,20]);
}
translate([5-14+17.5-3-0.5,20+6-50,-5+14-2.75+2-4])cube([23+3.5,134,20]);
translate([5-14+17.5-3,20+6-50,-5+14-2.75-1])cube([5,134,20]);
translate([5-8+0,20+6-65+0-50,-5+14])cube([23+4,130,200]);
}
}




module igus_slidermount_encoder_part(){
difference(){
translate([0-7.5+18+1.5-6.5,-40+18+1,3])cube([28,131+2,8-4+2]);
translate([17.5,-33,0])for(a=[0,4,8,12]){
translate([5-6,20+(a*10),-5]){translate([0,0,2])cylinder(r=3/2,h=16);translate([0,0,10-1.3])cylinder(r=5.0/2,h=13+4,$fn=6);}
//translate([5-14,20+(a*10)-6-10,-5+14])cube([23,50,20]);
}
translate([5-14+17.5-3,20+6-50,-5+14-2.75+2])cube([23+3,134,20]);
translate([5-14+17.5-3,20+6-50,-5+14-2.75-1])cube([5,134,20]);
translate([5-8+0,20+6-65+0-50,-5+14])cube([23+4,130,200]);
}
}





module igus_slidermount_encoder(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
color("pink")
translate([0-7.5,-40,0])cube([10+15+10+6,68+40+23+20,6+3]);
color("yellow")
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
color("lime")
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[4,6,8,10,12]){
translate([5,20+(a*10),-5]){cylinder(r=3/2,h=40);translate([0,0,4])cylinder(r=5.0/2,h=3+4,$fn=6);}
}
translate([17.5,-33,0])for(a=[0,4,8,12]){
translate([5,20+(a*10),-0.1]){translate([0,0,2.4])cylinder(r=3/2,h=6);cylinder(r=5.5/2,h=2.5);}
}
translate([17.5,-33,0])for(a=[4,8,12]){
translate([5+4,10+(a*10),-5]){translate([0,0,8.4+1])cylinder(r=4.7/2,h=8);translate([0,0,5])cylinder(r=8/2,h=4.5);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
for(a=[0,4]){
translate([5,-26+(a*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
}
}
}//end translate
}

module linearactuator_igus_slidermount_encoder(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
color("pink")translate([0-7.5,-40+20,0])cube([10+15+10+6+6,68+40+23+20+1-20,6+3-3]);
color("peru")translate([0-7.5+7,-40+20,0])cube([10+15+10+6-30,68+40+23+20-20,6+3]);
color("lime")translate([0-7.5-5-5.5-8,-40-1.3-20+20.3+31-5-5,0])cube([20,132,3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([0,-33,0])for(a=[4,6,8,10,12]){
translate([5,20+(a*10),-5]){cylinder(r=3/2,h=40);translate([0,0,4])cylinder(r=5.2/2,h=3+4,$fn=6);}
}
translate([-22,-33,0])for(a=[0,2,4,6,8,10,12]){
translate([5,20+(a*10),-5]){cylinder(r=4/2,h=40);}//translate([0,0,4])cylinder(r=5.2/2,h=3+4,$fn=6);}
}



}
}//end translate
}






















module ribbon_26pin_pcislot(){
difference(){
union(){
//translate([0,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/pci_blanking_plate.stl");
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([0.5-15,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
translate([0.5+13-1.5,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([-50-10,-8.5-2-2.5,0])cube([10-1.75,19+2.5,1.25]);
translate([-50-10.25-1.5,-8.5-2-2.5,0])cube([1.25+1.5,19+2.5,12.5]);
translate([-50-10+8.2,-8.5-2+0,0])rotate([0,0,38])cube([10-1.75,5,1.25]);
//translate([45,-5.,0])cube([15.5,12,1.25]);
translate([45+9,-5.+6,1.25/2])roundedBox([15.5, 12, 1.25], 5, true);
}
translate([-102,-6.75-2.5,6.75])rotate([0,90,0])cylinder(r=3.7/2,h=200);
//cube([41.8+30,10+30,2.5]);
translate([-43,-19,0]){
translate([15+1,15,-2])cube([41.8-2,10,10]);

translate([12+91.5-7.5-0.5,20,-2])cylinder(r=3.7/2,h=20);

translate([12,20,-2])cylinder(r=3.7/2,h=20);
translate([12+47.5,20,-2])cylinder(r=3.7/2,h=20);
}
}
}

module rj45_pcislot(){
difference(){
union(){
//translate([0,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/pci_blanking_plate.stl");
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([0.5-15,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
translate([0.5+13-1.5,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([-50-10,-8.5-2-2.5,0])cube([10-1.75,19+2.5,1.25]);
translate([-50-10.25-1.5,-8.5-2-2.5,0])cube([1.25+1.5,19+2.5,12.5]);
translate([-50-10+8.2,-8.5-2+0,0])rotate([0,0,38])cube([10-1.75,5,1.25]);
//translate([45,-5.,0])cube([15.5,12,1.25]);
translate([45+9,-5.+6,1.25/2])roundedBox([15.5, 12, 1.25], 5, true);
}
translate([-102,-6.75-2.5,6.75])rotate([0,90,0])cylinder(r=3.7/2,h=200);
//cube([41.8+30,10+30,2.5]);
translate([-25,-20.5,0]){
translate([46/2-15.4/2,43/2-15.2/2,-1])cube([15.4,15.2,13]);
translate([46/2-25/2,43/2,-1])cylinder(r=3.7/2,h=20);
translate([46/2+25/2,43/2,-1])cylinder(r=3.7/2,h=20);
}
translate([-43,-19,0])translate([12+91.5-7.5-0.5,20,-2])cylinder(r=3.7/2,h=20);
}
}

module usb_pcislot(){
difference(){
union(){
//translate([0,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/pci_blanking_plate.stl");
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([0.5-15,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
translate([0.5+13-1.5,1,1.25/2])color("green")roundedBox([100+10-30, 19, 1.25], 8, true); //base part
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
//translate([-50,-8.5,0])color("blue")cube([100,19,1.25]);
translate([-50-10,-8.5-2-2.5,0])cube([10-1.75,19+2.5,1.25]);
translate([-50-10.25-1.5,-8.5-2-2.5,0])cube([1.25+1.5,19+2.5,12.5]);
translate([-50-10+8.2,-8.5-2+0,0])rotate([0,0,38])cube([10-1.75,5,1.25]);
//translate([45,-5.,0])cube([15.5,12,1.25]);
translate([45+9,-5.+6,1.25/2])roundedBox([15.5, 12, 1.25], 5, true);
}
translate([-102,-6.75-2.5,6.75])rotate([0,90,0])cylinder(r=3.7/2,h=200);
//cube([41.8+30,10+30,2.5]);
translate([-25,-20.5,0]){
translate([46/2-15.4/2,43/2-15.2/2+3/2+3/2,-1])cube([15.4,15.2-3-3,13]);
translate([46/2-30/2,43/2,-1])cylinder(r=3.7/2,h=20);
translate([46/2+30/2,43/2,-1])cylinder(r=3.7/2,h=20);
}
translate([-43,-19,0])translate([12+91.5-7.5-0.5,20,-2])cylinder(r=3.7/2,h=20);
}
}













module philmoreconnector_3pin_panelmount(){

difference(){
union(){
//cube([13.8+6,6+6,12]);
translate([-6.5,-4.5,-8])cube([30+3,20,4.8]);
translate([-6.5-10,-4.5,-8])color("lime")cube([10+3,20,4.8]);
translate([-6.5+30,-4.5,-8])color("lime")cube([10+3,20,4.8]);
}
//translate([3-8,3-4.2,-8])cube([13.8+16,6+8.4,10]);
translate([3-2,3,-10])cube([13.8+4,6,9+20]);
translate([3+5.7,3-0.5,-10])cube([2.6,6+1,9+20]);
translate([(13.8+6)/2,(6+6)/2,0])cylinder(r=5.7/2,h=30);
translate([-10,(6+6)/2,-10])cylinder(r=3.7/2,h=30);
translate([31,(6+6)/2,-10])cylinder(r=3.7/2,h=30);
}
}

module philmoreconnector_3pin(){

difference(){
union(){
translate([0,0,-8])cube([13.8+6,6+6,12+8]);
translate([(13.8+6)/2,(6+6)/2,6])cylinder(r=5,h=15);
}
translate([3,3,-8])cube([13.8,6,9+8]);
translate([(13.8+6)/2,(6+6)/2,0])cylinder(r=5.7/2,h=30);
}
}

module psu_mount(){
//coolmax model: CM-300
difference(){union(){
cube([65,10,5]);
translate([0,-4,0])cube([8,16,16]);
}
for(a=[0:4]){
translate([60-a,4,0])cylinder(r=4/2,h=10);
}

for(a=[0:8]){
translate([38-a,4,0])cylinder(r=4/2,h=10);
}

translate([0-6,4,10])rotate([90,0,90])cylinder(r=5.7/2,h=10);
translate([4,4,10])rotate([90,0,90])cylinder(r=9/2,h=5);
}
}


module aluminum_extrusion_breadboard(){
difference(){
union(){
cube([20,30,8]);
translate([0,0,3])cube([33,30,5]);
}
translate([10,8,0]){translate([0,0,-4])cylinder(r=4.7/2,h=8);translate([0,0,4])cylinder(r=8.2/2,h=4.2);}
translate([10,22,0]){translate([0,0,-4])cylinder(r=4.7/2,h=8);translate([0,0,4])cylinder(r=8.2/2,h=4.2);}
translate([27,5,0]){translate([0,0,-4])cylinder(r=4.7/2,h=20);}
translate([27,25,0]){translate([0,0,-4])cylinder(r=4.7/2,h=20);}
}
}

module xenergy_chain_shuttle_lower_spacer(){

difference(){
union(){
translate([0,0,0])cube([61+0,15,7]);
translate([-20.5-1.3-16,0,0]){
//translate([10+2,11.5,-18])cube([11,18.5,18]);
//translate([21+13+2,11.5,-18])cube([11,18.5,18]);
}
}
translate([5,6,-4])cylinder(r=3.7/2,h=15);
translate([55,6,-4])cylinder(r=3.7/2,h=15);
}
}


module xenergy_chain_shuttle_lower(){

difference(){
union(){
translate([-25.8,0,0])cube([61+30-4.3,30,5]);
translate([-20.5-1.3-16,0,0]){
translate([10+2,11.5,-18])cube([11,18.5,18]);
translate([21+13+2,11.5,-18])cube([11,18.5,18]);
}
}
translate([-100,30-3.5-2.5,-3-7])rotate([90,0,90])cylinder(r=6.6/2,h=160);
translate([5,6,-4])cylinder(r=3.7/2,h=15);
translate([5,6,-0.1])cylinder(r=6.8/2,h=2.5,$fn=6);
translate([55,6,-4])cylinder(r=3.7/2,h=15);
translate([55,6,-0.1])cylinder(r=6.8/2,h=2.5,$fn=6);
}
}




module echainsupport(){
difference(){union(){
translate([-15,-20,30])cube([40,18,15]);
translate([-15,-20,30])cube([20,62-13,5]);
}
translate([-5,-11,40])cylinder(r=5.7/2,h=10);
translate([-5,-11,29.5])cylinder(r=9.5/2,h=10.55);

translate([-5+20,-11,40])cylinder(r=5.7/2,h=10);
translate([-5+20,-11,29.5])cylinder(r=9.5/2,h=10.55);

}


}

module echainbracket(){
difference(){union(){
translate([-15,-20,20])cube([20,15,20]);
translate([-15,-20,20])cube([20,62-7,5]);
}
translate([-5,-11,29])cylinder(r=5.7/2,h=16);
translate([-5,-11,19])cylinder(r=9.5/2,h=10.);
translate([-4,11-4,19])cylinder(r=4.7/2,h=80);
translate([-4,11+20-4,19])cylinder(r=4.7/2,h=80);

}
}

module topbreadboard(){

difference(){
union(){
cube([60,60,7]);
translate([-20,0,0])cube([100,20,7]);
translate([-10,40,0])cube([80,20,7]);
translate([25,15,-10])cube([10,10,17]);
translate([15,15+10,-10])cube([30,10,17]);
}
for(a=[0,5]){
for(b=[0,1,2,3,4,5]){
translate([5+(a*10),5+(b*10),0-1]){cylinder(r=3.7/2,h=10);translate([0,0,0.2-8])cylinder(r=6.3/2,h=3+8,$fn=6);}
}
}
for(a=[1,4]){
for(b=[0,1,4,5]){
translate([5+(a*10),5+(b*10),0-1]){cylinder(r=3.7/2,h=10);translate([0,0,0.2-8])cylinder(r=6.3/2,h=3+8,$fn=6);}
}
}
for(a=[2:3]){
for(b=[0,4,5]){
translate([5+(a*10),5+(b*10),0-1]){cylinder(r=3.7/2,h=10);translate([0,0,0.2-8])cylinder(r=6.3/2,h=3+8,$fn=6);}
}
}

for(a=[-1,-2,6,7]){
for(b=[0:1]){
translate([5+(a*10),5+(b*10),0-1]){cylinder(r=3.7/2,h=10);translate([0,0,0.2-8])cylinder(r=6.3/2,h=3+8,$fn=6);}
}
}
for(a=[-1,6]){
for(b=[4,5]){
translate([5+(a*10),5+(b*10),0-1]){cylinder(r=3.7/2,h=10);translate([0,0,0.2-8])cylinder(r=6.3/2,h=3+8,$fn=6);}
}
}
/*
translate([25+5,15+5,0])cylinder(r=3.7/2,h=30);
translate([25+5-10,15+5+20,0])cylinder(r=3.7/2,h=30);
translate([25+5+10,15+5+20,0])cylinder(r=3.7/2,h=30);
*/
translate([25+5,15+5,-12]){cylinder(r=5.7/2,h=30);translate([0,0,15.5])cylinder(r=9.7/2,h=3.5);}
translate([25+5-10,15+5+10,-12]){cylinder(r=5.7/2,h=30);translate([0,0,15.5])cylinder(r=9.7/2,h=3.5);}
translate([25+5+10,15+5+10,-12]){cylinder(r=5.7/2,h=30);translate([0,0,15.5])cylinder(r=9.7/2,h=3.5);}
}
}

module flags(){
xflag_fin();
//translate([-7,-8,0])rotate([0,0,-90])yflag_fin();

//translate([25,6,19])rotate([0,90,0])zflag_fin_mount();

translate([37,45,0])rotate([90,0,0])zflag_fin();
}



module motor_endstop_plate(){

difference(){
union(){
cube([35+6,37+6,5]);
translate([10,-15,0])cube([20,20,4]);
}
translate([3,3,2])cube([35,37,10]);
translate([20,-15+7.5,-3])cylinder(r=4.7/2,h=20);
}
translate([3,3,0])cube([5,5,3]);
translate([33,3,0])cube([5,5,3]);
translate([3,35.5,0])cube([5,5,3]);
translate([33,35.5,0])cube([5,5,3]);
}


module zflag_fin(){

difference(){
union(){
cube([15,15,9]);
cube([15,2,65]);
}

translate([7.5,7.5,-3]){cylinder(r=3.7/2,h=20);translate([0,0,3+6.2])cylinder(r=6.8/2,h=3,$fn=6);}
}
}


module zflag_fin_mount(){
difference(){
union(){
cube([18,18,4+5]);
translate([14,0,-31])cube([5,18,40]);
}
translate([9,9,-1]){translate([0,0,3])cylinder(r=5.7/2,h=10);cylinder(r=9/2,h=3.5);}
for(a=[0:17]){
translate([12,9,-8-a])rotate([90,0,90])cylinder(r=3.7/2,h=10);
}
}

}


//length originally 70
module yflag_fin(xlen){
//xlen = 70;
difference(){union(){
cube([18,xlen,2]);
cube([18,18,3]);
}
translate([9,9,-4])cylinder(r=4.7/2,h=20);
}
}

module xflag_fin(){

difference(){
union(){
cylinder(r=10/2,h=5+4.6-2);
translate([-4,-7,0])cube([40,10,2]);
}
translate([-1,0,-0.5])cylinder(r=3.7/2,h=20);
}

}




module yenergy_chain_shuttle(){

difference(){
union(){
translate([-8,12-0.5,0])cube([55+1.5,18+0.5,5]);
translate([-8,-0,0])cube([25,30,5]);
translate([10+2+1.5,11.5,-18])cube([11,18.5,18]);
translate([21+13+2+1.5,11.5,-18])cube([11,18.5,18]);
}
//translate([0,30-3.5-2.5,-3-7])rotate([90,0,90])cylinder(r=6.6/2,h=160);
translate([0,30-3.5-11.5+2.25,-3-7])rotate([90,0,90])cylinder(r=6.6/2,h=160);
translate([1,6,-4])cylinder(r=4.7/2,h=15);
translate([1,25,-4])cylinder(r=4.7/2,h=15);
//translate([55,6,-4])cylinder(r=3.7/2,h=15);
}
}




module xenergy_chain_station_assy(){
difference(){union(){
translate([0,0,25+7.5-3])xenergy_chain_stationary_tophalf();
translate([0,0,25])xenergy_chain_stationary_bottomhalf();
}
for(a=[-2,0,2]){
translate([-30,21+a,31])rotate([90,0,90])cylinder(r=5,h=100);
}
translate([12,6,0]){translate([0,0,26])cylinder(r=3.7/2,h=12);translate([0,0,24.5])cylinder(r=6.8/2,$fn=6,h=3.2);}
translate([12,6+30,0]){translate([0,0,26])cylinder(r=3.7/2,h=12);translate([0,0,24.5])cylinder(r=6.8/2,$fn=6,h=3.2);}
}
}


module xenergy_chain_stationary_tophalf(){
translate([-26,12,-23-4.1])rotate([90,0,90])energychainconnect_xchain_stationary();
translate([-26,30,37-4.1])rotate([-90,0,-90])energychainconnect_xchain_stationary();
difference(){
cube([25,42,15/2+1]);
translate([0,(42-17)/2,0])cube([13,17,16]);
}
}


module xenergy_chain_stationary_bottomhalf(){

difference(){
union(){
cube([25,42,15/2-3]);
translate([-15,0,0])cube([20,12.5,5]);
translate([-15,10,0])cube([10,19.5,5]);
translate([-15,29.5,0])cube([20,12.5,5]);
}
translate([0,14.5,-2])cube([25,13,15/2]);
translate([-10,11,-2])cylinder(r=4.7/2,h=50);
translate([-10,11+20,-2])cylinder(r=4.7/2,h=50);
translate([0,(42-17)/2,0])cube([13,17,16]);
}
}




/*
module xenergy_chain_shuttle(){

difference(){
union(){
cube([61,30,5]);
translate([10+2,11.5,-18])cube([11,18.5,18]);
translate([21+13+2,11.5,-18])cube([11,18.5,18]);
}
translate([0,30-3.5-2.5,-3-7])rotate([90,0,90])cylinder(r=6.6/2,h=160);
translate([5,6,-4])cylinder(r=3.7/2,h=15);
translate([55,6,-4])cylinder(r=3.7/2,h=15);
}
}
*/

/*
module raspiconnector_adjust(){
difference(){
union(){
cube([15,15,10]);
cube([15,15+15,5]);
translate([-2.5,15,0])cube([20,15,5]);
}
translate([7.5,17.5,7])rotate([90,0,0]){translate([0,0,-2])cylinder(r=5.7/2,h=20);translate([-0,-0,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);translate([-0,3,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);}


for(a=[-5:5]){
translate([15/2+a,25,-4])cylinder(r=3.7/2,h=20);
}
}
}


module raspiconnector(){
difference(){
union(){
cube([15,15,10]);
cube([15,15+15,5]);
}
translate([7.5,17.5,7])rotate([90,0,0]){translate([0,0,-2])cylinder(r=5.7/2,h=20);translate([-0,-0,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);translate([-0,3,6])rotate([0,0,90])cylinder(r=9.5/2,h=7.5,$fn=6);}
translate([15/2,25,-4])cylinder(r=3.7/2,h=20);
}
}

*/


module endstop_optical(){

difference(){
translate([0,0,0])cube([18+6,40+5,3]);
translate([3,0,1.5])cube([18,40,6]);
translate([3+3,40-3,-2])cylinder(r=3.7/2,h=20);
translate([3+3,40-4,-2])cylinder(r=3.7/2,h=20);
translate([3+3,40-5,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-3,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-4,-2])cylinder(r=3.7/2,h=20);
translate([3+4,40-5,-2])cylinder(r=3.7/2,h=20);

}
}


module ymountbottombeltglide(){
difference(){
translate([15+15,-50,68])cube([30,5,60]);

translate([15+35,-40,98+7])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([15+23.5,-40,121.5])rotate([90,90,0])cylinder(r=5.7/2,h=60);
translate([15+23.5,-40,121.5-47])rotate([90,90,0])cylinder(r=5.7/2,h=60);
}
//rotate([90,0,0])tslot40_2060(200);
}


module pin26connectormount(){
difference(){
union(){
cube([72,100,3]);
difference(){
translate([-5,-5,0])cube([72+10,100+10,9]);
cube([72,100,13]);
}
}
translate([5,5,0])cube([72-10,100-10,3]);
}
translate([-15,-5,0]){difference(){cube([15,15,9]);translate([7.5,7.5,-20])cylinder(r=3.7/2,h=50);}}
translate([-5+77,-5,0]){difference(){cube([15,15,9]);translate([7.5,7.5,-20])cylinder(r=3.7/2,h=50);}}
translate([-15,-17.5+107.5,0]){difference(){cube([15,15,9]);translate([7.5,7.5,-20])cylinder(r=3.7/2,h=50);}}
translate([-5+77,-17.5+107.5,0]){difference(){cube([15,15,9]);translate([7.5,7.5,-20])cylinder(r=3.7/2,h=50);}}
}


module powerbutton(){
difference(){
cylinder(r=45/2,h=3);
cylinder(r=26/2,h=3);
}
}


module luerlocksockets_5(){

difference(){
union(){
translate([0,-5,0])cube([60,30,3]);
translate([10,-5,0])cube([40,10,3]);
translate([30,10,0])cylinder(r=38,h=3);
}
translate([18,22,0])cylinder(r=6.5/2,h=20);
translate([44,22,0])cylinder(r=6.5/2,h=20);
translate([18+13,11,0])cylinder(r=6.5/2,h=20);
translate([18,-2,0])cylinder(r=6.5/2,h=20);
translate([44,-2,0])cylinder(r=6.5/2,h=20);
}
}






module simple_male_connector(){
difference(){
union(){
translate([-5,-5,0])cube([2.8+10,12.7+10,5]);
translate([1.4,0,0])cylinder(r=5.5/2,h=7);
translate([1.4,12,0])cylinder(r=4/2,h=7);
}
translate([0,0,0])cube([2.8,11.5,7]);
}
}





module simple_female_connector(){
difference(){
translate([-5,-5,0])cube([2.8+10,12.7+10,5]);
translate([1.4,0,3])cylinder(r=(5.8)/2,h=2);
translate([1.4,12,3])cylinder(r=4.3/2,h=2);
cube([2.8,12.7,7]);
}
}






module syringepump_electronicbox_lid(){
difference(){
union(){
translate([0.5,0.5,-10])cube([62,58,5]);
translate([-5,-5,-7])cube([63+10,59+10,2]);
}
translate([10,10,-15])cube([63-20,59-20,22]);
}
}










module syringepump_electronicbox(){
difference(){
union(){
translate([-4,-4,-2])cube([63+8,59+8,25]);
translate([8,-24,-2])cube([45,20,4]);
}
cube([63,59,32]);
translate([20,-15,-30])cylinder(r=5.7/2,h=200);
translate([40,-15,-30])cylinder(r=5.7/2,h=200);
}
}






module luerlocksockets_3(){
difference(){
union(){
cube([60,30,3]);
translate([15,-10,0])cube([30,15,3]);
}
translate([10,15,0]){
cylinder(r=3.7/2,h=20);
translate([41,0,0])cylinder(r=3.7/2,h=20);
}
translate([22,15,0])cylinder(r=6.5/2,h=20);
translate([40,15,0])cylinder(r=6.5/2,h=20);
translate([22+9,2,0])cylinder(r=6.5/2,h=20);
}
}


module luerlocksockets_2(){
difference(){
union(){
cube([60,30,3]);
//translate([15,-10,0])cube([30,15,3]);
}
translate([10,15,0]){
cylinder(r=3.7/2,h=20);
translate([41,0,0])cylinder(r=3.7/2,h=20);
}
translate([22,15,0])cylinder(r=6.5/2,h=20);
translate([40,15,0])cylinder(r=6.5/2,h=20);
//translate([22+9,2,0])cylinder(r=6.5/2,h=20);
}
}

module luerlocksockets_1(){
difference(){
union(){
cube([60,30,3]);
//translate([15,-10,0])cube([30,15,3]);
}
translate([10,15,0]){
cylinder(r=3.7/2,h=20);
translate([41,0,0])cylinder(r=3.7/2,h=20);
}
/*
translate([22,15,0])cylinder(r=6.5/2,h=20);
translate([40,15,0])cylinder(r=6.5/2,h=20);
*/
translate([22+9,15,0])cylinder(r=6.5/2,h=20);
}
}






module luerlocksockets_4(){
difference(){
union(){
translate([0,-5,0])cube([60,30,3]);
translate([10,-5,0])cube([40,10,3]);
}
translate([10,10,0]){
cylinder(r=3.7/2,h=20);
translate([41,0,0])cylinder(r=3.7/2,h=20);
}
translate([22,18,0])cylinder(r=6.5/2,h=20);
translate([40,18,0])cylinder(r=6.5/2,h=20);
translate([22,2,0])cylinder(r=6.5/2,h=20);
translate([40,2,0])cylinder(r=6.5/2,h=20);
}
}







module powerswitch_simple(){
difference(){
cube([26,42,3]);
//translate([26/2-11.6/2,42/2-28.5/2,-5.2])cube([11.6,28.5,16]);
translate([26/2-14/2,42/2-29.2/2,-5.2])cube([14,29.2,16]);
}
}


module powersocket(){

 difference(){
 union(){
 //translate([-30,-5,0])powerswitch_simple();
 translate([-5,-5,0])cube([60,42,3]);
 //translate([-40,4,0])cube([10,22,3]);
 }
 translate([25-15.25,36/2-23.5/2,0])cube([30.5,19.5,3]);
 translate([25-20,16,0])cylinder(r=3.7/2,h=30);
 translate([25+20,16,0])cylinder(r=3.7/2,h=30);
 //translate([25-59,16,0])cylinder(r=3.7/2,h=30);
 }
// for svg 
/*
 projection(cut = false){
 translate([25-15.25-0.5,36/2-23.5/2-0.5,0])cube([30.5+1,19.5+1,3]);
 translate([25-20,16,0])cylinder(r=3.7/2,h=30);
 translate([25+20,16,0])cylinder(r=3.7/2,h=30);
 }
*/
//

}


module tslot_topbreadboardmount(){

difference(){union(){
cube([10,20,10]);
translate([-10,0,0])cube([20,8,20]);
}
translate([-4,50,10])rotate([90,90,0])cylinder(r=5.7/2,h=130);
translate([-4,8.1+13,10])rotate([90,90,0])cylinder(r=10/2,h=3+13);
translate([5,15,-50])rotate([0,0,0])cylinder(r=3.7/2,h=130);
}
}


module nalgene_liquidsensor_cap(){

difference(){union(){
//cylinder(r=48.5/2,h=5);
translate([-4.5-4,-15-4,55-40])cube([8+8,30+8,40]);
}
translate([-4.5-0.5,-15-0.5,10])cube([8+1,30+1,25-4]);
translate([-1.5,-13,0])cube([2,26,25+27]);
translate([-0.5,0,0])cylinder(r=5.7/2,h=100);
translate([-4.5/2.0,-(3.5*4)/2,31])cube([3.5,3.5*4,15]);
}
}


module nalgene_liquidsensor(){

difference(){union(){
cylinder(r=61.5/2,h=4.5);
translate([-4.5,-15,0])cube([8,30,25+25]);
}
translate([-1.5,-13,0])cube([2,26,150]);
translate([15,-10,0])cylinder(r=6.7/2,h=40);
translate([-15,-0,0])cylinder(r=6.7/2,h=40);
translate([15,10,0])cylinder(r=5.3/2,h=40);
}
}


module molex_connector_set_extruder_single(){
difference(){
translate([-13,-4,0])cube([80-30,30,8]);
union(){
cube([25,25,8]);
//translate([30,0,0])cube([25,25,8]);
}
translate([62-30,1,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
translate([62-30,20,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
//translate([-8,1,-5])cylinder(r=3.7/2,h=20);
//translate([-8,20,-5])cylinder(r=3.7/2,h=20);
}
molex_mini_fitjr_connectors();
//translate([30,0,0])molex_mini_fitjr_connectors();
}





module molex_connector_set_extruder_heat_bed_single(){
difference(){
translate([-13,-4,0])cube([80-30,30,8]);
union(){
cube([25,25,8]);
//translate([30,0,0])cube([25,25,8]);
}
translate([62-30,1,-5])cylinder(r=3.7/2,h=20);
translate([62-30,20,-5])cylinder(r=3.7/2,h=20);
translate([-8,1,-5])cylinder(r=3.7/2,h=20);
translate([-8,20,-5])cylinder(r=3.7/2,h=20);
}
molex_mini_fitjr_connectors();
//translate([30,0,0])molex_mini_fitjr_connectors();
}

//mini-fitjr receptacle and vert header 4 circuit
//this is the 4 pack one
module molex_mini_fitjr_connectors(){
difference(){
cube([25,25,8]);
translate([12.5-11/2,12.5-11/2,0])cube([11,11,8]);
translate([12.5-5-5/2-0.5+0.5,12.5-5+4/2,0])cube([16-1,5.5,8+10]);
translate([12.5-5-5/2-6.5,12.5-5+4/2,2])cube([28,5.5,8+10]);
translate([12.5-2,2,0])cube([4,6,8]);
}
}














module molex_connector_set_extruder_heat_bed(){
difference(){
translate([-13,-4,0])cube([80,30,8]);
union(){
cube([25,25,8]);
translate([30,0,0])cube([25,25,8]);
}
translate([62,1,-5])cylinder(r=3.7/2,h=20);
translate([62,20,-5])cylinder(r=3.7/2,h=20);
translate([-8,1,-5])cylinder(r=3.7/2,h=20);
translate([-8,20,-5])cylinder(r=3.7/2,h=20);
}
molex_mini_fitjr_connectors();
translate([30,0,0])molex_mini_fitjr_connectors();
}

//mini-fitjr receptacle and vert header 4 circuit
//this is the 4 pack one
module molex_mini_fitjr_connectors(){
difference(){
cube([25,25,8]);
translate([12.5-11/2,12.5-11/2,-1])cube([11,11,10]);
translate([12.5-5-5/2-0.5+0.5,12.5-5+4/2,0])cube([16-1,5.5,8+10]);
translate([12.5-5-5/2-6.5,12.5-5+4/2,2])cube([28,5.5,8+10]);
translate([12.5-2,2,-1])cube([4,6,10]);
}
}









module molex_connector_set_extruder_heat_bed_3plug(){
difference(){
translate([-13-30,-4,0])cube([80+30,30,8]);

union(){
cube([25,25,8]);
translate([30,0,0])cube([25,25,8]);
}
translate([62,1,-5])cylinder(r=3.7/2,h=20);
translate([62,20,-5])cylinder(r=3.7/2,h=20);
translate([-8-30,1,-5])cylinder(r=3.7/2,h=20);
translate([-8-30,20,-5])cylinder(r=3.7/2,h=20);
}
molex_mini_fitjr_connectors();
translate([30,0,0])molex_mini_fitjr_connectors();
translate([-30,0,0])molex_mini_fitjr_connectors();
}

//mini-fitjr receptacle and vert header 4 circuit
//this is the 4 pack one
/*
module molex_mini_fitjr_connectors(){
difference(){
cube([25,25,8]);
translate([12.5-11/2,12.5-11/2,0])cube([11,11,8]);
translate([12.5-5-5/2-0.5+0.5,12.5-5+4/2,0])cube([16-1,5.5,8+10]);
translate([12.5-5-5/2-6.5,12.5-5+4/2,2])cube([28,5.5,8+10]);
translate([12.5-2,2,0])cube([4,6,8]);
}
}
*/



module molex_connector_female_end_4conductor_power(){
difference(){
union(){
//translate([-2.5,0,-1.5])cube([15,10,15]);
translate([5,10,6])rotate([90,0,0])cylinder(r=9,10);
translate([5,20,6])rotate([90,0,0])cylinder(r1=5,r2=9,10);
difference(){
translate([5,10-10,6])rotate([90,0,0])cylinder(r=9,3);
translate([0,-3.1,-5])cube([10,3,11+10]);
}
}
translate([0,-3,0]){
cube([2,1.5+1.5,12]);
translate([8,0,0])cube([2,1.5+1.5,12]);
cube([10,1.5+1.5,11]);
}
translate([0,0,0]){
cube([2,1.5,12]);
translate([8,0,0])cube([2,1.5,12]);
cube([10,1.5,11]);
}
translate([5,30,6])rotate([90,90,0])cylinder(r=4.8/2,h=100);
}

translate([0,15,0])difference(){
translate([5,20,6])rotate([90,0,0])cylinder(r=5,15);
translate([5,30,6])rotate([90,90,0])cylinder(r=4.8/2,h=100);
}

/*
translate([-20,0,0])difference(){
translate([5,20,6])rotate([90,0,0])cylinder(r=5,15);
translate([5,30,6])rotate([90,90,0])cylinder(r=4.8/2,h=100);
}
*/

}




module philmore_3pin_panel_connector(){
difference(){
cube([35,35,3+5]);
translate([35/2,35/2,-5])cylinder(r=20/2,h=30);
translate([5,5,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
translate([5,30,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
//translate([30,5,-5])cylinder(r=3.7/2,h=20);
//translate([30,30,-5])cylinder(r=3.7/2,h=20);
}
}


module philmore_dcjack_no321(){
difference(){
cube([35,35,3+5]);
translate([35/2,35/2,2])cylinder(r=20/2,h=22);
translate([35/2,35/2,-1])cylinder(r=11.5/2,h=20);
//translate([35/2,35/2,-5])cylinder(r=20/2,h=30);
translate([5,5,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
translate([5,30,-5]){cylinder(r=3.7/2,h=20);translate([0,0,9])cylinder(r=3.7,h=4);}
}

/*
translate([35/2,35/2,0])difference(){
cylinder(r=21/2,h=2);
translate([0,0,-1])cylinder(r=11.5/2,h=20);
}
*/
}








module pumpports(){
difference(){
cylinder(r=75.5/2,h=3);
cylinder(r=6.3/2,h=3);
translate([-10.7,-10.7,0])cylinder(r=6.3/2,h=3);
translate([10.7,-10.7,0])cylinder(r=6.3/2,h=3);
translate([-10.7,10.7,0])cylinder(r=6.3/2,h=3);
translate([10.7,10.7,0])cylinder(r=6.3/2,h=3);
}
}






module luerlockconnect(){

difference(){
cube([55,35,6]);
translate([15+5,35/2,0])cylinder(r=11.5/2,h=20);
translate([40,35/2,0])cylinder(r=11.5/2,h=20);
}
}


module m5_foot(){
 difference(){
 cylinder(r1=8,r2=12,h=16);
 translate([0,0,-4])cylinder(r=5.7/2,h=30);
 translate([0,0,10.5])cylinder(r=9.7/2,h=6);
 }
}


module controlbox_assy(){
translate([215,-370,-32])rotate([-0,180,0])m5_foot();
translate([215-200,-370,-32])rotate([-0,180,0])m5_foot();
translate([215-200,-370+380,-32])rotate([-0,180,0])m5_foot();
translate([215,-370+380,-32])rotate([-0,180,0])m5_foot();
//controlbox();
//color("pink")translate([175,-380,220])rotate([-90,90,0])pin26connectormount();
translate([175,-380,220])rotate([-90,90,0])import("3dprinting/pin26connectormount.stl");
translate([175-85,-380-10,210])rotate([-90,0,0])import("3dprinting/ribbon_26pin.stl");
translate([45,-387,220])rotate([-90,90,0])import("3dprinting/powerbutton.stl");
translate([45,25,230])rotate([-90,0,0])import("3dprinting/powersocket.stl");
//color("lime")translate([0,-270,235])rotate([90,0,-90])molex_connector_set_extruder_heat_bed();
translate([0,-270,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
translate([0,-270+100,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
translate([0,-270+100+130,235])rotate([90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/molex_connector_set_extruder_heat_bed_single.stl");
//color("lime")translate([0,-270+90,230])rotate([90,0,-90])philmore_3pin_panel_connector();
//translate([0,-270+90+60,248])rotate([90,0,-90])import("3dprinting/syringepump_10pin.stl");
translate([0,-270+90+60+25,220])rotate([90,0,-90])rj45jack();
translate([233,-270+20,248-170])rotate([0,-90,0])import("3dprinting/pumpports.stl");
//inside part
//Azteeg mini part
difference(){union(){
//translate([155,-205,130])azteegx5_case();
translate([155,-205,130])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/azteegx5mini.stl");//azteegx5_case();
translate([155+25,-205-47,130+4])rotate([0,0,90])azteeg_x5_mini();
translate([110,-180,130])cube([15,20,3]);
}
translate([117,-170,130-2])cylinder(r=4.7/2,h=10);
}
translate([35,-305-20+80,130])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
translate([200-2-186,-40-80-100,225])rotate([0,0,180])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([205,-40-70,225-100])rotate([0,0,180])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/coolmax_psu_mount.stl");
translate([200-120,-40-70,225-100])color("LightSteelBlue")coolmax_psu();
translate([200-2,-40-80-190,225])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([35+94,-305+200-90,130+100])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
}



module controlbox_assy_fluidics(){
translate([-50,90,100])rotate([0,0,0]){
translate([215,-370,-32])rotate([-0,180,0])m5_foot();
translate([215-200+50,-370,-32])rotate([-0,180,0])m5_foot();
translate([215-200+50,-370+380-90,-32])rotate([-0,180,0])m5_foot();
translate([215,-370+380-90,-32])rotate([-0,180,0])m5_foot();
}


translate([233-50,-270+20+70,248-170+80])rotate([0,-90,0])import("3dprinting/pumpports.stl");

translate([-105,-295,0])rotate([0,0,90]){
translate([0,-270+90+60+25-75,220-60])rotate([90,0,-90])rj45jack();
//translate([0,-270+100,235-60])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
//translate([0,-270+100-15,235-100])rotate([90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/molex_connector_set_extruder_heat_bed_single.stl");
}
//controlbox();
/*
//color("pink")translate([175,-380,220])rotate([-90,90,0])pin26connectormount();
translate([175,-380,220])rotate([-90,90,0])import("3dprinting/pin26connectormount.stl");
translate([175-85,-380-10,210])rotate([-90,0,0])import("3dprinting/ribbon_26pin.stl");
translate([45,-387,220])rotate([-90,90,0])import("3dprinting/powerbutton.stl");
translate([45,25,230])rotate([-90,0,0])import("3dprinting/powersocket.stl");
//color("lime")translate([0,-270,235])rotate([90,0,-90])molex_connector_set_extruder_heat_bed();
translate([0,-270,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
translate([0,-270+100,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
translate([0,-270+100+130,235])rotate([90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/molex_connector_set_extruder_heat_bed_single.stl");
//color("lime")translate([0,-270+90,230])rotate([90,0,-90])philmore_3pin_panel_connector();
//translate([0,-270+90+60,248])rotate([90,0,-90])import("3dprinting/syringepump_10pin.stl");
translate([0,-270+90+60+25,220])rotate([90,0,-90])rj45jack();
//inside part
//Azteeg mini part
difference(){union(){
//translate([155,-205,130])azteegx5_case();
translate([155,-205,130])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/azteegx5mini.stl");//azteegx5_case();
translate([155+25,-205-47,130+4])rotate([0,0,90])azteeg_x5_mini();
translate([110,-180,130])cube([15,20,3]);
}
translate([117,-170,130-2])cylinder(r=4.7/2,h=10);
}
translate([35,-305-20+80,130])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
translate([200-2-186,-40-80-100,225])rotate([0,0,180])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([205,-40-70,225-100])rotate([0,0,180])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/coolmax_psu_mount.stl");
translate([200-120,-40-70,225-100])color("LightSteelBlue")coolmax_psu();
translate([200-2,-40-80-190,225])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([35+94,-305+200-90,130+100])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
*/

}










module controlbox_assy_electronics(){
translate([10,-270+90+60+25,220-80])rotate([90,0,-90])cube([70,60,5]);
translate([175-85-100+10,-380-10+296,210-65])rotate([90,0,-90])import("3dprinting/ribbon_26pin.stl");

translate([-3,-70,250])rotate([0,90,0])justusb();

translate([215,-370,-32+100])rotate([-0,180,0])m5_foot();
translate([215-200,-370,-32+100])rotate([-0,180,0])m5_foot();
translate([215-200,-370+380,-32+100])rotate([-0,180,0])m5_foot();
translate([215,-370+380,-32+100])rotate([-0,180,0])m5_foot();
//controlbox();
//color("pink")translate([175,-380,220])rotate([-90,90,0])pin26connectormount();
//translate([175,-380,220])rotate([-90,90,0])import("3dprinting/pin26connectormount.stl");
//translate([175-85,-380-10,210])rotate([-90,0,0])import("3dprinting/ribbon_26pin.stl");
translate([45,-387,220])rotate([-90,90,0])import("3dprinting/powerbutton.stl");
translate([45,25,230])rotate([-90,0,0])import("3dprinting/powersocket.stl");
//color("lime")translate([0,-270,235])rotate([90,0,-90])molex_connector_set_extruder_heat_bed();
translate([0,-270,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
translate([0,-270+100,235])rotate([90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
//translate([0,-270+100-30,235])rotate([90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/molex_connector_set_extruder_heat_bed_single.stl");
//color("lime")translate([0,-270+90,230])rotate([90,0,-90])philmore_3pin_panel_connector();
//translate([0,-270+90+60,248])rotate([90,0,-90])import("3dprinting/syringepump_10pin.stl");
translate([0,-270+90+60+25,220])rotate([90,0,-90])rj45jack();
translate([0,-270+90+60+25-170,220-80])rotate([90,0,-90])rj45jack();
//translate([233,-270+20,248-170])rotate([0,-90,0])import("3dprinting/pumpports.stl");
//inside part
//Azteeg mini part
difference(){union(){
//translate([155,-205,130])azteegx5_case();
translate([155,-205,130])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/azteegx5mini.stl");//azteegx5_case();
translate([155+25,-205-47,130+4])rotate([0,0,90])azteeg_x5_mini();
translate([110,-180,130])cube([15,20,3]);
}
translate([117,-170,130-2])cylinder(r=4.7/2,h=10);
}
translate([35,-305-20+80,130])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
translate([200-2-186,-40-80-100,225])rotate([0,0,180])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([205,-40-70,225-100])rotate([0,0,180])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/coolmax_psu_mount.stl");
translate([200-120,-40-70,225-100])color("LightSteelBlue")coolmax_psu();
translate([200-2,-40-80-190,225])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}
translate([35+94,-305+200-90,130+100])difference(){union(){
arduino_base_template();
translate([56,0,0])cube([20,20,3]);
}
translate([56+10,10,0])cylinder(r=4.7/2,h=10);
}
}





















module syringepump_10pin(){
difference(){
cylinder(r=22,h=3);
translate([-23.5/2,-8.7/2,-1])cube([23.5,8.7,10]);
}
}

module ponoko_laser_case_black(pcolor){

//projection(cut = false)translate([370,-10,590])rotate([90,0,0])import("panel_right_back_back.stl");

//right back back
//this stuff for making into 2D 
//789.94 mm x 383.54mm works
//1 
//373.5 x 440 x 3
//translate([0,0,0])rotate([90,0,0])color(pcolor)
/*
color(pcolor)translate([-740-3,-595+0.5+1.50,-10])difference(){cube([750/2-1.5,3,440]);
translate([350,25,10])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([350,25,430])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([25,25,10])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([25,25,430])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}
*/
//PASS!
//translate([40.5,-260-421.5,-590])rotate([180,0,0])import("1_panel_right_back_back_blue.dxf");

//left back back
//789.94 mm x 383.54mm works
//2
//373.5 x 440 x 3
//projection(cut = false)

//rotate([90,0,0])
/*
color(pcolor)translate([(-740)/2,-595+0.5+1.5,-10])difference(){cube([750/2-1.5,3,440]);
translate([350,25,10])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([350,25,430])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([25,25,10])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([25,25,430])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}
*/


//PASS
//translate([756,-260-421.5,-590])rotate([180,0,0])import("2_panel_left_back_back_blue.dxf");

//left back side
//rotate([0,90,0])
//789.94 mm x 383.54mm works
//3
//310 x 440 x3
//projection(cut = false)
//rotate([90,90,0])
color(pcolor)translate([0,-590,-10])difference(){
cube([3,620/2,440]);
//translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);

translate([0,0,420]){
translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,150,-95])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,10,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
}
}

/*
//PASS
//translate([788,-260-421.5,-0])rotate([180,0,0])import("3_panel_left_back_side_blue.dxf");
*/


//left front side
//789.94 mm x 383.54mm works
//4
//310x440x3
//projection(cut = false)
//rotate([90,90,0])
color(pcolor)translate([0,-280,-10])difference(){
cube([3,620/2,440]);
//translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);

translate([0,0,420]){
translate([-30,30,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,150,-95])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,30,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
}
}

/*
//PASS
translate([1382.5,-260-421.5,-0])rotate([180,0,0])import("4_panel_left_front_side_blue.dxf");

*/


//right back side

//projection(cut = false)rotate([90,90,0])
//789.94 mm x 383.54mm works
//5
//310x440x3
//projection(cut = false)
//rotate([90,90,0])

/*
color(pcolor)translate([-745+0.5+1.5,-590,-10])difference(){
cube([3,620/2,440]);
//translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([0,0,420]){
translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,150,-95])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,10,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,285,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
}
}
*/


/*
//PASS
translate([1356.5,261,740])rotate([0,0,0])import("5_panel_right_back_side_blue.dxf");
*/


//right front side
//789.94 mm x 383.54mm works
//6
//310x440x3

//projection(cut = false)
//rotate([90,90,0])
/*
color(pcolor)translate([-745+0.5+1.5,-280,-10])difference(){
cube([3,620/2,440]);
//translate([-30,10,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,320,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([0,0,420]){
translate([-30,30,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,150,-95])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,30,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,285,-410])rotate([0,90,0])cylinder(r=5.7/2,h=50);
translate([-30,280,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);

//translate([-30,500,-95])rotate([0,90,0])cylinder(r=5.7/2,h=50);
//translate([-30,610,10])rotate([0,90,0])cylinder(r=5.7/2,h=50);
}
}
*/
/*
//PASS
translate([1666,261,740])rotate([0,0,0])import("6_panel_right_front_side_blue.dxf");
*/


//HRUA5-AC-500-302
//789.94 mm x 383.54mm does not work
//7
//You split it up into 2 in order to fit on Ponoko laser cutter
//373x440x4.5

//Here is the front of the box
//translate([-370,50,220])rotate([-90,0,0])import("HRUA5-AC-500-302.stl");
//projection(cut = false)
//rotate([90,0,0])
translate([-740-3.5,30,-10])difference(){
union(){
//translate([0.5,0,0])color("orange")cube([(750-0.5-3.5)/2,4.5,440]);
translate([0.5+(750-0.5-3.5)/2,0,0])color(pcolor)cube([(750-0.5-3.5)/2,4.5,440]);
}
translate([150-6,-10,108])cube([450+12,20,220+25]);
translate([200,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175-20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175+20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+350,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);

translate([0,0,282]){
translate([200,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175-20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175+20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+350,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=50);

translate([480,0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}


translate([560,-0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=150);
}

translate([-100,-0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=150);
}

translate([0,0,-79]){
translate([20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355-190,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([390,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([580,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([732,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

translate([0,0,341]){
translate([20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355-190,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([390,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([580,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([732,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

}


//Here is 7 on the other side

//HRUA5-AC-500-302
//789.94 mm x 383.54mm does not work
//7
//You split it up into 2 in order to fit on Ponoko laser cutter
//373x440x4.5

//Here is the front of the box
//sliding door
//color("silver")translate([-370,50,220])rotate([-90,0,0])import("HRUA5-AC-500-302.stl");
//projection(cut = false)
//rotate([90,0,0])
translate([-740-3.5,30,-10])difference(){
union(){
translate([0.5,0,0])color(pcolor)cube([(750-0.5-3.5)/2,4.5,440]);
//translate([0.5+(750-0.5-3.5)/2,0,0])color("white")cube([(750-0.5-3.5)/2,4.5,440]);
}
translate([150-6,-10,108])cube([450+12,20,220+25]);
translate([200,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175-20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175+20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+350,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);

translate([0,0,282]){
translate([200,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175-20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+175+20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([200+350,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=50);

translate([480,0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}


translate([560,-0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=150);
}

translate([-100,-0,0]){
translate([135,40,110])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,230])rotate([90,90,0])cylinder(r=5.7/2,h=150);
translate([135,40,340])rotate([90,90,0])cylinder(r=5.7/2,h=150);
}

translate([0,0,-79]){
translate([20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355-190,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([390,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([580,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([732,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

translate([0,0,341]){
translate([20,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([355-190,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([390,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([580,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
translate([732,40,89])rotate([90,90,0])cylinder(r=5.7/2,h=50);
}

}

//This is the base part
//base part I guess this would be 10 and 11
//right side part
//10

//projection(cut = false)
translate([-700,-570,-13])color(pcolor)difference(){cube([340,565,3]);
for (a=[0,1]){
translate([310,100+(150*a),0])cube([30,200,3]);
}
translate([25,10,-50])cylinder(r=5.7/2,h=100);
translate([170,10,-50])cylinder(r=5.7/2,h=100);
translate([324,10,-50])cylinder(r=5.7/2,h=100);
translate([330,80,-50])cylinder(r=5.7/2,h=100);
translate([10,170,-50])cylinder(r=5.7/2,h=100);
translate([10,420,-50])cylinder(r=5.7/2,h=100);

translate([25,550,-50])cylinder(r=5.7/2,h=100);
translate([170,550,-50])cylinder(r=5.7/2,h=100);
translate([324,550,-50])cylinder(r=5.7/2,h=100);
translate([330,470,-50])cylinder(r=5.7/2,h=100);
}
//left side part
//11

//projection(cut = false)
translate([-360,-570,-13])color(pcolor)difference(){union(){cube([325,565,3]);translate([-30,100,0])cube([30,348,3]);
}
translate([25,10,-50])cylinder(r=5.7/2,h=100);
translate([170,10,-50])cylinder(r=5.7/2,h=100);
translate([290,10,-50])cylinder(r=5.7/2,h=100);
translate([310,80,-50])cylinder(r=5.7/2,h=100);
translate([310,280,-50])cylinder(r=5.7/2,h=100);
translate([-10,170,-50])cylinder(r=5.7/2,h=100);
translate([-10,380,-50])cylinder(r=5.7/2,h=100);

translate([25,550,-50])cylinder(r=5.7/2,h=100);
translate([170,550,-50])cylinder(r=5.7/2,h=100);
translate([285,550,-50])cylinder(r=5.7/2,h=100);
translate([310,470,-50])cylinder(r=5.7/2,h=100);
}

/*
//PASS
//translate([-760,-110,0])import("8_panel_front_right_blue.dxf");
//PASS
//translate([-750,-500,0])import("7_panel_front_left_blue.dxf");
*/


//789.94 mm x 383.54mm works
//top left half 
//9
//373 x 627.5 x 4.5
//projection(cut = false)

translate([-745+2,-590-5,440-10+40])difference(){
color(pcolor)translate([0,0.5+1.5,0])cube([750/2-0.5-1.5,620+10-1-1.5,4.5]);
translate([100,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([325,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([0,600,0]){
translate([100,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([325,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
}
translate([15,150,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([15,450,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
}

/*
//PASS
import("9_panel_top_left_blue.dxf");

*/
/*
//top right half
//projection(cut = false)
//789.94 mm x 383.54mm works
//373 x 627.5 x 4.5

//projection(cut = false)
*/

translate([-745/2+2.5,-590-5,440-10+40])difference(){
translate([0,0.5+1.5,0])color(pcolor)cube([750/2-0.5-1.5,620+10-1-1.5,4.5]);
translate([100,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([325,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([0,600,0]){
translate([100,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([325,15,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
}
translate([360,150,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
translate([360,450,-20])rotate([0,0,0])cylinder(r=5.7/2,h=50);
}

}



module misumi_build(){

translate([-740,5,475])rotate([90,90,90])tslot20_2060(740);
translate([-740,5-600,475])rotate([90,90,90])tslot20_2060(740);
translate([-745,10,475])rotate([90,90,0])tslot20_2060(580);
translate([-745+720,10,475])rotate([90,90,0])tslot20_2060(580);


HFS5_2020_300_TPW = "misumi_build/HFS5-2020-300-TPW.stl";
color("DarkSeaGreen")translate([-380,-290,0])rotate([0,90,0])import(HFS5_2020_300_TPW);

//this right here I can make it lower by 65 I think then it will fit!
HFS5_2020_400_TPW_Z5_YA305_YB370 = "misumi_build/HFS5-2020-400-TPW-Z5-YA305-YB370.stl"; 
color("MistyRose")translate([-50,-20,10])rotate([0,180,-90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("MistyRose")translate([-710,-20,10])rotate([0,180,-90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("MistyRose")translate([-50,-560,10])rotate([0,180,90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("MistyRose")translate([-710,-560,10])rotate([0,180,90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);

HFS5_2020_520_TPW_Z5_XA260 = "misumi_build/HFS5-2020-520-TPW-Z5-XA260.stl";
translate([-370,-550,0])rotate([90,90,0])import(HFS5_2020_520_TPW_Z5_XA260);
HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60 = "misumi_build/HFS5-2020-90-TPW-Z5-XA20-XB40-YA30-YB60.stl";
HFS5_2040_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710 = "misumi_build/HFS5-2040-740-TPW-Z5-XA30-XB370-XC690-YA50-YB710.stl";
color("green")translate([0,-570,0])rotate([180,-90,0])mirror([0,0,0])import(HFS5_2040_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710);
HFS5_2040_740_TPW_Z5_XA30_XC690_YA50_YB710 = "misumi_build/HFS5-2040-740-TPW-Z5-XA30-XB690-YA50-YB710.stl";
color("springgreen")translate([0,-570,420])rotate([180,-90,0])mirror([0,0,0])import(HFS5_2040_740_TPW_Z5_XA30_XC690_YA50_YB710);
HFS5_2060_520_TPW_Z5_YA162_YB242_YC322 = "misumi_build/HFS5-2060-520-TPW-Z5-YA162-YB242-YC322.stl";// this one is probably wrong
HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5 = "misumi_build/HFS5-2060-520-TPW-Z5-YA162_5-YB242_5-YC322_5.stl";
HFS5_2060_520_TPW = "misumi_build/HFS5-2060-520-TPW.stl";
HFS5_2060_520_TPW_Z5_XA235_YA162_5_YB242_5_YC322_5 = "misumi_build/HFS5-2060-520-TPW-Z5-XA235-YA162_5-YB242_5-YC322_5.stl";
HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5 = "misumi_build/HFS5-2060-520-TPW-Z5-XA260-YA162_5-YB242_5-YC322_5.stl";
color("thistle")translate([-710,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
color("thistle")translate([-30,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
//HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5
color("wheat")translate([-30,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("wheat")translate([-710,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("Lime")translate([-710,-550,420])rotate([90,-90,0])import(HFS5_2060_520_TPW);
color("Lime")translate([-30,-550,420])rotate([90,-90,0])import(HFS5_2060_520_TPW);
HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5 = "misumi_build/HFS5-2060-520-TPW-Z5-XA260-YA162_5-YB242_5-YC322_5.stl";
color("thistle")translate([-710,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
color("thistle")translate([-30,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5 = "misumi_build/HFS5-2060-520-TPW-Z5-YA162_5-YB242_5-YC322_5.stl";
//HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5
color("wheat")translate([-30,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("wheat")translate([-710,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
HFS5_2060_620_TPW = "misumi_build/HFS5-2060-620-TPW.STL";
HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710 = "misumi_build/HFS5-2060-740-TPW-Z5-XA30-XB370-XC690-YA50-YB710.stl";
color("aqua")rotate([0,90,0])import(HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710);
//HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710
HFS5_2060_740_TPW_Z5_XA50_XB710_YA30_YB690 = "misumi_build/HFS5-2060-740-TPW-Z5-XA50-XB710-YA30-YB690.stl";
color("lightcyan")translate([-740,0,420])rotate([0,-90,0])import(HFS5_2060_740_TPW_Z5_XA50_XB710_YA30_YB690);


//x raid this part is actually an open builds part V-Slot Linear Rail (20mmx80mm,1000mm) 
//color("lightskyblue")translate([-680,-320-10,335])rotate([180,90,0])import(HFS5_2060_620_TPW);
translate([0,27-0,0]){
color("lightskyblue")translate([-680,-320-10,335+13])rotate([180,-90,0])tslot20(620);
color("lightskyblue")translate([-680,-320-10+20,335+13])rotate([180,-90,0])tslot20(620);
color("lightskyblue")translate([-680,-320-10+40,335+13])rotate([180,-90,0])tslot20(620);
color("lightskyblue")translate([-680,-320-10+60,335+13])rotate([180,-90,0])tslot20(620);
}

color("Coral")translate([-690,-350+90,335+28])rotate([-90,90,0])import(HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60);

color("RosyBrown")translate([-50,-350+12,335+28])rotate([90,90,0])import(HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60);

//This begins the parts
translate([-57.5,-540,320])adafruitlinearslide();
translate([-57.5-9.5,-540+200,320+12.5])adafruitlinearshuttle();
translate([-57.5-640,-540,320])adafruitlinearslide();
translate([-57.5-9.5-640,-540+200,320+12.5])adafruitlinearshuttle();

translate([-32,-330,12.5+350])rotate([0,0,90])import("3dprinting/adafruit_slider_mount_shorter.stl");
translate([-32-640,-330-12,12.5+350])rotate([0,0,90])import("3dprinting/adafruit_slider_mount_shorter.stl");

}



module misumi_build_silver(){



translate([-740,5,475])rotate([90,90,90])tslot20_2060(740);
translate([-740,5-600,475])rotate([90,90,90])tslot20_2060(740);
translate([-745,10,475])rotate([90,90,0])tslot20_2060(580);
translate([-745+720,10,475])rotate([90,90,0])tslot20_2060(580);

HFS5_2020_300_TPW = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2020-300-TPW.stl";
color("silver")translate([-380,-290,0])rotate([0,90,0])import(HFS5_2020_300_TPW);

//this right here I can make it lower by 65 I think then it will fit!
HFS5_2020_400_TPW_Z5_YA305_YB370 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2020-400-TPW-Z5-YA305-YB370.stl"; 
color("silver")translate([-50,-20,10])rotate([0,180,-90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("silver")translate([-710,-20,10])rotate([0,180,-90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("silver")translate([-50,-560,10])rotate([0,180,90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);
color("silver")translate([-710,-560,10])rotate([0,180,90])import(HFS5_2020_400_TPW_Z5_YA305_YB370);

HFS5_2020_520_TPW_Z5_XA260 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2020-520-TPW-Z5-XA260.stl";
color("silver")translate([-370,-550,0])rotate([90,90,0])import(HFS5_2020_520_TPW_Z5_XA260);
HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2020-90-TPW-Z5-XA20-XB40-YA30-YB60.stl";
HFS5_2040_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2040-740-TPW-Z5-XA30-XB370-XC690-YA50-YB710.stl";
color("silver")translate([0,-570,0])rotate([180,-90,0])mirror([0,0,0])import(HFS5_2040_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710);
HFS5_2040_740_TPW_Z5_XA30_XC690_YA50_YB710 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2040-740-TPW-Z5-XA30-XB690-YA50-YB710.stl";
color("silver")translate([0,-570,420])rotate([180,-90,0])mirror([0,0,0])import(HFS5_2040_740_TPW_Z5_XA30_XC690_YA50_YB710);
HFS5_2060_520_TPW_Z5_YA162_YB242_YC322 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-YA162-YB242-YC322.stl";// this one is probably wrong
HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-YA162_5-YB242_5-YC322_5.stl";
HFS5_2060_520_TPW = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW.stl";
HFS5_2060_520_TPW_Z5_XA235_YA162_5_YB242_5_YC322_5 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-XA235-YA162_5-YB242_5-YC322_5.stl";
HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-XA260-YA162_5-YB242_5-YC322_5.stl";
color("silver")translate([-710,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
color("silver")translate([-30,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
//HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5
color("silver")translate([-30,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("silver")translate([-710,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("silver")translate([-710,-550,420])rotate([90,-90,0])import(HFS5_2060_520_TPW);
color("silver")translate([-30,-550,420])rotate([90,-90,0])import(HFS5_2060_520_TPW);
HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-XA260-YA162_5-YB242_5-YC322_5.stl";
color("silver")translate([-710,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
color("silver")translate([-30,-550,0])rotate([90,90,0])import(HFS5_2060_520_TPW_Z5_XA260_YA162_5_YB242_5_YC322_5);
HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-520-TPW-Z5-YA162_5-YB242_5-YC322_5.stl";
//HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5
color("silver")translate([-30,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
color("silver")translate([-710,-550,315])rotate([90,-90,0])import(HFS5_2060_520_TPW_Z5_YA162_5_YB242_5_YC322_5);
HFS5_2060_620_TPW = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-620-TPW.STL";
HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-740-TPW-Z5-XA30-XB370-XC690-YA50-YB710.stl";
color("silver")rotate([0,90,0])import(HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710);
//HFS5_2060_740_TPW_Z5_XA30_XB370_XC690_YA50_YB710
HFS5_2060_740_TPW_Z5_XA50_XB710_YA30_YB690 = "/Users/richard/Documents/009Reprapcatcube010715/misumi_build/HFS5-2060-740-TPW-Z5-XA50-XB710-YA30-YB690.stl";
color("silver")translate([-740,0,420])rotate([0,-90,0])import(HFS5_2060_740_TPW_Z5_XA50_XB710_YA30_YB690);


//x raid this part is actually an open builds part V-Slot Linear Rail (20mmx80mm,1000mm) 
//color("lightskyblue")translate([-680,-320-10,335])rotate([180,90,0])import(HFS5_2060_620_TPW);
translate([0,27-0,0]){
color("silver")translate([-680,-320-10,335+13])rotate([180,-90,0])tslot20(620);
color("silver")translate([-680,-320-10+20,335+13])rotate([180,-90,0])tslot20(620);
color("silver")translate([-680,-320-10+40,335+13])rotate([180,-90,0])tslot20(620);
color("silver")translate([-680,-320-10+60,335+13])rotate([180,-90,0])tslot20(620);
}

color("silver")translate([-690,-350+90,335+28])rotate([-90,90,0])import(HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60);

color("silver")translate([-50,-350+12,335+28])rotate([90,90,0])import(HFS5_2020_90_TPW_Z5_XA20_XB40_YA30_YB60);

//This begins the parts
translate([-57.5,-540,320])adafruitlinearslide();
translate([-57.5-9.5,-540+200,320+12.5])adafruitlinearshuttle();
translate([-57.5-640,-540,320])adafruitlinearslide();
translate([-57.5-9.5-640,-540+200,320+12.5])adafruitlinearshuttle();

translate([-32,-330,12.5+350])rotate([0,0,90])import("3dprinting/adafruit_slider_mount_shorter.stl");
translate([-32-640,-330-12,12.5+350])rotate([0,0,90])import("3dprinting/adafruit_slider_mount_shorter.stl");

}


module ponoko_case_connections(){
translate([0,-80+50,120])rotate([0,0,90]){
color("pink")translate([0,0,0])rotate([-90,90,0])import("3dprinting/pin26connectormount.stl");
color("pink")translate([-85,0-10,-10])rotate([-90,0,0])import("3dprinting/ribbon_26pin.stl");

}
color("pink")translate([-0,-10-300+130,-10+80])rotate([-90,0,-90])import("3dprinting/molex_connector_set_extruder_heat_bed.stl");
color("pink")translate([-0,-10-300+130+18,-10+125])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/philmore_3prong_molex_connector_set_extruder_single.stl");


color("pink")translate([10,-400,70])rotate([-90,0,-90])import("3dprinting/luerlocksockets_3.stl");


//import("3dprinting/luerlocksockets_4.stl");
}


module pressurecompensation_bottle(){
difference(){
union(){
cylinder(r=55,10);
translate([-10,38,0])cube([20,25,25]);
translate([-70,-10,0])cube([30,20,30]);
}
cylinder(r=93/2,40);
translate([-5,30,-3])cube([10,40,29]);
translate([-80,0,20])rotate([90,0,90])cylinder(r=5.6/2,h=50);
translate([-65,0,20])rotate([90,0,90])cylinder(r=11.6/2,h=50);
translate([-30,55,15])rotate([90,0,90])cylinder(r=4.6/2,h=50);
}
}



module amplifier_box_panels(){


translate([2.2,-18,-2.4])difference(){
linear_extrude(height = 3, center = true, convexity = 10)import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/top-panel.dxf");
translate([160,155,0])
for(x=[0:9]){
for(y=[0:9]){
translate([y*5,x*5,-15])cylinder(r=3/2,h=30);
}
}
}
translate([0.9,0-0.6,-75.0])linear_extrude(height = 3, center = true, convexity = 10)   import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/bottom-panel.dxf");

translate([7+1,95-10+1.5,214-78])rotate([-90,0,0])linear_extrude(height = 3, center = true, convexity = 10)   import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/side1-panel.dxf");


translate([2.5+220,243.5,210-80])rotate([90,180,0])linear_extrude(height = 3, center = true, convexity = 10)   import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/side2-panel.dxf");
translate([236.5,267.5-205,210-4-72])difference(){
rotate([90,0,90])mirror([0,1,0])linear_extrude(height = 3, center = true, convexity = 10)   import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/back-panel.dxf");
translate([-10,71,-182.5])cube([20,32,25]);
translate([-10,71-3.55,-182.5+12.5])rotate([90,0,90])cylinder(r=3.5/2,h=50);
translate([-10,71-3.55+40,-182.5+12.5])rotate([90,0,90])cylinder(r=3.5/2,h=50);
}

//projection(cut = false)rotate([0,90,0])
translate([-11.5,263.5,137])difference(){
rotate([90,0,-90])mirror([0,1,0])linear_extrude(height = 3, center = true, convexity = 10)   import (file = "/Users/richard/Documents/009Reprapcatcube010715/amplifier_enclosure/front-panel.dxf");
translate([-10,-72,-185])cube([20,25,25]);
translate([-10,-115.25,-185])cube([20,24,20]);
translate([-10,-118,-174.5])rotate([90,0,90])cylinder(r=3.5/2,h=50);
translate([-10,-89,-174.5])rotate([90,0,90])cylinder(r=3.5/2,h=50);
translate([-10,-118-18,-174.5])rotate([90,0,90])cylinder(r=5.5/2,h=50);
translate([-10,-118-18-15,-174.5])rotate([90,0,90])cylinder(r=5.5/2,h=50);
}

}


module amplifier_3dparts(){
translate([238-250,140+40,-30])rotate([90,90,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/connectsledsusb.stl");
//translate([20+135,140,0])fangrill();
translate([238+3,125,-20])rotate([-90,0,90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/powersocket.stl");

}


module outside_femaleusb(){
difference(){
union(){
cube([25,17,5]);
translate([-7.5,0,0])cube([25+15,17,5]);
}
translate([5,5,0])cube([15,7,10]);
//translate([5-1,3.5,10])cube([17,10.5,10]);
translate([-2,17/2,0])cylinder(r=4.5/2,h=20);
translate([27,17/2,0])cylinder(r=4.5/2,h=20);
}
}

module inside_femaleusb(){
difference(){
union(){
cube([25,17,10]);
translate([-7.5,0,0])cube([25+15,17,10]);
}
//translate([5,5,0])cube([15,7,10]);
translate([5-1,3.5,0])cube([17,10.5,10]);
translate([-2,17/2,0])cylinder(r=4.5/2,h=20);
translate([27,17/2,0])cylinder(r=4.5/2,h=20);
}
}


module panelconnectsledsusb(){
translate([-5,40,0])difference(){translate([0,4,0])cube([25,67,3]);
translate([25/2,20,0]){
translate([-9.4/2,7.5+12,0])cube([9.4,20.7,20]);
translate([-9.4/2,7.5+12-20.7-5,0])cube([9.4,20.7,20]);
}
}
}

//connectsledsusb();
module connectsledsusb(){
difference(){
translate([-5,0,0])cube([25,50,3]);
translate([15/2,20,0]){
translate([0,-14.6,0])cylinder(r=3.3/2,h=10);
translate([0,14.6,0])cylinder(r=3.3/2,h=10);
//translate([-15.2/2,-22.6/2,0])cube([15.2,22.6,3]);
translate([-10.7/2,-13.2/2,0])cube([10.7,13.2,3]);
}
}
translate([-5,40,0])difference(){cube([25,40,3]);
translate([25/2,20,0]){
translate([0,-7.5,0])cylinder(r=5.5/2,h=20);
translate([0,7.5,0])cylinder(r=5.5/2,h=20);
//translate([-9.4/2,7.5+12,0])cube([9.4,20.7,20]);
}
}
translate([17,-37,0])rotate([0,0,90])molex_connector_set_extruder_single();
}


module justusb_alu(){
difference(){
translate([-2.5,0,0])cube([25-5,50-10,3]);
translate([15/2,20,0]){
translate([0,-14.6,-1])cylinder(r=3./2,h=10);
translate([0,14.6,-1])cylinder(r=3./2,h=10);
//translate([-15.2/2,-22.6/2,0])cube([15.2,22.6,3]);
translate([-10.7/2,-13.2/2,-1])cube([10.7,13.2,13]);
}
}
}




module justusb(){
difference(){
translate([-5,0,0])cube([25,50-10,3]);
translate([15/2,20,0]){
translate([0,-14.6,-1])cylinder(r=3.3/2,h=10);
translate([0,14.6,-1])cylinder(r=3.3/2,h=10);
//translate([-15.2/2,-22.6/2,0])cube([15.2,22.6,3]);
translate([-10.7/2,-13.2/2,-1])cube([10.7,13.2,13]);
}
}
}


module justuniversal(){
//Fits all sorts of connections
//translate([46/2-15.4/2,43/2-15.2/2,-1])cube([15.4,15.2,13]);
difference(){
translate([-5,0,0])cube([25,50-10,3]);
translate([15/2,20,0]){
translate([0,-14.6,-1])cylinder(r=3.3/2,h=10);
translate([0,14.6,-1])cylinder(r=3.3/2,h=10);
translate([-17/2,-17/2,-1])cube([17,17,13]);
}
}

}

module justusb_otherend(){
difference(){
translate([-5,0,0])cube([25,50-10,3]);
translate([15/2,20,0]){
translate([0,-14.6,-1])cylinder(r=3.3/2,h=10);
translate([0,14.6,-1])cylinder(r=3.3/2,h=10);
translate([-10/2,-17/2,-1])cube([10,17,13]);
}
}
}

module justhdmi(){
difference(){
translate([-5,0,0])cube([25,50-10,3]);
translate([15/2,20,0]){
translate([0,-14,-1])cylinder(r=3.3/2,h=10);
translate([0,14,-1])cylinder(r=3.3/2,h=10);
translate([-10/2,-17/2-3.5,-1])cube([10,17+7,13]);
}
}
}









//connectsledsusb_svg();
module connectsledsusb_svg(){
projection(cut = false){

translate([15/2,20,0]){
translate([0,-14.6,0])cylinder(r=3.3/2,h=10);
translate([0,14.6,0])cylinder(r=3.3/2,h=10);
translate([-15.2/2,-22.6/2,0])cube([15.2,22.6,3]);
}
translate([-5,40,0])
//difference(){cube([25,40,3]);
translate([25/2,20,0]){
translate([0,-7.5,0])cylinder(r=5.5/2,h=20);
translate([0,7.5,0])cylinder(r=5.5/2,h=20);
//translate([-9.4/2,7.5+12,0])cube([9.4,20.7,20]);
//}
}
translate([17,-37,0])rotate([0,0,90]){
//molex_connector_set_extruder_single();
//difference(){
//translate([-13,-4,0])cube([80-30,30,8]);
//union(){
cube([25,22,8]);
//translate([30,0,0])cube([25,25,8]);
//}
translate([62-30,1,-5])cylinder(r=3.7/2,h=20);
translate([62-30,20,-5])cylinder(r=3.7/2,h=20);
translate([-8,1,-5])cylinder(r=3.7/2,h=20);
translate([-8,20,-5])cylinder(r=3.7/2,h=20);
//}
//molex_mini_fitjr_connectors();
}
}
}








module fangrill(){
difference(){
union(){
cube([60,60,3]);
translate([-5,-5,0])cube([10,10,3]);
translate([55,-5,0])cube([10,10,3]);
translate([55,55,0])cube([10,10,3]);
translate([-5,55,0])cube([10,10,3]);
}
translate([0,0,-4])cylinder(r=3.7/2,h=20);
translate([0,60,-4])cylinder(r=3.7/2,h=20);
translate([60,60,-4])cylinder(r=3.7/2,h=20);
translate([60,0,-4])cylinder(r=3.7/2,h=20);


for (y = [0:4]){
for (x = [0:5]){
//for laser cutting could try 2mm
translate([(x*8)+10,(y*10)+10,0])cylinder(r=3/2,h=20);
}
}
}
}



module arduino_base_template(){

standoffs(UNO, mountType=PIN); 
boardShape(UNO, offset = 3);
//translate([0,0,2])arduino(UNO);

}


module arduino_mega_base_template(){
standoffs(MEGA, mountType=PIN); 
boardShape(MEGA, offset = 3);
translate([0,0,2])arduino(MEGA);
}


module arduino_base(){

//standoffs(UNO, mountType=PIN); 
//boardShape(UNO, offset = 3);

translate([-8,10-15,-5])difference(){
enclosure();
//translate([21.5+0.7,-15,21+1.4])cube([15.6+0.2,20,12.65+0.4]);
//translate([21.5+0.7+0.5,-15,21+1.4-0.25])cube([(15.6+0.2)/2-1,20,12.65+0.5]);
translate([21.5+0.7+0.5,-15,21+1.4-0.25+4+9.2])cube([15.3+0.4,20,15+0.4+2]);
//translate([21.5+0.7+15.6/2+1+0.2,-15,21+1.4-0.25])cube([(15.6+0.75+0.7)/2-1,20,12.65+0.5]);
}
translate([21.5+0.7+0.5-1,-11,21+1.4-0.25-1+8.2])cube([2,3,15+0.6+3]);

}


module slidedeck(){
 translate([0,-100,0])color("green")cube([350,500,3]);
 for (a =[0:9]){
 translate([35+(a*27),140-77,3])cube([25,75,3]);
 }
 for (a =[0:9]){
 translate([35+(a*27),140,3])cube([25,75,3]);
 }
 for (a =[0:9]){
 translate([35+(a*27),140+77,3])cube([25,75,3]);
 }
}

module tslot_amplifier_box(){
print_part();
}


module parametric_3dparts(arlen,xarlen,yarlen,zarlen){


translate([0,-160,0]){
translate([15,-yarlen/2,zarlen-65])translate([-10,55,-15])rotate([90,0,-90]){
tslot20_2060(xarlen);
translate([40,0,0])tslot20_2060(xarlen);
}
translate([-xarlen+640,-yarlen/2+53.5,zarlen-128.5])rotate([-90,180,0])head_assy();
}

//translate([-130,-348,160])
translate([-70,-yarlen/2+53.5,zarlen-128.5-70])
rotate([0,0,0]){
import("3dprinting/washbowl_watervacinput.stl");
translate([0,3,0])import("3dprinting/washbowl_1tip.stl");
import("3dprinting/drypad.stl");
}


}


module energychain_1(){
color("black")import("/Users/richard/Documents/009Reprapcatcube010715/build2/restlfilesforthefollowingaluminumextrusions/lower/igus_20150924_164556/0_66m_06_10_018_0_1.stl");
}

module energychain_2(){
import("/Users/richard/Documents/009Reprapcatcube010715/build2/restlfilesforthefollowingaluminumextrusions/lower/igus_20150924_164556/0_66m_E06_16_038_0_2.stl");
}



//This are for mounting the amplifier and the teensy board in the willy's enclosure
//amplifier_holder_sidea
//amplifier_holder_sideb
//amp_pcb
//teensy32_holder
//rj45jack


module amplifier_holder_sidea(){
difference(){
 union(){
 translate([-20,30,4])teensy32_holder();
 cube([16,89+16,6]);
 translate([0,-7,0]){
 translate([8+8,-7+3,0])cube([20,20,10]);
 translate([8+8,-7+98,])cube([20,20,10]);
 }
 }
 translate([8,8,0])cylinder(r=9.2/2,h=4.5);
 translate([8,8,0])cylinder(r=3.7/2,h=20);
 translate([8,8+89,0])cylinder(r=3.7/2,h=20);
 translate([8,8+89,0])cylinder(r=9.2/2,h=4.5);
 translate([10,-7,0]){
 translate([8+13,3,0])cylinder(r=3.7/2,h=20);
 translate([8+13,3,0])cylinder(r=6.7/2,h=3,$fn=6);
 translate([8+13,3+98,0])cylinder(r=3.7/2,h=20);
 translate([8+13,3+98,0])cylinder(r=6.7/2,h=3,$fn=6);
 }
}
}


module amplifier_holder_sideb(){
difference(){
 union(){
 cube([16,89+16,6]);
 translate([0,-7,0]){
 translate([-17+30,-7+3,0])cube([15,20,10]);
 translate([-17+30,-7+98,0])cube([15,20,10]);
 }
 }
 translate([8,8,0])cylinder(r=9.2/2,h=4.5);
 translate([8,8,0])cylinder(r=3.7/2,h=20);
 translate([8,8+89,0])cylinder(r=3.7/2,h=20);
 translate([8,8+89,0])cylinder(r=9.2/2,h=4.5);
 translate([27.5,-7,0]){
 translate([8-13-(154-13-138),3,0])cylinder(r=3.7/2,h=20);
 translate([8-13-(154-13-138),3,0])cylinder(r=6.7/2,h=3,$fn=6);
 translate([8-13-(154-13-138),3+98,0])cylinder(r=3.7/2,h=20);
 translate([8-13-(154-13-138),3+98,0])cylinder(r=6.7/2,h=3,$fn=6);
 }
}
}

module amp_pcb(){
difference(){
union(){
color("green")cube([108,152.6,1]);
translate([20,26,0])color("black")cube([40,40,46]);
translate([15,105,0])color("white")cube([33,41,20]);
translate([60,105,0])color("white")cube([33,41,20]);
translate([65,75,0])color("brown")cylinder(r=9,h=46);
}
translate([5,5,0])cylinder(r=3.7/2,h=20);
translate([108-5,5,0])cylinder(r=3.7/2,h=20);
translate([108-5,152.6-5,0])cylinder(r=3.7/2,h=20);
translate([5,152.6-5,0])cylinder(r=3.7/2,h=20);
}
}

module teensy32_holder(){
difference(){
translate([-4,2,-4])cube([18+8,32+8,8]);
cube([18,32+4,10]);
translate([14.5,0,2.5])translate([2.,2,-5])cube([2,33,10]);
translate([-2.5,0,2.5])translate([2.5,2,-5])cube([2,33,10]);
translate([-2.5,32,2.5])translate([2.5,2,-5])cube([18.5,2,10]);
translate([10,20,-13])cylinder(r=5.7/2,h=20);
}
}


module rj45jack(){
difference(){
cube([46,43,3]);
translate([46/2-15.4/2,43/2-15.2/2,-1])cube([15.4,15.2,13]);
/*
translate([6,6,-1])cylinder(r=3.7/2,h=20);
translate([46-6,6,-1])cylinder(r=3.7/2,h=20);
translate([46-6,43-6,-1])cylinder(r=3.7/2,h=20);
translate([6,43-6,-1])cylinder(r=3.7/2,h=20);
*/
translate([46/2-25/2,43/2,-1])cylinder(r=3.7/2,h=20);
translate([46/2+25/2,43/2,-1])cylinder(r=3.7/2,h=20);
}
}

module surface_adjuster(){
difference(){union(){
translate([5,0,-10])cube([20,97-20,6]);
translate([-14+10,0,-10])cube([40,5,18]);
translate([15,95-20,-10])cylinder(r=11,22);
}
translate([2,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([29,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([15,95-20,12-7])cylinder(r=3.7/2,22);
translate([15,95-20,12-3])cylinder(r=6.7/2,3,$fn=6);
}
}


module surface_adjuster_shorter(){
difference(){union(){
translate([5,0,-10])cube([20,97-20-20,6]);
translate([-14+10,0,-10])cube([40,5,18]);
translate([15,95-20-20,-10])cylinder(r=11,22);
}
translate([2,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([29,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([15,95-20-20,12-7])cylinder(r=3.7/2,22);
//translate([15,95-20-20,12-3])cylinder(r=6.7/2,3,$fn=6);
}
}



module surface_adjuster_shorter_backadjust(){
difference(){union(){
translate([5,0,-10])cube([20,97-20-0-7,6]);
translate([-14+10,0,-10])cube([40,5,18]);
translate([15,95-20-20+20-7.5,-10])cylinder(r=11,22);
}
translate([2,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);
translate([29,10,0])rotate([90,90,0])cylinder(r=4.7/2,h=20);

for(a=[-5:5]){
translate([15,95-20+a-7,12-7-30])cylinder(r=4/2,22+30);
}
}
}










module surface_adjuster_m3_nuthandle(){
difference(){
cylinder(r=30/2,h=5);
translate([0,0,2.1])cylinder(r=6.7/2,h=3,$fn=6);
translate([0,0,-2.1])cylinder(r=3.7/2,h=10);
}
}






















module firgelli_pcb(){
translate([-10,5,10])difference(){
union(){
difference(){
translate([120-5-5,85-4,0])cube([15+4,25+4,8]);
translate([120-5-5+2,85-2,4])cube([15,25+4,4+1]);
translate([120-5-5+2,85-2+14,4-3])cube([15,7,4+1]);
}
translate([120-15-5,80+3-4.5,0])cube([25,15+1,4]);
}
translate([120-5-9.5,85+6,-5])cylinder(r=3.7/2,h=20);
translate([120-5-9.5,85+6-10,-5])cylinder(r=3.7/2,h=20);
}
}

module firgelli_pcb_luer_single(){
translate([-10,5,10])difference(){
union(){
difference(){
translate([120-5-5,85-4,0])cube([15+4+26,25+4,4]);
translate([120-5-5+2,85-2+14,4-3.5])cube([15,7,4+1]);
}
difference(){
translate([120-5-5,85-4,0])cube([15+4,25+4,8]);
translate([120-5-5+2,85-2,4])cube([15.1,25+4,5]);
translate([120-5-5+2,85-2+14,4-3.5])cube([15,7,4+1]);
}
translate([120-15-5,80+3-4.5,0])cube([25,15+1,4]);
}
translate([120-5-9.5,85+6,-5])cylinder(r=3.7/2,h=20);
translate([120-5-9.5,85+6-10,-5])cylinder(r=3.7/2,h=20);
translate([120-5-9.5+41-0,85+6+5,-5])cylinder(r=11.45/2,h=20);
}
}

//length originally 70
module keep_the_xwires_down(xlen){
difference(){union(){
cube([18,xlen,2]);
cube([18,18,3+3]);
}
translate([9,9,-4])cylinder(r=4.7/2,h=20);
translate([9,9,-1])cylinder(r=9.7/2,h=3);
}
}

module keep_the_tubes_in(){
difference(){
cube([35,18,3]);
translate([6,9,-1])cylinder(r=4.7/2,h=20);
}

}


module raspib_model(){

color("green")cube([56,85,2]);
translate([2.5,0,2])color("grey")cube([16,21,13]);
translate([22,0,2])color("grey")cube([13.5,17,14]);
translate([40,0,2])color("grey")cube([13.5,17,14]);
translate([28,21,2])color("black")cube([10,10,1]);
translate([28,21,2])color("black")cube([10,10,1]);
translate([24,51,2])color("black")cube([14,14,1]);
translate([0,46,2])color("grey")cube([12,15,6]);
translate([1,38,2])color("black")cube([21,3,4]);
translate([18,80,2])color("black")cube([21,3,4]);
translate([0,71,2])color("grey")cube([6,7.5,3]);

}

module azteeg_x5_mini(){

color("black")cube([96,50.8,2]);
translate([2.6,11.96,2])color("green")cube([8.5,30,10]);
translate([88.14,20.8,2])color("grey")cube([5.46,12.48,3]);
translate([85.54,8.58,2])color("grey")cube([9.62,9.36,3]);
translate([9.1,1,2])color("white")cube([5.2,5.2,5]);
translate([14.82,1,2])color("white")cube([5.2,5.2,5]);
translate([20.54,1,2])color("white")cube([5.2,5.2,5]);
translate([27.82,1,2])color("white")cube([7.5,5.2,5]);
translate([35.88,1,2])color("white")cube([7.5,5.2,5]);
translate([44.46,1,2])color("white")cube([7.5,5.2,5]);
translate([52.52,1,2])color("white")cube([7.5,5.2,5]);
translate([17.42,42.12,2])color("green")cube([10.4,5.46,8]);
translate([35.88,42.12,2])color("green")cube([10.4,5.46,8]);
translate([48.36,42.12,2])color("green")cube([10.4,5.46,8]);
translate([59.8,42.12,2])color("green")cube([10.4,5.46,8]);
translate([72.8,42.12,2])color("green")cube([10.4,5.46,8]);


}



module pipettehead_wall(){

//wall
translate([18-30,110-2,23.0-144.6])
difference(){
union(){
translate([-14,0,0])cube([91+14,38,4]);
translate([-2-13,5,0])cube([4,33,21-5]);
translate([11,8,0])cube([21,5,4+10]);
translate([11+57,8,0])cube([21,5,4+10]);
}
translate([11+5.5,18,8+0.5])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([11+5.5+10,18,8+0.5])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([11+5.5+57,18,8+0.5])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([11+5.5+10+57,18,8+0.5])rotate([90,90,0])cylinder(r=3.7/2,h=30);
}
translate([106-35,108+28+0+5,-50])rotate([90,90,0]){
translate([60,-10,-5])difference(){translate([0,3,0])cube([15-5,18-3,12.45-5]);for(a=[0:0]){translate([9.5-5,10+(10*a),-4]){cylinder(r=3.4/2,h=50);}}}//translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.7/2,h=3,$fn=6);}}}
}
translate([106-35-65,108+28+0+5,-50])rotate([90,90,0]){

translate([60,-16,-5])difference(){cube([15-5,18,12.45-5]);for(a=[0:1]){translate([9.5-5,4+(10*a),-2]){cylinder(r=3.4/2,h=30);}}}//translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.7/2,h=3,$fn=6);}}}
}

}

module pipettehead_lid(){

translate([18-32,110+26+5,23.0-144.6])
difference(){
union(){
translate([-5-13,1,0])cube([50+43+10+10+15+13,3,105+2.5]);
translate([-5-0.1-13,-8-15+5,20+25])cube([5,4+8+15-5,105+2.5-36-25]);
translate([-5-0.1-13,-8,0])cube([5,4+8,105+2.5]);
translate([-5+108,-8,0])cube([5,4+8,105+2.5]);
translate([-5+108+15,-8,0])cube([5,4+8,105+2.5]);
translate([-5+108-9.8+0.1,-8,0])cube([5+9.5-1,4+8,5]);
translate([-5+108-9.8+4.0,-8,102.5])cube([5+9.5-5,4+8,5]);
translate([-5+108-9.8-98.0-13,-8,102.5])cube([5+9.5-5.8-1-2.3,4+8,5]);
}

translate([-5+20,-2,20])cube([50+43+10+10-40,13,105+2.5-40]);


translate([8,10,7.2])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,5.9])cylinder(r1=6.2/2,r2=3.7/2,h=2);}
//translate([8+10,10,7.2])rotate([90,0,0])cylinder(r=3.7/2,h=30);
translate([8+77,10,7.2])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,5.9])cylinder(r1=6.2/2,r2=3.7/2,h=2);}
translate([8+2+4,10,7.2+90-0.25])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,5.9])cylinder(r1=6.2/2,r2=3.7/2,h=2);}
translate([8+2+77+4,10,7.2+90-0.25])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,5.9])cylinder(r1=6.2/2,r2=3.7/2,h=2);}
}
translate([18-32,110+26+5+4.5,23.0-144.6])translate([-5+20,-2,20])cube([50+43+10+10-40,1.5,105+2.5-40]);

}


module pipettehead_otherwall(){
translate([25-4,115,23.0-42])
difference(){
union(){
cube([41,20.8+5,4]);
translate([-35-16,10-3.5,0])cube([93+16,14.8-0.5+5+5,4]);
translate([-35-16,10-3.5+5,-15])cube([4,14.8-0.5+5,15]);
translate([0,8-7.5,-10])cube([41,5,4+10]);
}
translate([10.5,50,-6])rotate([90,0,0])cylinder(r=3.7/2,h=300);
translate([10.5+10,50,-6])rotate([90,0,0])cylinder(r=3.7/2,h=300)
;translate([10.5+20,50,-6])rotate([90,0,0])cylinder(r=3.7/2,h=300);
}
translate([27-6-35,115+20.75+5,23.0-42-70])
rotate([0,-90,90])translate([60,-16,-5])difference(){cube([15-5,18-6,12.45-5]);for(a=[0:0]){translate([9.5-5,6+(10*a),-2]){cylinder(r=3.4/2,h=30);}}}//translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}

translate([27-6+50-8,115+20.75+5,23.0-42-70])
rotate([0,-90,90])translate([60,-16,-5])difference(){cube([15-5,18-6,12.45-5]);for(a=[0:0]){translate([9.5-5,6+(10*a),-2]){cylinder(r=3.4/2,h=30);}}}//translate([0,0,11.5-3.5])rotate([0,0,90])cylinder(r=6.8/2,h=3,$fn=6);}}}
}

module lac_powerdistro_boards(){
translate([0,0,0])difference(){
union(){
translate([0+10,0,0])color("blue")cube([75,45,3]);
translate([0+10,0,3])color("green")cube([42,45,3+4]);
//translate([0+10+3.5,-40,0])color("pink")cube([42-15+5,45+40,3]);
translate([18,44,0])cube([65,13,3]);
}
//teensy
//translate([4+10+3,5-38-3.5,-0.5])cube([17,36,10]);
//pololu jrk21v3
translate([4+10,5,-0.5])cube([34,34,10]);
translate([4-1+10-0.5,5-1-0.5-5,4])cube([36+1,36+1+5,5+4]);
//spotting_head_5V_12V_powersplitter.fz
translate([80+10,-37,0])rotate([0,0,90]){
translate([42,10,-0.5])cube([37,24.5,4]);
translate([42-1.5,10-1.5,2])cube([37+3,24.5+3,2]);
}



//screw holes
translate([28,50,0])cylinder(r=3.7/2,h=20);
translate([28+50,50,0])cylinder(r=3.7/2,h=20);
}
translate([20+62,-37-18,0])rotate([0,0,90])gantryhead_piezo_synchboard();
}






module coolmax_psu(){
cube([125,100.6,63.7]);

}



module amplifier_enclosure_box(){

difference(){
color("blue")cube([157,250,75.5]);
translate([3,3,5])cube([157-6,250-6,75.5+5]);
}

translate([25,20,10])amp_pcb();

translate([125,45,10])color("black")cube([25,28,25]);
translate([128,85,10])color("black")cube([25,70,25]);
translate([101,200,10])color("green")rotate([0,0,90])cube([18,32+4,5]);
translate([50,200,10])color("green")rotate([0,0,90])cube([20,20,5]);


translate([34,50-6,0])rotate([0,0,-90])amplifier_holder_sideb();
translate([34,50-6+155,0])rotate([0,0,-90])amplifier_holder_sidea();


translate([63,300-50,30])rotate([0,-90,-90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/connectsledsusb.stl");

translate([93,0,20]){
rotate([90,0,0])
powerswitch_simple();
translate([-55,0,5])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/powersocket.stl");
translate([25,-3,13])difference(){
cube([15,3,15]);
translate([7.5,-3,7.5])rotate([0,90,90])cylinder(r=3.7/2,h=10);
}
}
}

module stroboscope_setup(){

translate([-300,-195.5,155.5])rotate([0,90,0])tslot20(300);
//stroboscope
//color("DarkSlateGray")
translate([50,-192,150+1])rotate([0,90,0])import("3dprinting/tslot20innerbracket.stl");
//color("peru")
translate([-150-3,-192+12,150+32+1])rotate([90,0,-90]){
//color("DarkSlateGray")
import("3dprinting/raspi_camera_assy.stl");
translate([-7.5,-7,20])color("black")cube([15,15,7]);
translate([-0,-0,20])color("blue")cylinder(r=6,h=15);
}
//color("peru")
translate([50-300+20,-192+1.6,150+1])rotate([90-20,0,90])import("3dprinting/ledholder.stl");

}


module raspi_for_strob(){

//raspi for strob
translate([-23.5-17,93-180-450,-270.5+455.5])rotate([90,0,90]){

//translate([9,11.5,6])mirror([0,0,0])raspib_model();
//translate([-100,110,0])mirror([0,1,0])raspi2_bottom();
import("3dprinting/raspi2_bottom.stl");
//import("3dprinting/raspi2_bottom.stl"); //mirror([0,1,0])raspi2_bottom();

//translate([-100,110,23.0])mirror([0,0,0])rotate([0,180,180])raspi2_top();

translate([0,0,23])import("3dprinting/raspi2_top.stl");
translate([110,-100,8])raspib_model();
//import("3dprinting/raspi2_top.stl"); //mirror([0,0,0])rotate([0,180,180])raspi2_top();
}
translate([-23.5-20-0,93-180-320+100,-270.5+490.5-110])rotate([90,-90,90])translate([110,144,0])rotate([0,-90,0])import("3dprinting/extrusion_lid_coupler.stl");

}



module flipflop_ciruit_holder(){
difference(){
union(){
translate([-4,-4,0])cube([48+8,33.5+8,9]);
translate([50,10,0])cube([20,15,2.5]);
}
translate([62,17,-5])cylinder(r=4.7/2,h=30);
translate([0,0,2])cube([48,33.5,10]);
}
}




module sockets_lmbheeger_box(){

translate([0,0,2])color("snow"){
translate([22,18,0])cylinder(r=11.5/2,h=20);
translate([22,2,0])cylinder(r=11.5/2,h=20);
translate([22+20,18,0])cylinder(r=11.5/2,h=20);
translate([40+22,2,0])cylinder(r=11.5/2,h=20);
translate([40+22,18,0])cylinder(r=11.5/2,h=20);
}

translate([15/2+35,20-33,0])rotate([0,0,90]){
translate([-10.7/2,-13.2/2,-1-4])color("silver")cube([10.7,13.2,13]);
}

difference(){
union(){
translate([0,-5-20,0])color("black")cube([60+22,30+20,3]);
//translate([10,-5,0])cube([40,10,3]);
}
translate([10,10,0]){
translate([-3,7,0])cylinder(r=3.7/2,h=20);
translate([41+25,7,0])cylinder(r=3.7/2,h=20);
translate([-3,-27,0])cylinder(r=3.7/2,h=20);
translate([41+25,-27,0])cylinder(r=3.7/2,h=20);
}
translate([0,-3,0]){
translate([22,18,0])cylinder(r=6.5/2,h=20);
translate([22,2,0])cylinder(r=6.5/2,h=20);
translate([22+20,18,0])cylinder(r=6.5/2,h=20);
translate([40+22,2,0])cylinder(r=6.5/2,h=20);
translate([40+22,18,0])cylinder(r=6.5/2,h=20);
}

translate([15/2+35,20-33,0])rotate([0,0,90]){
translate([0,-14.6,-1])cylinder(r=3.3/2,h=10);
translate([0,14.6,-1])cylinder(r=3.3/2,h=10);
translate([-10.7/2,-13.2/2,-1])cube([10.7,13.2,13]);
}



}
}




module philmore_3prong_molex_connector_set_extruder_single(){
philmore_dcjack_no321();
translate([48,6,0])molex_connector_set_extruder_single();
}




module raspi_module(){

translate([200-2,-40-80-190,225])difference(){union(){
rotate([0,0,180])mirror([0,1,0])raspi2_bottom();
translate([-110,95,4])rotate([0,0,180])raspib_model();
translate([-187,-60+80,0])cube([25,30,3]);
}
translate([-183,-45+80,0])cylinder(r=4.7/2,h=10);
}


}



module desktop_computer(){
difference(){
union(){
color("black")cube([410,174,380]);
}
translate([44,10,18])cube([410-12-44,174,380-36]);
translate([390,30,18])cube([30,117-4,139]);
}
translate([-0,45,380-56])rotate([-90,0,90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/philmore_3prong_molex_connector_set_extruder_single.stl");
translate([-0,60,380-102])rotate([-90,0,90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/molex_connector_set_extruder_heat_bed.stl");
translate([0-3,60-23,380-102-90])difference(){
cube([5,100,40]);
translate([-3,20,15])cube([5,13,9]);
translate([-3,66,15])cube([5,13,9]);
}
//atx
translate([265,5,280])color("lightblue")cube([137,140,84]);
translate([200,10,30])tslot20(300);
translate([40,164,18])color("silver")cube([120,10,380-36]);
translate([153.5,35,380-60])rotate([-90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/flipflop_ciruit_holder.stl");
translate([202.5,35,380-0])rotate([0,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/tslot20innerbracket.stl");
translate([0,0,20]){
translate([202.5,35,380-0])rotate([0,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/tslot20innerbracket.stl");
translate([150,39,205])rotate([0,90,0])tslot20(200);
//Arduino
translate([350,70,160])rotate([90,0,-180])arduino_base_template();
translate([140,70,140])rotate([90,-90,-180])arduino_base_template();
//Azteeg
translate([250,65,200])rotate([-90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/azteegx5mini.stl");//azteegx5_case();
translate([250+25,65+5,204+45])rotate([0,90,90])azteeg_x5_mini();
}
translate([0,0,-100+20]){
translate([202.5,35,380-0])rotate([0,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/tslot20innerbracket.stl");
translate([175,39,205])rotate([0,90,0])tslot20(150);
//raspberry pi module
translate([30,40,-125+100])rotate([0,0,90])raspi_module();
translate([-40+40,-150+189,125+80-253])rotate([0,0,90])raspi_module();
}
translate([202.5+202.5,6,380-100])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/tslot20innerbracket.stl");
translate([202.5+202.5,6,80])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/tslot20innerbracket.stl");
//pci stuff
difference(){
union(){
color("silver")translate([390-8+15,30,18])cube([25-15,117-4,139]);
}
translate([390+12-4,30,18])cube([15,117-4,139]);
}
color("pink")translate([202.5+202.5-6-2.2,86-5,380-250])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/ribbon_26pin_pcislot.stl");
color("pink")translate([202.5+202.5-6-2.2,86-5,380-273])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/rj45_pcislot.stl");
color("pink")translate([202.5+202.5-6-2.2,86-5,380-273-23])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/usb_pcislot.stl");
//pci ribbon 26
color("pink")translate([202.5+202.5-6,86-5,380-250])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/ribbon_26pin_pcislot.stl");
color("pink")translate([202.5+202.5-6,86-5,380-273])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/rj45_pcislot.stl");
color("pink")translate([202.5+202.5-6,86-5,380-273-23])rotate([-90,0,-90])import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/usb_pcislot.stl");
//ribbon_26pin_pcislot();
//rj45_pcislot();
//usb_pcislot();
}


module washdry_pcv_pump_enclosure(){


translate([153-53,10,90-20])rotate([90,0,90])sockets_lmbheeger_box();
//import("/Users/richard/Documents/009Reprapcatcube010715/a_desktop_computer_enclosure/sockets_lmbheeger_box.stl");
//sockets_lmbheeger_box();
//color("silver")lmbheeger_box();
translate([-30,0,0])color("silver")cube([130,100,100]);
}


module etape_piezo_controller(){
difference(){
translate([-4,-4,-4])cube([34+8,38+8,7]);
translate([0,0,-1])cube([34,38,4]);
}        
translate([7,38,-4])
difference(){
cube([20,20,3]);
translate([10,12,0])cylinder(r=4.7/2,h=25);
}
}

module endstop_mount_M8(){
difference() {
  union() {
		translate([1,.5,0])cube([15, 11.2, 7]);
		translate([-12-8, 17, 0])cube([24+8, 2.5+7, 7+11+3]);
		translate([8.4, 11.2, 0])cylinder(r=16 / 2, h=7);
  }
	translate([-12-8+20, 17, 8])cube([24+8-10, 2.5+8, 7+10-5+3]);
	translate([-0.1, 4.9, 3.3])rotate([0, 90, 0])cylinder(r=3.7/2,h=23);
	translate([8.4, 11.2, -1])cylinder(r=4.2, h=10);
	translate([4.7, -1, -1])cube([7.2, 11.2, 10]);
	translate([-10-4, 21+10, 3.7+12])rotate([90, 0, 0]){cylinder(r=3.5/2, h=9+10);translate([0,0,4.2])cylinder(r=7.8/2,h=4,$fn=6);}
	translate([-10-4+10, 21+10, 3.7+12])rotate([90, 0, 0]){cylinder(r=3.5/2, h=9+10);translate([0,0,4.2])cylinder(r=7.8/2,h=4,$fn=6);}
  translate([3.9, -5, -1])cylinder(r=1.5, h=6);
}
}

module syringepump_driver_shim(){
cube([20,6,10]);
}


module apex_amplifier_heatsink_top(){
w = 17;
l = 39;
difference(){
union(){
translate([10,2,0])cube([51-20,51+10-7,5]);
translate([(51-w)/2,(51-l)/2+l,0])cube([w,6,5+5.5-3.5]);
}
//translate([(51-32.5)/2-5,(51-39)/2+2+3+7+3+2.5,3])cube([5,3,2]);
//translate([(51-32.5)/2-5,(51-39)/2+2+3+7,3])cube([5,3,2]);
//translate([(51-32.5)/2-5,(51-39)/2+2,3])cube([5,3,2]);
translate([(51-w)/2,(51-l)/2,0])cube([w,l,6+2]);
translate([13.5,51/2,-3]){cylinder(r=3.7/2,h=20);translate([0,0,5])rotate([0,0,90])cylinder(r=6.9/2,h=3,$fn=6);}
translate([51-13.5,51/2,-3]){cylinder(r=3.7/2,h=20);translate([0,0,5])rotate([0,0,90])cylinder(r=6.9/2,h=3,$fn=6);}
translate([(51-w)/2+2,(51-l)/2+l,2+2])cube([3,5,6+2]);
translate([(51-w)/2+w-5,(51-l)/2+l,2+2])cube([3,5,6+2]);
}
translate([(51-w)/2+2.5,(51-l)/2,2+2+3.5-2.5-5])cube([2,5,5-2+0.75]);
translate([(51-w)/2+w-4.5,(51-l)/2,2+2+3.5-2.5-5])cube([2,5,5-2+0.75]);
}



module apex_amplifier_heatsink_fanshim(){
w = 17;
l = 39;
difference(){
union(){  
difference(){
color("red")translate([1+5,4,6])cube([40,40+5,6]);
}
color("green")translate([1+5+3,4+17,4])cube([10+22,10,2]);
//translate([(51-w)/2,(51-l)/2+l,0])cube([w,6,5+5.5-3.5]);
}       
translate([(51-w)/2,(51-l)/2-10,0])cube([w,l+20,16+2]);
translate([13.5,51/2,-3]){cylinder(r=3.7/2,h=20);translate([0,0,12])cylinder(r=6.7/2,h=3);}
translate([51-13.5,51/2,-3]){cylinder(r=3.7/2,h=20);translate([0,0,12])cylinder(r=6.7/2,h=3);}
color("blue")translate([10,10,6]){
cylinder(r=3.7/2,h=20);translate([0,0,-1])rotate([0,0,90])cylinder(r=6.9/2,h=4,$fn=6);
translate([32,0,0]){cylinder(r=3.7/2,h=20);translate([0,0,-1])rotate([0,0,90])cylinder(r=6.9/2,h=4,$fn=6);}
translate([32,32,0]){cylinder(r=3.7/2,h=20);translate([0,0,-1])rotate([0,0,90])cylinder(r=6.9/2,h=4,$fn=6);}
translate([0,32,0]){cylinder(r=3.7/2,h=20);translate([0,0,-1])rotate([0,0,90])cylinder(r=6.9/2,h=4,$fn=6);}
}
}
}


module apex_amplifier(){
difference(){union(){
//amplifier part
translate([11.5,30,-12]){
translate([0,0,-2])color("silver")cube([51,51,2]);
color("black")translate([5,2,0])cube([40,3,12.5]);
color("black")translate([5,51-5,0])cube([40,3,12.5]);
}
//pcb holder part 
color("gold")cube([72.5,103,2]);
}
translate([13,45,0])cube([44,19,10]);
translate([35.5,42.5,-3])cylinder(r=3.7/2,h=20);
translate([35.5,42.5+24,-3])cylinder(r=3.7/2,h=20);
}
color("black")translate([61,80,0])rotate([0,180,90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/apex_amplifier_heatsink_top.stl");
color("black")translate([61,29,-2])rotate([0,0,90])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/apex_amplifier_heatsink_fanshim.stl");
//fan 
translate([14,35,10])color("blue")cube([40,40,20]);
//apex_amplifier_heatsink_top();
translate([76.5,3,18])color("green")rotate([-90,0,90])amplifier_mount();
translate([76.5,45,18])color("green")rotate([-90,0,90])amplifier_mount();
translate([76.5,90,18])color("green")rotate([-90,0,90])amplifier_mount();
}


module amplifier_mount(){
difference(){
cube([10,35,6]);
translate([0,16,3])cube([20,2,4]);
}
}

module gesim_tipmount_formed_for_headassy(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
union(){
 difference(){
 union(){
 translate([0,5+5,0])difference(){
 translate([-10,-6+2.5,0])cube([41,15,3]);
 translate([-4.2,1.7+2.5,-5])cylinder(r=3.7/2,h=20);
 translate([-4.2+30,1.7+2.5,-5])cylinder(r=3.7/2,h=20);
 }
 translate([0,6.5,0])cube([cubeln,cubehi-3,3]);
 translate([0,8,0]){
 translate([0,12-7.5+5,0]){
 //bottom plate
 translate([0+9.5-5-4,rldist,3])cube([cubeln-9.5+3+6,3+4-3,6]);
 //mid vertical plate (the reference plate)
 translate([chpos-2.7,cubehi-11-shmr,3]) cube([3,6.5,6]);
//top plate
 translate([0+8.0-4,rldist-12.5-3-1+3,2])  cube([cubeln-8+2,6-3,6]);
 }
//mid vertical plate for horizontal set screw
 translate([chpos-11,cubehi-11-shmr-3-5.5+12.5,3])  cube([6,19.5+10-12.5,6]);
 translate([chpos-11+15,cubehi-11-shmr-3-5.5+12.5,3])  cube([6+0.5,19.5+10-12.5,6]);
  }
 }
}
}
}



module nordson_luerlock_tipmount(){
m3diam = 3.4;
m25diam= 3;
shmr = 15;
cubehi = 25 + shmr-10;
cubeln = 30-8;
midpt = cubeln/2;
chpos = midpt+0.5;
rldist = cubehi-3-shmr;
 difference(){
 union(){
 translate([0,-6+2.5-5,0])cube([21,15+4,3]);
 translate([0,-6+2.5-5,0])cube([21,8,18]);
 translate([0,5+5,0])difference(){
 translate([-10,-6+2.5,0])cube([41,15,3]);
 translate([-4.2,1.7+2.5,-5])cylinder(r=3.7/2,h=20);
 translate([-4.2+30,1.7+2.5,-5])cylinder(r=3.7/2,h=20);
 }
}
 translate([11,15,10])rotate([90,90,0])cylinder(r=11.45/2,h=30);
}
}





















module philmore_IEC_panel_mount_male_8520_clamp(){
//translate([-15,-25-10.5-19,-22])rotate([0,90,0])tslot20(200);
translate([-15+3,0,0])difference(){
union(){
cube([70,5,18]);
translate([0+15,0,-45])cube([70-30,5,18+28]);
}
translate([7+15,10-5,9-46])rotate([90,0,0]){cylinder(r=4.7/2,h=20);}
translate([63-15,10-5,9-46])rotate([90,0,0]){cylinder(r=4.7/2,h=20);}
translate([7,10,9])rotate([90,0,0]){cylinder(r=3.7/2,h=30);}
translate([63,10,9])rotate([90,0,0]){cylinder(r=3.7/2,h=30);}
}
}
module philmore_IEC_panel_mount_male_8520_plug(){
difference(){
union(){
cube([46,46,1.5]);
}
translate([8+3,9+5,-1])cube([23.5,22,51]);
translate([5,39,-2])cylinder(r=3.7/2,h=30);
translate([5+35,39,-2])cylinder(r=3.7/2,h=30);
translate([5+35,39-28,-2])cylinder(r=3.7/2,h=30);
translate([5,39-28,-2])cylinder(r=3.7/2,h=30);
}
translate([-15+3,0,0])difference(){
cube([70,5,18]);
translate([7,10,9])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,4])rotate([0,0,90])cylinder(r=6.8/2,$fn=6,h=3);}
translate([63,10,9])rotate([90,0,0]){cylinder(r=3.7/2,h=30);translate([0,0,4])rotate([0,0,90])cylinder(r=6.8/2,$fn=6,h=3);}
}
}



module philmore_IEC_panel_mount_male_8520_plug_lego(){
difference(){
union(){
cube([46,46,1.5]);
translate([5,39,0])cylinder(r=4.6/2,h=6);
translate([5+35,39,0])cylinder(r=4.6/2,h=6);
translate([5+35,39-28,0])cylinder(r=4.6/2,h=6);
translate([5,39-28,0])cylinder(r=4.6/2,h=6);
}
translate([8+3,9+5,-1])cube([23.5,22,51]);

}
translate([-15+3,0,0])
difference(){
cube([70,5,18]);
translate([7,10,9])rotate([90,0,0]){cylinder(r=6/2,h=10);} //translate([0,0,4])rotate([0,0,90])cylinder(r=6.8/2,$fn=6,h=3);}
translate([63,10,9])rotate([90,0,0]){cylinder(r=6/2,h=10);} //translate([0,0,4])rotate([0,0,90])cylinder(r=6.8/2,$fn=6,h=3);}
}
}








module philmore_IEC_panel_mount_male_8520_plug_back(){
difference(){
union(){
translate([0,5.5,0])cube([46,46-5.5,52]);
}
translate([5,39,-2]){cylinder(r=3.7/2,h=30);translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([-7,-3,6])cube([7,6,4]);}
translate([5+35,39,-2]){cylinder(r=3.7/2,h=30);translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([0,-3,6])cube([7,6,4]);}
translate([5+35,39-28,-2]){cylinder(r=3.7/2,h=30);translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([0,-3,6])cube([7,6,4]);}
translate([5,39-28,-2]){cylinder(r=3.7/2,h=30);translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([-7,-3,6])cube([7,6,4]);}
translate([5+35/2,39+7-15,12])cylinder(r=9/2,h=60);
translate([8+3-3,9+5,-1])cube([23.5+6,22,50]);
}
}


module philmore_IEC_panel_mount_male_8520_plug_back_lego(){
difference(){
union(){
translate([0,5.5,0])cube([46,46-5.5,52]);
}
translate([5,39,-2]){cylinder(r=5/2,h=30);}//translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([-7,-3,6])cube([7,6,4]);}
translate([5+35,39,-2]){cylinder(r=5/2,h=30);}//translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([0,-3,6])cube([7,6,4]);}
translate([5+35,39-28,-2]){cylinder(r=5/2,h=30);}//translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([0,-3,6])cube([7,6,4]);}
translate([5,39-28,-2]){cylinder(r=5/2,h=30);}//translate([0,0,6])cylinder(r=6.8/2,h=3, $fn=6);translate([-7,-3,6])cube([7,6,4]);}
translate([5+35/2,39+7-15,12])cylinder(r=9/2,h=60);
translate([8+3-3,9+5,-1])cube([23.5+6,22,50]);
}
}










module philmore_IEC_panel_mount_male_8520_assy(){
translate([-200,-345,400])rotate([90,180,0]){
translate([20,30,10])philmore_IEC_panel_mount_male_8520_plug();
translate([20,30,10+1.5])color("lime")philmore_IEC_panel_mount_male_8520_plug_back();
translate([20,30-8,10])color("pink")philmore_IEC_panel_mount_male_8520_clamp();
translate([20,30-8-10,10])color("green")philmore_IEC_panel_mount_male_8520_clampshim();
}
}

module philmore_IEC_panel_mount_male_8520_clampshim(){
translate([-15+3,0,0])difference(){
translate([0+15,0-19,-45])cube([70-30,19,18+28-28]);
//translate([0+15,0-19,-45])cube([70-30,10+19,18+28-28]);
translate([7+15,10+5,9-46])rotate([90,0,0]){cylinder(r=4.7/2,h=40);}
translate([63-15,10+5,9-46])rotate([90,0,0]){cylinder(r=4.7/2,h=40);}
}
}



//philmore rocker switch SPDT 30-10080
module powersocketandswitch(){
translate([93,0,20])
{
rotate([90,0,0])powerswitch_simple();

difference(){translate([-55,0,5])rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/3dprinting/powersocket.stl");
translate([7.5-63,-5,6])rotate([0,90,90])cylinder(r=3.7/2,h=10);
translate([7.5-63,-5,5+32])rotate([0,90,90])cylinder(r=3.7/2,h=10);
}
translate([25,-3,13])difference(){
cube([15,3,15]);
translate([7.5,-3,7.5])rotate([0,90,90])cylinder(r=3.7/2,h=10);
}
}
}


module airflowgrill_amplifier(){
difference(){
cube([25,42,3]);
translate([7,8,-2]){
for(i=[0:2]){
for(j=[0:5]){
translate([i*5,j*5,0])cylinder(r=3.5/2,h=20);
}         
}        
}       
}
}



module gantryhead_piezo_synchboard(){
difference(){
translate([-3,0,0])cube([54+4+3,72,2]);
translate([1,4.5,0])cube([51,63,2]);
}
}


module bottombreadboard(){
//17 is the height
translate([10,1,3])difference(){
union(){
color("red")cube([70,25,5]);
translate([20,10,0])color("pink")cube([30,25,17]);
translate([10,20,0])color("pink")cube([50,15,17]);
translate([12.5+5+3,20+15,0])color("pink")cube([25-6,15+5,17]);
}
translate([20,7,5])color("pink")rotate([35,0,0])cube([30,25,17]);
translate([13.5,12.5,-4])cylinder(r=5.7/2,h=20);
translate([13.5+41.25,12.5,-4])cylinder(r=5.7/2,h=20);

translate([13.5+41.5-5,12.5+14.5,-4]){cylinder(r=3.7/2,h=120);translate([0,0,4])cylinder(r=6.45/2,h=3+8,$fn=6);}
translate([13.5+41.5-5-10,12.5+14.5,-4]){cylinder(r=3.7/2,h=120);translate([0,0,4])cylinder(r=6.45/2,h=3+8,$fn=6);}
translate([13.5+41.5-5-20,12.5+14.5,-4]){cylinder(r=3.7/2,h=120);translate([0,0,4])cylinder(r=6.45/2,h=3+8,$fn=6);}
translate([13.5+41.5-5-20,12.5+14.5+20,-4]){cylinder(r=3.7/2,h=120);translate([0,0,4])cylinder(r=6.45/2,h=3+8,$fn=6);}
translate([13.5+41.5-5-30,12.5+14.5,-4]){cylinder(r=3.7/2,h=120);translate([0,0,4])cylinder(r=6.45/2,h=3+8,$fn=6);}
}
}


module adafruit5Vsteppermotor(){

cylinder(r=(28.11+0.4)/2,h=19.29);
translate([0,11.5-4,19.29])cylinder(r=5/2,h=10);
translate([-21+2+1.75,0,0])cylinder(r=4.2/2,h=20);
translate([21-2-1.75,0,0])cylinder(r=4.2/2,h=20);
difference(){
translate([-21,-3.5,0])cube([42,7,5]);
//translate([-21+2+1.75,0,0])cylinder(r=4.2/2,h=20);
//translate([21-2-1.75,0,0])cylinder(r=4.2/2,h=20);
}
}


module adafruit5Vsteppermotorcoupler(){
 //cylinder(r=5.3/2,h=5);
 //translate([-1.5,1.5,0])cylinder(r=5.3/2,h=10,$fn=4);
 //translate([0,0,0])cylinder(r=5.3/2,h=10,$fn=4);
 difference(){
  cylinder(r=18/2,h=5);
  translate([-5.5/2,-3.5/2,0])color("green")cube([5.5,3.5,10]);
 }
 translate([0,0,5])difference(){
 cylinder(r=18/2,h=7); 
 cylinder(r=14.66/2,h=7,$fn=6);
 }
}


module adafruit5Vsteppermotormount(){

difference(){
union(){
translate([0.1,0,0])cube([10,32,10]);
translate([-38.4,0,0])cube([10,32,10]);
translate([-38.4,0,0])cube([40,32,10]);
//color("purple")translate([-48,18,0])cube([70,19-5,10]);
}
translate([-14.2,5+10,15])rotate([0,180,0])adafruit5Vsteppermotor();
translate([-14.2,5+10-14,15])rotate([0,180,0])cylinder(r=11.5,h=100);
translate([-28-0.5-4-11,40,5])rotate([90,0,0])cylinder(r=3.7/2,h=50);
translate([-28-0.5-4+49,40,5])rotate([90,0,0])cylinder(r=3.7/2,h=50);
//translate([-28-0.5-4+49-20+4.3,12.5+10,-65])rotate([0,0,0])cylinder(r=5/2,h=250);
//translate([-28-0.5-4+49-20+4.3-30,12.5+10,-65])rotate([0,0,0])cylinder(r=5/2,h=250);

}
}

module adafruit_microswitch_817(){

difference(){
cube([27.8,15.9,10.3]);
translate([3.1,3.1,-1])cylinder(r=3.7/2,h=20);
translate([27.8-3.1,15.9-3.1,-1])cylinder(r=3.7/2,h=20);
}

}

module adafruit_microswitch_817_mount(){
//color("black")
//translate([-50+3,2,-3+10])rotate([-90,0,90])adafruit_microswitch_817();
difference(){
union(){
adafruit5Vsteppermotormount();
color("lime")translate([-47-4+3+5,0,-18.5+10])cube([5,32-2.5,18.5]);
//translate([-47-2,0,-18.5+10])cube([10,32,28.5]);
}
//translate([-27-40,5.1,-6.1+10])rotate([0,90,0]){cylinder(r=3.7/2,h=50);translate([0,0,27.1+1])cylinder(r=6.8/2,h=3+10,$fn=6);}
//translate([-27-40,5+21.7,-15.8+10])rotate([0,90,0]){cylinder(r=3.7/2,h=50);translate([0,0,27.1])cylinder(r=6.8/2,h=3,$fn=6);}

translate([-27-40,5+21.7,-6.1+10])rotate([0,90,0]){cylinder(r=3.7/2,h=50);translate([0,0,27.1-0.5])cylinder(r=6.8/2,h=13+16,$fn=6);}
translate([-27-40,5.1,-15.8+10])rotate([0,90,0]){cylinder(r=3.7/2,h=50);translate([0,0,27.1-0.5])cylinder(r=6.8/2,h=13,$fn=6);}


translate([-31.5,15,-0.2])cylinder(r=6.8/2,h=8,$fn=6);
translate([-27,-10,-3])cube([50,50,50]);
translate([-27-14,-10+39.5,-3-10])cube([50,50,50]);
}
}




module syringe_3ml_assy(){
syringe_3ml();
color("pink")translate([0,0,-65])syringe_3mlplunger();
}
module syringe_3ml(){
difference(){union(){
cylinder(r=10/2,h=78);
translate([0,0,78])cylinder(r=4.5/2,h=2.5);
translate([-12.5,-6.25,0])cube([25,12.5,2.5]);
}
translate([0,0,-1])cylinder(r=9/2,h=78-10);
}
}
module syringe_3mlplunger(){
cylinder(r=13/2,h=1.5);
translate([0,0,1.5])cylinder(r=7.5/2,h=1.5);
translate([0,0,1.5+1.5])cylinder(r=6/2,h=3.5);
translate([0,0,1.5+3.5+1.5])cylinder(r=8/2,h=82.5-14.5-1.5-1.5);
}


module plunger_connector(){
difference(){
translate([-15+5,-15+5-8,-4])cube([20,30-15+8,10]);
for(j=[0:5]){
translate([0,j,0]){
translate([0,0,-0.7])cylinder(r=(13.2)/2,h=1.5+0.7);
translate([0,0,1.5])cylinder(r=7.7/2,h=1.5);
translate([0,0,1.5+1.5])cylinder(r=6.2/2,h=13.5);
}
}
}
}

module gesim_tipmount_formed_modular_linearactuator_assy(){
difference(){
translate([-7,-20,30-8])rotate([0,0,180])gesim_tipmount_formed_modular_linearactuator();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=60);
}
}

module syringeplunger_modular_linearactuator_assy(){
translate([33,131,3])difference(){
translate([-7,-20,30-8])rotate([0,0,180])syringeplunger_formed_modular_linearactuator();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=60);
}
}

module linearactuator_filament_encodershuttle(){
//remove this its a wiper display
//cc = 0.2; color([cc,cc,cc])translate([15+20+1.5,71,3])cylinder(r=3,h=35);

difference(){translate([33,131,3])translate([-7,-20,30-8])rotate([0,0,180]){
//cd = 0.7; color([cd,cd,cd])
//syringeplunger_formed_modular_linearactuator_igus_TW_04_07();
//syringeplunger_formed_modular_linearactuator_igus_TW_04_09();
filamentdriver_formed_modular_linearactuator_igus_TW_04_09();
cd = 0.7; color([cd,cd,cd])translate([2,0,0])cube([30,5,15]);
}
translate([15+20+1.5,71,3])cylinder(r=3,h=70);
}
}

module syringeplunger_modular_linearactuator_assy_igus_TW_04_07(){
translate([33,131,3])difference(){
translate([-7,-20,30-8])rotate([0,0,180])syringeplunger_formed_modular_linearactuator_igus_TW_04_07();
translate([-38.25+14-13.9,-70,22.5])rotate([-90,0,0])cylinder(r=6.7/2,h=60);
}
}





	module filamentdriver_formed_modular_linearactuator_igus_TW_04_09(){
	m3diam = 3.4;
	m25diam= 3;
	shmr = 15;
	cubehi = 25 + shmr-10;
	cubeln = 30-8;
	midpt = cubeln/2;
	chpos = midpt+0.5;
	rldist = cubehi-3-shmr;
	//translate([30-52,0+5+5,0+9]){
	union(){
	 difference(){
	 union(){
	 translate([-2,4,0])difference(){
	 union(){
	 //cd = 0.3; color([cd,cd,cd])translate([2,30-4,0-0.5+0.1])color("lime")cube([22,15+5-4,6-1.75-1+5+0.5+12]); 
	 acd = 0.7; color([acd,acd,acd])translate([2,30-4+10+5-12-8,0-0.4])cube([22+22-22,15+5-4+3-5+8,6-1.75-1+0.5-1]); 
	 cacd = 0.3; color([cacd,cacd,cacd])translate([2,30-4+10+5-12-8+5+3.5-1,0-0.4])cube([22+22-22-5+5,15+5-4+3-5+8-5-5+3,6-1.75-1+0.5-1+10-7]); 

	 acd = 0.7; color([acd,acd,acd])translate([2-18-4,30-4+10+5-12,0-0.4])cube([22,15+5-4+3-5,6-1.75-1+0.5+2]); 
	 }
	 translate([0-22,8.15-15,16]){
 	 translate([21+1,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.2/2,h=30);
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0-18-7]) cylinder(r=6.7/2,h=10,$fn=6);
	 }
 	 translate([22,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.2/2,h=30);
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0-18-7]) cylinder(r=6.7/2,h=10,$fn=6);
	 }
	 }
	 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
	 }
	 aacd = 0.7; color([aacd,aacd,aacd])translate([2-2,0,-0.4])color("peru")cube([cubeln-4+4,cubehi,3]);
	 translate([0,8,0-1]){
	 translate([0,12-7.5+5,0]){
	 //bottom plate
	 //aacd = 0.7; color([aacd,aacd,aacd])translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
	 } 
	 //mid vertical plate for horizontal set screw
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11-0.5+2-2,cubehi-11-shmr-3-5.5,3])cube([6.5+2-2,19.5+10,6]);
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11+15-2-0+2,cubehi-11-shmr-3-5.5,3])cube([6+0.5+2-2,19.5+10,6]);
	  }
	 }
	translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10-1]){
	translate([1.5-1.5,5.4-3.5,0]){
	translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
	cylinder(r=3/2,h=20);
	}
	translate([1.5-1.5,0.4+1.5,0]){
	translate([0,13,0])cylinder(r=3/2,h=20);
	translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
	}
	translate([-1.5+1.5,0.4+1.5,0]){
	translate([15,13,0])cylinder(r=3/2,h=20);
	translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);
	}	
	translate([-1.5+1.5,5.4-3.5,0]){
	translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
	translate([15,0,0])cylinder(r=3/2,h=20);
	}
	}
	}
	}
	}












































	module syringeplunger_formed_modular_linearactuator_igus_TW_04_09(){
	m3diam = 3.4;
	m25diam= 3;
	shmr = 15;
	cubehi = 25 + shmr-10;
	cubeln = 30-8;
	midpt = cubeln/2;
	chpos = midpt+0.5;
	rldist = cubehi-3-shmr;
	//translate([30-52,0+5+5,0+9]){
	union(){
	 difference(){
	 union(){
	 translate([-2,4,0])difference(){
	 union(){
	 //cd = 0.3; color([cd,cd,cd])translate([2,30-4,0-0.5+0.1])color("lime")cube([22,15+5-4,6-1.75-1+5+0.5+12]); 
	 acd = 0.7; color([acd,acd,acd])translate([2,30-4+10+5-12-8,0-0.4])cube([22+22-22,15+5-4+3-5+8,6-1.75-1+0.5-1]); 
	 cacd = 0.3; color([cacd,cacd,cacd])translate([2,30-4+10+5-12-8+5+3.5,0-0.4])cube([22+22-22-5+5,15+5-4+3-5+8-5-5,6-1.75-1+0.5-1+10]); 

	 acd = 0.7; color([acd,acd,acd])translate([2-18-4,30-4+10+5-12,0-0.4])cube([22,15+5-4+3-5,6-1.75-1+0.5+2]); 
	 }
	 translate([0-22,8.15-15,16]){
 	 translate([21+1,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.2/2,h=30);
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0-18]) cylinder(r=6.7/2,h=10,$fn=6);
	 }
 	 translate([22,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.2/2,h=30);
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0-18]) cylinder(r=6.7/2,h=10,$fn=6);
	 }
	 }
	 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
	 }
	 aacd = 0.7; color([aacd,aacd,aacd])translate([2-2,0,-0.4])color("peru")cube([cubeln-4+4,cubehi,3]);
	 translate([0,8,0-1]){
	 translate([0,12-7.5+5,0]){
	 //bottom plate
	 aacd = 0.7; color([aacd,aacd,aacd])translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
	 } 
	 //mid vertical plate for horizontal set screw
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11-0.5+2-2,cubehi-11-shmr-3-5.5,3])cube([6.5+2-2,19.5+10,6]);
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11+15-2-0+2,cubehi-11-shmr-3-5.5,3])cube([6+0.5+2-2,19.5+10,6]);
	  }
	 }
	translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10-1]){
	translate([1.5-1.5,5.4-3.5,0]){
	translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
	cylinder(r=3/2,h=20);
	}
	translate([1.5-1.5,0.4+1.5,0]){
	translate([0,13,0])cylinder(r=3/2,h=20);
	translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
	}
	translate([-1.5+1.5,0.4+1.5,0]){
	translate([15,13,0])cylinder(r=3/2,h=20);
	translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);
	}	
	translate([-1.5+1.5,5.4-3.5,0]){
	translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
	translate([15,0,0])cylinder(r=3/2,h=20);
	}
	}
	}
	}
	}





	module syringeplunger_formed_modular_linearactuator_igus_TW_04_07(){
	m3diam = 3.4;
	m25diam= 3;
	shmr = 15;
	cubehi = 25 + shmr-10;
	cubeln = 30-8;
	midpt = cubeln/2;
	chpos = midpt+0.5;
	rldist = cubehi-3-shmr;
	//translate([30-52,0+5+5,0+9]){
	union(){
	 difference(){
	 union(){
	 translate([-2,4,0])difference(){
	 union(){
	 //cd = 0.3; color([cd,cd,cd])translate([2,30-4,0-0.5+0.1])color("lime")cube([22,15+5-4,6-1.75-1+5+0.5+12]); 
	 acd = 0.7; color([acd,acd,acd])translate([2,30-4+10+5-12-8,0-0.4])cube([22+22-22,15+5-4+3-5+8,6-1.75-1+0.5-1]); 
	 cacd = 0.3; color([cacd,cacd,cacd])translate([2,30-4+10+5-12-8+5+3.5,0-0.4])cube([22+22-22-5+5,15+5-4+3-5+8-5-5,6-1.75-1+0.5-1+10]); 

	 acd = 0.7; color([acd,acd,acd])translate([2-18-4,30-4+10+5-12,0-0.4])cube([22,15+5-4+3-5,6-1.75-1+0.5+2]); 
	 }
	 translate([0-22,8.15-15,16]){
 	 translate([21+1,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.7/2,h=30);
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0-18]) cylinder(r=6.7/2,h=2,$fn=6);
	 }
 	 translate([22,0,0.4]){
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,-14-10]) cylinder(r=3.7/2,h=30);
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0-18]) cylinder(r=6.7/2,h=2,$fn=6);
	 }
	 }
	 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
	 }
	 aacd = 0.7; color([aacd,aacd,aacd])translate([2,0,-0.4])color("peru")cube([cubeln-4,cubehi,3]);
	 translate([0,8,0-1]){
	 translate([0,12-7.5+5,0]){
	 //bottom plate
	 aacd = 0.7; color([aacd,aacd,aacd])translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
	 } 
	 //mid vertical plate for horizontal set screw
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11-0.5+2,cubehi-11-shmr-3-5.5,3])cube([6.5+2-2,19.5+10,6]);
	 aacd = 0.7; color([aacd,aacd,aacd])translate([chpos-11+15-2-0,cubehi-11-shmr-3-5.5,3])cube([6+0.5+2-2,19.5+10,6]);
	 //color("pink")translate([chpos-11-10,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
         /*
	 color("lightblue")translate([chpos-11-10+31,cubehi-11-shmr-3-5.5+18,0])difference(){
	 cube([6+4,19.5+9,4.25]);
	 translate([4.5+1,7,-5.6]){cylinder(r=3.7/2,h=10);translate([0,0,5.5])cylinder(r=6.7/2,h=2.5,$fn=6);}
	 translate([4.5+1,7+16,-5.6]){cylinder(r=3.7/2,h=10);translate([0,0,5.5])cylinder(r=6.7/2,h=2.5,$fn=6);}
	 }
         */
	 //translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,-5])linearpotentiometer_wiper();
	 //color("pink")translate([chpos-11+21.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
	  }
	 }
	translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10-1]){
	translate([1.5,5.4,0]){
	translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
	cylinder(r=3/2,h=20);
	}
	translate([1.5,0.4,0]){
	translate([0,13,0])cylinder(r=3/2,h=20);
	translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
	}
	translate([-1.5,0.4,0]){
	translate([15,13,0])cylinder(r=3/2,h=20);
	translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);
	}	
	translate([-1.5,5.4,0]){
	translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
	translate([15,0,0])cylinder(r=3/2,h=20);
	}
	//translate([-7.2,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.45/2,h=4+5,$fn=6);}
	//translate([-7.2+30,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.9/2,h=4+5,$fn=6);}
	}
	}
	}
	}






























	module syringeplunger_formed_modular_linearactuator(){
	m3diam = 3.4;
	m25diam= 3;
	shmr = 15;
	cubehi = 25 + shmr-10;
	cubeln = 30-8;
	midpt = cubeln/2;
	chpos = midpt+0.5;
	rldist = cubehi-3-shmr;
	//translate([30-52,0+5+5,0+9]){
	union(){
	 difference(){
	 union(){
	 translate([-2,4,0])difference(){
	 union(){
	 translate([2,30-4,0])color("lime")cube([22,15+5-4,6-1.75-1+5]); 
	 translate([2,30-4+10,0])color("pink")cube([22,15+5-4+3,6-1.75-1]); 
	 }
	 translate([0,8.15,0]){
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
	 translate([11.5+cubeln-4.5-2.5-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=3.7/2,h=10);
	 translate([11.5+cubeln-4.5-2.5+13-20,32.5-1+3+6.5,0]) cylinder(r=6.7/2,h=2.5,$fn=6);
	 }
	 //translate([11.5+cubeln-4.5-2.5+13/2,32.5-1+10,0]) rotate([90,0,0])cylinder(r=3.2/2,h=30);
	 }
	 color("peru")cube([cubeln,cubehi,3-1]);
	 translate([0,8,0-1]){
	 translate([0,12-7.5+5,0]){
	 //bottom plate
	 translate([0+9.5-5-4.5,rldist,3])cube([cubeln-9.5+3+6.5,3+4-3,6]);
	 } 
	 //mid vertical plate for horizontal set screw
	 translate([chpos-11-0.5,cubehi-11-shmr-3-5.5,3])cube([6.5,19.5+10,6]);
	 translate([chpos-11+15,cubehi-11-shmr-3-5.5,3])cube([6+0.5,19.5+10,6]);
	 //color("pink")translate([chpos-11-10,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
	 /*
	 color("lightblue")translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,0])difference(){
	 cube([6+4,19.5+9,4.25]);
	 translate([4.5,7,-5.6])cylinder(r=3.7/2,h=10);
	 translate([4.5,7+16,-5.6])cylinder(r=3.7/2,h=10);
	 }
	 */
	 //translate([chpos-11-10,cubehi-11-shmr-3-5.5+18,-5])linearpotentiometer_wiper();
	 //color("pink")translate([chpos-11+21.5,cubehi-11-shmr-3-5.5,0])cube([6+4,19.5,11]);
	  }
	 }
	translate([(30-20)/2-0.5-1,5+0.25-0.1+3,-10-1]){
	translate([0,0,15.6])cylinder(r=5.5/2,h=3.5);
	translate([15,0,15.6])cylinder(r=5.5/2,h=3.5);
	translate([0,13,15.6])cylinder(r=5.5/2,h=3.5);
	translate([15,13,15.6])cylinder(r=5.5/2,h=3.5);
	//translate([-7.2,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.45/2,h=4+5,$fn=6);}
	//translate([-7.2+30,6,0]){cylinder(r=3.7/2,h=23.5);translate([0,0,9.5])cylinder(r=6.9/2,h=4+5,$fn=6);}
	cylinder(r=3/2,h=20);
	translate([15,0,0])cylinder(r=3/2,h=20);
	translate([0,13,0])cylinder(r=3/2,h=20);
	translate([15,13,0])cylinder(r=3/2,h=20);
	}
	}
	}
	}










module valvesupportmodule_plate(){
translate([45,15.5,0])difference(){
union(){
translate([0+18.5+6,0,32])difference(){cylinder(r=15,h=15);
translate([-16,0,-32]){
translate([0+18.5+4-22,-24+7,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
translate([0+18.5+4-22,-24+7+34,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
}
translate([0+18.5-8.5,0-21-3+0,0])cube([20-5+2,22+25,15]);
}
difference(){translate([0+18.5-1,0-21-3,32])cube([20-5+2,22+25,15]);
translate([0+18.5-4,-22-2,32-4])cylinder(r=11,h=25);
translate([0+18.5-4,-22+46,32-4])cylinder(r=11,h=25);
translate([0+18.5-4,-24+7,39])rotate([90,0,90])cylinder(r=3.7/2,h=25);
translate([0+18.5-4,-24+7+34,39])rotate([90,0,90])cylinder(r=3.7/2,h=25);
translate([0+18.5+4-22+27-5-5,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=10,$fn=6);
translate([0,11,0]){
translate([0+18.5+4-22+27-10,-24+7-6-5,39])rotate([90,0,90])cylinder(r=3.7/2,h=30);
translate([0+18.5+4-22+27,-24+7-6-5,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
translate([0+18.5+4-22+27,-24+7-6-5-11,39-3.5])rotate([90,0,90])cube([8+5,7,3]);
}
translate([0+18.5+4-22+27,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
translate([0+18.5+4-22+27-5,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
//translate([0+18.5+4-22+27,-24+7-6-5+34+10,39-3.5])rotate([90,0,90])cube([8+5,7,3]);
}
translate([-20,-10,32])cube([35,20,15]);
//translate([-20.6,20+3,55])rotate([0,90,0])difference(){cylinder(r=10/2,h=55);cylinder(r=7.5/2,h=55);}
//translate([-20.6,20+3,55-15])rotate([0,90,0])difference(){cylinder(r=10/2,h=55);cylinder(r=7.5/2,h=55);}
//translate([-20.6,20-3,55+13])rotate([0,90,0])difference(){cylinder(r=10/2,h=55);cylinder(r=7.5/2,h=55);}
translate([0,0,-70])difference(){union(){translate([-20-1.6+0.9,-32.5+5+17.5,83])cube([5,20+15,53+7]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5])cube([5,20+15,15]);
translate([-20-1.6+0.9,-32.5+5+17.5,83+5+39+8.5])cube([5,20,22]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5+39+15.5])cube([5,20+15,15]);}
translate([-30,0,90])rotate([90,0,90])cylinder(r=5.5/2,h=20);
translate([-30,0,90+38])rotate([90,0,90])cylinder(r=5.6/2,h=20);
translate([-30,0+20-5+15,96.9+1.7])rotate([90,0,90])cylinder(r=3.7/2,h=20);translate([-30,0+20+5+15,96.9+1.7])rotate([90,0,90])cylinder(r=3.7/2,h=20);
translate([-30,0+20-5+15,147.7-0.5])rotate([90,0,90])cylinder(r=3.7/2,h=20);translate([-30,0+20+5+15,147.7-0.5])rotate([90,0,90])cylinder(r=3.7/2,h=20);
}
}
translate([18.5+6,0,0])cylinder(r=9.5/2,h=200);
translate([0+18.5+6,0,0])difference(){union(){translate([0,0,33])cylinder(h = 2.5, d1 = 10, d2 = 16.5, center = false);translate([0,0,32+3])cylinder(r=16.5/2,h=25);}cylinder(r=9.5/2,h=200);}
}
}

















module smallsyringe_valvesupportmodule_plate(){
translate([45,15.5,0])difference(){
union(){
/*
translate([0+18.5+6,0,32])difference(){cylinder(r=15,h=15);
translate([-16,0,-32]){
translate([0+18.5+4-22,-24+7,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
translate([0+18.5+4-22,-24+7+34,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
}

//translate([0+18.5-8.5,0-21-3+0,0])cube([20-5+2,22+25,15]);
}
*/
/*
difference(){translate([0+18.5-1,0-21-3,32])cube([20-5+2,22+25,15]);
translate([0+18.5-4,-22-2,32-4])cylinder(r=11,h=25);
translate([0+18.5-4,-22+46,32-4])cylinder(r=11,h=25);
translate([0+18.5-4,-24+7,39])rotate([90,0,90])cylinder(r=3.7/2,h=25);
translate([0+18.5-4,-24+7+34,39])rotate([90,0,90])cylinder(r=3.7/2,h=25);
translate([0+18.5+4-22+27-5-5,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=10,$fn=6);
translate([0,11,0]){
translate([0+18.5+4-22+27-10,-24+7-6-5,39])rotate([90,0,90])cylinder(r=3.7/2,h=30);
translate([0+18.5+4-22+27,-24+7-6-5,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
translate([0+18.5+4-22+27,-24+7-6-5-11,39-3.5])rotate([90,0,90])cube([8+5,7,3]);
}
translate([0+18.5+4-22+27,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
translate([0+18.5+4-22+27-5,-24+7+34,39])rotate([90,0,90])cylinder(r=8/2,h=3,$fn=6);
//translate([0+18.5+4-22+27,-24+7-6-5+34+10,39-3.5])rotate([90,0,90])cube([8+5,7,3]);
}
*/
//translate([-20,-10,32])cube([35,20,15]);

translate([0,0,-70])difference(){union(){
translate([-20-1.6+0.9,-32.5+5+17.5,83])cube([5,20+15,53+7]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5])cube([5,20+15,15]);
translate([-20-1.6+0.9,-32.5+5+17.5,83+5+39+8.5])cube([5,20,22]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5+39+15.5])cube([5,20+15,15]);}

translate([0,0,-70])translate([-20-1.6+0.9-0.1,-32.5+5+17.5-0.1,83+130])cube([5.5,20,53+7]);
translate([-30,0+16,90+10])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+16,90+40])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0,90])rotate([90,0,90])cylinder(r=5.5/2,h=20);
translate([-30,0,90+38])rotate([90,0,90])cylinder(r=5.6/2,h=20);
translate([-30,0+20-5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20-5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=3/2,h=20);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}

}
}
translate([18.5+6,0,0])cylinder(r=9.5/2,h=200);
translate([0+18.5+6,0,0])difference(){union(){translate([0,0,33])cylinder(h = 2.5, d1 = 10, d2 = 16.5, center = false);translate([0,0,32+3])cylinder(r=16.5/2,h=25);}cylinder(r=9.5/2,h=200);}
}
}


module igus_lowprofile_assy(){
import("/Users/richard/Google\ Drive/009Reprapcatcube010715/igus_sliders/igus_20161020_215205/TS_04_09_100_2.stl");
translate([0,-26,5])import("/Users/richard/Google\ Drive/009Reprapcatcube010715/igus_sliders/igus_20161020_215205/TW_04_07_1.stl");
}


module actualvalve_for_syringe(){
//valve arm part
translate([0,0,8-2.5])cylinder(r=9.5/2,h=10);
translate([-2.5/2,-6.8,8-2.5])cube([2.5,9.5+4.8,3.4]);
translate([6.8,-2.5/2,8-2.5])rotate([0,0,90])cube([2.5,9.5+4.8,3.4]);
translate([-3.8,-4.7/2,8-2.5])rotate([0,0,90])cube([4.7,9.5+4.8,3.4]);
translate([-3.8-8,-5/2,8-2.5])rotate([0,0,90])cube([5,2,3.4]);
translate([-3.8-9.7,-6/2,8-2.5])rotate([0,0,90])cube([6,2,3.4]);
translate([0,0,10])valvesupport();
}

//this one works with the cool feedback sensor servo
module valveconnectpart(){
difference(){
translate([0,0,-2-1.4])cylinder(r=15,h=10+1.4);
translate([0,0,-17])cylinder(r=9.5/2,h=18);
translate([0,0,8-2.5])cylinder(r=9.5/2,h=18);
translate([-2.5/2,-6.8,8-2.5])cube([2.5,9.5+4.8,3.4]);
translate([6.8,-2.5/2,8-2.5])rotate([0,0,90])cube([2.5,9.5+4.8,3.4]);
translate([-3.8,-4.7/2,8-2.5])rotate([0,0,90])cube([4.7,9.5+4.8,3.4]);
translate([-3.8-8,-5/2,8-2.5])rotate([0,0,90])cube([5,2,3.4]);
translate([-3.8-9.7,-6/2,8-2.5])rotate([0,0,90])cube([6,2,3.4]);

translate([0,0,-5])rotate([0,0,40])
translate([16.3/2,0,0])cylinder(r=2./2,h=118);
translate([0,0,-5])rotate([0,0,40])
translate([-16.3/2,0,0])cylinder(r=2./2,h=118);
translate([0,0,-5])rotate([0,0,40])
translate([0,16.3/2,0])cylinder(r=2./2,h=118);
translate([0,0,-5])rotate([0,0,40])
translate([0,-16.3/2,0])cylinder(r=2./2,h=118);


}
cylinder(r=5.1/2,h=8);
}


module valvemountplate_screwattach_smallersyringe(){
translate([41,12,0]){
translate([33+10,28,34])rotate([-90,180,90])mirror([0,0,0])union(){
difference(){union(){
translate([-3+19,18+0.1+2.5,12])cube([19.5,16,7+6]);
translate([-3+19+5,18+0.1+2.5-10-4,12])cube([19.5-5,16+20+4,7+6]);
//translate([-3+19+5,18+0.1+2.5-4,12])cube([19.5-5,16+4,7+6+38.5]);
//translate([-3,18+0.1-0.2,12-6])cube([19.5+47,15,4.5+3-1.4+1]);
}
//translate([22.7,24.9,-10])cylinder(r=3.4/2,h=50);
//translate([22.7+34,24.9,-10])cylinder(r=3.4/2,h=50);
translate([4,0,-40])
translate([30-5.5,10+1.5,40])cylinder(r=3.7/2,h=50);
translate([4,0,-40])
translate([30-5.5,10+1.5+30,40])cylinder(r=3.7/2,h=50);
}
}
translate([30+1,28-12.75+1,60-2-6.88+1])rotate([-90,-90,90])mirror([0,0,0]){
translate([1.4,0,0+2])difference(){
translate([3,-4.6,0-2])cube([16-2,17-2.2+4.5,11+2]);
translate([10,7,5-1.5])valvesupport();
}
}
}
}


module valvemountplate_screwattach_smallersyringe_vertical_attach(){
translate([41,12,0]){
translate([33+10,28,34])rotate([-90,180,90])mirror([0,0,0])difference(){union(){
translate([-3+19+5,18+0.1+2.5-4,12+13])cube([19.5-5,16+4,7+6+38.5-13]);
translate([-3+19+5-3,18+0.1+2.5-4-10,12+13+27])cube([19.5-5+3,16+4+20,7+6+38.5-13-27]);
translate([-3+19+5,18+0.1+2.5-4-10,12+13+0])cube([19.5-5,16+4+20,7+6+38.5-13-27-3]);
}
translate([30-5.5,10+1.5,40])cylinder(r=3.7/2,h=50);
translate([30-5.5,10+1.5+30,40])cylinder(r=3.7/2,h=50);
translate([4,0,-40]){
translate([30-5.5,10+1.5,40]){cylinder(r=3/2,h=50);}//translate([0,0,31])cylinder(r=6.8/2,h=4,$fn=6);}
translate([30-5.5,10+1.5+30,40]){cylinder(r=3/2,h=50);}//translate([0,0,31])cylinder(r=6.8/2,h=4,$fn=6);}
}
}
}
}


module syringe_3ml_clipmount(){
difference(){
union(){
translate([25,3-7.5,0])cube([25,18+15,10]);
translate([0,3-7.5,0])cube([35,18,16]);
}
translate([0,-7.5,0]){
translate([6.7,8.8,3.6])cube([25.5,2.9,13]);
translate([19.5,60,10])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+1])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+2])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+3])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+4])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+5])rotate([90,0,0])cylinder(r=10.2/2,h=78);
translate([19.5,60+29,10+6])rotate([90,0,0])cylinder(r=10.2/2,h=78);
}
translate([41,10-7,-5]){cylinder(r=5.7/2,h=10);translate([0,0,10])cylinder(r=9.7/2,h=10);}
translate([41,10+14-3,-5]){cylinder(r=5.7/2,h=10);translate([0,0,10])cylinder(r=9.7/2,h=10);}
}
}


module syringe_3ml_shaftsupport(){
difference(){
union(){
translate([25-15,3-7.5+30+30,0])cube([25+15,15,10]);
translate([25-15,3-7.5+30+30,0])cube([20,15,10+10]);
}
translate([19.5,60+50,10])rotate([90,0,0])cylinder(r=10.6/2,h=78);
translate([41,10-7+60,-5]){cylinder(r=5.7/2,h=10);translate([0,0,10])cylinder(r=9.7/2,h=10);}
}
}


module syringemount_valve_3ml(){
//This is using Igus slides
/*
TS-04-09SPL
TW-04-07
*/
//plunger_connector_assy();
translate([15,69,43])rotate([-90,180,0])plunger_connector();
syringeplunger_modular_linearactuator_assy_igus_TW_04_07();


translate([0,50,0]){
valve_assy();
}
translate([0,0,0]){
pump_stepper_linear_actuator_assy(10);
translate([-4.5,125,33.5])syringe_3ml_clipmount();
translate([-4.5,125,33.5])syringe_3ml_shaftsupport();
}
}


module valve_assy(){

cl = 0.6;color([cl,cl,cl])translate([1,232,61.3])rotate([0,0,90])valveconnectpart();

translate([7,585,-22])rotate([90,0,0]){
translate([4,34,363])rotate([0,90,90])servo();
wcl = 0.9;color([wcl,wcl,wcl]) translate([-6,83.5,353])rotate([0,90,90])actualvalve_for_syringe();
}

vcl = 0.7;color([vcl,vcl,vcl])translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe();
//vvcl = 0.95;color([vvcl,vvcl,vvcl])translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe_vertical_attach();
//pcl = 0.65;color([pcl,pcl,pcl])translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate();

color("lightgrey")translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate();
color("lightgrey")translate([1,232,61.3])rotate([0,0,90])valveconnectpart();
translate([7,585,-22])rotate([90,0,0]){
color("black")translate([4,34,363])rotate([0,90,90])servo();
color("white")translate([-6,83.5,353])rotate([0,90,90])actualvalve_for_syringe();
}
color("lightgrey")translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe();
color("lightgrey")translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe_vertical_attach();
}


module plunger_connector_assy(){
translate([15,69+6,43])rotate([-90,180,0])plunger_connector();
syringeplunger_modular_linearactuator_assy();
}



module syringeplungershuttle_2rail(){
translate([0.0,0,0]){//adding this to fine tune the height for levelling the rod
translate([49+0.5,1,373])rotate([0,180,90])zbedslot_516_syringe();
difference(){
union(){
translate([49-12,-11-5,140])rotate([0,0,0])cube([20,25,15]);
translate([49-12,-11+32,140])rotate([0,0,0])cube([20,25,15+14]);
}
translate([45.5,15,100])rotate([0,0,90])cylinder(r=7.8,h=70,$fn=6);
translate([45.5+0.5,15-19.5,100])rotate([0,0,90])cylinder(r=10/2,h=70);
//translate([45.5+0.5,15-19.5,100])rotate([0,0,90])cylinder(r=8.7/2,h=70);
translate([45.5+0.5,15-19.5+39,100+20])rotate([0,0,90])cylinder(r=10/2,h=70);
}
}
}

module syringeplungershuttle_2rail_higher(){
translate([0.0,0,0]){//adding this to fine tune the height for levelling the rod
translate([49+0.5,1,373])rotate([0,180,90])zbedslot_516_syringe();
translate([91.5-5,0,148])rotate([0,180,0])cube([10,30,8]);
difference(){
union(){
translate([49-12,-11-5,140])rotate([0,0,0])cube([20,25,15]);
translate([49-12,-11+32,140])rotate([0,0,0])cube([20,25,15]);
}
translate([45.5,15,100])rotate([0,0,90])cylinder(r=7.5,h=70,$fn=6);
translate([45.5+0.5,15-19.5,100])rotate([0,0,90])cylinder(r=10/2,h=70);
translate([45.5+0.5,15-19.5+39,100])rotate([0,0,90])cylinder(r=10/2,h=70);
}
}
}

module syringeplungershuttle_2rail_lm8uu(){
//adafruit 1181
translate([0.0,0,0]){//adding this to fine tune the height for levelling the rod
difference(){
union(){
translate([49+0.5,1,373])rotate([0,180,90])zbedslot_516_syringe();
translate([49-12,-11-5,140])rotate([0,0,0])cube([20,25,24+12]);
translate([49-12,-11+32,140])rotate([0,0,0])cube([20,25,15+14+24]);
}
translate([45.5,15,100+30])rotate([0,0,90])cylinder(r=7.8,h=70,$fn=6);
translate([45.5+0.5,15-19.5,100])rotate([0,0,90])cylinder(r=15.4/2,h=170);
//translate([45.5+0.5,15-19.5,100])rotate([0,0,90])cylinder(r=8.7/2,h=70);
translate([45.5+0.5,15-19.5+39,100+20])rotate([0,0,90])cylinder(r=15.4/2,h=170);
}
}
}



module syringeshuttle_clipbracket(){
translate([46.25,-57,300-4])rotate([180,0,90])difference(){
union(){
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3,10+11+10-3]);
translate([64.7-5+12.5+0.2,14.4-3-3+10.5,155.75+18])cylinder(r1=24.5/2,r2=24.5/2,h=3);
//translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3,10+11+10+3]);
translate([64.7+7.5,14.4+7.5-3,155.75+20-1.5-4-20])cylinder(r=14/2,h=24);
}
translate([64.7+7.5-9-5,14.4+7.5-3-25.5,155.75+20-1.5-4])cube([28,15,10.5]);
translate([64.7+7.5,14.4+7.5-3,155.75+20-1.5-4])cylinder(r1=15.5/2,r2=11.5/2,h=10.7);
translate([64.7+7.5,14.4+7.5-3,155.75+20-1.5-4])cylinder(r=11.5/2,h=10.7);
translate([64.7+7.5,14.4+7.5-3,155.75+20-1.5-4])cylinder(r=19/2,h=1.5);
translate([64.7+7.5-9-5,14.4+7.5-3,155.75+20-1.5-4])cube([28,15,1.5]);
translate([64.7+7.5,14.4+7.5-3,155.75+20-1.7-4])cylinder(r=14/2,h=24);
translate([65.2+0.75,14.4+7.5,155.75+20-1.5-4])cube([14-1.5,14,24]);

translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])
translate([0,0,-100])cylinder(r=3.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])
translate([0,0,-100])cylinder(r=3.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])translate([0,-3.5,0])cube([12,7,3.2]);


translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])translate([-12,-3.5,0])cube([12,7,3.2]);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,-100])cylinder(r=3.7/2, h=200);



}
}




module servo(){
 bcl = 0.4;
 color([bcl,bcl,bcl])cube([40.75,19.85,35]);
 difference(){
 color([bcl,bcl,bcl])translate([-(55.5-40.74)/2,0,35-8])cube([55.5,19.85,2.5]);
 translate([-(55.5-40.74)/2+3.8,0+4.5,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8,0+4.5+10,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8+49,0+4.5,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8+49,0+4.5+10,35-8-10])cylinder(r=3.7/2,h=20);
 }
 
 cl = 0.9;
 color([cl,cl,cl]){
 translate([10,10,30])cylinder(r=8/2,h=12);
 translate([10,10,41])cylinder(r=30/2,h=5);
 }
}



module igus_TW_04_12_slider(){
 translate([0,-60-7+12,6.85])color("silver")import("/Users/richard/Google Drive/009Reprapcatcube010715/igus_sliders/igus_20161021_183436/TW_04_12_1.stl");
 color("silver")import("/Users/richard/Google Drive/009Reprapcatcube010715/igus_sliders/igus_20161021_183436/TS_04_12_150_2.stl");
}


module igus_slidermount_encoder_TW_04_12(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
color("pink")
translate([0-7.5,-40,0])cube([10+15+10+6,68+40+23+20,6+3]);
color("yellow")
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
color("lime")
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[2,3,4,5]){
translate([2,10+(a*25),-5]){cylinder(r=3.7/2,h=40);translate([0,0,4])cylinder(r=6.8/2,h=3+4,$fn=6);}
}
translate([17.5,-33,0])for(a=[0,4,8,12]){
translate([5,20+(a*10),-0.1]){translate([0,0,2.4])cylinder(r=3/2,h=6);cylinder(r=5.5/2,h=2.5);}
}
translate([17.5,-33,0])for(a=[4,8,12]){
translate([5+4,10+(a*10),-5]){translate([0,0,8.4+1])cylinder(r=4.7/2,h=8);translate([0,0,5])cylinder(r=8/2,h=4.5);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
for(a=[0,4]){
translate([5,-26+(a*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
}
}
}//end translate
}


module syringemount_for_pump_plungefix(){
difference()translate([0,0,50]){union(){
translate([3.5+2.5,0,0])difference(){union(){
translate([30,19,161-50])rotate([90,90,-90]){
translate([0,0,-4])cube([15,38,23-2+3+4]);
translate([-5,0,-4])cube([5,38,24+4]);
//translate([2.7,5,23])rotate([90,0,0])cylinder(r=7.7,h=5);
//translate([2.7,5+33,23])rotate([90,0,0])cylinder(r=7.7,h=5);
}
}
translate([30,19,161-50])rotate([90,90,-90]){
translate([6,2,0-5])cube([2.7,34,20+5]);
//translate([-14+1+25-4,19,11.4+3-4])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([-14+1+25-4,19,11.4+3-3])rotate([90,0,90])cylinder(r=26/2,h=300);
//translate([-14+1+25-4,19,11.4+3-2])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([-14+1+25-4,19,11.4+3-1])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([-14+1,19,11.4])rotate([90,0,90])cylinder(r=17.25/2,h=300);
translate([-24,11.5-1,-5])cube([30,17,17]);
translate([-20-1.6+0.9+20.7+9,-32.5+5+28-0.5-0.4+19.75,-20+115-66])rotate([0,90,0])cylinder(r=22.5/2,h=7);
}
translate([-20-1.6+0.9+20.7+1-3.5-2.5,-32.5+5+28-0.5-0.4,-20+115+4-4])cylinder(r=22.5/2,h=7.5+4);
}
}
difference(){
union(){
color("green")translate([-20-1.6+0.9,-32.5+5+13-4-0.5+5,103-7])cube([28+2+3,29+9-10,20]);
translate([-20-1.6+0.9+20.7+1-10.2+10,-32.5+5+28-0.5-0.4-19.5+9.5,90])rotate([90,0,180])m4locknut_higher();
translate([-20-1.6+0.9+20.7+1-10.2+10,-32.5+5+28-0.5-0.4-19.5+9.5+39,90])rotate([90,0,180])m4locknut_higher();
}
translate([-14+1+25+6.5+6-3,19-19,11.4-210])rotate([0,0,0])cylinder(r=26/2,h=300);
translate([-20-1.6+0.9+20.7+1-1,-32.5+5+28-0.5-0.5,-20-100])cylinder(r=8.7/2,h=500);
translate([-20-1.6+0.9+20.7+1-1,-32.5+5+28-0.5-0.5,-20+115+4-4])cylinder(r=22.5/2,h=7.5+4);
translate([-20-1.6+0.9+20.7+1-1,-32.5+5+28-0.5-0.5,-20+115+15])cylinder(r=15.5/2,h=7);
translate([-20-1.6+0.9+20.7+1-1,-32.5+5+28-0.5-0.5+19.5,-20-100])cylinder(r=8.7/2,h=500);
translate([-20-1.6+0.9+20.7+1-1,-32.5+5+28-0.5-0.5-19.5,-20-100])cylinder(r=8.7/2,h=500);
}
translate([0,0,-2.5])difference(){translate([-20-1.6+0.9,-32.5+5+18,83])cube([5,18,53]);translate([-30,0,90])rotate([90,0,90])cylinder(r=5.5/2,h=20);translate([-30,0,90+38])rotate([90,0,90])cylinder(r=5.6/2,h=20);}
}
}

module syringe10mlmount_plungerfix(){
difference()translate([0,0,50]){union(){
translate([3.5+2.5,0,0])difference(){union(){
translate([30,19,161-50])rotate([90,90,-90]){
translate([0,0,-4])cube([15,38,23-2+3+4]);
translate([-5,0,-4])cube([5,38,24+4]);
}
}
translate([30,19,161-50])rotate([90,90,-90])
translate([6,2,0-5])cube([2.7,34,20+5]);
translate([30,19,161-50])rotate([90,90,-90])
translate([-14+1+25-4,19,11.4+3-1])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([30,19,161-50])rotate([90,90,-90])
translate([-14+1,19,11.4])rotate([90,0,90])cylinder(r=17.25/2,h=300);
translate([30,19,161-50])rotate([90,90,-90])
translate([-24,11.5-1,-5])cube([30,17,17]);
translate([30,19,161-50])rotate([90,90,-90])
translate([-20-1.6+0.9+20.7+9,-32.5+5+28-0.5-0.4+19.75,-20+115-66])rotate([0,90,0])cylinder(r=22.5/2,h=7);

translate([-20-1.6+0.9+20.7+1-3.5-2.5,-32.5+5+28-0.5-0.4,-20+115+4-4])cylinder(r=22.5/2,h=7.5+4);
}
}
}
}


module cartridge_syringe10ml_plungerfix(){
difference()translate([0,0,50]){union(){
translate([3.5+2.5,0,0])difference(){union(){
translate([30,19,161-50])rotate([90,90,-90]){
translate([0,0,-4])cube([15,38,23-2+3+4]);
translate([-5,0,-4])cube([5,38,24+4]);
//translate([2.7,5,23])rotate([90,0,0])cylinder(r=7.7,h=5);
//translate([2.7,5+33,23])rotate([90,0,0])cylinder(r=7.7,h=5);
}
}
translate([30,19,161-50])rotate([90,90,-90]){
translate([6,2,0-5])cube([2.7,34,20+5]);
//translate([-14+1+25-4,19,11.4+3-4])rotate([90,0,90])cylinder(r=26/2,h=300);
//translate([-14+1+25-4,19,11.4+3-3])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([-14+1+25-4,19,11.4+3-3])rotate([90,0,90])cylinder(r=3.7/2,h=300);
//translate([-14+1+25-4,19,11.4+3-2])rotate([90,0,90])cylinder(r=26/2,h=300);
//translate([-14+1+25-4,19,11.4+3-1])rotate([90,0,90])cylinder(r=3.7/2,h=300);
translate([-14+1-10,19,11.4])rotate([90,0,90])cylinder(r=17.25/2,h=30);
//translate([-14+1,19,11.4])rotate([90,0,90])cylinder(r=26/2,h=300);
translate([-24,11.5-1,-5])cube([30,17,17]);
//translate([-20-1.6+0.9+20.7+9,-32.5+5+28-0.5-0.4+19.75,-20+115-66])rotate([0,90,0])cylinder(r=22.5/2,h=7);
}
//translate([-20-1.6+0.9+20.7+1-3.5-2.5,-32.5+5+28-0.5-0.4,-20+115+4-4])cylinder(r=22.5/2,h=7.5+4);
}
}
}
}







module syringe10ml_clipmount(){

difference(){union(){
translate([77,30-10,32])cube([7,30,15]);
translate([79,30-25,32])cube([5,45,15]);
}
translate([80,40,40-0.5])rotate([0,90,0])
translate([0,0,-0.1])cylinder(r=5.7/2,h=10);
translate([80,40,40-0.5])rotate([0,90,0])
translate([0,0,-10])cylinder(r=9.7/2,h=10);


}
translate([45,15.5,0])difference(){
union(){
translate([0+18.5+6,0,32])difference(){
cylinder(r=15,h=15);
/*
translate([-16,0,-32]){
//translate([0+18.5+4-22,-24+7,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
//translate([0+18.5+4-22,-24+7+34,39])rotate([90,0,90])cylinder(r=7.75/2,h=25,$fn=6);
}
*/
translate([0+18.5-8.5,0-21-3+0,0])cube([20-5+2,22+25,15]);
}
}
translate([18.5+6,0,0])cylinder(r=9.5/2,h=200);
translate([0+18.5+6,0,0])difference(){union(){
translate([0,0,33])cylinder(h = 2.5, d1 = 10, d2 = 16.5, center = false);translate([0,0,32+3])cylinder(r=16.5/2,h=25);}cylinder(r=9.5/2,h=200);}
}
}





module syringe10mlmount_plungerfix_assy(){
translate([-41,-170,10.5])rotate([0,-90,-90])syringe10mlmount_plungerfix();
translate([-60,-81.5+1.5+56,20.4])difference(){
union(){
cube([53,20,5]);
translate([53-18,-8,0])cube([18,35,5]);
}
translate([43.5,-1,-6])
translate([0,0,0])cylinder(r=5.7/2,h=10.1);
translate([43.5,-1,-6])
translate([0,0,10])cylinder(r=9.7/2,h=3);

translate([43.5,20,-6])
cylinder(r=5.7/2,h=10.1);
translate([43.5,20,-6])
translate([0,0,10])cylinder(r=9.7/2,h=3);
}
}

module cartridge_plunger_top(){
translate([-41,-170,10.5])rotate([0,-90,-90])cartridge_syringe10ml_plungerfix();
translate([-60,-81.5+1.5+56,20.4])difference(){
union(){
cube([53,20,5]);
translate([53-18,-8,0])cube([18,35,5]);
}
translate([43.5,-1,-6]){cylinder(r=5.7/2,h=10);translate([0,0,10])cylinder(r=9.7/2,h=3);}
translate([43.5,20,-6]){cylinder(r=5.7/2,h=10);translate([0,0,10])cylinder(r=9.7/2,h=3);}
}
}




module igus_TW_04_12_slider_plate(){ 
difference(){
union(){
translate([-110+55.5+3,-81.5+1.5+40-24,16])cube([22+5-3.5,11,7+5.8]);
translate([-110+55.5+3,-81.5+1.5+40-25,16])cube([22+5-3.5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40,16])cube([22+5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40+6.6+3.5,16])cube([22+5,6.5,30]);
}
translate([-110+59+5.3-1.6,-81.5+1.5+20,36-3.4-17])rotate([0,0,0]){cylinder(r=3.7/2,h=20);cylinder(r=6.8/2,h=9,$fn=6);}
translate([-110+59+5.3-1.6+13,-81.5+1.5+20,36-3.4-17])rotate([0,0,0]){cylinder(r=3.7/2,h=20);cylinder(r=6.8/2,h=9,$fn=6);}
translate([-110+59+5.3,-81.5+1.5+146,36-3.4])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59+5.3+9,-81.5+1.5+146,36-3.4])rotate([90,90,0])cylinder(r=3.7/2,h=200);

translate([-110+59,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59,-81.5+1.5+46+15,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46+15,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
}
}



module igus_slidermount_encoder_TW_04_12_motormount_assy(){
igus_slidermount_encoder_TW_04_12(); 
translate([1,0,0]){
translate([-22,-90,4])rotate([90,-90,0])motormount();
translate([-110+27,-81.5+1.5,-4])cube([42,8.5,10]);
translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
translate([-70+8,-80,30-5])rotate([-90,0,0])cylinder(r=6.7/2,h=200);
}
}

module igus_slidermount_encoder_TW_04_12_motormount_assy_m8(){
//color("lightgrey")
bg = 0.5;
color([bg,bg,bg])igus_slidermount_encoder_TW_04_12(); 
translate([1,0,0]){
//color("lightgrey")
color([bg,bg,bg])translate([-22,-90,4])rotate([90,-90,0])motormount();
color([bg,bg,bg])translate([-110+27,-81.5+1.5,-4])cube([42,8.5,10]);
translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
rbg=0.85;color([rbg,rbg,rbg])translate([-70+8,-80,30-5])rotate([-90,0,0])cylinder(r=8.7/2,h=200);
}
}


module xyz_zprobe_board(){

difference(){
translate([-6,-6,0])cube([45+12,52+12,4]);
translate([-3,-3,2])cube([45+6,52+6,10]);
translate([2,2,-2])cube([45-4,52-4,10]);
}
}

module wash_dry_pcv_mosfets(){

x = 26;
y = 76;
z = 3;
difference(){
union(){
translate([x,y/2-20/2,0])cube([20,20,z]);
cube([x,y,z]);
difference(){
translate([-6,-6,0])cube([x+12,y+12,z+2]);
translate([-3,-3,3])cube([x+6,y+6,z+5]);
}
}
translate([3,3,-0.2])cube([x-6,y-6,z+5]);
translate([x+13,y/2,-0.3])cylinder(r=4.7/2,h=20);
}
}

module ada_solenoid_2776(){
//delete this for printing
//color([100/255,100/255,100/255])translate([0-1-1.5+1,-0.15-0.5,0])cube([20.5+2,12+0.3+1,11+4+1]);


color([175/255,175/255,175/255])difference(){
translate([-2,-2,-2])cube([20.5+4,12+4,11+4]);
translate([0,-0.15,0])cube([20.5+3,12+0.3,11+4]);
for(i=[0:8]){
translate([11.25,6,11/2+(i*1)])rotate([0,90,0])cylinder(r=3.7/2,h=30);
}
for(i=[0:7]){
translate([-30,6,11/2+(i*1)])rotate([0,90,0])cylinder(r=8/2,h=30);
}
}
//this is the pin part (delete this for printing)
//color([100/255,100/255,100/255])translate([11.25-10.2+1+3.5-3.5,6,11/2])rotate([0,90,0])cylinder(r=3/2,h=20+5);
}

module syringe_10ml(){
difference(){
union(){
translate([0,0,84])cylinder(r1=16.5/2,r2=9.5/2,h=2.3);
translate([0,0,84])cylinder(r=9.5/2,h=8.5);
cylinder(r=16.5/2,h=83.5);
translate([-18.9/2,-32/2,0])cube([18.9,32,2.5]);
}
translate([0,0,0])cylinder(r=15.5/2,h=82);
}
translate([0,0,-71]){
cylinder(r=13.5/2,h=83.5);
cylinder(r=18.85/2,h=1.5);
}
}

module valvesupport(){
cylinder(r=10.5/2,h=15);
translate([-10,0,6.4])rotate([0,90,0])cylinder(r=6.3/2,h=20);
translate([0,0,6.4])rotate([0,90,90])cylinder(r=6.3/2,h=10);
}







