include <MG995_Servo_Linear_Actuator/files/caller.scad>
include <utl.NEMA.scad>
include <arducam-raspi.scad>

//translate([-60-50+220,130-84-80+158,80-16+50-15])rotate([0,180,90])
//translate([70-8-60,14-7+95+0,55+130-9.5])rotate([-90,0,0])servo_linear_assy();
//translate([-72-0+10-2,120+12-120,-27.4-113+1])rotate([90,0,-90])raspi_mount_linact();
servo_linear_assy_connectplate();


/*
union(){
import("/Users/richard/Documents/dr.robot/dr.robotlab_library/BOM_inventory/FuseBox_CoreXY_3D_Printer/files/plunger_shuttle.stl");
raspi_mount_linact_connect();
}
*/

//translate([-4.5,-4,6.1])arducam_case_lid();

/*
*/
//translate([-4.5,-4,0])arducam_case();

//translate([28+2.5-2.7,90-16.7,58-6+1.55])rotate([-90,-90,0])arducam_case();
//translate([28+2.5-2.7+20,90-16.7,58-6+1.55+10-0.5])rotate([-90,90,0])arducam_case();


/*
//rack mod
translate([10-1,-10-15+20,30])rotate([0,0,90])
difference(){
color("pink")
union(){
import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/rack.stl");
translate([90.5+1.5-0.5-20,-44.5+5.5-1,-4.25])cube([1,6.5-1.5,10-1.5+7]);
translate([90.5+1.5-0.5-1.3-20,-44.5+5.5-1-1.5,-4.25])cube([1+1.4,6.5-1.5+1.5,10-1.5+7]);
translate([90.5+1.5-0.5-1.3+1-20,-44.5+5.5-1-1.5,-4.25])cube([1+1,6.5-1.5+1.5-1,10-1.5+7]);
}
translate([90.5+1.5-2.9-0.35-20,-44.5+7.5,-4.25+1])rotate([0,0,-28])cube([1.34,6.5-1.5,10-1.5+7]);
//translate([-30+100,-41.25,0])rotate([0,90,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([-30+100,-41.25+4-1.5,0+8])rotate([0,90,0])cylinder(r=2.8/2,h=30,$fn=30);
#translate([-35+15,-41.25+2,0])rotate([0,90,0])rotate([0,0,45])cylinder(r=20.8/2,h=60-10,$fn=4);
}
*/


//rotate([0,0,0])decapper_servo_handle();
//#translate([0+16.5,90,-41.5])rotate([0,0,180])color("lime")motor_mount();
//translate([0,0,-27.5])color("lightblue")servo_linear_assy_connectplate();

//both handheld multichannel and decapper thermoscientific

//holder_half_mod();

//raspi_mount_linact_washer();



module raspi_mount_linact_connect(){
translate([33-12-36,-10+1-3,-4.2-17])rotate([0,90,0])difference(){
union(){
//translate([1.5,0,-0.5])cube([10+2.8,8,11]);
translate([1.5,0,0])cube([10+2.8,8,36+20]);
}
//translate([6+44,27+47-6,-20])
translate([6,15,5])rotate([90,0,0])#cylinder(r=2.8/2,h=132,$fn=30);
translate([6,15,5+24])rotate([90,0,0])#cylinder(r=2.8/2,h=132,$fn=30);
}
}




module raspi_mount_linact_washer(){
translate([33-12,44,-4.2])rotate([0,90,0])
difference(){
union(){
translate([6,27,-12])cylinder(r=12/2,h=12,$fn=30);
translate([6,27+47,-12])cylinder(r=12/2,h=12,$fn=30);
}
translate([6,27,-33])cylinder(r=3.7/2,h=130,$fn=30);
translate([6,27,-33])cylinder(r=3.7/2,h=130,$fn=30);
translate([6,27+47,-33])cylinder(r=3.7/2,h=130,$fn=30);
}
}


