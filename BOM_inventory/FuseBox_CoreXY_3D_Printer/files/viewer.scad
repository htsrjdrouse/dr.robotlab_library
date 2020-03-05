include <hardware.scad>
include <camera.scad>

//motor_mount_rail_support();

translate([139-50,17,-38])plunger_shuttle();
translate([9,0,13-21])assay_display();

//color("peru")translate([185,117,34])rotate([0,-90,0])import("newcarriage.stl");
/*
assy_toprint();
*/

module assy_toprint(){

//iko_ml9_shuttle_3dprint();
//motor_mount_rail_support();
//rotate([0,0,0])miuzei_lenscap(16);
//filterwheel();
//microservomount();
//mirror([0,1,0])microservomount();
camera_corexy_linear();
}





module assay_display(){

translate([50,14,-70])rotate([0,0,90])translate([0,-3,3+33])motor_mount_rail_support();
translate([50,14,-70])rotate([0,0,90])motor_rail_assy();
translate([40-10,8,0])rotate([0,180,90]){
rotate([0,0,0])miuzei_lenscap(16);
camera_corexy_linear();
}
/*
translate([0,0,0])color("pink")microservo();
filterwheel();

mirror([0,0,0])microservomount();
translate([0,23,0])mirror([0,1,0])microservomount();
*/
}

module beltattach_grab(){
for(i=[0:3]){
translate([-100-4+20.5+(i*2)+11.5-11,89-72.25+3.9-0.57,4.5-2])mirror([0,1,0])cylinder(r=1/2,h=17.5,$fn=30);
}
difference(){
union(){
//translate([-100-4,89-90,4.5-2])cube([30,22+1.5,9]);
translate([-100-4+20,89-72.25,4.5-2])cube([10,2+4,9+13]);
}
//translate([-100-4+35,89-72.25,4.5+1])rotate([0,-25,0])cube([10,2+4,9+13]);
translate([-100-4+35-16,89-72.25+2+0.24,4.5+7.6])rotate([0,0,0])cube([20,1.09,9+13]);
translate([-100-4+35-16,89-72.25+2+0.24+2.3,4.5+17.2])rotate([0,0,0])cube([20,1.59,9+13]);

translate([-8.5,0,0]){
translate([-100-4+35-16+14.5,89-72.25+2+0.24+20+10,4.5+7.6+10-0.5])rotate([90,0,0])cylinder(r=3.3/2,h=100,$fn=30);
translate([-100-4+35-16+14.5,89-72.25+2+0.24+20-21,4.5+7.6+10-0.5])rotate([90,0,0])cylinder(r=5.3/2,h=1.7,$fn=30);
translate([-100-4+35-16+14.5,89-72.25+2+0.24+20-21+4.7+0.3,4.5+7.6+10-0.5])rotate([90,0,0])cylinder(r=7.3/2,h=1.7,$fn=30,$fn=6);
}
//end belt attach module
}
}

