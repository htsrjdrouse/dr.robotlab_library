include <modparts.scad>
use<writescad/write.scad>

//9pinconnector_for_softpot(42,37);
//laser_zbed(144);

/*
translate([231.75,195-0,145+5])wash_holder_arm();
translate([230+125.25,195-0,145+5])wash_holder_arm();
*/

//washbowl_assy();
//multichannel_wash_assembly();
//color("darkgrey")washbowl_watervacinput();

multichannel_drypad();



//multichannel_vacuum();


module multichannel_drypad(){
translate([-148,85,-150])difference(){
union(){
translate([-75.5-5,-40,0])cube([55,90,3]);
translate([-75.5-5+45,-40,0])cube([10,90,5]);
}
/*
translate([-30,33,-10]){
cylinder(r=3.7/2,h=30);translate([0,0,10])
cylinder(r=6.7/2,h=3.2);
}
translate([-30,33-66,-10]){
#cylinder(r=3.7/2,h=30);
translate([0,0,10])cylinder(r=6.7/2,h=3.2);
}
*/
for(a=[0:3]){
translate([-44-(a*10),-40+5,-1])cube([5,71+10,13]);
}

translate([-33,-66,-20])rotate([0,0,90]){
translate([19+7,2.5-10,2])translate([7.5,25/2-8,18])#cylinder(r=6.9/2,h=3.2);
translate([19+7,2.5-10,2])translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);

translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,18])#cylinder(r=6.9/2,h=3.2);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);

translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,18])#cylinder(r=6.9/2,h=3.2);
translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);
}




}
}





