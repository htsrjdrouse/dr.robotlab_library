include <waste_simple_hinge.scad>
include <dr.robotlab_repstrap.scad>
include <robotarmPara_PartA.scad>
include <2020slider.scad>
// Un-official (China source) M12 mount 36 x 36 mm RPi-compatible camera
// (search "raspberry camera board M12x0.5 lens" on Ebay)
// Sept. 16, 2014  J. Beale
// version 1.1 (added 2mm to U-bracket to allow tilt motion with screw in place)

// ==============================================================
slop = 0.2;  // size by which ID of holes shrinks during print
fn = 50;     // facets on a cylinder
eps = 0.03;  // a small number

CBW = 36.1; // width of camera PCB (x)
CBL = 36.1; // length of camera PCB (y)
CBH = 1.63; // thickness of camera PCB
CBBH = 2.9-CBH; // camera PCB bottom component keep-out height
CBBS = 2.0; // PCB bottom keeput setback from edge
CBBCS = 7;  // PCB bottom keepout corner setback

CBFCH = 4.45-CBH; // 15-way flex connector height
CBFCW = 22.1; // 15-way flex connector width
CBFCL = 5.65; // 15-way FC length
CBFCE = 0.97; // 15-way FC edge setback

MHOD = 3.0; // M3 mounting screw hole OD
MHCC = 29.0; // M3 mounting hole center-center distance

CMW = 17.3; // camera module width
CML = 17.75; // camera module length
CMH = 9.1-CBH; // camera module height
CMMW = 23.6;  // camera module mounting ears shape width
CMML = 4.8; // camera module mounting ears shape length
CMLH = 12.2 - CBH; // camera module lens barrel height
CMLOD = 16.6; // camera module lens barrel OD
CMCW = 7.6;  // camera module flex cable connector width
CMCH = 3.4-CBH; // camera module FC connector height
CMCTE = 34.3; // far edge of FC connector to far edge of PCB

LOD = 12.0; // M12x0.5 camera lens barrel OD
LL = 12.5; // M12x0.5 camera lens barrel length
LROD = 16.05; // lens rim OD
LRH = 7.0; // lens rim height

FCH = 0.4; // 15-way FC thickness (at stiffener)
FCW = 16.15; // 15-way FC width
FCL = 10; // FC length (just a stub)
FCZO = 1.24; // FC height offset from board surface

module FlexCable() {
  color("grey") translate([0,-(CBL+FCL)/2+CBFCE,-FCZO]) 
	cube([FCW,FCL,FCH],center=true);
}

module M12Lens() {
  cylinder(r=LOD/2,h=LL,$fn=fn); // M12x.5 lens barrel
  translate([0,0,LL]) cylinder(r=LROD/2,h=LRH,$fn=fn); // rim of lens front objective
}

module lensbase(cut){
   difference(){
   union(){
   color("grey") translate([0,0,CBH+(CMH/2)]) cube([CMW-3,CML-cut,10],center=true); // base of camera module
   //color("grey") translate([0,0,CBH+(CMH/2)]) cube([CMMW-3,CMML-cut,10],center=true);
   }
   color("grey") translate([0,0,CBH+(CMLH/2)-2]) cylinder(r=(12/2),h=CMLH+10,center=true);
   color("green") translate([-CMCW/2,0,CBH-2]) cube([CMCW,CMCTE-(CBL/2),CMCH+2]);
   }
}

module htsrlensbase(cut,height){
   difference(){
   union(){
   color("grey") translate([0,0,CBH+(CMH/2)]) cube([CMW-3,CML-cut,10+height],center=true); // base of camera module
   //color("grey") translate([0,0,CBH+(CMH/2)]) cube([CMMW-3,CMML-cut,10],center=true);
   }
   color("grey") translate([0,0,CBH+(CMLH/2)-2]) cylinder(r=(12/2),h=CMLH+10+height,center=true);
   #color("green") translate([-CMCW/2,0,CBH-2-height/2]) cube([CMCW,CMCTE-(CBL/2),CMCH+2]);
   }
}




