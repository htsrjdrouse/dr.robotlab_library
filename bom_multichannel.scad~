include <modparts.scad>
use<writescad/write.scad>




translate([0,35,0])pipette_plate();

distributor_plate();


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