module multichannel_vacuum(){
wh = 20;
sh = 9;
difference(){
translate([26,2.5,2])color("lightgreen")cube([90,25+15,wh]);
translate([26+9,2.5+21,2+5])#cube([90-14,12,50]);
for(i=[0:12]){
translate([26+9+i*5,2.5+7,2+5+(7-(i*1.2)/2)])cube([5,11,50]);
}
translate([26+70,2.5+7,2+5])#cube([15,11,50]);
for(j=[112,85,55,30]){
translate([j,15+sh+15,4]){#cylinder(r=2.8/2,h=200);}
translate([j,15-sh,4]){#cylinder(r=2.8/2,h=200);}
}

translate([95,15,15])rotate([0,90,0])cylinder(r=5/2,h=30);
translate([95,30,10])rotate([0,90,0])cylinder(r=5/2,h=30);





}
}


module multichannel_wash_assembly(){

color("darkgrey")translate([220,350,0])rotate([0,180,-90])multichannel_drypad();

translate([20-13,185-10,-62.5+5]){
difference(){
union(){
translate([242-10,0,200])washstation_for_multichannel();
translate([242-10,0,200-25])multichannel_vacuum();
}
translate([270,15,200])multichannel_module();
}
}
}

module wash_holder_arm(){
l = 33.05;
difference(){
translate([0,-0.5,0])color("peru")cube([l,12,5]);
translate([3.3,10/2,-5])cylinder(r=2.8/2,h=20);
translate([l-3.3,10/2,-5])cylinder(r=2.8/2,h=20);
translate([l-8.3,10/2,-5])cylinder(r=2.8/2,h=20);
}
}



//mirror([0,0,0])import("files/endstop_y.stl");
//translate([14,6,-10])filament_linearactuator_shuttle();

//translate([0,35,0])pipette_plate();
//distributor_plate();
//pipetteboy_shaft();
//serological_1ml_shaft();

//multichannel_holder_assy();

module multichannel_module(){
ang = 20;
for(i=[0:14]){
translate([i*4.5,0+15,-1])rotate([0,0,45])cylinder(r=7/2,h=20,$fn=4);
translate([i*4.5,0,7])rotate([0,0,45])cylinder(r=11/2,h=20,$fn=4);
}
for(i=[0:7]){
translate([i*9,0,0])rotate([0,0,45])cylinder(r1=2/2,r2=7/2,h=7.1);
for(k=[0:15]){
translate([i*9,k,5-k/4])rotate([0,0,45])cylinder(r=3/2,h=20);
}
}
}



module washstation_for_multichannel(){
sh = 9;
h=9.5;
wh = 7;

translate([19+7,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);
}

translate([19+7+37,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);
}

translate([19+7+75,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])#cylinder(r=2.8/2,h=40);
}





translate([19,2.5+10,2])difference(){
translate([0,7,0])color("lime")cube([7,12,wh]);
translate([3.5,25/2,-0.1])#cylinder(r=3.7/2,h=20);
translate([3.5,25/2,3.6])#cylinder(r=9/2,h=3.5);
}
translate([97+19,2.5+10,2])difference(){
translate([0,7,0])color("lime")cube([7,12,wh]);
translate([3.5,25/2,-0.1])#cylinder(r=3.7/2,h=20);
translate([3.5,25/2,3.6])#cylinder(r=9/2,h=3.5);
}
difference(){
translate([26,2.5,2])color("pink")cube([90,25+15,wh]);
//translate([119,6+sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
//translate([22,6+sh,-0.2+h-4]){cylinder(r=9/2,h=4);}


translate([114,15+sh+15,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([114,15-sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([28,15-sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([28,15+sh+15,-0.2+h-4]){cylinder(r=9/2,h=4);}

for(j=[112,85,55,30]){
translate([j,15+sh+15,-0.2]){cylinder(r=3.7/2,h=20);translate([0,0,h-4])cylinder(r=9/2,h=4);}
translate([j,15-sh,-0.2]){cylinder(r=3.7/2,h=20);translate([0,0,h-4])cylinder(r=9/2,h=4);}
}



}
}


module multichannel_holder_assy(){
 difference(){
  union(){
   translate([25,40,16])rotate([90,0,0])serological_1ml_shaft();
   translate([25,15,16])rotate([90,0,0])pipetteboy_shaft();
   translate([0,-5,0])base_for_pipetteboy();
  }
  translate([19,20.5,-10])#cylinder(r=3.7/2,h=120);
  translate([19+12,20.5,-10])#cylinder(r=3.7/2,h=120);
 }
}

module base_for_pipetteboy(){
 translate([25,25,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
 translate([25,15,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
 translate([25,35,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
}

module serological_1ml_shaft(){
 difference(){
  union(){
  translate([0,0,-0.1])cylinder(r=(4+8)/2,h=15);
  translate([-6,5,7.5])rotate([0,90,0])#cylinder(r=(7)/2,h=12);
  translate([0,-5,-0.1])rotate([0,0,45])cylinder(r=(14)/2,h=15, $fn=4);
  translate([0,-7.5,-0.1])rotate([0,0,45])cylinder(r=(14)/2,h=15, $fn=4);
  }
  translate([-7,5,7.5])rotate([0,90,0])#cylinder(r=(2.8)/2,h=14);
  translate([0,0,-5])cylinder(r=4.5/2,h=30);
  translate([0,3,-5])rotate([0,0,45])cylinder(r=6/2,h=30,$fn=4);
  translate([0,7,-5])rotate([0,0,45])cylinder(r=6/2,h=30,$fn=4);
 }
}

module pipetteboy_shaft(){
 difference(){
 union(){
 translate([0,0,-0.1])cylinder(r=(10+8)/2,h=15);
 translate([-8,7,7.5])rotate([0,90,0])cylinder(r=(7)/2,h=16.5);
 translate([0,-5,-0.1])rotate([0,0,45])cylinder(r=(16)/2,h=15, $fn=4);
 translate([0,-7.5,-0.1])rotate([0,0,45])cylinder(r=(16)/2,h=15, $fn=4);
 }
 translate([-11,7,7.5])rotate([0,90,0])#cylinder(r=(2.8)/2,h=25);
 translate([0,0,-5])cylinder(r=10/2,h=30);
 translate([0,5,-5])rotate([0,0,45])#cylinder(r=10/2,h=30,$fn=4);
 translate([0,7,-5])rotate([0,0,45])#cylinder(r=10/2,h=30,$fn=4);
 }
}

module pipette_plate(){
difference(){
translate([12,-5+5,0])cube([78,15,3]);
translate([21,0,0])lower_microchannel_segment();
}
}


module distributor_plate(){
difference(){
translate([-15,-5,0])cube([125,27,3]);
#upper_microchannel_segment();
}
}



module lower_microchannel_segment(){
//translate([-4,5,3])rotate([90,0,90])cylinder(r=4/2,h=68);
for (i=[-1:6]){
if(i==3){
//translate([0+i*(9),5,3])rotate([90,0,90])eldon_james_nyloncross();
translate([0+i*(9)+7.5,5,3])rotate([90,0,0])cylinder(r=4/2,h=30);
translate([0+i*(9)+7.5,5+10,3])rotate([90,0,0])#cylinder(r=4/2,h=15);
}else{
//translate([0+i*(9),5,3])rotate([90,0,90])eldon_james_nylontee();
translate([0+i*(9)+7.5,5+10,3])rotate([90,0,0])#cylinder(r=4/2,h=15);
}
}
}




module upper_microchannel_segment(){
translate([-11,5,3])rotate([90,0,90])cylinder(r=4/2,h=117);
for (i=[-1:6]){
if(i==3){
//translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nyloncross();
translate([0+i*(16)+7.5,5,3])rotate([90,0,0])cylinder(r=4/2,h=30);
translate([0+i*(16)+7.5,5+10+8,3])rotate([90,0,0])cylinder(r=4/2,h=18);
}else{
//translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nylontee();
translate([0+i*(16)+7.5,5+10+8,3])rotate([90,0,0])cylinder(r=4/2,h=18);
}
}
}


//multichannel_fluidicdesign();


module multichannel_fluidicdesign(){
for (i=[0:5]){
if(i==3){
translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nyloncross();
}else{
translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nylontee();
}
}
translate([6*16,5,3])rotate([90,0,90])eldon_james_nylonrtang();
translate([-0.0*16-1,5,3])rotate([-90,0,90])eldon_james_nylonrtang();
}




/*
difference(){
cube([14,12,3]);
translate([0,5,3])rotate([90,0,90])eldon_james_nylontee();
}
*/
//eldon_james_nyloncross();
//eldon_james_nylonrtang();





module eldon_james_nylonrtang(){
cylinder(r=3/2,h=15/2+1.5);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
//translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
}



module eldon_james_nylontee(){
cylinder(r=3/2,h=15);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
}

module eldon_james_nyloncross(){
cylinder(r=3/2,h=15);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([0,0,7.5])rotate([0,-90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
translate([-1.75,0,7.5])rotate([0,-90,0])cylinder(r=5/2,h=1.5);
}