module CBoard() {
 difference() {
  union() {
   translate([-CBFCW/2,-(CBL/2 - CBFCE),-CBFCH]) 
		cube([CBFCW, CBFCL, CBFCH]); // 15-way flex conn
   translate([0,0,CBH/2]) cube([CBW,CBL,CBH],center=true); // PCB holding module
   translate([0,0,-CBBH/2]) color("grey") 
	cube([CBW-2*CBBS,CBL-2*CBBS,CBBH],center=true); // bottom keepout
   
   color("grey") translate([0,0,CBH+(CMH/2)]) 
		cube([CMW,CML,CMH],center=true); // base of camera module
   color("grey") translate([0,0,CBH+(CMH/2)]) cube([CMMW,CMML,CMH],center=true);
   color("grey") translate([0,0,CBH+(CMLH/2)]) cylinder(r=CMLOD/2,h=CMLH,center=true);
   color("grey") translate([-CMCW/2,0,CBH]) cube([CMCW,CMCTE-(CBL/2),CMCH]);
   
  }

  translate([0,0,eps]) cylinder(r=LOD/2,h=2*CMH,$fn=fn); // hole for M12 lens
  translate([(CBW-CBBCS)/2,(CBL-CBBCS)/2,-CBBH-eps]) 
	cube([CBBCS,CBBCS,CBBH*2],center=true); // bottom keepout area corner relief 
  translate([-(CBW-CBBCS)/2,(CBL-CBBCS)/2,-CBBH-eps]) 
	cube([CBBCS,CBBCS,CBBH*2],center=true); // bottom keepout area corner relief 
  translate([(CBW-CBBCS)/2,-(CBL-CBBCS)/2,-CBBH-eps]) 
	cube([CBBCS,CBBCS,CBBH*2],center=true); // bottom keepout area corner relief 
  translate([-(CBW-CBBCS)/2,-(CBL-CBBCS)/2,-CBBH-eps]) 
	cube([CBBCS,CBBCS,CBBH*2],center=true); // bottom keepout area corner relief 
  translate([MHCC/2,MHCC/2,-CBH*2]) 
		cylinder(r=MHOD/2,h=CBH*5,$fn=20); // 3mm mounting hole
  translate([MHCC/2,-MHCC/2,-CBH*2]) cylinder(r=MHOD/2,h=CBH*5,$fn=20);
  translate([-MHCC/2,MHCC/2,-CBH*2]) cylinder(r=MHOD/2,h=CBH*5,$fn=20);
  translate([-MHCC/2,-MHCC/2,-CBH*2]) cylinder(r=MHOD/2,h=CBH*5,$fn=20);
  // translate([0,0,-50]) cube([100,100,100]); // cutaway DEBUG
 } // end diff()
}

module CamAssy() { // model of M12 camera board
 CBoard();
 FlexCable();
 translate([0,0,5]) color("green") M12Lens();
}



// ===================================================
// == HOUSING for 36x36mm M12-lens camera board  ==

CCW = 40; // camera housing width (x axis)
CCL = 40; // camera housing length (y axis)
CCBD = 4; // camera housing back depth (z axis)
CCBF = 2.6; // camera housing back front lip height (z axis)
CCBIW = CBW+slop*2; // housing back interior width
CCBIL = CBL+slop*2; // housing back interior length
CCBSW = FCW+1; // width for flex cable slot
BS=8; // mounting screw boss width
BSO=0.8; // boss offset towards center

module CHB_outside() {
  difference() {
    union() {
    translate([-CCW/2,-CCL/2,-CCBD]) 
		cube([CCW,CCL,CCBD+CCBF]); // back body of housing
    }
    union() {
	  translate([-CCBSW/2,-(CCL/2)-eps,-1.6]) 
		cube([CCBSW,CCL/2,CCBD*2]); // slot for flex cable
      translate([-CCBIW/2,-CCBIL/2,-(CBFCH+slop)]) 
		cube([CCBIW,CCBIL,CCBD+CCBF]); // cutout hole for board
      // CamAssy();  // camera board assembly w/lens, flex cable
      // translate([+15,-100,-50]) cube([100,100,100]); // DEBUG cutaway

    }
  }
}

// =========================================================
// == Front part of camera housing

CCFH = 10.3+5; // height of camera case front part
CCFZoff = 2.6; // z-offset of camera case front
CCFT = 1.75; // thickness of camera case front
CCFB = 2.25;  // side hex boss height
CCFBOD = 14.42;  // side hex boss OD
CCFBID = 6.11+slop;  // side hex boss ID
CCFBZ = 5.2; // z height offset of boss location