module raspi_mount_linact(){
translate([33-12,44,-4.2])rotate([0,90,0])
difference(){
union(){
import("RasPiHolderCase_0010.STL");
translate([6+44,27+47-6,-0])#cylinder(r=10.3/2,h=2.5,$fn=30);
translate([6+44+24,27+47-6,-0])#cylinder(r=10.3/2,h=2.5,$fn=30);
translate([6+44+12,27+47-6-36,-0])#cylinder(r=10.3/2,h=2.5,$fn=30);
translate([6+44-12,27+47-6-36,-0])#cylinder(r=10.3/2,h=2.5,$fn=30);
}
translate([6,27,-33])#cylinder(r=3.7/2,h=130,$fn=30);
translate([6,27+47,-33])#cylinder(r=3.7/2,h=130,$fn=30);
translate([6+44,27+47-6,-20])#cylinder(r=3.3/2,h=130,$fn=30);
translate([6+44+24,27+47-6,-20])#cylinder(r=3.3/2,h=130,$fn=30);
translate([6+44+12,27+47-6-36,-20])#cylinder(r=3.3/2,h=130,$fn=30);
translate([6+44-12,27+47-6-36,-20])#cylinder(r=3.3/2,h=130,$fn=30);
}
}

//stepper_linear_m8nut_endstopflag(6);
//nema17motormount_assy();

/*
color("lime")translate([-150-15-3,53+0.25-0.35,-30+2])rotate([0,0,90])stepper_linear_m8nut_handheld();
plunger_shuttle();
	//threadrod_bearing();
//import("Float_LM8UU_bearing_mount_for_Anet_a8/files/floatbearing.stl");
//rodholder_nema17_support();
//nema17motormount_assy();
translate([-60-50,130-84-80,80-16])rotate([0,180,-90])servo_linear_assy();
pipettor_handle_linact_support_top();
//rodholder_nema17_support();
translate([-90-50,0+37.5-6+9,9.5+11-6])rotate([0,90,0])color("silver")cylinder(r=8.7/2,h=130,$fn=30);
translate([-90-50,0+38-45.5+6-9.5,9.5+11-6])rotate([0,90,0])color("silver")cylinder(r=(8.7)/2,h=130,$fn=30);
translate([-50,0,9.5])rotate([0,90,0])tslot20(100);
translate([-38,-4-20,58])rotate([0,90,0])hand_pipettor_connector_plate();
translate([30,34,-15.5])rotate([90,0,0])multichannel_aligner();
//translate([50-10-40,-10,-32])rotate([0,180,0])tslot_stepper_linearactuator_tslotshuttle_handmultichannel();
*/


module motor_mount(){
difference(){
union(){
translate([-5+7+5,-2-9+10+29,0])color("")cube([38/2-5, 28+5.5, 6]);
translate([-5,-2-9+29,0])color("")cube([10+28, 28, 6]);
}
translate([7-4,35,-2])#cylinder(r=3.8/2,h=200,$fn=30);
translate([7-4,35,-0])#cylinder(r=8/2,h=3,$fn=30);
translate([7+7,41+11.25,-2])#cylinder(r=3.8/2,h=200,$fn=30);
translate([7+7,41+11.25,-0])#cylinder(r=8/2,h=3,$fn=30);
translate([7+18,35,-2])#cylinder(r=3.8/2,h=200,$fn=30);
translate([7+18,35,-0])#cylinder(r=8/2,h=3,$fn=30);

translate([7+7,41+11.25-9,-2])#cylinder(r=3.8/2,h=200,$fn=30);
translate([7+7,41+11.25-9,3.04])#cylinder(r=8/2,h=3,$fn=30);
translate([7+7,41+11.25-9-18,-2])#cylinder(r=3.8/2,h=200,$fn=30);
translate([7+7,41+11.25-9-18,3.04])#cylinder(r=8/2,h=3,$fn=30);

/*
translate([-10+26+22.5,28-11,-20])#cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26+22.5+18,28-11,-20])#cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26+22.5,28-11,-20])#cylinder(r=8.7/2,h=32.5-4,$fn=30);
translate([-10+26+22.5+18,28-11,-20])#cylinder(r=8/2,h=32.5-4,$fn=30);
*/

}
}