module plunger_shuttle(){
translate([8,0,0])beltattach_grab();
translate([-24,21.5,0])mirror([0,1,0])beltattach_grab();
difference(){union(){
//translate([-107+42-4,89-90,4.5-2])cube([9,22+1.5,9+5.35]);
translate([-107-4-10,89-90,4.5-2])cube([45,22+1.5,8]);
translate([-107+30,89-90,4.5-2])cube([24,22+1.5,8]);
translate([-10,0,0]){
translate([-100,89,4.5])rotate([0,0,90])import("LM8UU_holder_stub.stl");
translate([-100+52-8.2-16,89,4.5])rotate([0,0,90])import("LM8UU_holder_stub.stl");
}
translate([-10,0,0]){
translate([-100+28,89+51.5-8.2,4.5])rotate([0,0,90])import("LM8UU_holder_stub.stl");
translate([-100,89+51.5-8.2,4.5])rotate([0,0,90])import("LM8UU_holder_stub.stl");
}
}


translate([-27,-3,-100])rotate([0,0,90]){
translate([7,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+14,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
}

translate([-27-123,-3,-100])rotate([0,0,90])mirror([0,1,0]){
translate([7,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+14,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
}





//color("silver")translate([-55-10+0-5-100,5+10,4.5-10])rotate([0,90,0])cylinder(r=23/2,h=260,$fn=30);

translate([-80,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
translate([-80,15-10,-10])cylinder(r=2.8/2,h=40,$fn=30);

translate([-80-16,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
translate([-80-16,15-10,-10])cylinder(r=2.8/2,h=40,$fn=30);

//translate([-80-18,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
/*
translate([-3,0,0]){
translate([-80,3,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80,27,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,27,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,3,-10])cylinder(r=3.8/2,h=40,$fn=30);
}
*/
}
}






module camera_corexy_linear(){
difference(){
miuzei_raspicam_base();
translate([-3.5,30-44,-300])rotate([0,0,0])cylinder(r=2.8/2,h=400,$fn=30);
translate([-3.5+8,30-44,-300])rotate([0,0,0])cylinder(r=2.8/2,h=400,$fn=30);
}
}




module microservomount(){
difference(){
union(){
translate([0,-10,0])cube([17,9.6,4]);
translate([0,-10+5,0])cube([17-7,9.6-5,16]);
}
translate([5+4-3,-7+4+0.7,-10])cylinder(r=1.7/2,h=30,$fn=30);
translate([5,-7.5,4])cylinder(r=8/2,h=30,$fn=30);
translate([5,-7.5,-1])cylinder(r=3.7/2,h=30,$fn=30);
translate([5+8,-7.5,-1])cylinder(r=3.7/2,h=30,$fn=30);
translate([5+8,-7.5,4])cylinder(r=8/2,h=30,$fn=30);
}
}


module filterwheel(){
ldia = 35;
difference(){ 
translate([6,6,28])cylinder(r=ldia,h=6,$fn=30);
translate([6,6,28+2.4])cylinder(r=9/2,h=4,$fn=30);
translate([6,6,28-2])cylinder(r=2,h=10,$fn=30);
color("")translate([25.4/4-20,25.4/4,30])filter(25.4);
color("")translate([25.4/4+20,25.4/4,30])filter(25.4);
color("")translate([25.4/4-0,25.4/4-20,30])filter(25.4);
color("")translate([25.4/4-0,25.4/4+20,30])filter(25.4);
color("")translate([25.4/4-20,25.4/4,30-2])filter(20.4);
color("")translate([25.4/4+20,25.4/4,30-2])filter(20.4);
color("")translate([25.4/4-0,25.4/4-20,30-2])filter(20.4);
color("")translate([25.4/4-0,25.4/4+20,30-2])filter(20.4);
}
}

module motor_mount_rail_support(){
difference(){
union(){
translate([-5,-2-9,0])color("")cube([28+10, 28+29, 6]);
translate([-0,-8,-33+7])color("")cube([28-19, 7.6, 32]);
translate([19,-8,-33+7])color("")cube([28-19, 7.6, 32]);
translate([0,-11,-33+7])color("")cube([28, 4, 38]);
translate([0+8,-11,-33+7])color("")cube([28-16, 4, 48]);
}
translate([7,34,-2])cylinder(r=3.8/2,h=200,$fn=30);
translate([7+7,41,-2])cylinder(r=3.8/2,h=200,$fn=30);
translate([7+14,34,-2])cylinder(r=3.8/2,h=200,$fn=30);


translate([14,14,-2])cylinder(r=24/2,h=20,$fn=30);
translate([14,14-15,-2])cylinder(r=14.7/2,h=9,$fn=30);
translate([14,14-14,-2])cylinder(r=11.7/2,h=20,$fn=30);
translate([14,14-13,-3])rotate([90,0,0])cylinder(r=2.8/2,h=120,$fn=30);
translate([14,14-13,-3-20])rotate([90,0,0])cylinder(r=2.8/2,h=120,$fn=30);
translate([14,14-13,-3+20])rotate([90,0,0])cylinder(r=2.8/2,h=120,$fn=30);
translate([14+23/2,14+23/2,-2])cylinder(r=3.7/2,h=20,$fn=30);
translate([14-23/2,14+23/2,-2])cylinder(r=3.7/2,h=20,$fn=30);
translate([14-23/2,14-23/2,-2])cylinder(r=3.7/2,h=20,$fn=30);
translate([14+23/2,14-23/2,-2])cylinder(r=3.7/2,h=20,$fn=30);
/*
caseSize = 14;
holeSpacing = 22;
mountingHoleDepth=10;
caseHeight = 1000;
holeDiameter = 3.7;
translate([(caseSize-holeSpacing)/2,(caseSize-holeSpacing)/2,caseHeight-mountingHoleDepth+0.1]) 
cylinder(r=holeDiameter/2, h=mountingHoleDepth);
translate([caseSize-((caseSize-holeSpacing)/2),(caseSize-holeSpacing)/2,caseHeight-mountingHoleDepth+0.1]) 
cylinder(r=holeDiameter/2, h=mountingHoleDepth);
translate([(caseSize-holeSpacing)/2,caseSize-((caseSize-holeSpacing)/2),caseHeight-mountingHoleDepth+0.1]) 
cylinder(r=holeDiameter/2, h=mountingHoleDepth);
translate([caseSize-((caseSize-holeSpacing)/2),caseSize-((caseSize-holeSpacing)/2),caseHeight-mountingHoleDepth+0.1]) 
cylinder(r=holeDiameter/2, h=mountingHoleDepth);
*/


}
}
module motor_rail_assy(){
translate([0,-3,3])nema11();
translate([14-9/2,-10-0,138-40+25])rotate([-90,0,0]){
color("silver")iko_rail(125);
color("silver")translate([-5,0+33,2.5])iko_ml9_shuttle();
color("")translate([-5,0+33,2.5+8])iko_ml9_shuttle_3dprint();
}
}
/*
*/