module connector(w=2) {
  translate([1.5, w, 5])
  difference() {
    rotate([90])
      scale([1.7,1])
      cylinder(r=5, h=w);
    rotate([90])
      translate([4,0])
      cylinder(r=1.6, h=w, $fn=7);
    translate([-11.5, -3, -5])
    cube([10,4,10]);
  }
}
module connectors() {
  connector();
  translate([0, 5]) connector();
  translate([0, 10]) connector();
}





//connectors();

//clip();

module clip(){

translate([0,-15,0])difference(){
union(){
translate([0,7,0])color("red")cube([6, 9, 15]);
translate([0,6.2,7.5])rotate([0,90,0])color("green")cylinder(r=7.5,h=6);
}
#translate([-2,6,8])rotate([0,90,0])cylinder(r=4.7/2,h=10);
}
translate([0, 15]) rotate([90]) difference() {
  color("blue")cube([15, 15, 15]);

  //translate([0,4.5])
  //cube([10, 6.2, 15]);
}
module base() {
  cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}


module CHF_outside(height) {
  difference() {
   union() {
    translate([-CCW/2,-CCL/2,CCFZoff-10]) 
		cube([CCW,CCL,CCFH+height]); // back body of housing
    //rotate([0,0,90]) translate([0,(CCL/2+CCFB),CCFZoff + CCFBZ]) rotate([90,0,0])
		//rotate([0,0,45]) cylinder(d=CCFBOD,h=CCL+CCFB*2,$fn=4); // side boss

   }
   translate([-CCW/2+CCFT,-CCL/2+CCFT,CCFZoff-CCFT-7]) 
		#cube([CCW-CCFT*2,CCL-CCFT*2,CCFH+height]); // interior cutout of housing
   //#cylinder(r=CMLOD+slop*2,h=20,$fn=fn); // for M12 lens housing
   	#translate([2.5,0,-10])cylinder(r=15.5/2,h=70,$fn=fn); // for M12 lens housing
   rotate([0,0,90]) {
    translate([0,-CCL/2,CCFZoff + CCFBZ+height/2]) rotate([90,0,0])
		rotate([0,0,90])  cylinder(d=CCFBID,h=CCL+(eps*CCFB)*2,$fn=6); // side hex boss
    translate([0,CCL/2,CCFZoff + CCFBZ+height/2]) rotate([-90,0,0])
		rotate([0,0,90]) cylinder(d=CCFBID,h=CCL+(eps*CCFB)*2,$fn=6); // side hex boss
    translate([0,-CCL*2,CCFZoff + CCFBZ+height/2]) rotate([-90,0,0])       #cylinder(d=MHOD,h=CCL*4,$fn=fn); // side M3 through-hole
    }
  }
}

module CHF(height) {
 difference() {
  union() {
    CHF_outside(height);
    translate([0,0,2]) CHB_Holes(6,13.5+height);  // posts for M3 mounting holes
  }
    #CHB_Holes(); // 4x mounting holes
 }
}

SHID = 3.0;  // ID of screw hole (note ID will be "slop" smaller)

// mounting screw bosses in 4 corners of camera back
module CHB_Boss() {
   union() {
	translate([(CCW/2)-BS-BSO,-CCL/2+BSO,-(BS/2)])
       cube([BS,BS,CCBD+CCBF-CBH]); // boss for mounting screw
	translate([(CCW/2)-BS-BSO,CCL/2-BS-BSO,-(BS/2)])
       cube([BS,BS,CCBD+CCBF-CBH]); // boss for mounting screw
	translate([-(CCW/2)+BSO,-CCL/2+BSO,-(BS/2)])
       cube([BS,BS,CCBD+CCBF-CBH]); // boss for mounting screw
	translate([-(CCW/2)+BSO,CCL/2-BS-BSO,-(BS/2)])
       cube([BS,BS,CCBD+CCBF-CBH]); // boss for mounting screw
   }
}

module CHB_Holes(diam=SHID,len=50) { // M3 mounting holes
  union() {
  translate([MHCC/2,MHCC/2,-BS])
 	#cylinder(r=diam/2,h=len,$fn=20);  // hole for M3 mounting screw
  translate([MHCC/2,MHCC/2,-BS])
  #cylinder(r=6.5/2,h=3+4,$fn=6);  // hole for M3 mounting screw

  translate([-MHCC/2,MHCC/2,-BS])
 	cylinder(r=diam/2,h=len,$fn=20);  // hole for M3 mounting screw
  translate([-MHCC/2,MHCC/2,-BS])
  #cylinder(r=6.5/2,h=3+4,$fn=6);  // hole for M3 mounting screw