module servo_linear_assy_connectplate(){
difference(){union(){
translate([-25,19+3,0])cube([90-34,11.5,6+7]);
//translate([-25+60,19-7,0])cube([30,11.5+3,6+6.5]);
}
translate([-10,28,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([-10,28,-20+23.2])cylinder(r=8/2,h=30,$fn=30);
translate([-10-10,28,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([-10-10,28,-20+23.2])cylinder(r=8/2,h=30,$fn=30);
translate([-10+26,28,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26,28,-20+23.2])cylinder(r=8/2,h=30,$fn=30);
translate([-10+26+10,28,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26+10,28,-20+23.2])cylinder(r=8/2,h=30,$fn=30);
translate([-10+26+22.5,28-11,-20])#cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26+22.5+18,28-11,-20])#cylinder(r=3.7/2,h=100,$fn=30);
translate([-10+26+22.5,28-11,-20])#cylinder(r=8.7/2,h=32.5-4,$fn=30);
translate([-10+26+22.5+18,28-11,-20])#cylinder(r=8/2,h=32.5-4,$fn=30);
}
}



module stepper_linear_m8nut_endstopflag(thick){
translate([0,-20-9,0])difference(){
difference(){union(){
translate([-38.25+14-13.9+20,-70+30.-5+4,22.5+3.8-1.0])cube([44.5-20,11,thick]);
translate([-38.25+14-13.9+20-20,-70+30.-5-5+7,22.5+3.8-1.0])cube([44.5-20+20-23,5+10+5-7,thick]);
#translate([-38.25+14-13.9+20-20-4,-70+30.-5-5-4,22.5+3.8-1.0])cube([44.5-20+20-23,5+10+5+4,thick+5]);
}
translate([-90,-40-4,29])rotate([0,90,0])#cylinder(r=3.7/2,h=73,$fn=30);
translate([-90,-40+7,29])rotate([0,90,0])#cylinder(r=3.7/2,h=73,$fn=30);
}
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34,22.5+3.8-50])#cylinder(r=3.7/2,h=120,$fn=30);
translate([-38.25+14-13.9+13.7+11.9-i,-70+34,22.5+3.8-1])#cylinder(r=8/2,h=3,$fn=30);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34,22.5+3.8-50])cylinder(r=3.7/2,h=120,$fn=30);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34,22.5+3.8-1])#cylinder(r=8/2,h=3,$fn=30);
}
}
}










module multichannel_aligner(){
difference(){
union(){
translate([0,0,0])cube([20,40,4]);
cube([20,18,9]);
translate([-0,0,29])cube([20,18,9]);
translate([-2.5+3,20,0])cube([34.5+10,20,4]);
translate([-2.5+9,20-17,0])rotate([0,0,30])#cube([33,10,4]);
translate([-2.5+9+10,20-17,0])rotate([0,0,30])#cube([33,10,4]);
translate([-2.5+9,20-17,35])rotate([0,0,30])cube([33,10,4]);
translate([-2.5+9+10,20-17,35])rotate([0,0,30])cube([33,10,4]);
translate([-2.5+3,20,35])cube([34.5+10,20,4]);
translate([0,0,35])cube([20,40,4]);
translate([-0,-5,0])cube([20,5,39]);
}
translate([-2.5+2.5,20+20-17,-10])#cube([35+15,20,4+50]);
translate([10,10,-2])cylinder(r=5.7/2,h=50,$fn=30);
translate([10,10,-0.1])cylinder(r=10/2,h=5,$fn=30);
translate([10,10,-0.1+34.5])cylinder(r=10/2,h=5,$fn=30);
}
}



module plunger_shuttle(){
translate([-100,89,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
translate([0,0,0]){
//#translate([-100-17.5,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
//translate([-100+10,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
translate([-100,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
}
difference(){
translate([-100-4,89-90,4.5-2])cube([30,32,9]);
color("silver")translate([-55-10+0-5-100,5+10,4.5-10])rotate([0,90,0])cylinder(r=23/2,h=260,$fn=30);
//translate([-80,15,-10])#cylinder(r=2.8/2,h=40,$fn=30);
translate([-80-18,15,-10])#cylinder(r=2.8/2,h=40,$fn=30);
translate([-3,0,0]){
translate([-80,3,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80,27,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,27,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,3,-10])#cylinder(r=3.8/2,h=40,$fn=30);
}
}
}



module stepper_linear_m8nut_handheld(){
mirror([0,0,0]){
translate([0,-20-9,0])difference(){
union(){
//translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=18/2,h=23+3-15);
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=22/2,h=10);
translate([-38.25+14-13.9-14+2-0.5+2-8,-70+30-5-10-10,22.5+3])cube([21+16,20+10,20-12.5-3+0.5]);
//translate([-38.25+14-13.9,-70+30.-5,22.5+3.8-1.0])cube([44.5,10,3.7+1.25]);
}
translate([0.35+0.75,-8-2,0])rotate([0,0,0]){
//translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])#rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([0.4,0,0]){
#translate([-38.25+14-13.9+6.5+4.5-0.25,-70+30-10+8+5-16+1.5+5.5,22.5+8-8-10])rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-24-0.25,-70+30-10+8+5-16+1.5+5.5,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-0.25,-70+30-10+8+5-16+1.5+5.5+18,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-24-0.25,-70+30-10+8+5-16+1.5+5.5+18,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
}
/*
*/

//translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-10])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
//translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
//#translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
//#translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
//#translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
//#translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
}
translate([-38.25+14-13.9-14+8+1.2-0.2,-70+30-5-10-17,22.5+13.5])cube([10,40,5]);
//cylinder(r=7.4,h=sl+4,$fn=6);
//translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5-33,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10,22.5-8])rotate([-90,0,0])cylinder(r=8.5/2,h=4,$fn=35);
#translate([-38.25+14-13.9,-70+30-10+8+5-10-20,22.5+8])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
#translate([-38.25+14-13.9,-70+30-10+8+5-16-13,22.5+8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-90,0,0])cylinder(r=2.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-0,40,0])cylinder(r=3.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9,-70+30-10+8+5,22.5])rotate([-90,0,0])cylinder(r=13.8/2,h=28,$fn=6);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=(7.8)/2,h=241);
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}
}




module threadrod_bearing(){

difference(){
translate([-55-3,5,4.5])rotate([0,90,0])cube([20,20,5+3]);
translate([-55-10+0,5+10,4.5-10])rotate([0,90,0])#cylinder(r=5.7/2,h=40,$fn=30);
translate([-55-10+0+9.5-4,5+10,4.5-10])rotate([0,90,0])#cylinder(r=10/2,h=4,$fn=30); 
}
}

module pipettor_handle_linact_support_top(){
translate([30-50,-3.35,-16])rotate([0,-90,0])pipettor_handle_linact_support();
translate([-20,9.3+0.1-0.0,41.5-54])rotate([90,0,-90])difference(){
m8_clamp();
}
translate([-20,9.3+0.1+10.7,41.5])rotate([90,180,-90])difference(){
m8_clamp();
}
}


module nema17motormount_assy(){
translate([-50,0,0]){
translate([-90.5,9.3+0.1,41.5])rotate([-90,0,-90])difference(){
m8_clamp();
translate([10,31,4])cylinder(r=8/2,h=100);
}
translate([-90.5,9.3+10.8,41.5-54])rotate([90,0,90])difference(){
m8_clamp();
translate([10,31-8.5,4])cylinder(r=8/2,h=100);
}
translate([-10,0,-11]){
translate([-50-30+20-2,0+37.5-45.5/2-40,9.5+11-5+11])rotate([0,90,0])motormount();
}

/*
translate([-10,0,-11]){
translate([-50-30,0+37.5-45.5/2,9.5+11-15])rotate([0,90,0])nema17();
}
*/


//color("silver")translate([-55-10+0-5,5+10-0.25,4.5-10])rotate([0,90,0])cylinder(r=(8.7)/2,h=60,$fn=30);

}
}





module rodholder_nema17_support(){
cube([20,18,4]);
}

module hand_pipettor_connector_plate(){
difference(){
translate([-5,0,0])color("aqua")cube([25,37+15,5]);
translate([5,8,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5,8+22-4,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5+10,8+20-3,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5+10,8+20-3+20,-20])cylinder(r=3.7/2,h=50,$fn=30);
}
}








module pipettor_handle_linact_support(){
difference(){
union(){
cube([63,36.5,13]);
translate([55,-20,0])cube([23,36.5+15,13]);
}
//translate([-1,(36.5-20.5)/2,-1])cube([54,20.5,13+3]);
//translate([-1,(36.5-20.5)/2,-1])cube([37,20.5,13+3]);
translate([59,4.3,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3+20,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3+20,-0])cylinder(r=8/2,h=4,$fn=30);

translate([59+10,4.3-17,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59+10,4.3-17,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59+10,4.3-17+22-4,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59+10,4.3-17+22-4,-0])cylinder(r=8/2,h=4,$fn=30);
/*
*/
translate([-1,(36.5-20.5)/2,-1])cube([24,20.5,13+3]);
translate([-1+30-0.4-1-1,(36.5-20.5)/2+10+0.3,-1])
translate([0,0,0])cylinder(r=(22)/2,h=16);
translate([-1+30-0.4-1,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(22+i*0.25)/2,h=16);
}
translate([-1+30-0.4-1+8,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(24-i/2)/2,h=16);
}
translate([-1+30-0.4-1+7+4+6,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:3]){
translate([i,0,0])cylinder(r=(18-i*2)/2,h=16);
}
for(i=[0:9]){
translate([3+4+i,-30,13/2])rotate([-90,0,0])cylinder(r=3,h=100,$fn=30);
}
}
}





module pipettor_handle(){
difference(){
cube([63,36.5,13]);
//translate([-1,(36.5-20.5)/2,-1])cube([54,20.5,13+3]);
//translate([-1,(36.5-20.5)/2,-1])cube([37,20.5,13+3]);
translate([59,4.3,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3-2,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59+2,4.3-2,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3+20,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3+20,-0])cylinder(r=8/2,h=4,$fn=30);
translate([-1,(36.5-20.5)/2,-1])cube([24,20.5,13+3]);
translate([-1+30-0.4-1-1,(36.5-20.5)/2+10+0.3,-1])
translate([0,0,0])cylinder(r=(22)/2,h=16);
translate([-1+30-0.4-1,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(22+i*0.25)/2,h=16);
}
translate([-1+30-0.4-1+8,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(24-i/2)/2,h=16);
}
translate([-1+30-0.4-1+7+4+6,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:3]){
translate([i,0,0])cylinder(r=(18-i*2)/2,h=16);
}
for(i=[0:9]){
translate([3+4+i,-30,13/2])rotate([-90,0,0])cylinder(r=3,h=100,$fn=30);
}
}
}


module tslot_stepper_linearactuator_tslotshuttle_handmultichannel(){
translate([2,-5,-13])difference(){
union(){
//translate([0,0,-3.5])cube([16,60,4+3.5]);
translate([0-15.5,17.4,0-3.4])cube([16+15.5+4,25,4+5+3.5]);
translate([0,-0.5,0]){
translate([0-15.5,17.4-2.5-1,0-3.4-18])cube([16+15.5+4-8,6,4+5+3.5+18]);
translate([0-15.5,17.4-2.5-1+26.3,0-3.4-18])cube([16+15.5+4-8,6,4+5+3.5+18]);
}
translate([0-15.5-12,17.4,0-3.4+7.5])cube([16+15.5+4+20-40,25+18-15,4+5+3.5-7.5]);
#translate([0-15.5-12-5,17.4+24,0-3.4+7.5-7.5-2.5])cube([16+15.5+4+20-44-5+5,25+18-22,4+5+3.5+2.5]);
//translate([0-15.5,17.4,0-3.4+7.5])cube([16+15.5+4+20,25,4+5+3.5-7.5]);
}
translate([-1,80,-13.5])rotate([90,0,0])cylinder(r=5.7/2,h=100,$fn=30);
translate([0.35+0.75+40+6-83-2-0.1,75-1-5.35,-25-2.5])rotate([0,0,90]){
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
}
/*
translate([8,30-6,-1])cylinder(r=3.7/2,h=20);
translate([8,30-6,0-3.6])cylinder(r=6.5/2,h=3.6);
translate([8,30+6,-1])cylinder(r=3.7/2,h=20);
translate([8,30+6,0-3.6])cylinder(r=6.5/2,h=3.6);
*/
//translate([8,30-22,-1])cylinder(r=5.9/2,h=20);
//translate([8,30+22,-1])cylinder(r=5.9/2,h=20);
//translate([8,30-22,-1])cylinder(r=5.9/2,h=20);
translate([8+22,30-15+8,-1-6])cylinder(r=2.8/2,h=50);
translate([8+22,30-15+8+13,-1-6])cylinder(r=2.8/2,h=50);
/*
translate([8,30+15,-1-6])cylinder(r=5.9/2,h=50);
translate([8,30-15,4-3.5])cylinder(r=10/2,h=20);
translate([8,30+15,4-3.5])cylinder(r=10/2,h=20);
*/
}
}


//decapper

module decapper_base_bottom(){
ll = 95;
sl = 90;
lw = 52;
sw = 34;
th = 4;
difference(){
union(){
translate([-1.5,-1,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([-1.5,-1+97,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([-2+37.5,-1,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([-2+37.5,-1+97,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
cube([sw,ll,th]);
translate([(sw-lw)/2,(ll-sl)/2,0])cube([lw,sl,th]);
}
translate([(sw-26)/2,(ll-73)/2,-0.1])cube([26,73,th+2]);
}
}

module decapper_base_top(){
ll = 95+10;
lw = 35+10;
sll = 95;
slw = 35;
th = 4;
translate([4,4,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([4,ll-4,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([lw-4,ll-4,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
translate([lw-4,4,0]){difference(){cylinder(r=8,h=th);translate([0,0,-1])#cylinder(r=3.7/2,h=60);}}
difference(){
union(){
cube([lw,ll,th]);
translate([4,4,0]){cylinder(r=8,h=th);}
translate([4,ll-4,0]){cylinder(r=8,h=th);}
translate([lw-4,ll-4,0]){cylinder(r=8,h=th);}
translate([lw-4,4,0]){cylinder(r=8,h=th);}
}
translate([(lw-slw)/2,(ll-sll)/2,-0.2])cube([slw,sll,th+6]);
translate([4,4,0]){translate([0,0,-1])#cylinder(r=3.7/2,h=60);}
translate([4,ll-4,0]){translate([0,0,-1])#cylinder(r=3.7/2,h=60);}
translate([lw-4,ll-4,0]){translate([0,0,-1])#cylinder(r=3.7/2,h=60);}
translate([lw-4,4,0]){translate([0,0,-1])#cylinder(r=3.7/2,h=60);}
}
}

module decapper_servo_handle(){
difference(){
union(){
cylinder(r=30/2,h=14);
translate([-18,8,0])rotate([0,0,45])#cylinder(r=10/2,h=14,$fn=4);
translate([-12,8,0])rotate([0,0,45])#cylinder(r=10/2,h=14,$fn=4);
}
translate([-19,20,11])rotate([90,0,0])#cylinder(r=2.8/2,h=30);
translate([-19,20,11-8])rotate([90,0,0])#cylinder(r=2.8/2,h=30);
translate([0,-20,-2])cube([20,40,20]);
cylinder(r=14/2,h=20);
}
}

module decapper_servo_arm(){
difference(){
union(){
cylinder(r=23/2,h=3.5);
translate([-23/2,0,0])cube([23,63-8,3.5]);
}
translate([0,0,1.2])cylinder(r=11/2,h=2.5);
translate([0,0,-0.1])cylinder(r=9/2,h=4.5);
translate([7.5,0,-0.1])#cylinder(r=3/2,h=12.5);
translate([-7.5,0,-0.1])#cylinder(r=3/2,h=12.5);
translate([4,59-8,-0.1])#cylinder(r=3.7/2,h=12.5);
translate([-4,59-8,-0.1])#cylinder(r=3.7/2,h=12.5);
}
}

//color("gainsboro")translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate_decap();

 //decapper_clamp();
 //rotate([90,0,0])
 //decapper_stepper_interface_servo();
 //rotate([90,0,0])
 //translate([0,15,0])#decapper_stepper_angle_interface();
 //translate([0,-10,0])decapper_stepper_interface();

 //rotate([90,0,0])
 //decapper_stepper_mnt();

module decapper_stepper_angle_interface(){
difference(){union(){
translate([-17,-53.5+5,0-5-10+10])cube([15+4+4,10,25]);
translate([-17,-53.5+5,0-5-10+10])rotate([-10,0,0])cube([12,10,25]);
//translate([-17-2,-53.5+5,0-5-10])cube([15+4,5+7,17]);
}
translate([-10,0,4.5])rotate([90,0,0])#cylinder(r=3.8/2,h=100);
translate([-10,0,4.5+11])rotate([90,0,0])#cylinder(r=3.8/2,h=100);
translate([-10+10,0,4.5-10])rotate([90-10,0,0])#cylinder(r=3.8/2,h=100);
translate([-10+10,0,4.5+11-10])rotate([90-10,0,0])#cylinder(r=3.8/2,h=100);
}
}


module decapper_stepper_interface_servo(){
difference(){union(){
translate([-17+0.5,-53.5+5,0-5-10+10])#cube([15+4-6,5+10-5,25]);
//translate([-17-2,-53.5+5,0-5-10])cube([15+4,5+7,17]);
}
translate([-30,0-30-13,4.5+11-28])rotate([0,90,0])#cylinder(r=2.8/2,h=100);
translate([-30,0-30,4.5+11-28])rotate([0,90,0])#cylinder(r=2.8/2,h=100);
translate([-10,0,4.5])rotate([90,0,0])#cylinder(r=2.8/2,h=100);
translate([-10,0,4.5+11])rotate([90,0,0])cylinder(r=2.8/2,h=100);

for(i=[0]){
translate([-10-20,0-46+(i*3),4.5+7])rotate([90,0,90])#cylinder(r=2.8/2,h=100);
translate([-10-20,0-46+(i*3),4.5+7-11])rotate([90,0,90])#cylinder(r=2.8/2,h=100);
}
/*
for(i=[0:10]){
translate([-10-0,0,4.5-11.3-i])rotate([90,0,0])cylinder(r=8.7/2,h=100);
}
*/
}
}

module decapper_stepper_interface(){
difference(){union(){
translate([-17+0.5,-53.5+5,0-5-10+10])#cube([15+4-6,5+20,25]);
translate([-17-2,-53.5+5,0-5-10])cube([15+4,5+7,17]);
}
translate([-30,0-30-13,4.5+11-28])rotate([0,90,0])#cylinder(r=2.8/2,h=100);
translate([-30,0-30,4.5+11-28])rotate([0,90,0])#cylinder(r=2.8/2,h=100);
translate([-10,0,4.5])rotate([90,0,0])#cylinder(r=2.8/2,h=100);
translate([-10,0,4.5+11])rotate([90,0,0])cylinder(r=2.8/2,h=100);
for(i=[0:10]){
translate([-10-0,0,4.5-11.3-i])rotate([90,0,0])cylinder(r=8.7/2,h=100);
}
}
}


module decapper_stepper_mnt(){
difference(){union(){
translate([0+4-19,0-10-25,-42-5])rotate([90,0,180])color("gainsboro")motormountthin();
translate([-17,-53.5,0-5-10])cube([15,5,35]);
}
translate([-10,0,4.5])rotate([90,0,0])#cylinder(r=2.8/2,h=100);
translate([-10,0,4.5+11])rotate([90,0,0])#cylinder(r=2.8/2,h=100);
translate([-10-0,0,4.5-11.3])rotate([90,0,0])#cylinder(r=7.8/2,h=100);
}
}

module decapper_clamp(){
difference(){
translate([-15,-16-4-2.5,0])cube([30,45+5+5,19]);
translate([-15+14,-16-8,-2])#cube([2,45+14,19+3]);
for(i=[0:5]){
translate([0,i*2.5,-10])rotate([7,0,0])cylinder(r=25/2,h=50);
}
translate([-30,24+4,10])rotate([0,90,0])#cylinder(r=2.8/2,h=70);
translate([-30,24+4,10])rotate([0,90,0])cylinder(r=8.5/2,h=22);
translate([-30,24-43,10])rotate([0,90,0])#cylinder(r=2.8/2,h=70);
translate([-30,24-43,10])rotate([0,90,0])#cylinder(r=8.5/2,h=22);

translate([-30+20,24+20,10+5.5])rotate([90,0,0])#cylinder(r=2.8/2,h=120);
translate([-30+20,24+20,10-5.5])rotate([90,0,0])#cylinder(r=2.8/2,h=170);
translate([-30+40,24+20,10+5.5])rotate([90,0,0])cylinder(r=2.8/2,h=120);
translate([-30+40,24+20,10-5.5])rotate([90,0,0])cylinder(r=2.8/2,h=170);
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


module motormount(){
 mmx = 42;
 mmy = 42;
 mmz = 4.5;//8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  union(){
  translate([mmposx,mmposy,mmposz])cube([mmx,mmy,mmz]);
  //translate([mmposx-6,mmposy-13,mmposz])#cube([13,13,4]);
  }
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])cylinder(r=motrad, h=10);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])translate([0,0,-100])cylinder(r=4.3, h=400);
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])translate([0,-2,0])cube([8,4.5,90]);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])translate([0,-2.25,0])cube([8,4.5,90]);
 }
}



module m8_clamp(){
//translate([5,75,-30])rotate([90,0,0])tslot20(200);
/*
difference(){translate([-33,1.7,0])rotate([0,0,0])cube([50,53.7,2]);
translate([20,27,1])cylinder(r=8.7/2,h=20);
translate([20,27,0])cylinder(r=5.7/2,h=2);
}
*/
//translate([20+10,27+11,12])rotate([90,0,0])cylinder(r=10/2,h=22);
difference(){
translate([20+6,27+9,12])rotate([90,0,0])#cylinder(r=10/2,h=19);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=45,$fn=30);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3.8/2,h=4,$fn=30);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
difference(){
union(){
translate([20,27,0])cylinder(r=19.6/2,h=17);
translate([20,27,0])cylinder(r=28/2,h=4);

/*
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
*/
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80,$fn=30);
translate([20,10-1,0-100])cylinder(r=5.7/2,h=180);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])#cylinder(r=3/2,h=25,$fn=30);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
}


module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];
linear_extrude(height=z)
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}
}