  translate([MHCC/2,-MHCC/2,-BS])
 	cylinder(r=diam/2,h=len,$fn=20);  // hole for M3 mounting screw
  translate([MHCC/2,-MHCC/2,-BS])
  #cylinder(r=6.5/2,h=3+4,$fn=6);  // hole for M3 mounting screw


  translate([-MHCC/2,-MHCC/2,-BS])
 	cylinder(r=diam/2,h=len,$fn=20);  // hole for M3 mounting screw
  translate([-MHCC/2,-MHCC/2,-BS])
  #cylinder(r=6.5/2,h=3+4,$fn=6);  // hole for M3 mounting screw

   }
}


module CameraHousingBack() {
 difference() {
  union() {
    CHB_outside();
    CHB_Boss();
	translate([-20,-20,-10])cube([40,40,8]);
  }
  translate([0,0,-5])CHB_Holes();
  translate([0.5,7.5,-7])cylinder(r=4.6,h=5);
  translate([0.5,7.5,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-7])cylinder(r=4.6,h=5);
 }
}


module htsr_pivot(height){
     translate([-20+55,-15-17.5+12.5,2.9-10.3])rotate([0,0,90])difference(){
	 union(){
	 translate([0,7,0])color("red")cube([6, 9, 15]);
	 translate([0,6.2,7.5])rotate([0,90,0])color("green")		 cylinder(r=7.5,h=6);
	 }
     translate([-2,6,8])rotate([0,90,0])cylinder(r=4.7/2,h=10);
     }
}



// ================================================
// ==  U-bracket (pan-tilt motion) for camera case


BIW = 44.6;  // width of opening across U bracket
BTH = 2.5; // thickness of U bracket
BWD = 10; // width of U bracket arms (z axis)
BLT = 5; // bracket arm extension above center of pivot
BCL = 6; // bracket clearance below edge of case  (case y width = CCL)
BZoff = 3; // z-offset of entire bracket

module bracket() {
XOD = BIW+2*BTH;
 difference() {
  union() {
    translate([-XOD/2,-BLT,0]) cube([XOD, CCL/2 + BLT + BCL+BTH, BWD]);
  }
  translate([BIW/2-eps,-BWD+3,-BWD/4.8]) rotate([45,0,0]) cube([BTH+2*eps,BWD,BWD]); //notch
  translate([-BIW-BTH,0,0]) translate([BIW/2-eps,-BWD+3,-BWD/4.8]) 
	rotate([45,0,0]) cube([BTH+2*eps,BWD,BWD]); //notch

  translate([-BIW/2,-BLT-eps,-eps]) cube([BIW, CCL/2 + BLT + BCL, BWD+2*eps]);
  translate([-100,0,BWD/2]) rotate([0,90,0]) 
		cylinder(d=MHOD,h=200,$fn=20); // camera pivot (horizontal)
  translate([0,0,BWD/2]) rotate([-90,0,0]) 
		cylinder(d=MHOD,h=200,$fn=20); // center U-bracket pivot (vertical)
 }
 translate([BIW/2,+BCL+CCL/2,0]) cylinder(r=BTH,h=BWD,$fn=20); // edge fillet
 translate([-BIW/2,+BCL+CCL/2,0]) cylinder(r=BTH,h=BWD,$fn=20); // edge fillet
} // end module bracket

module pantiltblock(){
 difference(){
 translate([-24,-10,24])cube([50,20,10]);
 union(){
 #translate([0,3,0])cylinder(r=8.7/2,h=50);
 color("green")translate([0,3,30])cylinder(r=14.7/2,h=8,$fn=6);
 translate([15,3,0])cylinder(r=6.4/2,h=50);
 translate([-15,3,0])cylinder(r=6.4/2,h=50);
 color("orange")translate([15,3,30-3])cylinder(r=11.7/2,h=7);
 color("orange")translate([-15,3,30-3])cylinder(r=11.7/2,h=7);
 }
 }
}

module pantiltplate(){


translate([0,0,7+8-3])union(){
translate([28,-5,4])color("blue")cube([10,40,6]);
translate([28,-5,4-10-8])color("blue")cube([10,40,16+8]);
translate([-8,0,0])difference(){
translate([-6,-5,4])cube([44+8,40,6+5]);
cylinder(r=3/2,h=20);

translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);
translate([0,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
translate([32,0,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
translate([32,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
}}


}

module railholder(){
 difference(){
 union(){
 //translate([-24,-10,24-3])#cube([50,19,13]);
 translate([-24-9,-10+15-6,24-2])cube([70,19-5+6,12]);
// translate([-0.5,-15,34])rotate([0,0,90])m4locknut(); 
 }
 union(){
 translate([-0.5,-15-2,34])rotate([0,0,90])m4locknut(); 
 #translate([-0.5-6.5,-16.5-2,4])rotate([0,0,90])cube([13+10.5,13,38]); 
  #translate([-0.5-6.5+30,-16.5-2,4])rotate([0,0,90])cube([13+10.5,13,38]);
 #translate([-0.5-6.5+17,-16.5-2+8,18])rotate([0,0,90])cube([33,17.25,8]); 
 #translate([0+1,0+10,20])cylinder(r=8.5/2,h=50);
 //#color("green")translate([0,0,30])cylinder(r=14.7/2,h=8,$fn=6);
 #translate([15+1,0+10,20])cylinder(r=5/2,h=50);
 #translate([-15+1,0+10,20])cylinder(r=5/2,h=50);
 //#color("orange")translate([15,0,30-3])cylinder(r=11.7/2,h=7);
 //#color("orange")translate([-15,0,30-3])cylinder(r=11.7/2,h=7);
 #translate([-28-0.5,40,30-1.5])rotate([90,0,0])cylinder(r=3.7/2,h=50);
 #translate([-28-0.5+60,40,30-1.5])rotate([90,0,0])cylinder(r=3.7/2,h=50);

 }
 }
translate([-0.5,-15-2+11,34])rotate([0,0,90])m4locknut(); 
translate([-0.5+30,-15-2+11,34])rotate([0,0,90])m4locknut();
}


module steppermotor(){

cylinder(r=28.11/2,h=19.29);
translate([0,11.5-4,19.29])cylinder(r=5/2,h=10);
#translate([-21+2+1.75,0,0])cylinder(r=4.2/2,h=20);
#translate([21-2-1.75,0,0])cylinder(r=4.2/2,h=20);
difference(){
translate([-21,-3.5,0])cube([42,7,5]);
//#translate([-21+2+1.75,0,0])cylinder(r=4.2/2,h=20);
//#translate([21-2-1.75,0,0])cylinder(r=4.2/2,h=20);
}
}


module steppermotormount(){

difference(){
union(){
translate([0.1,0,0])cube([10,32,10]);
translate([-38.4,0,0])cube([10,32,10]);
translate([-38.4,0,0])cube([40,32,10]);
color("purple")translate([-48,18,0])cube([70,19-5,10]);
}
#translate([-14.2,5+10,15])rotate([0,180,0])steppermotor();
#translate([-14.2,5+10-14,15])rotate([0,180,0])cylinder(r=11.5,h=100);
 #translate([-28-0.5-4-11,40,5])rotate([90,0,0])cylinder(r=3.7/2,h=50);
 #translate([-28-0.5-4+49,40,5])rotate([90,0,0])cylinder(r=3.7/2,h=50);
 #translate([-28-0.5-4+49-20+4.3,12.5+10,-65])rotate([0,0,0])cylinder(r=5/2,h=250);
 #translate([-28-0.5-4+49-20+4.3-30,12.5+10,-65])rotate([0,0,0])cylinder(r=5/2,h=250);

}
}

module steppermotorcoupler(){
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

module nema14mount(){

difference(){
union(){

cube([35,35,10]);
translate([-21,12,0])difference(){#cube([35,15,10]);translate([9.5,7.5,-5])#cylinder(r=4.7/2,h=30);}

translate([26,12,0])difference(){#cube([35,15,10]);translate([24.5,7.5,-5])#cylinder(r=4.7/2,h=30);}

/*
translate([-21,33,-1.5])rotate([0,90,180])m4locknut();
translate([41,33,-1.5])rotate([0,90,180])m4locknut();

translate([35-2-4-3+1,10+2,-25])cube([10+4+1,16.5-2,25]);
translate([35-2-40,10+2,-25])cube([10+5,16.5-2,25]);
*/
}

translate([2.3,17.5,-103])#cylinder(r=5/2,h=300);
translate([2.3+30,17.5,-103])#cylinder(r=5/2,h=300);


translate([35/2,35/2,-0])#cylinder(r=22.5/2,h=20);
translate([35/2-26/2,35/2-26/2,-3])#cylinder(r=3.6/2,h=20);
translate([35/2+26/2,35/2-26/2,-3])#cylinder(r=3.6/2,h=20);
translate([35/2-26/2,35/2+26/2,-3])#cylinder(r=3.6/2,h=20);
translate([35/2+26/2,35/2+26/2,-3])#cylinder(r=3.6/2,h=20);

translate([-0.75-1-0.5,150,-15.25+5])rotate([90,0,0])#cylinder(r=3.6/2,h=200);
translate([-0.75-1-0.5,150,-15.25+5-10])rotate([90,0,0])#cylinder(r=3.6/2,h=200);
translate([-0.75-1-0.5+20,50,-15.25+5])rotate([90,0,0])#cylinder(r=3.6/2,h=20);
//translate([-0.75-1-0.5+30,50,-15.25+5])rotate([90,0,0])#cylinder(r=3.6/2,h=20);

translate([-0.75-1-0.5+40,150,-15.25+5])rotate([90,0,0])#cylinder(r=3.6/2,h=200);
translate([-0.75-1-0.5+40,150,-15.25+5-10])rotate([90,0,0])#cylinder(r=3.6/2,h=200);

}
}

module pantiltplatebreadboard(){

difference(){translate([0,0,7+8-3])union(){
//translate([28,-5,4])color("blue")cube([10,40,6]);
//translate([28,-5,4-10-8])color("blue")cube([10,40,16+8]);

difference(){union(){
translate([-27,-0.5,4])#cube([20,20,5]);
translate([-27+53,-0.5,4])#cube([20,20,5]);
}
#translate([-21.5,9.5,3])cylinder(r=5.5/2,h=10);
#translate([-21.5+60,9.5,3])cylinder(r=5.5/2,h=10);
}

translate([-8,0,0])difference(){
translate([-7,-5,4])cube([48,40-6,6+5]);
translate([1,-2,0]){#cylinder(r=3/2,h=20);
translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);
#translate([0,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
#translate([32,0,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
#translate([32,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
}
}}


for ( i = [1 : 2] ){
#translate([-10-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}
for ( i = [1 : 2] ){

#translate([30-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}


for ( i = [0 : 2] ){
//#translate([0-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}

for ( i = [0 : 2] ){
//#translate([10-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([10-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}

for ( i = [0 : 2] ){
//#translate([20-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([20-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}

}

}

module tslotbreadboardclamp(){

difference(){
union(){
translate([0,-5,0])cube([20,30,5+3]);
translate([10,-5,0])#cube([52/2,10,5]);
translate([-16,-5,0])cube([52/2,30,5]);
}
translate([10,2,0])cylinder(r=4.7/2,h=20);translate([10,2,-20+4])cylinder(r=8/2,h=20);

translate([10,18,0])cylinder(r=4.7/2,h=20);translate([10,18,-20+4])cylinder(r=8/2,h=20);
translate([-10,10-10,0])cylinder(r=3.7/2,h=20);
translate([-10,10-0,0])cylinder(r=3.7/2,h=20);
translate([-10,20-0,0])cylinder(r=3.7/2,h=20);
translate([30,10-10,0])cylinder(r=3.7/2,h=20);
}

}


module tslotbreadboardclampotherway(){

difference(){
union(){
translate([-5,0,0])#cube([30,20,5+3]);
translate([-16,5,0])cube([52,10,5]);
}
#translate([0,10,0])cylinder(r=4.7/2,h=20);#translate([0,10,-20+4])cylinder(r=8/2,h=20);

#translate([20,10,0])cylinder(r=4.7/2,h=20);#translate([20,10,-20+4])cylinder(r=8/2,h=20);
translate([-10,10,0])cylinder(r=3.7/2,h=20);
translate([30,10,0])cylinder(r=3.7/2,h=20);
}

}

module tslotcross(){


   difference(){
    union(){
    translate([-15,94+5,5])cube([60,20,8]);
    translate([5,94+5-20,5])cube([20,60,8]);
    }
    translate([-5,110-1,0])#cylinder(r=4.7/2,h=20);
    translate([-5,110-1,13-4])#cylinder(r=4,h=20);
    translate([35,110-1,0])#cylinder(r=4.7/2,h=20);
    translate([35,110-1,13-4])#cylinder(r=4,h=20);

    translate([15,110-20,0])#cylinder(r=4.7/2,h=20);
    translate([15,110-20,-15+4])#cylinder(r=4,h=20);
    translate([15,110+20,0])#cylinder(r=4.7/2,h=20);
    translate([15,110+20,-11])#cylinder(r=4,h=20);    

   }
}



// CamAssy();  // just the M12 camera board model


    union(){
   //railholder();
   //translate([0-2.5,88+9,1])rotate([0,0,90])gesim_mauk_tipmount_thread_breadboard();
   //translate([1.5,94,-19])rotate([90,0,0])tslotbreadboardclamp();
   //translate([0,94+100,10])rotate([90,0,0])tslot20(200);

   //translate([-71.5,94,-20])rotate([90,0,90])tslot20(200);
   //translate([1.5,94,-19+22])rotate([90,0,0])tslotbreadboardclampotherway();

    //translate([1,75-7.5,7.4+40-10])rotate([0,180,0])color("green")steppermotor();
    //translate([10+5.2,75-7.5-5,7.4+30-5-10])steppermotormount();
    /*
    translate([0,75,-37.4])railholder(); 
    translate([0,75,-37.4])steppermotorcoupler();
    translate([-16.5-1.25+1.5,75-14.5+7,27.4+8.9+5])nema14mount();
    */
    //translate([0,75,-37.4])pantiltblock(); 
    //translate([0-9-5-5.5,110-21,22-50])tslot20(100);   
    //translate([0-9-5,110,22])rotate([90,90,0])pantiltplatebreadboard();
    //translate([0,45,-3.4])color("blue")CameraHousingBack();
    /*
    difference(){
	translate([-15,30,-20.4])cube([30,28.5,13]);
    //translate([-10-1,30,-20.4])#cube([30-10,28.5,15]);
    //translate([-10+1,30,-20.4])cube([30-10,28.5,15]);
    }
    #translate([-10,40,-20.4])cube([30-10,8.5,13]);
    translate([-15,30,-20.4])cube([7,28.5,13]);
	translate([10,40-1,-8.9])rotate([0,90,0])color("green")m4locknut();
	translate([10,40+9.5,-8.9])rotate([0,90,0])mirror([0,1,0])color("green")m4locknut();
        */

    }

     //housing stuff  	
    //translate([-50,0,-7.4])clip();
    /*   
     height=2.5;  
     CHF(height);
     htsr_pivot(height);
	 translate([30,0,10-(3.75)-2.035])rotate([0,180,0])htsrlensbase(1,height);
    */ 
    //LED mount 
    /*  
    difference(){
    union(){
	cylinder(r=30/2,h=5);
    translate([10,-13,0])cube([11,26,3]);
    }
    cylinder(r=26.5/2,h=5);
    #translate([16.5,0,0])cylinder(r=6/2,h=5);
    #translate([16.5,7,0])cylinder(r=6/2,h=5);
    #translate([16.5,-7,0])cylinder(r=6/2,h=5);
    }
	*/
     /*
     translate([-20+55,-15-17.5+12.5,2.9])rotate([0,0,90])difference(){
	 union(){
	 translate([0,7,0])color("red")cube([6, 9, 15]);
	 translate([0,6.2,7.5])rotate([0,90,0])color("green")		 cylinder(r=7.5,h=6);
	 }
     #translate([-2,6,8])rotate([0,90,0])cylinder(r=4.7/2,h=10);
     }
	 

	 //#translate([-20,-7.5-10,17.9])rotate([-180,0,180])clip();

    //translate([0,0,0.95]) color("grey") CamAssy();
    //translate([40,0,0])lensbase(1); //this one was best


    translate([40,0,0])htsrlensbase(1,10);
    translate([40,20,5/2])htsrlensbase(1,5);
	translate([40,40,3.7])htsrlensbase(1,2.5);
	*/




//translate([0,0,BZoff]) color("green") bracket(); // U-bracket (pan/tilt)

/*
difference() {
  union() {
     translate([0,0,0.95]) color("grey") CamAssy();
     color("blue") CameraHousingBack();
    // rotate([180,0,0]) CHF();
     CHF();
  }
  // translate([MHCC/2,0,-50]) cube([100,100,100]); // cutaway DEBUG
}
*/
//translate([-50,0,-7.4])clip();

