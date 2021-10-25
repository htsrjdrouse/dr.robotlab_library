include<rpi4_case.scad>
include<tslot.inc.scad>
include<raspberrypi4.scad>
include<xgantry_modular_fix.scad>
include<utl.NEMA.scad>
include<bom_yaxis.scad>
include<panels.scad>
include<bom_camera.scad>
include<bom_zbed.scad>
include<bom_wash.scad>
include<bom_multichannel_syringe.scad>
include<stopcock_valve.scad>
include<arducam-raspi.scad>
include<bom_corexy_understack.scad>
include<gripper_platecrane/microwell_gripper.scad>
include<labautobox.scad>
include<bom_zbed_moveup.scad>
include<MG995_Servo_Linear_Actuator/files/caller.scad>

//lasermount_connector_cap();
//cameramount_connector_two();
//camera_ball_adjust_cap();
//camera_ball_adjust();
//3dprint_dual_camera_assy();
//translate([200-3.5,-29,400-13])rotate([0,180,0])labbot_camera();
//rpi4_case(); // the whole unsplit case
//raspi4_top();
raspi4_standoffs();
//import("raspi4_top.stl");
//camera_rotate_plate();

module camera_rotate_plate(){
difference(){
union(){
cube([8,12,15]);
cube([18,20,4]);
translate([9,20,0])cylinder(r=18/2,h=4,$fn=30);
}
translate([-15,6,10])rotate([0,90,0])#cylinder(r=2.85/2,h=30,$fn=30);
translate([9,23,-4])#cylinder(r=4.7/2,h=30,$fn=30);
}
}

//ender_clamp();
//ender_extruder_plate();

//translate([-8.4,40-7.5,7-0.5])filamentsensor_connectionplate();
//translate([-8.4,40-7.5,7-0.5])filamentsensor();
//translate([-8.4,40-7.5,6.25])filamentsensor_lid();


/*
difference(){
union(){
cylinder(r=9/2,h=3,$fn=30);
cylinder(r=7/2,h=3.5,$fn=30);
}
translate([0,0,-1])cylinder(r=5/2,h=40,$fn=30);
}
*/
//filament_runnout_sensor_stub();
//modify_extruder_base();
//include<Direct-drive_hinged_extruder_for_E3DJ-Head_hot-end_Prusa_i3/MyExtruder_v1.2.scad>
//import("extruder_base.stl");
//extruder_assy();
//ender_clamp();

//extruder_attach_motormountthin_ender();
//translate([0,0,114])pcb_extruder_higher();
//translate([48,0,0])rotate([0,0,0])mirror([1,0,0])import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/turbine_duct.stl");

/*
//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/idler.stl");
rotate([0,0,-3.3]){
rotate([0,0,33.3])import("Tripod_base.stl");
//translate([-60+22.85,-70+9.6+116.6,-10])#cylinder(r=5/2,h=30,$fn=30);
}
*/
//translate([-60+29.75,-70+9.6,-10])#cylinder(r=5/2,h=30,$fn=30);










module ender_extruder_plate(){

difference(){
union(){
color("pink")roundedRect([64,65,4],3.2,true);
translate([-33.5+6-6+9,65/2+1.5+1.9-43.5,-4])cylinder(r=5.2/2,h=5,$fn=30);
translate([-33.5+6-6+9+15,65/2+1.5+1.9-43.5,-4])cylinder(r=5.2/2,h=5,$fn=30);
}
for(i=[0:14]){
translate([-33.5+6,65/2+1.5+1.9-7-(i*0.5),-3])cylinder(r=3.7/2,h=50,$fn=30);
translate([-33.5+6+31,65/2+1.5+1.9-7-(i*0.5),-3])cylinder(r=3.7/2,h=50,$fn=30);
}
translate([33.5+2-5,65/2+1.5+1.9-9,-3])cylinder(r=2.5/2,h=50,$fn=30);
translate([33.5+2-9,65/2+1.5+1.9-9,-3])cylinder(r=2.5/2,h=50,$fn=30);
translate([0,65/2+1.5+1.9-33-3,-3])cylinder(r=3.7/2,h=50,$fn=30);
translate([-20,65/2+1.5+1.9-33-3-3,-3])cylinder(r=4.9/2,h=50,$fn=30);
translate([20,65/2+1.5+1.9-33-3-3,-3])cylinder(r=4.9/2,h=50,$fn=30);
translate([-33.5+6-6+9,65/2+1.5+1.9-43.5,-15])cylinder(r=2.4/2,h=50,$fn=30);
translate([-33.5+6-6+9+15,65/2+1.5+1.9-43.5,-15])cylinder(r=2.4/2,h=50,$fn=30);
translate([33.5-13,65/2+1.5+1.9-57,-15])cylinder(r=2.9/2,h=50,$fn=30);
}
}


module ender_clamp(){
difference(){
union(){
cube([64,20,4]);
//#translate([64-14,0,0])cube([14,20,4+21]);
translate([64-42,0,0])cube([14+8,20,4+15-5]);
}
translate([12,0,0]){
translate([0,10,-1])cylinder(r=5.7/2, $fn=30, h=40);
translate([40,10,-1])cylinder(r=5.7/2, $fn=30, h=40);
translate([40,10,4])cylinder(r=10/2, $fn=30, h=40);
translate([40-18,10-3,-1])cylinder(r=8/2, $fn=30, h=40);
//translate([40-10,10-0,2])rotate([0,90,0])#cylinder(r=2.8/2, $fn=30, h=40);
//translate([40-10,10-0,2+15])rotate([0,90,0])#cylinder(r=2.8/2, $fn=30, h=40);

translate([40-19-7.5,10-0,-2])rotate([0,0,0])#cylinder(r=3/2, $fn=30, h=40);
translate([40-19+7.5,10,-2])rotate([0,0,0])#cylinder(r=3/2, $fn=30, h=40);



}
}
}



module spool_connector(){
difference(){
union(){
translate([-65+20,-68,-3])cube([20,135,4]);
translate([-65-20,-68+30,-3])cube([20+20,135-60,4]);
//translate([-65,-68,-3])cube([40,135,4]);
}
translate([-65-20+15,-68+30+12,-6])cube([30,50,14]);
translate([-60+26.0,-70+9.6+119.0,-10])#cylinder(r=5/2,h=30,$fn=30);
translate([-60+26,-70+9.6+2.1,-10])#cylinder(r=5/2,h=30,$fn=30);
translate([-60+26.0-25-20,-70+9.6+119.0/2+30,-10])#cylinder(r=5.7/2,h=30,$fn=30);
translate([-60+26.0-25-20,-70+9.6+119.0/2-30,-10])#cylinder(r=5.7/2,h=30,$fn=30);
}
//cylinder(r=8/2,h=3,$fn=30);
}
/*
difference(){
import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/idler.stl");
translate([-10,0,0])#cylinder(r=2.3/2,h=30,$fn=30);
}
*/
//washstation();

/*
//imagingplateslideobjects(10);
//washstation();
translate([-535-38,200,-20])rotate([0,0,-90]){
translate([145,240,200-40])peristaltic_pump();
translate([165-60,240,200-40])peristaltic_pump();
translate([165-100,240,200-40])peristaltic_pump();
labautobox();
}
*/

//labbot_pcr_config();
//labbot_pcr_config_higher();
/*
*/





//labbot_fff_config_higher();


//labbot_pcr_config_higher();

//framemagnetholder_diy();
//framemagnetholder();

//REArm_Housing_Top_rr_mod();
//REArm_Housing_Housing_rr_mod();

//import("rearm_ramps_enclosure/RE-Arm_Housing_Top_rr_mod.stl");
//translate([0,0,-5])REArm_Housing_Top_grill();

module REArm_Housing_Top_grill(){
rotate([0,180,0]){
difference(){union(){
//translate([-70,0,67])color("pink")cube([50,105,2]);
//import("rearm_ramps_enclosure/RE-Arm_Housing_Top.stl");
translate([-70+3-6,2-8,67-3])color("pink")cube([50+30+12,105+16,2]);
}
for(i=[0:10]){
translate([-70+3-6+12,2-8+13+(i*9),67-8])cube([50+30+12-24,3,10]);
}
translate([-70+3,2-4,67-4])color("pink")cylinder(r=3.2/2,h=15,$fn=30);
translate([-70+3+80,2-4,67-4])color("pink")cylinder(r=3.2/2,h=15,$fn=30);
translate([0,113,0]){
translate([-70+3,2-4,67-4])color("pink")cylinder(r=3.2/2,h=15,$fn=30);
translate([-70+3+80,2-4,67-4])color("pink")cylinder(r=3.2/2,h=15,$fn=30);
}
}
}
}





module REArm_Housing_Top_rr_mod(){
rotate([0,180,0]){
difference(){union(){
translate([-70,0,67])color("pink")cube([50,105,2]);
import("rearm_ramps_enclosure/RE-Arm_Housing_Top.stl");
translate([-70+3,2-4,67-3])color("pink")cylinder(r=8/2,h=5,$fn=30);
translate([-70+3+80,2-4,67-3])color("pink")cylinder(r=8/2,h=5,$fn=30);
translate([0,113,0]){
translate([-70+3,2-4,67-3])color("pink")cylinder(r=8/2,h=5,$fn=30);
translate([-70+3+80,2-4,67-3])color("pink")cylinder(r=8/2,h=5,$fn=30);
}
}
translate([-70+3,2,67-3])color("pink")cube([50+30,105,2+10]);
translate([-70+3,2-4,67-4])color("pink")cylinder(r=2.2/2,h=15,$fn=30);
translate([-70+3+80,2-4,67-4])color("pink")cylinder(r=2.2/2,h=15,$fn=30);
translate([0,113,0]){
translate([-70+3,2-4,67-4])color("pink")cylinder(r=2.2/2,h=15,$fn=30);
translate([-70+3+80,2-4,67-4])color("pink")cylinder(r=2.2/2,h=15,$fn=30);
}
}
}
}


module REArm_Housing_Housing_rr_mod(){
difference(){
import("rearm_ramps_enclosure/RE-Arm_Housing.stl");
translate([-53,-50,10])color("pink")cube([28,105,10]);
}
}

//filament_runnout_sensor_stub();


//import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-AllFiles.stl");
//import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_Pusher.stl");
//import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_ProbeGuide.stl");
//import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_DistanceBridge.stl");

//import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_ProbeGuide.stl");
//diy_probe_base_mod();
//diy_probehead_mod();

module diy_probe_base_mod(){
difference(){
union(){
translate([13-13,-69.5+5.5,-57+44])cube([26,4,10]);
translate([13-13+5-10-2,-69.5+5.5,-57+44+8])cube([16+10,4,10+15-10]);
import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_Base.stl");
}
translate([-1.8,0,0]){
translate([13-13+5,-69.5+5.5+5,-57+48.25])rotate([90,0,0])cylinder(r=2.8/2,h=20,$fn=30);
translate([13-13+5+20,-69.5+5.5+5,-57+48.25])rotate([90,0,0])cylinder(r=2.8/2,h=20,$fn=30);


for(i=[0:15]){
translate([13-13+5+10,-69.5+5.5+5,-57+48.25+8+i*0.5])rotate([90,0,0])cylinder(r=3.3/2,h=20,$fn=30);
translate([13-13+5+10-15,-69.5+5.5+5,-57+48.25+8+i*0.5])rotate([90,0,0])cylinder(r=3.3/2,h=20,$fn=30);
}
}
}
}

module diy_probehead_mod(){
import("DIY_Probe_OptiServo_Z-Probe_Sensor_-_18mm_mounting/files/DIY-Probe_-_ProbeHead.stl");
translate([13,-69.5,-57])rotate([0,0,0])cylinder(r=2.2/2,h=35,$fn=30);
translate([13,-69.5,-24.3])rotate([0,0,0])cylinder(r=4.2/2,h=3,$fn=30);
}

//translate([0,0,4])rotate([90,0,0])import("re-Arm_mount_v6_re-Arm_mount_v6_Body1_re-Arm_mount_v6.stl");

/*
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Horn_4.6.stl");
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Flag.stl");
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Cover_Light.stl");
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Main_M3_Nut_clean.stl");
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Main_M3_Nut_clean.stl");
translate([40,0,0])import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Main_M3_Nut_R1.stl");
*/


//bfptouch_assy();

module bfptouch_assy(){
import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Main_Clean.stl");
translate([30,0,0])import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Cover_Light.stl");
translate([-22,0,0])import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Flag.stl");
translate([-20,-20,0])import("bfptouch/BFPTouchPoorsmanBLtouch/files/BFPTouch_Horn_4.6.stl");
}

//translate([8,13,0])rearm_microfluidics_mount();

//bltouch_clamp();

//bottom_panel();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);
//translate([0,0,114])pcb_extruder_higher();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion_higher(110-50);

//import("MK2CameraKit.stl");

//import("3dpnfilholdroller_assy.stl");

//translate([7,-66,-11])mirror([1,0,0])import("MK2CameraKitBracket.stl");
//color("pink")translate([124.5,88.5+5,0])3dprint_miuzei_raspicam_base();
//translate([0,25,0])3dprint_miuzei_raspicam_base_ribbonslot();
//3dprint_miuzei_raspicam_base_ribbonslot_cover();
//conduit_cap_rt();

//conduit_support();
//conduit_cap();


module conduit_cap_rt_A_setup(){
translate([20,0,48])rotate([0,-90,0])conduit_cap_rt();
labbot_conduit_rt_a();
module labbot_conduit_rt_a(){
rotate([0,0,0])labbot_conduit();
translate([20,0,48])rotate([0,-90,0])conduit_cap_rt_A();
}
}
module conduit_support(){
difference(){
translate([0,2,0])cube([30,15,4]);
translate([7,10,-1])cylinder(r=3.7/2,h=30,$fn=30);
translate([7+17,10,-1])cylinder(r=6/2,h=30,$fn=30);
}
}


module conduit_cap_rt(){
difference(){
union(){
translate([0,0,0])cylinder(r=42/2,h=40.5,$fn=30);
//translate([0,0,20])rotate([0,30,0])cylinder(r=42/2,h=44,$fn=30);
translate([0,0,20])rotate([0,-90,0])cylinder(r=42/2,h=44-3,$fn=30);
}
translate([-25-20,-2.5-2-30,-1])cube([50+60,5+4+30,205]);
translate([0,0,-1+20])rotate([0,-90,0])cylinder(r=28/2,h=230,$fn=30);
//translate([0,0,-1+20])rotate([0,30,0])cylinder(r=28/2,h=230,$fn=30);
translate([0,0,-1])cylinder(r=28/2,h=130,$fn=30);

translate([17-3,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17-3-28,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([0,20,0]){
translate([17-3,50-60,12+10])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17-3-28,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
}
translate([0,0,5]){
translate([17,50,12])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,12])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,12])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
translate([-34.4-10,0,0-7]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
translate([0,0,35]){
translate([13.5,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}

translate([-34.4-13.5,0,0-4]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
}
}



module conduit_cap_rt_A(){
difference(){
union(){
translate([0,0,0])cylinder(r=42/2,h=40.5,$fn=30);
//translate([0,0,20])rotate([0,30,0])cylinder(r=42/2,h=44,$fn=30);
translate([0,0,20])rotate([0,-90,0])cylinder(r=42/2,h=44,$fn=30);
}
translate([-25-20,-2.5-2,-1])cube([50+60,5+4+30-0,205]);
translate([0,0,-1+20])rotate([0,-90,0])cylinder(r=28/2,h=230,$fn=30);
//translate([0,0,-1+20])rotate([0,30,0])cylinder(r=28/2,h=230,$fn=30);
translate([0,0,-1])cylinder(r=28/2,h=130,$fn=30);

translate([17-3,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17-3-28,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([0,20,0]){
translate([17-3,50-60,12+10])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17-3-28,50-60,22])rotate([0,0,0])cylinder(r=2.8/2,h=130,$fn=30);
}
translate([0,0,5]){
translate([17,50,12])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,12])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,12])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
translate([-34.4-10,0,0-7]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
translate([0,0,35]){
translate([13.5,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}

translate([-34.4-13.5,0,0-4]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
}
}





















module conduit_cap_y(){
difference(){
union(){
cylinder(r=42/2,h=30,$fn=30);
translate([0,0,20])rotate([0,30,0])cylinder(r=42/2,h=44,$fn=30);
translate([0,0,20])rotate([0,-30,0])cylinder(r=42/2,h=44,$fn=30);
}
translate([-25-20,-2.5-2,-1])cube([50+60,5+4,205]);
translate([0,0,-1+20])rotate([0,-30,0])cylinder(r=28/2,h=230,$fn=30);
translate([0,0,-1+20])rotate([0,30,0])cylinder(r=28/2,h=230,$fn=30);
translate([0,0,-1])cylinder(r=28/2,h=30,$fn=30);

translate([0,0,5]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
translate([-34.4,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
translate([0,0,35]){
translate([13.5,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
translate([-34.4-13.5,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
}
}


module conduit_cap(){
difference(){
cylinder(r=42/2,h=10,$fn=30);
translate([-25,-2.5-2,-1])cube([50,5+4,25]);
translate([0,0,-1])cylinder(r=28/2,h=30,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
translate([-34.4,0,0]){
translate([17,50,5])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([17,50,5])rotate([90,0,0])cylinder(r=8.3/2,h=42,$fn=30);
}
}
}


module 3dprint_miuzei_raspicam_base_ribbonslot_cover(){
difference(){
translate([-4,0,0])cube([38,20,3]);
//translate([5,9,0])translate([0,0,-1])cube([20,1,5]);
translate([0,10,-1])cylinder(r=3.8/2,h=30,$fn=30);
translate([30,10,-1])cylinder(r=3.8/2,h=30,$fn=30);
}
}






module 3dprint_miuzei_raspicam_base_ribbonslot(){
difference(){
translate([-4,0,0])cube([38,20,3]);
translate([5,9,0])translate([0,0,-1])cube([20,1,5]);
translate([0,10,-1])cylinder(r=3.8/2,h=30,$fn=30);
translate([30,10,-1])cylinder(r=3.8/2,h=30,$fn=30);
}
}



//dual_camera_assy();
//3dprint_dual_camera_assy_plate();
//translate([118,140,0])rotate([0,0,-90])3dprint_dual_camera_assy();
//translate([118-34,140+10,20])rotate([90,90,0])3dprint_dual_camera_assy_plate();

//camera_65mm_mount_tslotstand();
//arducam_rotate_2mount_adjuster_nut();

//translate([30,1,8])miuzei_cover();

//import("files/endstop_x.stl");

//pcb_extruder_higher();

//bigtreetech_skr_v1_3_washer();
//bigtreetech_skr_v1_3_nut();
//bigtreetech_skr_v1_3();
//bigtreetech_skr_v1_4();
//bigtreetech_skr_v1_3_lid();
//PCR_cam_raspi();
//labbot_fff_config_higher();

z = 10;
//translate([-70,-25+50,z+100])zbed_multichannel_setup_wider_combine(z);


//raspi4_top();
//raspi4_base();
//translate([0,0,18.5])raspi4_top();

//labbot_conduit();


/*
difference(){
cylinder(r=8.5,h=8,$fn=30);
translate([0,0,-2])cylinder(r=3.7,h=24,$fn=30);
}
*/

//relaylid();

module relaylid(){

difference(){
union(){
color("lime")cube([63+16,50,3]);
translate([0,0,0])color("lime")cube([4,50,14+3]);
translate([76,0,0])color("lime")cube([4,50,14+3]);
translate([16,25,0]){
translate([0,0,0])cylinder(r=8.5/2,h=3+20,$fn=30);
translate([47,0,0])cylinder(r=8.5/2,h=3+20,$fn=30);
}
}
translate([-2,25-13,7.5-3+7])rotate([0,90,0])cylinder(r=4/2,h=120,$fn=30);
translate([-2,25+13,7.5-3+7])rotate([0,90,0])cylinder(r=4/2,h=120,$fn=30);
translate([16,25,0]){
translate([0,0,5])cylinder(r=2.8/2,h=25,$fn=30);
translate([47,0,5])cylinder(r=2.8/2,h=25,$fn=30);
}

}
}



module labbot_conduit(){

difference(){
union(){
cylinder(r=42/2,h=2,$fn=30);
rotate([0,0,45])cylinder(r=60/2,h=4,$fn=4);
translate([-1,0,0])rotate([0,0,45])cylinder(r=60/2,h=4,$fn=4);
}
translate([1,0,-1])cylinder(r=28/2,h=315,$fn=30);
translate([-17,17,-1])cylinder(r=3.8/2,h=35,$fn=30);
translate([-17,-17,-1])cylinder(r=3.8/2,h=35,$fn=30);
translate([17,-17,-1])cylinder(r=3.8/2,h=35,$fn=30);
translate([17,17,-1])cylinder(r=3.8/2,h=35,$fn=30);
}
}


module raspi4_standoffs(){
difference(){
cylinder(r=9/2,h=17,$fn=30);
translate([0,0,-1])cylinder(r=2.9/2,h=20,$fn=30);
}
}
module raspi4_top(){
translate([0,0,-4])color("lime")difference(){
union(){
translate([40-10+2+13,-5-2+3+4,1])cube([80+7.5-4-13,65-3-6,2]);
translate([53.3,3.2,-11])cylinder(r=6.5/2,h=14,$fn=30);
translate([53.4+58.2,3.2,-11])cylinder(r=6.5/2,h=14,$fn=30);
translate([53.4,3.2+49.1,-11])cylinder(r=6.5/2,h=14,$fn=30);
translate([53.4+58.2,3.2+49.1,-11])cylinder(r=6.5/2,h=14,$fn=30);
//translate([40-10-2,-5-2+3+2,1])cube([80+7.5+2,2,2+18.5]);
//translate([40-10-2,-5-2+3+2+61-3,1])cube([80+7.5+2,2,2+18.5]);
}
/*
translate([40-10+26.5,-5-2+3+2+61-3-1,10-2.6])cube([9,4,2+5]);
translate([40-10+26.5+14.5,-5-2+3+2+61-3-1,10-2.6])cube([8.3,4,2+2]);
translate([40-10+26.5+14.5+14,-5-2+3+2+61-3-1,10-2.6])cube([8.3,4,2+2]);
translate([40-10+26.5+14.5+14+14,-5-2+3+2+61-3-1,10-2.6])cube([8.3+2,4,2+2]);
translate([40-10+26.5+14.5+14+14+20-10,-5-2+3+2+61-3-1-33,10-2.6-5-2])cube([8.3+2,4+8,2+4]);
*/
#translate([40-10+26.5+14.5+14+14+20-10-60+(0*10)+10,-5-2+3+2+61-3-1-33-15+42,10-2.6-5-2])cube([3+40,7.5,2+4]);
for(i=[0:6]){
translate([40-10+26.5+14.5+14+14+20-10-60+(i*10),-5-2+3+2+61-3-1-33-15,10-2.6-5-2])cube([3,4+8+23,2+4]);
}
translate([53.3,3.2,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4+58.2,3.2,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4,3.2+49.1,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4+58.2,3.2+49.1,-20])cylinder(r=3.7/2,h=30,$fn=30);
}
}




module raspi4_base(){
translate([0,0,-4])color("red")difference(){
union(){
translate([40-10,-5-2+3+2,1])cube([80+7.5,65-3-2,2]);
translate([40-10-2,-5-2+3+2,1])cube([80+7.5+2,2,2+18.5]);
translate([40-10-2,-5-2+3+2+61-3,1])cube([80+7.5+2,2,2+18.5]);
translate([53.3,3.2,1])cylinder(r=6.5/2,h=5,$fn=30);
translate([53.4+58.2,3.2,1])cylinder(r=6.5/2,h=5,$fn=30);
translate([53.4,3.2+49.1,1])cylinder(r=6.5/2,h=5,$fn=30);
translate([53.4+58.2,3.2+49.1,1])cylinder(r=6.5/2,h=5,$fn=30);
}
translate([40-10+26.5,-5-2+3+2+61-3-1,10-2.6])cube([9,4,2+5]);
translate([40-10+26.5+14.5,-5-2+3+2+61-3-1,10-2.6])cube([8.3,4,2+2]);
translate([40-10+26.5+14.5+14,-5-2+3+2+61-3-1,10-2.6])cube([8.3,4,2+2]);
translate([40-10+26.5+14.5+14+14,-5-2+3+2+61-3-1,10-2.6])cube([8.3+2,4,2+2]);
translate([40-10+26.5+14.5+14+14+20-10,-5-2+3+2+61-3-1-33,10-2.6-5-2])cube([8.3+2,4+8,2+4]);

translate([40-10+26.5+14.5+14+14+20-10-60,-5-2+3+2+61-3-1-33-15,10-2.6-5-2])cube([8.3+2,4+8+30,2+4]);
translate([40-10+26.5+14.5+14+14+20-10-40,-5-2+3+2+61-3-1-33-15,10-2.6-5-2])cube([8.3+2,4+8+30,2+4]);
translate([40-10+26.5+14.5+14+14+20-10-20,-5-2+3+2+61-3-1-33-15,10-2.6-5-2])cube([8.3+2,4+8+30,2+4]);
translate([53.3,3.2,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4+58.2,3.2,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4,3.2+49.1,-20])cylinder(r=3.7/2,h=30,$fn=30);
translate([53.4+58.2,3.2+49.1,-20])cylinder(r=3.7/2,h=30,$fn=30);
}
}

//multichannel_tipremoval();
//labbot_pcr_config();
//translate([-130,200-3,400-2])rotate([90,0,90])stepper_linear_m8nut_endstopflag(6);
//motormount_centered();
/*
x = 100;
y = 100;
tz = 50;
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem(tz);
*/
//multichannel_cameramount_tslot_part();
//multichannel_cameramount_tipholder();

//foot();

//m5nut();

module m5nut(){

difference(){
 cylinder(r=10/2,h=3, $fn=6);
 translate([0,0,-1])cylinder(r=4.8/2,h=10, $fn=30);
}
}

// translate([383.5/2-290/2+83-20,103.5-27-25-11,0])color("")plate_topleft_aligner(144);
/// translate([383.5/2-290/2+83-20,103.5-27-25-11-97,0])color("")plate_btomleft_aligner_wider(144);
// translate([383.5/2-290/2+83-20+350+135+42+5,103.5-27-25-11-94,0])color("")plate_btomright_aligner_wider(144);
// translate([383.5/2-290/2+83-20+220.5+135+42+5,103.5-27-25-11+200,0])color("")rotate([0,0,180]) plate_topright_aligner(144);



//clamp_m8_smoothrodholder_for_bed();

//labbot_fff_config_higher();
//projection(cut=false)multichannel_laser_zbed_wider_fullsquare();

//projection(cut=false)color("")translate([-10,103.5-27-25,50-42])plateholder_wider(144);

//pcb_extruder_higher();
//translate([0,0,-4])extruder_with_filamentsensor();
//color("white")translate([-8.4,40-7.5,7-0.5])filamentsensor();

module extruder_with_filamentsensor(){
difference(){union(){
import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/Extruder.stl");
translate([0,20-3,0])cube([33-11.8,31-16,15]);
translate([2,20-3,0])cube([33-11.8-10,31-16+30,6.45]);
//translate([0-10,20-3,4])cube([33-11.8-10,31-16,15]);
}
color("pink")translate([-8.4,40-7.5,7-0.5])filamentsensor();
translate([-8.5,40-7.5,7]){
translate([15.5,31-6,-20])cylinder(r=2.8/2,$fn=30,h=65.5);
translate([15.5,5,-20])cylinder(r=2.8/2,$fn=30,h=65.5);
translate([3+1.1,0,5.5])rotate([90,0,0])cylinder(r=2.5/2,h=16,$fn=30);
}
}
}
//translate([32-19,10.25,4.0])color("silver")rotate([0,180,0])m5_flatnut();

//translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder_diy();
//translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder_diy();

//doormagnetholder_diy();
//framemagnetholder_diy();


module microswitch(){
difference(){
color("gray")cube([12.6,5.7,6.5]);
translate([3,5.75-1.75,-2])cylinder(r=2/2,h=130,$fn=30);
translate([3+7,5.75-1.75,-2])cylinder(r=2/2,h=130,$fn=30);
}
}


module filamentsensor(){
//translate([-0+8.5,20-7.5+10,2])rotate([0,0,-90])microswitch();
translate([8,2,0])cube([5,8.9-2+0.9-0.8,7]);
translate([12.5,12.5,2])cylinder(r=1.8/2,h=1.8,$fn=30);
translate([12.5,12.5+7,2])cylinder(r=1.8/2,h=1.8,$fn=30);
//translate([8+6.3,2+10,0])cube([5,8.9-2+0.9,7]);
translate([8,2+20.6,0])cube([5,4,7]);
color("")difference(){
union(){
cube([33,31,12.5/2]);
translate([3+1,0,6])rotate([90,0,0])cylinder(r=5.6/2,h=7,$fn=30);
translate([3+1,0,6-3])rotate([90,45,0])cylinder(r=7.8/2,h=7,$fn=4);
translate([3+1,0,6-3.25])rotate([90,45,0])cylinder(r=7.8/2,h=7,$fn=4);
}
translate([2,2,3])cube([33-4-5,31-4,12.5-3-2-2+0.2]);
translate([2,2+10,3+2])cube([33-4-5+10,6,12.5-3-2-4]);
#translate([15.5,31-6,-20])cylinder(r=3.5/2,$fn=30,h=65.5);
#translate([15.5,5,-20])cylinder(r=3.5/2,$fn=30,h=65.5);
translate([33,31,-1])cylinder(r=6,$fn=30,h=15.5);
translate([33-2,-0.1,-1])cube([2.2,5.6,14.5]);
translate([3+1,0+50,6])rotate([90,0,0])cylinder(r=2.5/2,h=116,$fn=30);
}
}

module filamentsensor_connectionplate(){
difference(){
union(){
translate([11.5-4,0,-10])color("lime")cube([15,40,8]);
translate([11.5-4,0+40-12,-10-25])color("lime")cube([15,12,8+17]);
translate([11.5-4-10,0+40-12,-10-25])color("lime")cube([35,12,4]);
}
#translate([15.5+13,31-6+8,-40])cylinder(r=4.7/2,$fn=30,h=65.5);
#translate([15.5+12-25-1,31-6+8,-40])cylinder(r=4.7/2,$fn=30,h=65.5);
translate([15.5,31-6,-20])cylinder(r=2.8/2,$fn=30,h=65.5);
translate([15.5,5,-20])cylinder(r=2.8/2,$fn=30,h=65.5);
}
}


module filamentsensor_lid(){
color("lime")difference(){
union(){
translate([0,0,12.5/2])cube([33,31,5.7]);
}
translate([3+1,0+0.5,6])rotate([90,0,0])cylinder(r=6.2/2,h=7,$fn=30);
translate([3+1,0+0.5,6-3])rotate([90,45,0])cylinder(r=8.5/2,h=7,$fn=4);
//#translate([2,2+5,3+5])cube([5,31-4-10,12.5-3-2-2+0.2]);
#translate([2,2,3])cube([33-4-5,31-4,12.5-3-2-2+0.2]);
translate([2,2+10,3+2])cube([33-4-5+10,6,12.5-3-2-4]);
translate([15.5,31-6,-20])cylinder(r=3.5/2,$fn=30,h=65.5);
translate([15.5,5,-20])cylinder(r=3.5/2,$fn=30,h=65.5);
translate([33,31,-1])cylinder(r=6,$fn=30,h=15.5);
translate([33-2,-0.1,-1])cube([2.2,5.6,14.5]);
translate([3+1,0+50,6])rotate([90,0,0])cylinder(r=2.5/2,h=116,$fn=30);
}
}





/*
translate([-10+2,-9+2,0])cylinder(r=8.5/2,h=10,$fn=30);
translate([-10+2,-9+2+98,0])cylinder(r=8.5/2,h=10,$fn=30);
translate([-10+2+126,-9+2,0])cylinder(r=8.5/2,h=10,$fn=30);
translate([-10+2+126,-9+2+98,0])cylinder(r=8.5/2,h=10,$fn=30);
translate([-10,-9,0])cube([130,4,10]);
translate([-10,-9,0])cube([4,100,10]);
translate([-10+126,-9,0])cube([4,100,10]);
translate([-10,-8+98,0])cube([130,4,10]);
*/
//right_panel();
//back_panel();
//bottom_panel();

//cable_support_ghead_lid();
//rotate([0,90,90])cable_support_ghead();

//front_panel();

// translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
// rotate([0,0,90])cable_support();

//conduitclamp(); 
//extruder_attach_motormountthin();

//pcb_extruder_higher();
//extruder_connector();

//front_panel();

//top_panel();

//perfecthinge_washer();
//endstop_z();
//endstop_y();

//panel_higher();
//foot();
//projection(cut=false) 
//rotate([90,0,0])
//translate([0,0,114])pcb_extruder_higher();
//color("black")
//magnetholder();
/*
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])extruder_railsystem(tz+20);
*/
/*
 right_panel();
 front_panel();
 bottom_panel();
 back_panel();
 top_panel();
 left_panel();
*/



//motormount_smz();
//clamp_bottom_simple_m8_smoothrodholder_for_z();

//bed_attach_assy_tslot();
//bed_bar_clamp();
// translate([0,0+29,0])zbed_smz_components_wider_threadedrod(0,0);
//translate([0,-60,0-50])zbed_assy_wider_threadedrod_noextrusion_higher(110-50);
//translate([0,0+29,0])zbed_smz_components_wider_threadedrod(0,0);
//zbedslot_516_smz_zbed_wider();
//lm8uu_smz_glider_wider();
//extrusion_threadrod_clamp_noextrusion();

//import("PerfectHinge40mm.stl");
//perfecthinge_washer();
//bed_attach_assy_tslot();
//translate([0,-60,0-50])zbed_assy_wider_threadedrod_noextrusion_higher(110-50);
//translate([30,0,-10])rotate([0,0,0])doormagnetholder_handleside();
//translate([30,0,-10])rotate([0,180,0])doormagnetholder_handleside();
//doormagnetholder();
//framemagnetholder();
//labbot_fff_config();
 //translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
 //rotate([0,0,90])cable_support();

//arducam_labbot_mount();

//pcb_extruder();

//nema8_gasket_motor_mount();
//color("lime")nema8_holder4();

/*

translate([0,0,0])linearactuator_dispenser();
translate([-18,0,0]){
color("lime")nema8_holder4();
translate([165+165+55,0,0])color("lightblue")mirror([1,0,0])dispenser_holder();
}
*/


//labbot_fff_config();


//translate([-10-25,z-39-22-46.5,41+6-15+2.5+2+24])rotate([-0,0,180])extruder_assy();
//Extruder_fix();
//labbot_fff_config();
/*
translate([-535-38,200,-20])rotate([0,0,-90]){
translate([145,240,200-40])peristaltic_pump();
translate([165-60,240,200-40])peristaltic_pump();
translate([165-100,240,200-40])peristaltic_pump();
labautobox();
}
labbot_pcr_config();
*/


module roundmagnets(){
difference(){
cylinder(r=12.4/2,h=3.2,$fn=30);
translate([0,0,-1])cylinder(r=4.2/2,h=13.2,$fn=30);
}
}


module m5_flatnut(){
cube([15.4,10.4,1.5]);
translate([15.4/2,10.4/2,0])cylinder(r=6.4/2,h=3.5,$fn=30);
}


module bigtreetech_skr_v1_3_nut(){
difference(){
cylinder(r=12/2,h=5,$fn=6);
translate([0,0,-2])cylinder(r=2.8/2,h=13,$fn=30);
}
}



module bigtreetech_skr_v1_3_washer(){
difference(){
cylinder(r=10/2,h=8,$fn=30);
translate([0,0,-2])cylinder(r=4.2/2,h=13,$fn=30);
}
}


module bigtreetech_skr_v1_3_lid(){
translate([0,0,4+30])color("pink")difference(){
 translate([-3-5,-3-5,0])cube([109.67+6+10,84.3+6+10,3]);
 //translate([10-4,10-4,-2])cube([97.67,72.3,35]);
 //translate([10-4+14-25+50,10-4+30,-2])cube([97.67-50,72.3,13]);
 //translate([10-4+14-25+50+50,10-4+20,-2])cube([97.67-50,52.3,11]);
 //translate([10-4+1,10-4-4-5,-2])cube([96.67,80.3+10,35]);
 //translate([10-4-4-5,10-4+1,-2])cube([105.67+10,70.3,35]);
 translate([10-4+14-25+20,10-4+30-36,-2])cube([80,15,13]);
 translate([10-4+14-25+17,10-4+30-36+27,-2])cube([20,59,13]);

 /*
 translate([3.75,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75,3.75,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75,3.75+76.1,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 */

 translate([-0.5-5,25,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-0.5-5,65,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([25,-0.5-5,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([85,-0.5-5,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-0.5+111+5,25,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-0.5+111+5,65,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([25,-0.5+85+5,-5])cylinder(r=3.8/2,h=40,$fn=30);
 translate([85,-0.5+85+5,-5])cylinder(r=3.8/2,h=40,$fn=30);
}
}



module bigtreetech_skr_v1_4(){
translate([0,0,4])color("lime")difference(){
 translate([-3-5,-3-5,0])cube([109.67+6+10,84.3+6+10,7+23]);
 translate([0-0.3,0-0.3,2])cube([109.67+0.6,84.3+0.6,7+123]);
 translate([10-4,10-4,-2])cube([97.67,72.3,35]);
 translate([10-4+14-25+50,10-4+30,-2])cube([97.67-50,72.3,13]);
 translate([10-4+14-25+50+25.7,10-4+30,-2])cube([22,72,22]);
 translate([10-4+14-25+50+50,10-4+20,-2])cube([97.67-50,52.3,11]);
 translate([10-4+1,10-4-4-5,-2])cube([96.67,80.3+10,35]);
 translate([10-4-4-5,10-4+1,-2])cube([105.67+10,70.3,35]);

 translate([0,0,0]){
 translate([3.75,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 }

 translate([0,0-0.15,0]){
 translate([3.75,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 }



 translate([0,0,0]){
 translate([3.75,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 }

 translate([0,0+0.15,0]){
 translate([3.75,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 }

 translate([-0.5-5,25,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5-5,65,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([25,-0.5-5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([85,-0.5-5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5+111+5,25,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5+111+5,65,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([25,-0.5+85+5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([85,-0.5+85+5,-5])cylinder(r=2.8/2,h=40,$fn=30);
}
}
















module bigtreetech_skr_v1_3(){
translate([0,0,4])color("lime")difference(){
 translate([-3-5,-3-5,0])cube([109.67+6+10,84.3+6+10,7+23]);
 translate([10-4,10-4,-2])cube([97.67,72.3,35]);
 translate([10-4+14-25+50,10-4+30,-2])cube([97.67-50,72.3,13]);
 translate([10-4+14-25+50+50,10-4+20,-2])cube([97.67-50,52.3,11]);
 translate([10-4+1,10-4-4-5,-2])cube([96.67,80.3+10,35]);
 translate([10-4-4-5,10-4+1,-2])cube([105.67+10,70.3,35]);
 translate([3.75,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,-5])cylinder(r=3.3/2,h=40,$fn=30);
 translate([3.75,3.75,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75,3.75+76.1,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([3.75+101.85,3.75+76.1,2+2])cylinder(r=8.3/2,h=40,$fn=30);
 translate([-0.5-5,25,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5-5,65,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([25,-0.5-5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([85,-0.5-5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5+111+5,25,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([-0.5+111+5,65,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([25,-0.5+85+5,-5])cylinder(r=2.8/2,h=40,$fn=30);
 translate([85,-0.5+85+5,-5])cylinder(r=2.8/2,h=40,$fn=30);
}
}

















module magnetholder(){
difference(){
cube([30,30,4]);
translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
}
translate([0,0,4.1-2.5])color("black")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}



module framemagnetholder_diy(){

difference(){
union(){
//translate([15,5,5.26])color("lime")roundmagnets();
//translate([15,5+19,5.26])color("lime")roundmagnets();
translate([15-15+17.5/2+6.5,15-21+6+19/4,4.1-2.5-5])cylinder(r=(8+8)/2,h=5+3.6+3,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29-19/4,4.1-2.5-5])cylinder(r=(8+8)/2,h=5+3.6+3,$fn=30);
}
translate([15,5,5.36])color("lime")roundmagnets();
translate([15,5+19,5.36])color("lime")roundmagnets();
translate([15-15+17.5/2+6.5,15-21+6+19/4,4.1-2.5+1])cylinder(r=5/2,h=30,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29-19/4,4.1-2.5+1])cylinder(r=5/2,h=30,$fn=30);
}
difference(){
union(){
//translate([0,0,-4])cube([30,30,4+4]);
translate([0+6.5+1,0-5,-4-3.5+3.5])cube([20,40,4+4]);
translate([0+26.7,0-12,-4-3.5+3.5])cube([5,13,8]);
translate([0+26.7,0-12-5,-4-3.5+3.5])cube([5,10,15-3.5]);
translate([0+26.7,0-12+44+5,-4-3.5+3.5])cube([5,10,15-3.5]);
translate([0+26.7,0-12+38,-4-3.5+3.5])cube([5,13,8]);
}
translate([15-30,15+26-4+5,4.1-2.5+1])rotate([0,90,0])cylinder(r=3.8/2,h=62.5,$fn=30);
translate([15-30,15+26-48-5,4.1-2.5+1])rotate([0,90,0])cylinder(r=3.8/2,h=62.5,$fn=30);
//translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
translate([15-15+6.5,15-21,4.1-2.5+3-4])cube([17.5,41.5,3.5]);
translate([15-15+17.5/2+6.5,15-21+6+19/4,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29-19/4,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
}
//translate([0,0,4.1-2.5])color("black")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}










module framemagnetholder(){
difference(){
union(){
translate([15-15+17.5/2+6.5,15-21+6,4.1-2.5-5])cylinder(r=8/2,h=5+3.5,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29,4.1-2.5-5])cylinder(r=8/2,h=5+3.5,$fn=30);
}
translate([15-15+17.5/2+6.5,15-21+6,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
}
difference(){
union(){
//translate([0,0,-4])cube([30,30,4+4]);
translate([0+6.5+1,0-5,-4-3.5])cube([20,40,4+4]);
translate([0+26.7,0-12,-4-3.5])cube([5,13,8]);
translate([0+26.7,0-12-5-2,-4-3.5])cube([5,10+4,15+2]);
translate([0+26.7,0-12+44+5-2,-4-3.5])cube([5,10+4,15+2]);
translate([0+26.7,0-12+38,-4-3.5])cube([5,13,8]);
}
translate([15-30,15+26-4+5,4.1-2.5+1])rotate([0,90,0])cylinder(r=3.8/2,h=62.5,$fn=30);
translate([15-30,15+26-48-5,4.1-2.5+1])rotate([0,90,0])cylinder(r=3.8/2,h=62.5,$fn=30);
//translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
translate([15-15+6.5,15-21,4.1-2.5+3-3])cube([17.5,41.5,2.5]);
translate([15-15+17.5/2+6.5,15-21+6,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
translate([15-15+17.5/2+6.5,15-21+6+29,4.1-2.5-10])cylinder(r=2.8/2,h=30,$fn=30);
}
//translate([0,0,4.1-2.5])color("black")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}




module doormagnetholder_handleside(){
translate([0,0,0])difference(){
union(){
translate([7.5,0,0])cube([15,30,4]);
translate([7.5+7.5,15,0])cylinder(r=14/2,h=15,$fn=30);
translate([7.5+7.5,15,15])cylinder(r1=14/2,r2=22/2,h=5,$fn=30);
translate([7.5+7.5,15,15+5])cylinder(r=22/2,h=5,$fn=30);
//translate([-4,5,0])cube([30+8,20,4]);
}
translate([15,15-11,-10])cylinder(r=3.7/2,h=22.5,$fn=30);
translate([15,15+11,-10])cylinder(r=3.7/2,h=22.5,$fn=30);
//translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
//translate([15-19,15-7.1,4.1-2.5+1])cube([38,15.2,1.5]);
}
//translate([0,0,4.1-2.5])color("pink")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}




module doormagnetholder_diy(){

//translate([32,10.25,4.0])color("silver")rotate([0,180,0])m5_flatnut();
//translate([32-19,10.25,4.0])color("silver")rotate([0,180,0])m5_flatnut();

difference(){
union(){
translate([7.5,0,0])cube([15,30,4]);
translate([-4,5,0])cube([30+8,20,4]);
}
translate([15,15-11,-10])cylinder(r=2.8/2,h=22.5,$fn=30);
translate([15,15+11,-10])cylinder(r=2.8/2,h=22.5,$fn=30);
//translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
translate([15-19-1+2.5,15-7.1+2.3,4.1-2.5+1-2.1+3-1.29])cube([38+2-24.35,15.2-4.66,1.5+0.3]);
translate([15-19-1+2.5+19,15-7.1+2.3,4.1-2.5+1-2.1+3-1.29])cube([38+2-24.35,15.2-4.66,1.5+0.3]);

translate([17-0.4,10.25,0.3])translate([15.4/2,10.4/2,0])cylinder(r=6.8/2,h=3.5,$fn=30);
translate([17-0.4-19,10.25,0.3])translate([15.4/2,10.4/2,0])cylinder(r=6.8/2,h=3.5,$fn=30);

}
//translate([0,0,4.1-2.5])color("pink")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}




module doormagnetholder(){
difference(){
union(){
translate([7.5,0,0])cube([15,30,4]);
translate([-4,5,0])cube([30+8,20,4]);
}
translate([15,15-11,-10])cylinder(r=2.8/2,h=22.5,$fn=30);
translate([15,15+11,-10])cylinder(r=2.8/2,h=22.5,$fn=30);
//translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=2.5);
translate([15-19,15-7.1,4.1-2.5+1])cube([38,15.2,1.5]);
}
//translate([0,0,4.1-2.5])color("pink")translate([15,15,4.1-2.5])cylinder(r=13.2/2,h=3);
}







module foot(){
translate([0,0,10])color("silver"){
cylinder(r=8.2/2,h=3,$fn=30);
cylinder(r=5.7/2,h=25,$fn=30);
}
difference(){
cylinder(r1=20/2,r2=10/2,h=20,$fn=30);
translate([0,0,10]){
translate([0,0,-12])cylinder(r=9.2/2,h=15,$fn=30);
cylinder(r=4.9/2,h=25,$fn=30);
}
}
}


module perfecthinge_washer(){
translate([25,9,0])difference(){
cube([15,3,40]);
translate([7.5,10,5.5])rotate([90,0,0])cylinder(r=4.7/2,h=30,$fn=20);
translate([7.5,10,5.5+29])rotate([90,0,0])cylinder(r=4.7/2,h=30,$fn=20);
}
}



module Extruder_fix(){
import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/Extruder.stl");
difference(){
union(){
color("pink")translate([-29.15,-35.5,0+10.1])cube([15,16,14.9]);
color("pink")translate([-29.15+34,-35.5,0+10.1])cube([16,16,14.9]);
color("lime")translate([-29.15,-35.5,0+10.1-10])cube([15-7,16,14.9+10]);
color("lime")translate([-29.15+41.5,-35.5,0+10.1-10])cube([15-7+0.7,16,14.9+10]);
}
translate([-29.15+11.75,-35.5+5.5,-10])cylinder(r=2.8/2,h=150,$fn=30);
translate([-29.15+11.75+26,-35.5+5.5,-10])cylinder(r=2.8/2,h=150,$fn=30);
translate([-29.15+11.75+100,-35.5+5.0,5])rotate([0,-90,0])cylinder(r=2.8/2,h=250,$fn=30);
translate([-29.15+11.75+100,-35.5+5.0,5+15])rotate([0,-90,0])cylinder(r=2.8/2,h=250,$fn=30);
}
}

//pcb_extruder();


//translate([0,10.2,0.1])calibration_ruler();
//translate([0-9.5,0,0.8])color("lime")smd_0805_holder_meta();
//color("pink")smd_ruler_case();

module smd_ruler_case(){
difference(){
union(){
translate([0-10,0,-2])cube([44+18,35,2.1]);
translate([0-10,0,-2])cube([44+18,10,2+0.8]);
translate([-10,-10,-2])cube([10+45,20,2]);
translate([-10+52,-10,-2])cube([10,20,2]);
}
//translate([-5,5,-20])cylinder(r=3.9/2,h=50,$fn=30);
//translate([-5,5-10,-20])cylinder(r=3.9/2,h=50,$fn=30);
translate([-5+28-10,5-10,-20])cylinder(r=3.9/2,h=50,$fn=30);
translate([-5+28+10,5-10,-20])cylinder(r=3.9/2,h=50,$fn=30);
/*
translate([53,0,0]){
translate([-5,5,-20])cylinder(r=3.9/2,h=50,$fn=30);
translate([-5,5-10,-20])cylinder(r=3.9/2,h=50,$fn=30);
}
*/
}
}

//arducam_labbot_lid();

//front_threadrod_bed_adjustwheel_tslot();
//zbed_smz_wider_threadedrods_noextrusions();
//pcb_extruder();


//shredder_coupler();

//arducam_basecase_cover_hd();
//servo_linearactuator_connector();
//rack();
//translate([0,-60,0])mirror([0,1,0])rack();

//m12lens_screwshim(12,21.2);
//m12lens_screwshim(12+10,21.2);

//color("pink")translate([13.5-5.5,-30,15])rotate([-90,0,0])arducam_labbot_mount();


//color("orange")translate([13.5-5.5,-30,15])rotate([-90,0,0])arducam_labbot_spacer();
//color("green")translate([13.5,-30,15])rotate([-90,0,0])arducam_labbot();

//servo_linearactuator_connector();



//translate([200-3.5,-29,400-13])rotate([0,180,0])labbot_camera();
/*
m12lens_screwshim_spacer(12,21.95);
m12lens_screwshim(12+5,21.2);
m12lens_screwshim(12,21.2);
*/
//translate([0-9,-40+17,4])labbot_camera();

//rpi4_case(); // the whole unsplit case
//import("rp4_top.stl");
//rpi4_labbot();
//translate([41+44,-80+25,-5])rotate([0,0,90])import("rpi3-bottom_netfabb.stl");
//import("rpi2-top_netfabb.stl");

//servo_linearactuator_connector();


//translate([165,100-10-30+10,350+9+30-2-79])rotate([90,0,0])servo_linear_assy();

/*
mirror([0,1,0])color("lightblue")dispenser_holder();
color("lightblue")dispenser_holder();
translate([165+165+50,0,0])color("lightblue")mirror([1,0,0])dispenser_holder();
*/

//servo_linearactuator_connector();
//translate([50+4,-50+120+0.5,27.5])color("lime")rotate([0,180,90])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/sled_bottom.stl");
//translate([34.5-14,109.5-149,63])rotate([0,180,90])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");
//translate([34.5,109.5,63])rotate([0,180,-90])holder_half_mod();

//rpi3_labbot();
//translate([0,0,0])linearactuator_dispenser();
//sled_cap();



module calibration_ruler(){
cube([100,30,2]);
}
module smd_0805_holder_meta(){
//for(x=[0:10]){
//for(y=[0:1]){
for(x=[0:14]){
for(y=[0:1]){
 translate([x*4,y*5.2,0])smd_0805_holder();
}
}
}
module smd_0805_holder(){
difference(){
translate([-0.25,-0.25,0])cube([4,5.2,1.2]);
translate([2-1,2.5-1.5,1.2-0.5])cube([1.3+0.5,2.1+0.5,0.6]);
}
}


module shredder_coupler(){

difference(){
translate([0,0,-12])cylinder(r=26/2,h=22+24,$fn=30);
translate([0,0,-0.1])cylinder(r=14.5/2,h=124,$fn=30);
translate([0,0,-12.1])cylinder(r=7.6/2,h=124,$fn=6);
translate([-20,-11.5,-6.1])rotate([0,90,30])cylinder(r=2.8/2,h=124,$fn=20);
translate([-12,-11.5,5.1])rotate([0,90,45])cylinder(r=2.8/2,h=124,$fn=20);
translate([5+3.5,0,5])rotate([0,0,45])cylinder(r=7.6/2,h=124,$fn=4);
}
}

module nema8_holder4(){

//rd = 7.5;
rd = 9.5;
difference(){
union(){
translate([165,20.75,300-7.5])cube([15,5,30+19]);
translate([165,20.75-0.4,300-7.5+20])cube([15+14+1,5+0.4,29]);
translate([165.8-0.8,20.75-0.4-12,300-7.5+20])cube([4.8,5+10,29]);
translate([165.8+24.4,20.75-0.4-12,300-7.5+20])cube([4.8,5+10,29]);
//translate([165-2,20.75,300-7.5])cylinder(r=(rd+8)/2,h=75,$fn=20);
//translate([182-0.5,20.75,300-7.5])cylinder(r=(rd+8)/2,h=45,$fn=20);
//translate([182,20.75,300-7.5])cylinder(r=(11.6+6)/2,h=8,$fn=20);
}
//translate([182+7,20.75-10,300-7.5-1])cube([2,20,100]);
//translate([182-0.5,20.75,300-7.6])cylinder(r=(11.6)/2,h=8,$fn=20);
//translate([182-1,20.75,300-7.5-1])cylinder(r=(rd+0.5)/2,h=75+30,$fn=20);
translate([165+7,20.75+25,300-7.5+7])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25,300-7.5+7+10])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25-23,300-7.5+7])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
translate([165+7,20.75+25-23,300-7.5+7+10])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
translate([165+7-3-1.45,20.75+25-23,300-7.5+7+22])rotate([0,0,0])cylinder(r=2.3/2,$fn=20,h=140);
translate([165+7+18+2.6,20.75+25-23,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.3/2,$fn=20,h=140);
translate([165+7+18+2.6,20.75+25-23-10,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.3/2,$fn=20,h=140);
translate([165+7-3-1.45,20.75+25-23-10,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.3/2,$fn=20,h=140);
}

}

module dispenser_holder(){
//rd = 7.5;
rd = 9.5;
difference(){
union(){
translate([165,20.75,300-7.5])cube([15,5,30]);
//translate([165-2,20.75,300-7.5])cylinder(r=(rd+8)/2,h=75,$fn=20);
translate([182-0.5,20.75,300-7.5])cylinder(r=(rd+8)/2,h=45,$fn=20);
translate([182,20.75,300-7.5])cylinder(r=(11.6+6)/2,h=8,$fn=20);
}
translate([182+7,20.75-10,300-7.5-1])cube([2,20,100]);
translate([182-0.5,20.75,300-7.6])cylinder(r=(11.6)/2,h=8,$fn=20);
//translate([165-2-2,20.75,300-7.5-1])cylinder(r=(rd+0.5)/2,h=75+30,$fn=20);
translate([182-1,20.75,300-7.5-1])cylinder(r=(rd+0.5)/2,h=75+30,$fn=20);
translate([165+7,20.75+25,300-7.5+7])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25,300-7.5+7+10])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25-23,300-7.5+7])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
translate([165+7,20.75+25-23,300-7.5+7+10])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
}
}


module nema8_holder(){
//rd = 7.5;
rd = 9.5;
difference(){
union(){
translate([165,20.75,300-7.5])cube([15,5,30]);
//translate([165-2,20.75,300-7.5])cylinder(r=(rd+8)/2,h=75,$fn=20);
//translate([182-0.5,20.75,300-7.5])cylinder(r=(rd+8)/2,h=45,$fn=20);
//translate([182,20.75,300-7.5])cylinder(r=(11.6+6)/2,h=8,$fn=20);
}
translate([182+7,20.75-10,300-7.5-1])cube([2,20,100]);
translate([182-0.5,20.75,300-7.6])cylinder(r=(11.6)/2,h=8,$fn=20);
//translate([165-2-2,20.75,300-7.5-1])cylinder(r=(rd+0.5)/2,h=75+30,$fn=20);
translate([182-1,20.75,300-7.5-1])cylinder(r=(rd+0.5)/2,h=75+30,$fn=20);
translate([165+7,20.75+25,300-7.5+7])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25,300-7.5+7+10])rotate([90,0,0])cylinder(r=2.8/2,$fn=20,h=40);
translate([165+7,20.75+25-23,300-7.5+7])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
translate([165+7,20.75+25-23,300-7.5+7+10])rotate([90,0,0])cylinder(r=7/2,$fn=20,h=3+20);
}
}















module pcb_extruder(){
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
conduit_tubes_extruder(x,y,(tz+60-20-mtz*2));
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])extruder_railsystem(tz+20);
translate([0,0,0.5]){
translate([-18,0,0])nema8_holder4();
translate([0,0,0])nema8_gasket_motor_mount();
}
translate([0,0,0])linearactuator_dispenser();
translate([-18,0,0]){
//color("lightblue")dispenser_holder();
translate([165+165+55,0,0])color("lightblue")mirror([1,0,0])dispenser_holder();
}
/*
//rpi4_labbot();
rpi3_labbot();
*/
translate([-10-12,-25-10-0.5-13.5,5-12+2])labbot_camera();
}

module bltouch_clamp(){
difference(){
union(){
translate([2,0,0])cube([8,28,7]);
translate([7,4.5-1.5,0])cube([3,22+3,25]);
}
translate([5,5,-20])cylinder(r=2.8/2,h=100,$fn=30);
translate([5,5+18,-20])cylinder(r=2.8/2,h=100,$fn=30);
for(i=[-3:5]){
translate([-15,8,16.25+i*0.5])rotate([0,90,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([-15,8+15,16.25+i*0.5])rotate([0,90,0])cylinder(r=3.8/2,h=100,$fn=30);
}
}
}

module pcb_extruder_higher(){
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
//translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])extruder_railsystem(tz+20);

translate([20,0,0]){
translate([85+176-10+3,-26+37,358])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
translate([85+120+4.5+3,-26+27,322])
bltouch_clamp();

}

conduit_tubes_extruder_higher(x,y,(tz+60-20-mtz*2));

//conduit_tubes_extruder(x,y,(tz+60-20-mtz*2));

/*
translate([0,0,0.5]){
translate([-18,0,0])nema8_holder4();
translate([0,0,0])nema8_gasket_motor_mount();
}
translate([0,0,0])linearactuator_dispenser();
translate([-18,0,0]){
//color("lightblue")dispenser_holder();
translate([165+165+55,0,0])color("lightblue")mirror([1,0,0])dispenser_holder();
}
translate([-10-12,-25-10-0.5-13.5,5-12+2])labbot_camera();
*/
/*
//rpi4_labbot();
rpi3_labbot();
*/
}
















module servo_linearactuator_connector(){
translate([200-13-7,100-50+38,350+38-29+4])rotate([0,0,-90])difference(){
union(){
translate([0-3-15,8-3,20])rotate([0,0,0])color("peru")cube([35+3+15,18,4]);
//translate([0-3+23,8-10+1.5+5.5,20-3])rotate([0,0,0])color("peru")cube([35+7+16+13,15,7]);
translate([0-3+23,8-10+1.5+5.5,20-3])rotate([0,0,0])color("peru")cube([35+7+16,15,7]);
translate([20,-3,15])rotate([0,0,0])color("peru")cube([10+5,32,4+5]);
}
translate([10+18,24-2.5,-10])cylinder(r=3.7/2,h=50,$fn=30);
translate([10+18,24-2-18.5,-10])cylinder(r=3.7/2,h=50,$fn=30);
translate([12-6,16.75-3,-10])cylinder(r=3.7/2,h=50,$fn=30);
translate([2-12,16.75-3,-10])cylinder(r=3.7/2,h=50,$fn=30);
//translate([0.5+13,0,0]){
translate([0,0,0]){
translate([10+18+15.5+16,24-2-18.5+7-3+5,-10])cylinder(r=2.7/2,h=50,$fn=30);
translate([10+18+15.5+13+16,24-2-18.5+7-3+5,-10])cylinder(r=2.7/2,h=50,$fn=30);
}
}
}



module linearactuator_dispenser(){
/*
linearactuator_dispenser()
19. tslot2020(100
*/
translate([200-18,100-50+21,350+38])rotate([-90,0,0])tslot20(100);
translate([200-18-20,100-50+21,350+38])rotate([-90,0,0])tslot20(100);
translate([-18,0,0]){
servo_linearactuator_connector();
translate([165,100-10-30+10,350+9+30-2-79])rotate([90,0,0])servo_linear_assy();
}
//translate([0-9-13,-40+20.5-16,4-9])labbot_camera();

//translate([0,10,0])rpi4_labbot();
}




module labbot_camera(){
translate([215,40,365])rotate([-90,0,180]){
//color("green")translate([13.5,-30,15])rotate([-90,0,0])arducam_basecase();

color("pink")translate([13.5-5.5,-30,15])rotate([-90,0,0])arducam_labbot_mount();
color("orange")translate([13.5-5.5,-30+5,15])rotate([-90,0,0])arducam_labbot_spacer();
color("green")translate([13.5,-30+6+44,15])rotate([-90,0,0])arducam_labbot();
//color("pink")translate([13.5,-30+8,15])rotate([-90,0,0])arducam_basecase_cover_hd();
//translate([13.5,-30+8,15])rotate([-90,0,0])arducam_basecase_attachstem();
}
}


module rpi4_labbot(){
//translate([250,120,390-2])rotate([0,0,180])raspberrypi4_caller();
translate([210-3,120-27.5,390-2]){
difference(){union(){
translate([110,-80,-5])rotate([0,0,90])import("rp4_bottom.stl");
import("rp4_top.stl");

translate([-17,0,-4.9])cube([20,15,4]);
translate([-17+103-2,0,-4.9])cube([18,15,4]);
}
translate([-10,8,-10])cylinder(r=3.7/2,h=50,$fn=30);
translate([-10+105,8,-10])cylinder(r=3.7/2,h=50,$fn=30);
}
}
}

module rpi3_labbot(){
//translate([250,120,390-2])rotate([0,0,180])raspberrypi4_caller();
translate([210-3,120-27.5,390-2]){
difference(){union(){
translate([41+44+10,-80+25+56,-5])rotate([0,0,90])import("rpi3-bottom_netfabb.stl");
translate([41+44+10,-80+35+51,-5+23])rotate([0,180,0])import("rpi2-top_netfabb.stl");
//import("rp4_top.stl");

}
}
}
}







//multi_iverntech_railsystem(10);
//multi_iverntech_railsystem_dualactuator(10);
//color("")lm8uu_zdriver_assay(10);
//lm8uu_zdriver_assay_dual(10);

//lm8uu_zdriver_assay(10);
//labbot_pcr_config();
//stepper_driver_lm8uu_pla(4);

//translate([0,-60,0])
//bed_bar_clamp();
//zbed_assy_wider_threadedrod_noextrusion(110-50);
//multichannel_cameramount_tslot_part();


//bed_attach_assy();
//bed_attach_assy();
//front_threadrod_bed_adjustwheel();
//back_threadrod_bed_adjustwheel();
//extrusion_threadrod_clamp_noextrusion();
//extruder_attach_motormountthin();
//extruder_assy();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);

//extruder_attach_motormountthin();
//m5bearing_washer();
//hts_mydaa_ezabl();

//extruder_assy();

/*
*/



//translate([-42,-85,10])rotate([0,90,0])lm8uu_smz_glider_wider();
//clamp_bottom_simple_m8_smoothrodholder_for_z();
//color("silver")mod_lm8uu_pla();
//stepper_linear_m8nut_coupler_lm8uu();
//import("extruder/MyDD_Back.stl");
//endstop_z();
//zbedslot_516_smz_zbed_wider();
//zbed_assy_wider_threadedrod_noextrusion(60);
//zbedslot_516_smz_zbed_wider_cap();


 //translate([35-65-14,134-49,105])color("pink")extrusion_threadrod_clamp_noextrusion();
// translate([35+370+120-29,134-49,105])color("pink")extrusion_threadrod_clamp_noextrusion();

//bczamd_a8_hotbed_support_attachplate();

//translate([85,-26,42])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
//color("pink")import("extruder/MyDD_BLTouch.stl");
//hts_mydaa_ezabl();


module m5bearing_washer(){
difference(){union(){
cylinder(r=21/2,h=2-0.5-0.3);
translate([0,0,0])cylinder(r=8/2,h=3.5-1.75+0.3);
}
translate([0,0,-1])cylinder(r=5.8/2,h=20);
}
}








module hts_mydaa_ezabl(){
difference(){
union(){
translate([-3.5+7,0,0])cube([12,20,4]);
translate([-3,15,0])cube([23.5,6,4]);
translate([-3+2,15-18-14,0])cube([23.5-4,6+14,4]);
translate([-3+2,15-18-14,0])cube([23.5-4,6+3,24]);
//color("pink")import("extruder/MyDD_EZABL.stl");
}
translate([-3+3,18,-5])cylinder(r=4.3/2,h=40,$fn=30);
translate([-3+3+9,18,15])rotate([90,0,0])cylinder(r=13/2,h=40,$fn=30);
translate([-3+3+18,18,-5])cylinder(r=4.3/2,h=40,$fn=30);
}
}

//translate([85,-26,42])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
//import("extruder/MyDD_Spacer.stl");

//bczamd_a8_clamp();

//bearing_mount_smz();
//extrusion_threadrod_clamp_noextrusion();

/*
difference(){
cylinder(r=14/2,h=5,$fn=6);
translate([0,0,-2])cylinder(r=7.8/2,h=10,$fn=30);
}
*/
//motormount_smz();
/*
translate([0,30,0])mirror([0,1,0])motormount_smz();
*/
//clamp_bottom_simple_m8_smoothrodholder_for_z();

/*
bearing_mount_smz();
translate([0,45,0])mirror([0,1,0])
bearing_mount_smz();
*/
//extruder_assy();

// translate([-50,6,240])cable_support_extrusion();
//iverntech_slider_xshuttle_connect();

//multichannel_cameramount_tslot_part();
//multichannel_cameramount_tipholder(10);
//spring_stepper_linear_m8nut_coupler_lm8uu();
//backspacer();

//stepperconduitclamp();
//zbed_assy_wider_threadedrod_noextrusion(40);
//zbedslot_516_smz_zbed_wider();
//extrusion_threadrod_clamp();
//conduitclamp();
//lm8uu_smz_glider_wider();

//zbedslot_516_smz_zbed_wider();
//lm8uu_smz_glider_wider();
//endstop_multichannel_syringe();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);
//zbedslot_516_smz_zbed_wider();

//multichannel_cameramount_tslot_part();
//slider_wall_holes_608bearing();
//slider_wall_holes_bottomclamp();
//spring_stepper_linear_m8nut_coupler_lm8uu();
/*
//color("lightblue")translate([0,0,62-102])cylinder(r=2.5/2,h=23,$fn=30);
//color("lightblue")translate([0,0,52.3-10])cylinder(r2=2.5/2,r1=4.5/2,h=20,$fn=30);
color("lightblue")translate([0,0,-36.7+20])cylinder(r=7/2,h=20,$fn=30);
translate([0,0,0])p1000_model_eppendorf();
//here is the luer lock comment out for printing
translate([0,0,-10]){
color("white")translate([0,0,-6.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-6.7-3])cylinder(r=12/2,h=3);
}
color("lime")translate([-7,3,30-15])pipettetip_aligner();
for(i=[0:7]){
translate([1.1+i*9,8,15])rotate([0,180,0])pipette_p1000_cap_assy();
}

//translate([0,z-29,0])color("pink")multichannel_cameramount_tslot_part();
//translate([0,z-29+13,5])multichannel_cameramount_tipholder(40);
*/
z = 40;

//translate([0,z-29,0])multichannel_cameramount_tipholder(40);

//drillblock_1inch();

//color("LightSeaGreen")translate([-10.5,-5,-7])pcrtube_plate();
// color("")translate([50-5,114+5.5+120,184+10]) rotate([0,0,-90])thermoblock_assy();









//multi_iverntech_railsystem(10);
//multi_iverntech_railsystem_dualactuator(10);
//color("")lm8uu_zdriver_assay(10);
//lm8uu_zdriver_assay_dual(10);

//lm8uu_zdriver_assay(10);
//labbot_pcr_config();
//stepper_driver_lm8uu_pla(4);

//translate([0,-60,0])
//bed_bar_clamp();
//zbed_assy_wider_threadedrod_noextrusion(110-50);
//multichannel_cameramount_tslot_part();


//bed_attach_assy();
//bed_attach_assy();
//front_threadrod_bed_adjustwheel();
//back_threadrod_bed_adjustwheel();
//extrusion_threadrod_clamp_noextrusion();
//extruder_attach_motormountthin();
//extruder_assy();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);

//extruder_attach_motormountthin();
//m5bearing_washer();
//hts_mydaa_ezabl();

//extruder_assy();

/*
*/



//translate([-42,-85,10])rotate([0,90,0])lm8uu_smz_glider_wider();
//clamp_bottom_simple_m8_smoothrodholder_for_z();
//color("silver")mod_lm8uu_pla();
//stepper_linear_m8nut_coupler_lm8uu();
//import("extruder/MyDD_Back.stl");
//endstop_z();
//zbedslot_516_smz_zbed_wider();
//zbed_assy_wider_threadedrod_noextrusion(60);
//zbedslot_516_smz_zbed_wider_cap();


 //translate([35-65-14,134-49,105])color("pink")extrusion_threadrod_clamp_noextrusion();
// translate([35+370+120-29,134-49,105])color("pink")extrusion_threadrod_clamp_noextrusion();

//bczamd_a8_hotbed_support_attachplate();

//translate([85,-26,42])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
//color("pink")import("extruder/MyDD_BLTouch.stl");
//hts_mydaa_ezabl();


module m5bearing_washer(){
difference(){union(){
cylinder(r=21/2,h=2-0.5-0.3);
translate([0,0,0])cylinder(r=8/2,h=3.5-1.75+0.3);
}
translate([0,0,-1])cylinder(r=5.8/2,h=20);
}
}








module hts_mydaa_ezabl(){
difference(){
union(){
translate([-3.5+7,0,0])cube([12,20,4]);
translate([-3,15,0])cube([23.5,6,4]);
translate([-3+2,15-18-14,0])cube([23.5-4,6+14,4]);
translate([-3+2,15-18-14,0])cube([23.5-4,6+3,24]);
//color("pink")import("extruder/MyDD_EZABL.stl");
}
translate([-3+3,18,-5])cylinder(r=4.3/2,h=40,$fn=30);
translate([-3+3+9,18,15])rotate([90,0,0])cylinder(r=13/2,h=40,$fn=30);
translate([-3+3+18,18,-5])cylinder(r=4.3/2,h=40,$fn=30);
}
}

//translate([85,-26,42])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
//import("extruder/MyDD_Spacer.stl");

//bczamd_a8_clamp();

//bearing_mount_smz();
//extrusion_threadrod_clamp_noextrusion();

/*
difference(){
cylinder(r=14/2,h=5,$fn=6);
translate([0,0,-2])cylinder(r=7.8/2,h=10,$fn=30);
}
*/
//motormount_smz();
/*
translate([0,30,0])mirror([0,1,0])motormount_smz();
*/
//clamp_bottom_simple_m8_smoothrodholder_for_z();

/*
bearing_mount_smz();
translate([0,45,0])mirror([0,1,0])
bearing_mount_smz();
*/
//extruder_assy();

// translate([-50,6,240])cable_support_extrusion();
//iverntech_slider_xshuttle_connect();

//multichannel_cameramount_tslot_part();
//multichannel_cameramount_tipholder(10);
//spring_stepper_linear_m8nut_coupler_lm8uu();
//backspacer();

//stepperconduitclamp();
//zbed_assy_wider_threadedrod_noextrusion(40);
//zbedslot_516_smz_zbed_wider();
//extrusion_threadrod_clamp();
//conduitclamp();
//lm8uu_smz_glider_wider();

//zbedslot_516_smz_zbed_wider();
//lm8uu_smz_glider_wider();
//endstop_multichannel_syringe();
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);
//zbedslot_516_smz_zbed_wider();

//multichannel_cameramount_tslot_part();
//slider_wall_holes_608bearing();
//slider_wall_holes_bottomclamp();
//spring_stepper_linear_m8nut_coupler_lm8uu();
/*
//color("lightblue")translate([0,0,62-102])cylinder(r=2.5/2,h=23,$fn=30);
//color("lightblue")translate([0,0,52.3-10])cylinder(r2=2.5/2,r1=4.5/2,h=20,$fn=30);
color("lightblue")translate([0,0,-36.7+20])cylinder(r=7/2,h=20,$fn=30);
translate([0,0,0])p1000_model_eppendorf();
//here is the luer lock comment out for printing
translate([0,0,-10]){
color("white")translate([0,0,-6.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-6.7-3])cylinder(r=12/2,h=3);
}
color("lime")translate([-7,3,30-15])pipettetip_aligner();
for(i=[0:7]){
translate([1.1+i*9,8,15])rotate([0,180,0])pipette_p1000_cap_assy();
}

//translate([0,z-29,0])color("pink")multichannel_cameramount_tslot_part();
//translate([0,z-29+13,5])multichannel_cameramount_tipholder(40);
*/
z = 40;

//translate([0,z-29,0])multichannel_cameramount_tipholder(40);

//drillblock_1inch();

//color("LightSeaGreen")translate([-10.5,-5,-7])pcrtube_plate();
// color("")translate([50-5,114+5.5+120,184+10]) rotate([0,0,-90])thermoblock_assy();



//pcrtuberack_8();


/*
*/
//pipettetip_aligner();

//washbowl_8tip();
//washstation(); 

z = -5;
//zbed_assy(z);
/*
module zbed_assy(z){
translate([0,0,z]){
zbed_smz_wider();
laser_zbed(144);
///translate([0,0,-10])laser_zbed(144);
//translate([25,130+120,118+10])rotate([0,-90,0])z_encoder_clamp_wiper();
}
}
*/


//multichannel_pipette_holder_linear_actuator_connect_cameramount();
//multichannel_pipette_holder_camera_example(30);
//tslot_clamp_filament_linearactuator_shuttle_noextrusion();
/*
x =100;
y = 200;
xshuttle_assy_wider(x,y);
tz = 50;
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem(tz);
*/
//translate([0,-2,8])color("pink")drillblock_1inch();
//thermoblock_assy();


//pipette_p20_cap_assy();
//pipette_p20_cap_assy();
//pcrtube();
//labbot_pcr_config();


//imagingblock_lightingside();

//imagingblock_base();
//color("LightSeaGreen")translate([-10.5,-5,-7])thermoblock_plate();
//1pipettetip_aligner_sm();

//drillblock_1inch();
//drillblock_1inch_lid_milling();
//translate([0,0,-45])drillblock_1inch_milling();
//thermoblock_assy();
//thermoblock_holder_1inch();
//drillblock_1inch();
//drillblock_1inch_lid_half();
//thermalblock_assy_half_3heater();
//actualthermoblock_1inch_half_3heater();
//translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_imagingside();

//imagingblock_lid();
//PCR_imagingmodule();

//translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingside();
//singletip_imager();
//p20_use();

//imagingblock_base();
//translate([0,0,82])rotate([0,180,0])p1000_model_eppendorf_pcrmon();


//pipette_loading_module_casebase();
//translate([0,0,-30])pipette_loading_module_casetop();


module extruder_clamp_pole(){
difference(){
union(){
translate([48,-5.6+3.2,0])color("pink")roundedRect([3.6,3.3,73],3.2,true);
translate([48-0.5,-5.6+3.2,0])color("pink")roundedRect([3.6,3.3,73],3.2,true);
}
translate([48-0.5,-5.6+3.2+30,20])rotate([90,0,0])cylinder(r=2.8/2,h=140,$fn=30);
translate([48-0.5,-5.6+3.2+30,50])rotate([90,0,0])cylinder(r=2.8/2,h=140,$fn=30);
}
}


module modify_extruder_base(){
translate([-9,0-5,0]){
difference(){union(){
//include<Direct-drive_hinged_extruder_for_E3DJ-Head_hot-end_Prusa_i3/MyExtruder_v1.2.scad>
import("extruder_base.stl");
translate([0,27,0])cube([20-6,15,6.5]);
translate([11,27+8,0])cube([10,15+25-8,6.5]);
translate([20,-30-6+5,0])cube([10,10,14]);
translate([20+1,-30-6+5,0])cube([10,10,24]);
translate([20-45,-30-6+5,0])cube([10,10,14]);
translate([20-1-45,-30-6+5,0])cube([10,10,24]);
}
translate([16,42.5,-3])cylinder(r=2.8/2,h=30,$fn=30);
translate([16,42.5+20,-3])cylinder(r=2.8/2,h=30,$fn=30);
translate([20,-30-6+10.5,0+5])rotate([0,90,0])#cylinder(r=2.8/2,h=40,$fn=30);
translate([20,-30-6+10.5,0+5+15])rotate([0,90,0])#cylinder(r=2.8/2,h=40,$fn=30);
translate([20-70,-30-6+10.5,0+5])rotate([0,90,0])cylinder(r=2.8/2,h=40,$fn=30);
translate([20-70,-30-6+10.5,0+5+15])rotate([0,90,0])cylinder(r=2.8/2,h=40,$fn=30);
}
}
}

module extruder_assy(){
modify_extruder_base();

//translate([-5,0-96+4,-6])import("Direct-drive_hinged_extruder_for_E3DJ-Head_hot-end_Prusa_i3/Fan_Duct.stl");

//color("silver")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/stepper/stepper_motor_rest.stl");
//color("black")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/stepper/cuerpo_predeterminado.stl");
color("white")translate([-8.4,40-7.5,7-0.5])filamentsensor();
color("silver")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/e3d_v6.stl");
//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/Extruder.stl");
//translate([0,0,3])import("extruder_with_filamentsensor.stl");
//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/hot_end_clamp.stl");
color("black")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/hot_end_fan_duct.stl");
//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/idler.stl");
//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/nema17.stl");

//color("silver")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/sensor.stl");

translate([-10+1,0,25])rotate([0,180,0])import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/sensor_mount.stl");

//translate([-64.8,0-3,13.5])rotate([0,0,0])color("grey")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/turbina.stl");

//import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/sensor_mount.stl");
translate([-60,0,0])rotate([0,0,0]){
translate([-18,0,0])color("black")import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/turbina.stl");
translate([48,0,0])rotate([0,0,0])mirror([1,0,0])import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/turbine_duct.stl");
import("E3D_v6_Direct_Drive_Extruder/E3D_extruder_mod/turbine_mount.stl");
}
/*
*/
}


/*
module extruder_assy(){

extruder_clamp_pole();
//translate([45,-5.6,0])color("pink")cube([6,4,80]);
color("grey")translate([21,2.5,53])rotate([90,0,0])import("extruder/BMG_M.stl");
color("silver")translate([25,-16,36])rotate([90,0,0])import("extruder/13003_nema17_25mm.stl");
translate([16.5,-20,41])rotate([90,0,90])color("silver")import("extruder/e3d_v6_hoted.stl");
import("extruder/MyDD_Back.stl");
color("peru")import("extruder/MyDD_Front.stl");
translate([6,18,-4])color("white")rotate([0,-90,0])import("extruder/40mm_fan.stl");
import("extruder/MyDD_Nozzle_.stl");
color("grey")translate([32,-66,-3])rotate([0,-90-40,90])import("extruder/5015_blowerFan_40mm.stl");
translate([20,-63,14])rotate([0,90,180])import("extruder/MyDD_Fan_Support.stl");
color("pink")import("extruder/MyDD_BLTouch.stl");
translate([85,-26,42])color("white")rotate([90,0,180])import("extruder/bltouch.stl");
import("extruder/MyDD_Spacer.stl");

}
*/


module pipettetip_aligner_sm(){
 difference(){ 
  cube([80,10,5]);
  for(i=[0:7]){ 
   translate([i*9+8,5,-0.1])cylinder(r1=5/2,r2=3,h=5.1,$fn=30);
  }
 }
}



module pipettetip_aligner(){
 difference(){ 
  translate([-9,-1,0])cube([80+18,12,8]);
  for(i=[-1:8]){ 
   translate([i*9+8,5,-1])cylinder(r=7.5/2,h=10,$fn=30);
   translate([i*9+8,5,4])rotate([90,0,0])cylinder(r=1.7/2,h=30,$fn=30);
  }
 }
}


module pipette_loading_module_casetop(){
difference(){
cylinder(r=18/2,h=8,$fn=30);
translate([0,0,-2])cylinder(r=(9.5)/2,h=18,$fn=30);
translate([0,0,2])cylinder(r=(14.3)/2,h=8,$fn=30);
}
}

module pipette_loading_module_casebase(){
difference(){
translate([0,-0,-22])cylinder(r=14/2,h=30,$fn=30);
//p1000_model_eppendorf_pcrmon();
scale(1.1)pipette_p1000_noextrusion_pcrmon(8.1,1,"n");
translate([0,-0,-42])cylinder(r=8/2,h=130,$fn=30);
}
}
//translate([0,0,5])eppendortube();
//translate([0,0,-27])color("lightblue")translate([0,0,78+6-10])cylinder(r1=2.3/2,r2=1/2,h=20,$fn=30);
/*
*/
module eppendortube(){
translate([0,0,-30]){
//color("blue")translate([0,0,78+6])cylinder(r1=6/2,r2=3/2,h=10,$fn=30);
color("blue")translate([0,0,78+6+8])cylinder(r1=4/2,r2=3/2,h=3,$fn=30);
%color("lightblue",0.8)difference(){
translate([0,0,80])cylinder(r1=7/2,r2=4/2,h=15,$fn=30);
translate([0,0,78])cylinder(r1=6/2,r2=3/2,h=15,$fn=30);
}
%color("lightblue",0.65)translate([0,0,95])sphere(r=2,$fn=40);
}
}
//pipette_p1000_noextrusion(8.1,1);

//labautobox();
//bottom_assy();
//top_assy();
//terminalfrontpanel();
//color("black")
//atxbackbackpanel();
//conduitclamp();
//labautobox_shelf();
//labautobox_microfluidics();

//labautobox_extrusions();

//peristaltic_pump();

//peristaltic_pump_holder(27.5);
//translate([-535-38-20,-10,-20])translate([145,240,200-40])peristaltic_pump();
//multichannel_syringe_to_labautobox_connect();
/*
translate([-535-38,200,-20])rotate([0,0,-90]){
translate([145,240,200-40])peristaltic_pump();
translate([165-60,240,200-40])peristaltic_pump();
translate([165-100,240,200-40])peristaltic_pump();
labautobox();
}
*/









//labbot_pcr_config();
//gripper_assembly_arms();
//gripperarm();
//gripper_pulley_motormount();
//gripperarm_with_tips();
//gripperarm_with_paddles();

//stroboscope_mod();
//color("lightblue")import("stroboscope_miuzei_mirror.stl");
//color("lime")import("stroboscope_miuzei_back.stl");
//color("green")translate([13.5,-30,15])rotate([-90,0,0])arducam_basecase();
//color("pink")translate([13.5,-30+8,15])rotate([-90,0,0])arducam_basecase_cover();
//translate([13.5,-30+8,15])rotate([-90,0,0])arducam_basecase_attachstem();

//translate([-150+10,-240-11+10,-130])valve_assy_4set_noslot();
//translate([-50+280,-41,100-1])rotate([90,0,0])multichannel_syringe_assy();


//translate([-17,-18,8])color("")PCR_imagingmodule();
//imagingblock_lightingside();
//imagingblock_lid();
//imagingblock_lid();
//translate([-17,-18,8])color("")PCR_imagingmodule();

//color("lightblue")translate([0+2.3,4.5,6])rotate([0,90,0])pcr_tube();

/*
singletip_imager();
for(i=[0:8]){
translate([70,50+(i*9),-20])cylinder(r=4.5/2,h=50,$fn=30);
}
*/
//p20_use();
//PCR_imagingmodule();
//imagingblock_lid();
//color("lime")translate([0,0,33])drillblock_1inch_lid();
//imagingblock_lightingside();

///pcrfeet();

//reagent_reservoir();
//washstation();
//thermoblock_assy();
//thermoblock_plate();
//drillblock_1inch();
/*
thermalblock_assy();
translate([40-85,60,-50])rotate([0,0,0])tslot20(50);
*/

//actualthermoblock_1inch_half();

module brightfield_background(){
difference(){
translate([0,2,-23])cube([100,2,47]);
for(i=[0,7]){
translate([20+i*9,12,-15])rotate([90,0,0])cylinder(r=4/2,h=40,$fn=30);
translate([20+i*9,12,-15+20])rotate([90,0,0])cylinder(r=4/2,h=40,$fn=30);
}
}
}
/*
translate([0,0,20])rotate([0,90,0])tslot20(100);
rotate([0,90,0])tslot20(100);
*/


//liquidlevel_cam();
//liquidlevel_cam_led();

module liquidlevel_cam_led(){
translate([-35,-27,6.1])difference(){
cube([80,15,5]);
translate([-1,10.8,2.2])rotate([-0,0,0])cube([82,5,7]);
translate([-1,2,3])rotate([-6,0,0])cube([82,9,7]);
translate([28,45-9-18-5,-1])cylinder(r=5/2,h=50,$fn=30);
translate([28+25,45-9-18-5,-1])cylinder(r=5/2,h=50,$fn=30);
}
}

module liquidlevel_cam(){
translate([-25,-32,0])difference(){
union(){
translate([-5,20-8,0])cube([20,16+5,6]);
translate([-5,20-8,0])cube([50,7,6]);
translate([-5+50,20-8,0])cube([20,16+5,6]);
}
translate([18,45-9-18,0])cylinder(r=4/2,h=50,$fn=30);
translate([18+25,45-9-18,0])cylinder(r=4/2,h=50,$fn=30);
for(i=[-20:-18]){
translate([5,45+i,3])cylinder(r=8.5/2,h=50,$fn=30);
translate([5,45+i,0])cylinder(r=4/2,h=50,$fn=30);
translate([5+50,45+i,3])cylinder(r=8.5/2,h=50,$fn=30);
translate([5+50,45+i,0])cylinder(r=4/2,h=50,$fn=30);
}
}
arducam_basecase();
}

/*
*/

//thermoblock_holder_1inch_half();
//tslot_hinge_thermalblock();
//translate([0,0.5-1.5,0])actualthermoblock_1inch_half_3heater();
//thermalblock_assy_half();
//thermalblock_assy_half_3heater();
//color("pink")translate([0,0-1.5,33])drillblock_1inch_lid_half();
//color("lime")thermoblock_holder_1inch_half();
//translate([-95,3,-40])rotate([90,0,0])thermocycle_brd();

//thermocycle_brd();



module thermocycle_brd(){

difference(){
union(){
translate([7,8.5,0])cylinder(r=10/2,h=4,$fn=30);
translate([7+42,8.5,0])cylinder(r=10/2,h=4,$fn=30);
translate([7,8.5+90.25,0])cylinder(r=10/2,h=4,$fn=30);
translate([7+42,8.5+90.25,0])cylinder(r=10/2,h=4,$fn=30);
}
translate([7,8.5,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7+42,8.5,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7,8.5+90.25,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7+42,8.5+90.25,-5])cylinder(r=2/2,h=14,$fn=30);
}
difference(){
union(){

translate([50,0,0])cube([20,20,4]);
cube([48+8,99+8,6]);
}
translate([62,10,-2])cylinder(r=3.8/2,h=30,$fn=30);
translate([4,4,2])cube([48,99,5]);
translate([7,8.5,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7+42,8.5,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7,8.5+90.25,-5])cylinder(r=2/2,h=14,$fn=30);
translate([7+42,8.5+90.25,-5])cylinder(r=2/2,h=14,$fn=30);

}
}


//color("pink")translate([0,0-1.5,33])drillblock_1inch_lid_half();
//translate([0,0.5-1.5,0])actualthermoblock_1inch_half();
//translate([25.5,26,0])rotate([0,0,180])tslot_hinge_thermalblock();
//color("lime")thermoblock_holder_1inch_half();

module pcrfeet(){
translate([37-85+5-0.3,-10+8+5-0.3,-50-2])
difference(){
union(){
//translate([-9,-9,0])cube([20.6+18,20.6+18,12]);
translate([10.3,10.3,0])cylinder(r1=38/2,r2=30/2,$fn=30,h=12);
}
translate([20+0.5+4,10.3,8])rotate([0,90,0])cylinder(r=8.7/2,h=20,$fn=30);
translate([20+0.5-4,10.3,8])rotate([0,90,0])cylinder(r=3.7/2,h=20,$fn=30);
translate([0,0,4])cube([20.6,20.6,10]);
}
}


module thermalblock_assy_half_3heater(){
translate([0,0,6]){
color("grey")translate([0,0-1.5,33])drillblock_1inch_lid_half();
//translate([0,0.5-1.5,0])actualthermoblock_1inch_half();
translate([0,0.5-1.5,0])actualthermoblock_1inch_half_3heater();
color("grey")thermoblock_holder_1inch_half();
}
translate([77.5,-1,-0])rotate([0,90,90])singletip_imager();
translate([42.5,-8,0])rotate([0,180,0])thermoelectric_module();
translate([42.5,-8,6])rotate([0,180,0])heatsink_plate();
translate([42.5,-8,0])rotate([0,180,0])heatsink();
translate([-8,-5,-38])color("black")fan_40mm();
pcrfeet();
translate([91,0,0])pcrfeet();
translate([37-85,-10+8,-50])rotate([0,0,0])tslot20(50);
tslot_hinge_thermalblock();
translate([43,-10+8,-50])rotate([0,0,0])tslot20(50);
translate([25.5,26,0])rotate([0,0,180])tslot_hinge_thermalblock();
}







module thermalblock_assy_half(){
translate([0,0,6]){
color("grey")translate([0,0-1.5,33])drillblock_1inch_lid_half();
translate([0,0.5-1.5,0])actualthermoblock_1inch_half();
color("grey")thermoblock_holder_1inch_half();
}
translate([77.5,-1,-0])rotate([0,90,90])singletip_imager();
translate([42.5,-8,0])rotate([0,180,0])thermoelectric_module();
translate([42.5,-8,6])rotate([0,180,0])heatsink_plate();
translate([42.5,-8,0])rotate([0,180,0])heatsink();
translate([-8,-5,-38])color("black")fan_40mm();
pcrfeet();
translate([91,0,0])pcrfeet();
translate([37-85,-10+8,-50])rotate([0,0,0])tslot20(50);
tslot_hinge_thermalblock();
translate([43,-10+8,-50])rotate([0,0,0])tslot20(50);
translate([25.5,26,0])rotate([0,0,180])tslot_hinge_thermalblock();
}




//thermoblock_assy();



module thermalblock_assy(){
color("lime")translate([0,0,33])drillblock_1inch_lid();
color("lime")thermoblock_holder_1inch();
difference(){
color("")translate([-15.5-5,-5,3-12.1])cube([5+5,88,5]);
color("")translate([-15.5-5+7,-5+20-0.5,3-12.1-50])cylinder(r=4.5/2,h=100,$fn=30);
color("")translate([-15.5-5+7,-5+20-0.5+46,3-12.1-50])cylinder(r=4.5/2,h=100,$fn=30);
}
translate([42.5,-8,0])rotate([0,180,0])heatsink();
translate([42.5,38,0])rotate([0,180,0])heatsink();
translate([-8,-5,-38])color("black")fan_40mm();
translate([-8,-5+46,-38])color("black")fan_40mm();
translate([0,0.5,0])actualthermoblock_1inch();
}



//thermoblock_assy();
//comment this out for printing
/*
translate([0,0,9])p1000_model_eppendorf();
color("lightblue")translate([0,0,-6.7])cylinder(r=5.5/2,h=102-13-40,$fn=30);
color("white")translate([0,0,-6.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-6.7-3])cylinder(r=12/2,h=3);
*/
//labbot_pcr_config();

//p1000_model_eppendorf();

//actual_thermoblock();
//thermoblock_assy();
//labbot_pcr_config();
//color("peru")translate([-4,0,2])thermoblock_lid();
//translate([-1.5-4,-2,3])thermoblock();
/*
*/
module thermoblock_assy(){
//translate([0,-2,8+36])color("lime")drillblock_1inch_lid();
color("LightSeaGreen")translate([-10.5,-5,-7])thermoblock_plate();
//translate([0,0,9])actualthermoblock_1inch();

translate([-2-3,0,0]){
translate([0,-2,8])color("")drillblock_1inch();
translate([0,0,9])actualthermoblock_1inch();
translate([0,-2,8+36])color("lime")drillblock_1inch_lid();

//translate([0,-2,8])color("peru")drillblock_1inch_milling();
//translate([0,-2,8+36+20])color("lime")drillblock_1inch_lid_milling();
}
//color("LightSeaGreen")translate([-10.5,-5,-7])thermoblock_plate();
translate([60-15+7,0,0]){
translate([0,-2,8])color("")drillblock_1inch();
translate([0,-2,8+36])color("lime")drillblock_1inch_lid();
translate([0,0,9])actualthermoblock_1inch();
}
/*
*/
/*
color("peru"){
translate([-4,0,2])thermoblock_lid();
translate([-1.5-4,-2,3])thermoblock();
}
color("tomato"){
translate([55-24,0,2])thermoblock_lid();
translate([-1.5+55-24,-2,3])thermoblock();
}
*/
}

//
//heater();
//thermoblock();
//projection(cut=false)
//translate([0,0,2])rotate([0,0,0])actual_thermoblock();
//translate([40,0,0])thermoblock_tslotconnect();
//translate([-40,59,2])rotate([0,90,0])tslot20(150);
//translate([40,59,-3])cube([30,18,4]);
//imagingblock_lid();








//microfluidics_set();



//terminalblock_outside();
//terminalblock_inside();

//translate([0,0,3])terminalblock_liquidlevel_wdp_jackpanel();
//   terminalblock_outside_xyzs_ht_jackpanel();

//microfluidics_set();
//terminalfrontpanel();
//terminalfrontpanel();
//labautobox_shelf_c();
//labautobox_shelf_support();

//multichannel_syringe_to_labautobox_connect();
//endstop_multichannel_syringe();

module atx_24pin_power_socket(){
atx_24pin_socket();
translate([-20,10,0])atx_power_socket();
translate([-15,28,0])cube([66.5,10,3]);
translate([-15,0,0])cube([66.5,10,3]);
translate([-15,-22,0])cube([13.2,22,3]);
translate([28,-22,0])cube([23.2,22,3]);
translate([-15,-26,0])cube([66.5,10,3]);
translate([48,-26,0])cube([4,22+42,3]);
}
module atx_24pin_socket(){
difference(){
import("BackPanel09.stl");
translate([-80,-34,-10])cube([300,43,30]);
translate([-80,-34,-10])cube([65,80,30]);
}
}


module atx_power_socket(){
difference(){
import("BackPanel09.stl");
translate([-80,-8,-10])cube([300,40,30]);
translate([-80,-34,-10])cube([98,80,30]);
}
}
//washbowl_8tip_drypad();
//washbowl_8tip_drypad_top();


//PCR_imagingmodule();
//translate([82+50,97-60,190-3.3])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("LemonChiffon")arducam_case_rtPCR();
//translate([26.5-5.5-32/2,7.5-3-sh-5+10+2.5,-2+6])cylinder(r=23.5/2,h=3,$fn=30);



 module PCR_imagingmodule(){
/*
 */
 //translate([82+50,97-60+53-2,190+2])rotate([0,0,90])imagingblock_lightingholder_led();
 //translate([82+50,97-60+53-2,190-6.5])rotate([0,0,90])imagingblock_lightingholder_whiteled();
 //color("aqua")translate([82+50,97-60+53-2,190])rotate([0,0,90])imagingblock_lightingholder_bluewhite();
 /*
 //deprecated
 translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingside_bluewhite();
 color("white")translate([82+50,97-60+53+1,190])rotate([0,0,90])imagingblock_diffuser_bluewhite();
 */
//translate([82+50,97-60+53,190])rotate([0,0,90])multitip_imager();


translate([82+50,97-60+53,190])rotate([0,0,90])color("grey")imagingblock_lightingside();

/*
 for(i=[0:7]){
 translate([82+50,97-60+53,190])rotate([0,0,90])for(jj=[-1,-0.5,0,0.5,1]){
 translate([jj,0,0]){
  color("blue")translate([-16-16+10-10.5-0.5+0.2,10.5+i*9-0.4+0.5,40-10+2-12.5-1.4-3+12+6.9-13])rotate([0,180-90,0])translate([12-3+gg/2-45,8.8-7.1+10-8+gg-40.3-13,14-1.75])rotate([-90,45,-90])cylinder(r=1.2/2,h=2.5,$fn=4);
  color("blue")translate([-16-16+10-10.5-0.5+0.2,10.5+i*9-0.4+1-1,40-10+2-12.5-1.4-3+12+6.9-13])rotate([0,180-90,0])translate([12-3+gg/2-45,8.8-7.1+10-8+gg-40.3-13,14-1.75])rotate([-90,45,-90])cylinder(r=1.2/2,h=2.5,$fn=4);
 }
  color("black")translate([-16-16+14,10.5+i*9-0.4,40-10+2-12.5-1.4-9])rotate([0,180,0])translate([12-3+gg/2-45,8.8-7.1+10-8+gg-40.3-13,14-1.75])rotate([-90,45,-90])cylinder(r=1.4/2,h=15.5,$fn=30);
  color("black")translate([-16-16+10-10.5-0.5,10.5+i*9-0.4,40-10+2-12.5-1.4-3+2])rotate([0,180-90,0])translate([12-3+gg/2-45,8.8-7.1+10-8+gg-40.3-13,14-1.75])rotate([-90,45,-90])cylinder(r=1.2/2,h=8.5,$fn=30);
 }
 }
*/

/*
 translate([82+51,97-60+53,190-1])rotate([0,0,90])for(i=[0:7]){
  translate([-16-15.5,6+0+8.75+(i*9)-0.5,40-10+2-16-10])translate([0,0,82])rotate([0,180,0])p1000_model_eppendorf_pcrmon();
  translate([-16-15.5,6+0+8.75+(i*9)-0.5,40-10+2-16-10])color("lightblue")p20_use();
  }
*/

translate([82+50,97-60,190])rotate([0,0,90])imagingblock_base();
translate([82+50,97-60,190])rotate([0,0,90])color("peru")imagingblock_lid();

translate([0,-34+2.5,0]){
translate([82+50,97-60,190-3.3])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("")arducam_case_rtPCR();
translate([82+50,97-60+15,190-3.3])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("")arducam_case_rtPCR_filter();
 }
translate([0,-31,0])color("grey"){
translate([82+50-5,97-60+6+13,190-3.3+6+2])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("")cylinder(r=26/2,h=5,$fn=30);
 translate([82+50,97-60+31,190])rotate([0,0,90])imagingblock_imagingside();
 }
/*
*/

/*
translate([0,0,4]){
//color("white")translate([82+50,97-60+53+8,190])rotate([0,0,90])color("")imagingblock_lightingside_diffuser();
//color("blue")translate([82+50,97-60+53+7.2,190])rotate([0,0,90])color("")imagingblock_lightingside_diffuser();
color("aqua")translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingholder();
}
*/



/*
translate([82+50-15,97-60+18,190+11]){
 for(i=[0:7]){
 translate([-i*9,0,0])rotate([0,0,90])color("pink") p20_use();
 }
}
*/


}





//translate([8,13,0])rearm_microfluidics_mount();
//translate([8,13,-10])microfluidics_power_mount();
//translate([-30,-50,0])import("/Users/richard/Downloads/Bottom.stl");
module rearm_microfluidics_mount(){
difference(){
union(){
translate([0,-20,0])color("pink")cube([108,70+25,3]);
translate([0,-20,0])color("pink")cube([108,10,14]);
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
}

translate([0+25,-20+20,-2])color("pink")cube([108-50,70+20-40,6]);
dia = 2.9;
translate([25,2.5+6,8])rotate([90,0,0])cylinder(r=dia/2,h=40,$fn=30);
translate([25+50,2.5+6,8])rotate([90,0,0])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8,2.5+6,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+16,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);


cdia = 2.4;
translate([5,0,0]){
translate([5,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([5+87,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([27,0-20+96-3,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([71,0-20+96-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
}



}
}

module microfluidics_power_mount(){
difference(){
union(){
translate([0,-20,0])color("lime")cube([108,70+25,3]);
//translate([0,-20,0])color("pink")cube([108,10,14]);
/*
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
*/
}

translate([0+25,-20+20,-2])color("pink")cube([108-50,70+20-40,6]);
/*
dia = 2.8;
translate([7.8,2.5+6,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+16,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);
*/

cdia = 2.7;
translate([5,0,0]){
translate([4,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([99-5,0-20+98.5-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([5+87,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([27,0-20+96-3,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([71,0-20+96-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
}
}
}

module actual_thermoblock_metalmount(){
difference(){
union(){
translate([5,0,0])cube([25-5,100,2]);
translate([5,27,0])cube([10,50,13]);
}
translate([12.5,20,-3]){
translate([-20,20,12])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([-20,15+30,12])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
cylinder(r=5/2,h=50,$fn=30);
translate([0,67,0])cylinder(r=5/2,h=50,$fn=30);
}
}
}
/*
*/
//translate([50-10-20+x+121.5,200-14+y-100-10,279])rotate([180,90,0])
//wheel_camera_assay();

/*
*/
tcl = [155/255,155/255,155/255];

thcl = [155/255,155/255,155/255];

//x = 66-225-10+21-11.5;
//x = 66-149-43;
//x = 66-149-43+300-6;
//x = 129;
//x = -32+99+63;
//x = -172+138-120+0.5-15-3.5;//+17.5;//+109;//+230+125;
//x = 66-149-43+120-8;
//x = 66-149-43+120-8-100-40;
//y = -120.5;
//y = 20.5+118-99-48+9+11.5-32//-54-57;//+9;
//y = 20.5;
//y = -138;
//y = -68-9;
//tz = 10;
echo("testing");
echo(y);
//multichannel_cameramount_tslot_part();
/*
multichannel_syringe_assy();
translate([-126,60,21])rotate([0,0,0])endstop_multichannel_syringe();
translate([-126,-11.4,97])rotate([-90,0,0])syringe_endstop_flag();
*/




//latest pcr setup
module labbot_fff_config(){
//y = 20.5+118-3-97+40-70+9+18+4.5+82-46-140-80;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345-331.5-16.5;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345+9.5-9+9;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;

//pcb_extruder();
/*
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
xshuttle_assy_wider(x,y);
translate([0,0,-24])corexy_beltsetup_wider(x,y); 
*/
translate([0,0,-29.5])xymotor_assy_wider();
outside_frame_wider(tcl,thcl,x,y);
///outside_frame_wider_higher(tcl,thcl,x,y);
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);
}


//latest pcr setup
module labbot_fff_config_higher(){
//y = 20.5+118-3-97+40-70+9+18+4.5+82-46-140-80;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345-331.5-16.5;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345+9.5-9+9;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
translate([0,0,114])pcb_extruder_higher();
translate([50-10-20+x,200-14+30+y,700-50+37-35+114])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
translate([0,0,114])xshuttle_assy_wider(x,y);
//translate([-70,-25+50,z+100])zbed_multichannel_setup_wider_combine(z);
translate([0,0,-24+114])corexy_beltsetup_wider(x,y); 
translate([0,0,-29.5+114])xymotor_assy_wider_enclosure();
/*
*/
//outside_frame_wider(tcl,thcl,x,y);
translate([0,-60,0-50])zbed_assy_wider_threadedrod_noextrusion_higher(110-50);
outside_frame_wider_higher(tcl,thcl,x,y);
/*
translate([0,0,-50]){
 panel_higher();
}
*/
//translate([-54-20+20,410-0.5,505-114+80+40-30+114])rotate([0,90,0])tslot20(630-40); // 20
}



//latest pcr setup
module labbot_pcr_config_higher(){
//y = 20.5+118-3-97+40-70+9+18+4.5+82-46-140-80;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345-331.5-16.5;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345+9.5-9+9;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
//translate([0,0,114])pcb_extruder_higher();
//translate([50-10-20+x,200-14+30+y,700-50+37-35+114])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
translate([50-10-20+x,200-14+30+y,700-50+37-35+110])rotate([180,0,90])multi_iverntech_railsystem(tz);
translate([0,0,114])xshuttle_assy_wider(x,y);
translate([-70,-25+50,z+100])zbed_multichannel_setup_wider_combine(z);
translate([0,0,-24+114])corexy_beltsetup_wider(x,y); 
translate([0,0,-29.5+114])xymotor_assy_wider_enclosure();
/*
*/
//outside_frame_wider(tcl,thcl,x,y);
translate([0,0,100])conduit_tubes(x,y,(tz+60-20-mtz*2));
translate([0,-60,0-50])zbed_assy_wider_threadedrod_noextrusion_higher(110-50);
outside_frame_wider_higher(tcl,thcl,x,y);
translate([0,0,-50]){
 panel_higher();
}
/*
*/
translate([0,-65,95]){
translate([-17,-18,8])color("Bisque")PCR_imagingmodule();
washstation(); 
translate([0,5,0])gantry_shelves_wider(); 
}



//translate([-54-20+20,410-0.5,505-114+80+40-30+114])rotate([0,90,0])tslot20(630-40); // 20
}

















//latest pcr setup
module labbot_pcr_config(){
//y = 20.5+118-3-97+40-70+9+18+4.5+82-46-140-80;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
y = 20.5+118-3-60-144-70+240-180+202-200+10;//+251.5; //-9*11-116-50+13;//+80+6-32-45;//-40; //reagent reservoir
x = 66-149-43+200-8+160-373+400-271+2-2-110-15+200;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345-331.5-16.5;//-385; //+385-235;//+122;//-222.5-20;
//x = 66-149-43+200-8+160-373+400-381.5-13+345+9.5-9+9;//-385; //+385-235;//+122;//-222.5-20;
z =  28-0;
mtz = 25-20-20+49-5;
tz = 23+10-0+mtz-25+26-20+2-10;//+15;
//translate([0,0,z-40])plateobjects_nomastermix_tubes(z);
//multichannel_cameramount.scad
/* Note have to hack little to show the up and down movement
//line 189 needs to be manually modified
//module pipette_p1000_noextrusion(dia,fl,arg,z){
*/
translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem(tz);
//for direct drive extruder use this version
//translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])multi_iverntech_railsystem_directdrive(tz);
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);

//This is the extruder rendition
//translate([50-10-20+x,200-14+30+y,700-50+37-35])rotate([180,0,90])extruder_railsystem(tz+20);
//conduit_tubes_extruder(x,y,(tz+60-20-mtz*2));
//translate([0,-60,0])zbed_assy_wider(110-50);
/*
*/
//This is the circuit extruder rendition
//pcb_extruder();
/*
*/
//extruder_microfluidics_set();
/*
and this function module stepper_driver_lm8uu_pla(z){ at 203 in the file xgantry_modular_fix.scad 
*/
//translate([0,-60,0])zbed_assy_wider_threadedrod_noextrusion(110-50);
xshuttle_assy_wider(x,y);
translate([0,0,-24])corexy_beltsetup_wider(x,y); 
translate([0,0,-29.5])xymotor_assy_wider();
outside_frame_wider(tcl,thcl,x,y);
translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);
conduit_tubes(x,y,(tz+60-20-mtz*2));
color("lightgrey")translate([-76,-96,300])rotate([0,90,180])PCR_cam_raspi();
translate([0,0,-10]){
translate([-17,-18,8])color("Bisque")PCR_imagingmodule();
washstation(); 
gantry_shelves_wider(); 
}
/*
*/
translate([0,0,-12])zbed_smz_wider_nomove();
microfluidics_set();
//XYMotorMount_corexystack(x-235+200,y-80+100);
}












module PCR_cam_raspi(){
translate([30,-100,-13-0.5])import("cytokinetics/PCRcam_rpi4_case_top.stl");
import("cytokinetics/PCRcam_rpi4_case_bottom.stl");
}




//translate([50-10-20+x,200-14+30+y,700-50])rotate([180,0,90])iverntech_railsystem(tz);
//translate([50-10-20+x,200-14+30+y,700-50])rotate([180,0,90])gripper_assembly_paddles();
/*
//syringe_endstop_flag();
//translate([-126,60,21])rotate([0,0,0])endstop_multichannel_syringe();
*/
//translate([50-10-20+x+121.5,200-14+y-100-10,279])rotate([180,90,0])wheel_camera_assay(tz);


/*
//translate([x-81,y-90,tz])rotate([0,0,0])pipette_tips();
//imagingplateslideobjects(z);
processingplateslideobjects(z);
fabricationplateslideobjects(z);
*/
//translate([0,0,z-40])plateobjects_nomastermix_nobox(z);
/*
translate([0,0,z-40])plateobjects(z);
*/


/*
translate([x-81,y-90,tz])rotate([0,0,0])piezo_tip();
*/
/*
*/
/*

*/

/*

*/


module processingplateslideobjects(z){
 for(i=[0:3]){
 for(j=[0:6]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 for(i=[4:5]){
 for(j=[4:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}
 translate([42.5+85+220,-25+214,z+144-0])rotate([0,0,90])import("384_well.stl");
 translate([42.5+85+220+88,-25+214,z+144-0])rotate([0,0,90])import("384_well.stl");
 /*
 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }
*/
}

module fabricationplateslideobjects(z){
 for(i=[1:5]){
 for(j=[0:6]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}
 for(i=[0:1]){
 for(j=[0:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 /*
*/
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }
}




module imagingplateslideobjects(z){
 for(i=[1:4]){
 for(j=[0:7]){
 translate([i*(76.5),51-(j*25),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides_nogaskets();
}
}
}

 /*

 for(i=[0:1]){
 for(j=[0:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }

*/


}












module avid_slides(){
 color("lightblue")cube([75,25,1]);
 for(i=[0:7]){
 difference(){
 union(){
 translate([3+i*9-2,2-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+8-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+16-2,1])color("black")cube([9,9,5]);
 }
 translate([3+i*9,2,-1])cube([5,5,10]);
 translate([3+i*9,2+8,-1])cube([5,5,10]);
 translate([3+i*9,2+16,-1])cube([5,5,10]);
 }
 translate([3+i*9,2,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+8,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+16,1])color("white")cube([5,5,1]);
 }
}


module avid_slides_nogaskets(){
 color("lightblue")cube([75,25,1]);
 for(i=[0:7]){
 /*
 difference(){
 union(){
 translate([3+i*9-2,2-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+8-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+16-2,1])color("black")cube([9,9,5]);
 }
 translate([3+i*9,2,-1])cube([5,5,10]);
 translate([3+i*9,2+8,-1])cube([5,5,10]);
 translate([3+i*9,2+16,-1])cube([5,5,10]);
 */
 //}
 translate([3+i*9,2,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+8,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+16,1])color("white")cube([5,5,1]);
 }
}









module plateobjects(z){
 for(i=[0:0]){
 translate([i*(85*2),0,0]){
 translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 /*
 translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 */
 }
 /*
 if(i==1){
  translate([i*(85*2),-120,0]){
 translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 }
 }
 */
 }
 /*
 translate([2*(85*2),0,0])translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 translate([2*(85*2)-85,-120,0])translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 translate([82,97-30,190])rotate([0,0,90])thermoblock();
 translate([82+86,97-30,190])rotate([0,0,90])thermoblock();
 translate([82+86,97,190])rotate([0,0,90])plugblock();
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock();
 */
}



module plateobjects_nomastermix_tubes(z){
 for(i=[2:5]){
 if(i>-1){
 if(i==2){
 //translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_missrow(z,-1);
 //translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model(z,-1);
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_fluid(z,-1);
 } else { 
 //translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model(z,-1);
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_fluid(z,-1);
 }
 }
 if (i>1){
 if (i==5){
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_smaller(z,-1);
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0]) mineraloil_reservoir(z);
 } 
 else{
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_fluid(z,-1);
 }
 }
 }
 /*
 */

 color("")translate([50-5,114+5.5+120,184+10]) rotate([0,0,-90])thermoblock_assy();
 //translate([82+86,97-5,190])rotate([0,0,90])thermoblock();
 //translate([82+86,97,190])rotate([0,0,90])plugblock();
 //translate([82+50,97-60,190])rotate([0,0,90])imagingblock();
}





module plateobjects_nomastermix(z){
 for(i=[2:5]){
 if(i>-1){
 if(i==2){
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_missrow(z,-1);
 } else { 
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model(z,-1);
 }
 }
 if (i>1){
 if (i==5){
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_smaller(z,-1);
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0]) mineraloil_reservoir(z);
 } 
 else{
  translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_smaller(z,-1);
 }
 }
 }
 /* 
 */
 color("")translate([50-5,114+5.5+120,184+10]) rotate([0,0,-90])thermoblock_assy();
 //translate([82+86,97-5,190])rotate([0,0,90])thermoblock();
 //translate([82+86,97,190])rotate([0,0,90])plugblock();
 //translate([82+50,97-60,190])rotate([0,0,90])imagingblock();
}




module plateobjects_nomastermix_nobox(z){
 translate([-24+0*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 /*
 for(i=[0:5]){
 if(i==0){
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 } else { 
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 }
 if (i==2){
 translate([-24+i*(85-8),-25+214-85-120,160]) plugbox_model(z);
 }
 if (i>2){
 translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 }
 }
 */
 translate([82,97-5,190])rotate([0,0,90])thermoblock();
 translate([82+86,97-5,190])rotate([0,0,90])thermoblock();
 //translate([82+86,97,190])rotate([0,0,90])plugblock();
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock();


}



module pipette_tips(){
for(i=[0:7]){
translate([261+9*i,193,200])pipette_p300_lts_model();
}
}

module piezo_tip(){
for(i=[0:0]){
translate([261+9*i,193,200])piezo_model();
}
}



module extruder_microfluidics_set(){
extruder_valves_to_pipettes_bundle();
}

module microfluidics_set(){
/*
translate([-75,165,380])rotate([0,-90,0])multichannel_syringe_assy();
valve_assy_8set();
waterbottle();
wastebottle();
translate([-100,-174,250])rotate([0,0,-180])nalgene_bottle_assy_electrocaloric();
pressurecompensation_tubing();
//washstation_tubing();
//wastestation_tubing();
valve_assy_8set();
pressurecomp_to_valves();
peristaltic_pump_mnts();
syringes_to_valves();
*/
valves_to_pipettes_bundle();
}





module bottle_cap(){
//tubing to pump
//color("lightblue")translate([53,-50,40])cylinder(r=3.2/2,h=15);
/*
for(i=[0:10]){
color("lightblue")translate([53+i,-50+i,60])sphere(3.25);
}
*/
color("black")translate([38,-30,-10])cylinder(r=9.8/2,h=50);
color("white")translate([53,-50,-10])cylinder(r=6.5/2,h=50);
color("white")translate([37,-38-15,-10])cylinder(r=6.5/2,h=50);
//color("white")translate([18,-38-10,-10])cylinder(r=6.5/2,h=50);
color("lightblue")rotate([90,0,0])import("Cap.STL");
difference(){union(){
translate([38,-38,15])color("")cylinder(r=70/2,h=3);
color("lightblue")rotate([90,0,0])import("Cap.STL");
}
translate([38,-30,-10])cylinder(r=9.8/2,h=29);
translate([53,-50,-10])cylinder(r=6.5/2,h=29);
translate([37,-38-15,-10])cylinder(r=6.5/2,h=29);
//translate([18,-38-10,-10])cylinder(r=6.5/2,h=29);
translate([38+23,-28,-10])cylinder(r=3/2,h=29);
translate([38-10,-38-20,-10])cylinder(r=3/2,h=29);
translate([38-22,-38+10,-10])cylinder(r=3/2,h=29);
}
}










module nalgene_bottle_assy_electrocaloric(){
 translate([40+5,-42,80])color("")pressurecompensation_bottle();
 //translate([6.5,-6.5,185])nalgene_cap_for_electrocaloric();
 color("lightblue")rotate([90,0,0])import("Bottle.STL");
 translate([6.5,-6.5,185])bottle_cap();
}

module pressurecompensation_bottle(){
difference(){
union(){
cylinder(r=55,10);
translate([-10,38,0])cube([20,25,25]);
translate([-70,-1,0])cube([30,20,30]);
translate([-70,-1-55,0])cube([10,75,30]);
translate([-70,-1-55,0])cube([10,18,40]);
}
translate([0,0,-1])cylinder(r=93/2,40);
translate([-5,30,-3])cube([10,40,29]);
translate([-80,-47,10])rotate([90,0,90]){cylinder(r=5.6/2,h=50);translate([0,0,15.1])cylinder(r=10.2/2,h=5);}
translate([-80,-47,30])rotate([90,0,90]){cylinder(r=5.6/2,h=50);translate([0,0,15.1])cylinder(r=10.2/2,h=5);}
//translate([-80,0,20])rotate([90,0,90])cylinder(r=5.6/2,h=50);
//translate([-65,0,20])rotate([90,0,90])cylinder(r=11.6/2,h=50);
translate([-30,55,15])rotate([90,0,90])cylinder(r=4.6/2,h=50);
}
}






module washstation(){
translate([150+140,3-100+55,-1+18+243])stroboscope_mod();
translate([420+50+35,-164-100,92])rotate([0,180,90])multichannel_tipremoval();
translate([230,0-5,220])rotate([0,0,-90]){

translate([0,-80,0]){

translate([0,-30,0]){
color("DarkSeaGreen")
translate([0,25,-1+18])washbowl_8tip();
color("DarkSeaGreen")
translate([0,25,-1])washbowl_8tip_base();
translate([0-37,3+22,-1+18])washbowl_8tip_drypad("DarkSeaGreen");
}
/*
*/
/*
*/
wash_waste_tubing();


/*
translate([0,102-10,0]){
color("lightseagreen")
//color("LawnGreen")
translate([0,25,-1+18])washbowl_8tip();
color("lightseagreen")
translate([0,25,-1])washbowl_8tip_base();
translate([0-37,3+22,-1+18])washbowl_8tip_drypad("lightseagreen");
//translate([0-37,3+22,-1+18])washbowl_8tip_drypad("Orchid");
}
*/

//color("royalblue")
//reagent_reservoir();


translate([0,-13+30,10])difference(){
color("pink")translate([0-37+100,3+22+220,-1+18-220-105])cylinder(r=80,h=150,$fn=30);
translate([0-37+100,3+22+220,-1+18-220+5])cylinder(r=80-10,h=150,$fn=30);
}
/*
*/
}
//translate([0,3-100,-1+18])washbowl_8tip();
/*
color("tan"){
translate([0,3-100,-1+18])reagentbasin_8tip();
translate([0,3-100,-1])washbowl_8tip_base();
}
*/
//translate([0-1,3+150,16]) drypad_shelf();
}
}


module reagent_reservoir(){
//color("royalblue")
translate([0,102+102,0]){
color("LawnGreen")translate([0,25,-1+18])reservoir_top();
color("mediumSeaGreen")translate([0,25,-1])reservoir_base();
translate([47,47,-4])rotate([0,180,0]){
thermoelectric_module();
translate([11,3.5,28])color("black")fan_40mm();
heatsink();
master_mix_reservoir();
}
}
}





module cable_support_lid(){

difference(){
translate([-40,15-10,200-10])
union(){
cube([5,20,43]);
//translate([0,20,15])cube([5,75,10]);
}
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=3.2/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=3.2/2,h=40);
}
}


module cable_support_ghead_lid(){
difference(){
translate([-40,15-10,200-10])
union(){
cube([5,20,43]);
//translate([0,20,15])cube([5,75,10]);
}
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=3.2/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=3.2/2,h=40);
}
}


module cable_support(){
//tslot20(300);
difference(){
union(){
translate([-175,3,200])rotate([0,0,0])tslot20innerbracket();
translate([-15,5,200-8])cube([30-10,20,40]);
translate([0,5,200-8-40+5])cube([5,20,20]);
}
translate([-23,5,200-8])
translate([12,25,20])rotate([90,90,0])cylinder(r=25/2,h=30);
translate([-35,5-1,200-3-10])cube([30-10,30,30]);
translate([-40,15,200-19-17])rotate([0,90,0])cylinder(r=5.7/2,h=300);
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=2.8/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=2.8/2,h=40);
}
}


module cable_support_ghead(){
//tslot20(300);
difference(){
union(){
//translate([-175,3,200])rotate([0,0,0])tslot20innerbracket();
translate([-15,5,200-8])cube([30-10,20,40]);
//translate([0,5,200-8-40+5])cube([5,20,20]);
translate([0,5+15,200-8-40+5+15+27])cube([45,5,25]);
}
translate([-23,5,200-8])
translate([12,25,20])rotate([90,90,0])cylinder(r=25/2,h=30);
translate([-35,5-1,200-3-10])cube([30-10,30,30]);
translate([-40+57,15+80,200-19-17+48])rotate([90,0,0])cylinder(r=5.7/2,h=300,$fn=30);
translate([-40+77,15+80,200-19-17+48])rotate([90,0,0])cylinder(r=5.7/2,h=300,$fn=30);
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=2.8/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=2.8/2,h=40);
}
}








module cable_support_extrusion(){
difference(){
cube([45,18,4]);
translate([10,9,-1])cylinder(r=5/2,h=20);
translate([35,9,-1])cylinder(r=5/2,h=20);
}
}


//this is where I need to modify
module zbed_smz_wider_nomove(){
translate([0,0,-15]){
translate([0,0,15]){
translate([15-65,120-50-54,141.5+42])rotate([0,90,0])tslot20(582);
translate([15-65+170,120-50-54+25,141.5+42])rotate([-90,0,0])tslot20(270);
translate([15-65+370,120-50-54+25,141.5+42])rotate([-90,0,0])tslot20(270);
translate([75-1-355+817,-55+464+2.5-191-180,6+272-300])rotate([180,-90,0])tslot20innerbracket();
translate([75-1-355+817-590,-55+464+2.5-191-180,6+272-300])rotate([180,-90,0])mirror([0,0,1])tslot20innerbracket();
}
translate([15-65,120+100+35-54-7+110,141.5+42+14])rotate([0,90,0])tslot20(582);
translate([75-1-355+817,-55+464+2.5-191+110,6+272-300+20-5])rotate([180,-90,0])tslot20innerbracket();
translate([75-1-355+817-590,-55+464+2.5-191+110,6+272-300+20-5])rotate([180,-90,0])mirror([0,0,1])tslot20innerbracket();
}
}





module corexy_beltsetup_wider(x,y){
px = 0;
py = -30;
dx = x - px;
dy = y - py;
translate([0,0,-5]){

translate([7+11-66,-72-45,355])color("black")rotate([-0.2,0,0.5])cube([2,500+45,5]);
translate([7-50,-25+457,355-1])color("black")rotate([0,1,-2.5])cube([510+42,3,5]);
translate([7+475+42,-25+442,355+3])color("black")rotate([0,-180-0.5,0.4])cube([510+42,3,5]);
translate([7+415-11+76+42,-25-50-45,355])color("black")rotate([-0.2,0,-0.4])cube([2,490+45,5]);
/*
*/
//x left
translate([20-50+7,-25+180-37+dy+19,350+2.5])color("black")rotate([0,0,-1])cube([200-20+dx+24-2,3,5]);
translate([7+20-50,-25+218-40+dy+19,350+2.5])color("black")rotate([-0,0,-180+1+90])cube([2,183+dx+28,5]);

//x right
translate([7+415-2.5+43+42,-25+218+dy-41+19,350+2.5])color("black")rotate([-0,0,-180-0.5-90])cube([2,163-dx+12+80,5]);
translate([417-2.5+47+42,-25+181-2+dy-40+19,355+2.5])color("black")rotate([0,180,0+0.5])cube([215-dx-28+80-4,3,5]);

//y front side
translate([7+18-52,-78-45,355])color("black")rotate([0,0,0.5])cube([2,184+dy+25+45,5]);
translate([7+415-17+62+42,-78-45,355])color("black")rotate([0,0,-0.5])cube([2,184+dy+25+45,5]);

//y back side
translate([7+415+55+42,-25+218+210,342])color("black")rotate([0,0,-180-2])cube([2,180+60-dy-12,5]);
translate([7-43,-25+218+183+28,342])color("black")rotate([0,0,-180+2])cube([2,180+65-dy-12,5]);
}
}







module backextruder_clamp(){
difference(){
union(){
translate([0,40-1,0])cube([15,6,20]);
cube([15,55,6]);
translate([11,7.5-0.765/2,-2])cube([4,5.765,5]);
}
translate([7.5,10,-6])cylinder(r=4.7/2,h=12);
translate([7.5,50,22-6])rotate([90,0,0])cylinder(r=4.7/2,h=30);
}
}


module x_encoder_support_wider(){
translate([30-10,30,15])rotate([0,0,90])color("")backextruder_clamp();
translate([30-10,350+190,15])rotate([0,0,90])color("")backextruder_clamp();
translate([-50+5,40,16+25])
//color("")
color("")
cube([18,500,3]);
translate([-50,400+165,16])rotate([90,0,0])tslot20(385+165);
}




module xshuttle_assy_wider(x,y){
/*
xshuttle_assy_wider
22. tslot20(552)
23. tslot20(100)
24. tslot20(100)
25. tslot2040(100)
*/


translate([0,y,0]){
//translate([20-70,217-23,400-78])rotate([0,0,-90])x_encoder_support_wider();
translate([0,-28,0]){
translate([43-25-55,206.5-15-41.5+28+19,-60+430-28])rotate([-90,90,-90])tslot20(552); //22
translate([43-25-55+45,206.5-15-41.5+28+39,-60+430-28-4])rotate([-0,0,-90])color("silver")cube([12,450,8]);
}
/*
*/
translate([0,0,-28]){
//translate([-27/2+12/2-48+6,55-y-65,310-6+5])cube([12,400,8]);
translate([0,-60-y+20,0]){
translate([1,0-20,284+28])rotate([90,0,90])iverntech_connector();
translate([1,0+170,284+28])rotate([90,0,90])iverntech_connector();
translate([1,0+350,284+28])rotate([90,0,90])iverntech_connector();
}
translate([-27/2+12/2-48+6+12,55-60-30-60+15-y+20,310-6+5])color("silver")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
}
translate([-49.5+12,345,300-11])rotate([0,180,180])ivernetech_slider_module_wider();
translate([440.5+42,0,-28])mirror([1,0,0]){
translate([0,-60-y+20,0]){
translate([1,0-20,284+28])rotate([90,0,90])color("")iverntech_connector();
translate([1,0+170,284+28])rotate([90,0,90])color("")iverntech_connector();
translate([1,0+350,284+28])rotate([90,0,90])color("")iverntech_connector();
}
//color("")translate([-27/2+12/2-48+6,-10-y,310-6+5+28])
//cube([12,400,2]);
translate([-27/2+12/2-48+6+12,55-0-65-50-y+20,310-6+5])color("silver")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2+10,45/2-10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2-10,45/2+10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2+10,45/2+10,-5-30])cylinder(r=3.7/2,h=80);
}
translate([-49.5+12,345,300-11+28])rotate([0,180,180])ivernetech_slider_module_wider();
}
/*
*/
}
}









module slider_assy(x,y){
translate([0,y,0]){
translate([0,-28,0]){
translate([x,0,0]){
//translate([190,52,420])rotate([180,0,90])color([160/255,160/255,160/255])camera_assy();
//translate([190+80,52+70+5.8,420-22-20])rotate([180,0,90])color([220/255,220/255,200/225])rotate([180,0,90])lasermount_assy();
//translate([15-25-150,206.5,-60+400])sandwich_sliderwheel_assy();

slider_front_assy_multichannel();
slider_back_assy();
}
}
}
}



module XY_motor_x2higher_3dprint(){
//bearings stuff
translate([-50,0,400])translate([(62.8/2*0.65),(64.32*0.65),-15]){
  color("silver")translate([0,0,15])cylinder(r=(5.7)/2,h=25);
  color("silver")translate([0,0,30])cylinder(r=(13)/2,h=5);
  translate([0,0,30])color("black")cylinder(r=(13+8)/2,h=5);
  color("silver")translate([0,0,30])cylinder(r=(17)/2,h=1);
  color("silver")translate([0,0,35])cylinder(r=(17)/2,h=1);
}
/*
*/
translate([-50,0,400])scale([0.65,0.66,1])difference(){
union(){
color("silver")cube([63.84,94.32,3.3+5]);
//color("silver")cube([63.84,94.32,3.3+5-3.3]);
}
translate([40,0,-0.2])rotate([0,0,-30])cube([63.84-20,94.32,13.5]);
translate([62.8/2,64.32,-0.1])cylinder(r=35.8/2,h=30);
translate([7.38,40.82,-0.1])cylinder(r=4.92/2,h=30);
translate([7.38,40.82,3.3])cylinder(r=11/2,h=5);
translate([54.88,87.52,-0.1])cylinder(r=4.92/2,h=30);
translate([54.88,87.52,3.3])cylinder(r=11/2,h=5);
translate([7.68,15.2,-0.1])cylinder(r=6.36/2,h=30);
translate([7.68,15.2,3.3])cylinder(r=13.84/2,h=5);
translate([41.04,15.2,-0.1])cylinder(r=6.36/2,h=30);
translate([41.04,15.2,3.3])cylinder(r=13.84/2,h=5);
}
//nema motor for display xy
translate([-32+3-0.6-20+20,35+2+5.5-0.2-20+20,400-48+48])nema17();
}



module xymotor_assy_wider_enclosure(){
//XY motor assembly
translate([440+54+42,405+30,338.3])rotate([0,0,180])XY_bearings_Right_x1_3dprint();
translate([0-40-14,405+30,338.3])rotate([0,0,0])XY_bearings_Left_x1_3dprint();
translate([10-23+70+0+450+42,25-55-45-12,-65])rotate([0,180,180])mirror([0,0,1])XY_motor_x2higher_3dprint();
translate([-60-7,25-55-45-12,-60])rotate([0,0,180])XY_motor_x2higher_3dprint();
/*
*/
}







module xymotor_assy_wider(){
//XY motor assembly
translate([440+54+42,405+30,338.3])rotate([0,0,180])XY_bearings_Right_x1_3dprint();
translate([0-40-14,405+30,338.3])rotate([0,0,0])XY_bearings_Left_x1_3dprint();
translate([10-23+70+0+450+42,25-55-45,-65])rotate([0,180,180])mirror([0,0,1])XY_motor_x2higher_3dprint();
translate([-60-7,25-55-45,-60])rotate([0,0,180])XY_motor_x2higher_3dprint();
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
   cylinder(r=5.7/2,h=50);
    translate([19,15,10])
    rotate([90,0,0])
    cylinder(r=5.7/2,h=50);
   }
    translate([-2,0,7.5])
    cube([5,13,5]);
   }
}





module outside_frame_wider_higher(bcl,cl,x,y){
//x = 670
//y = 589.5
//z = 664
/*
outside_frame_wider_higher
Part tally
1 - tslot20(670)
2 - tslot20(630)
3 - tslot20(590)
4 - tslot2040(590)
5 - tslot2040(630)
left_outside_frame_wider_zbed_higher
6. tslot2040(529.5)
7. tslot2040(529.5)
8. tslot2040(529.5)
9. tslot2040(529.5)
10. tslot2040(664)
11. tslot2040(664)
12. tslot2040(664)
13. tslot2040(664)
14. tslot20(437)
15. tslot20(437)
16. tslot20(437)
17. tslot20(437)
y_encoder_support_wider_enclosure
18. tslot2060(501.5) *2
linearactuator_dispenser()
19. tslot2020(100
conduit_tubes_extruder_higher
20. tslot20(630);
21. tslot(100)
xshuttle_assy_wider
22. tslot20(552)
23. tslot20(100)
24. tslot20(100)
25. tslot2040(100)
*/
//
{
/*
translate([-100+15-70-3-20,103+380+30,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45-2+20,103+380+30,-73])import("files/foot_big.stl");
translate([-100+15-70-3-20,103-55-50+5-50,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45-2+20,103-55-50+5-50,-73])import("files/foot_big.stl");
*/
}
translate([-54-20+20,410-0.5,505-114+80+40-30+114])rotate([0,90,0])tslot20(630-40); // 20
//START ASSEMBLING FROM HERE
//left_outside_frame_wider_zbed();
left_outside_frame_wider_zbed_higher();
//translate([440+42,0,0])mirror([1,0,0])left_outside_frame_wider_zbed();
translate([440+42,0,0])mirror([1,0,0])left_outside_frame_wider_zbed_higher();
//cross tslots
translate([-54-40,-55-45-12,21+293+114])rotate([0,90,0])tslot20(670); //1
translate([-54-40+60,-55-45-12+25,21+293+109])rotate([0,90,0])import("HBLFSNF5_b.stl");
translate([-54-40+60+550,-55-45-12+25,21+293+109-20])rotate([0,-90,0])import("HBLFSNF5_b.stl");

translate([-54-20,-55-45-50-10,21+293+114+80+40+67-20])rotate([0,90,0])tslot20(630); //2
translate([-54,-55+464.5,21+293+114])rotate([0,90,0])tslot20(590); //3


/*
translate([0,0,-50]){
 panel_higher();
}
*/
translate([0,0,-50]){
translate([-54,-55+464.5,21])rotate([0,90,0])tslot20(590); //4
translate([-54,-55+464.5-20,21])rotate([0,90,0])tslot20(590);//4

translate([-54-20,-55-45-60,21])rotate([0,90,0])tslot20(630); //5
translate([-54-20,-55-45-60+20,21])rotate([0,90,0])tslot20(630);//5

//translate([-54,-55-45-20,21])rotate([0,90,0])tslot20(590);
//translate([-54,-55-45,21])rotate([0,90,0])tslot20(590);
 //select this
 //translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_a();
 //translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_b();
 //panel_higher();
}
 /*
 translate([15,16.5,-60-3])rotate([90,0,0])color(bcl)front_plate_x1_wider();
 translate([15,16.5+380,-60])rotate([90,0,0])color(bcl)back_plate_x1_wider();
 translate([-4+12.5+420+42,19,-60])rotate([90,0,90])color(bcl)right_plate_x1_wider();
 translate([-4+12.5,19,-60])rotate([90,0,90])color(bcl)left_plate_x1_wider();
 */
}

module front_panel(){
 //front
  translate([0,0,40]){
  //translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  //translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  translate([526-2.5+31,-155+12.5-100+85,300-30])rotate([0,-90,90])doormagnetholder_handleside();
  }

  translate([0,0,40+230]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }

  translate([0,0,40-270]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
/* not needed
*/


  rotate([0,0,0]){
 color("azure",0.85){
 //color("black"){
 //color("white"){
  translate([14+(708.8*0.58)-1+60-542-18-15+8+7.35,19+(638.4*0.58)-44-4-478+20+550-593+1.7,13-7-5-2])difference(){
  cube([650,3,638]); //front
  //inch (25.5906 x 0.098 x 25.1181) //this is just under 3mm
  //translate([130,-0.2,130])cube([400,3.4,400]); //front
  translate([-17.25+17.25,0,-163+163]){
  translate([17,130,163])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17,130,163+30])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  }
  translate([0,0,145-145]){
  translate([17,130,163+300])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17,130,163+30+300])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  }
  
  translate([24-24,0,312-312]){
  translate([17+609,130,163+30+133])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17+609-22,130,163+30+133])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  //translate([17+624.5,130,163+15+150])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17+609,130,163+30+133+230])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17+609-22,130,163+30+133+230])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17+609,130,163+30+133-270])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  translate([17+609-22,130,163+30+133-270])rotate([90,0,0])cylinder(r=3.7/2,h=400,$fn=30);
  }
 }
 }
 }
 /*
 color("azure",0.35){
 translate([14+(708.8*0.58)-1+60-542-18-15+8+7.35,19+(638.4*0.58)-44-4-478+20+550-593,13-7-5-2])difference(){
  translate([130-25,-0.2,130-25])cube([450,3.4,450]); //front
 }
 }
 */

}
module top_panel(){
  translate([0.8,-140-220,500-15])rotate([-90,0,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8-80-220,-140-0.7+561,500-15])rotate([-90,0,-90]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+480.6,-140+570+220,500-15])rotate([-90,0,180]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+480.6+9+290,-140-0.7,500-15])rotate([-90,0,90]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
 /*
 */

 //top
 //color("black"){
 color("azure",0.35){
 translate([14+(708.8*0.58)-1+60-542-20-12-3,19+(638.4*0.58)-44-4-478+20-20-15-2,13-7-5+660+4+6-30])
 difference(){
 cube([668,587,3]); 
 // (26.2992 x 23.11 x 0.125) inch
 translate([323.5,259+16-220+509-509,0]){
 translate([30+290-21.5,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 translate([30+290-21.5+22,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 }
 translate([-299+299-220,-23.5+23.5,0]){
 translate([30+290-21.5,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 translate([30+290-21.5,8.75+14.75+22,-100])cylinder(r=4.5/2,h=200,$fn=30);
 }
 translate([323.5-600+2-23.5+23.5,259+16+220+69-69,0]){
 translate([30+290-21.5,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 translate([30+290-21.5+22,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 }
 translate([0+370-370+290,518+23.5-23.5,0]){
 translate([30+290-21.5,8.75+14.75,-100])cylinder(r=4.5/2,h=200,$fn=30);
 translate([30+290-21.5,8.75+14.75+22,-100])cylinder(r=4.5/2,h=200,$fn=30);
 }



 translate([30,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([30+290,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([30+290+315,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([0,569.5,0]){
 translate([50,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([30+290,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([30+290+315-20,8.75,-30])cylinder(r=4/2,h=100,$fn=30);
 }
 translate([8.75,50,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([8.75,50+280,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([8.75,50+505,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([650,0,0]){
 translate([8.75,50,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([8.75,50+280,-30])cylinder(r=4/2,h=100,$fn=30);
 translate([8.75,50+505,-30])cylinder(r=4/2,h=100,$fn=30);
 }
 }
 }
}
module right_panel(){

  translate([0.8+420.5,-140+400-30,50-15+9.7])rotate([90,-90,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30+410,50-15+9.7])rotate([90,-90,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30-190+15,50-15+9.7+550-23.5])rotate([90,90,180]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30-190+15-390,50-15+9.7+550-23.5])rotate([90,90,180]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }

 color("black"){

 //color("azure",0.35){
 //right
 translate([14+(708.8*0.58)-1+60-542-18-21+680-5,19+(638.4*0.58)-44-4-478+20+550-570,13-7-7])
 difference(){
 cube([3,569,624]);
 //translate([-0.1,80,90])cube([3.2,400,430]);
 translate([-30,11.5+75,20+2-22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+390,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+390,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([0,0,552+16.5-16.5]){
 translate([-30,11.5+70.4,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+70.4,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+405,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+405,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 }



 /*
 translate([-30,11.5,20])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+300])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+570])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([0,549.6,0]){
 translate([-30,11.5,20])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+300])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+570])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 } 
 translate([-30,11.5+40,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+240,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+480,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([0,0,604]){
 translate([-30,11.5+40,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+240,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+480,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 }
 */

 }
 }
 /*
 translate([14+(708.8*0.58)-1+60-542-18-21+680-5,19+(638.4*0.58)-44-4-478+20+550-570,13-7-7]){
 color("azure",0.35){
 translate([-0.1,80,90])cube([3.2,400,430]);
 }
 }
 */
}

module left_panel(){


 translate([500-18,0,0])mirror([1,0,0]){
  translate([0.8+420.5,-140+400-30,50-15+9.7])rotate([90,-90,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30+410,50-15+9.7])rotate([90,-90,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30-190+15,50-15+9.7+550-23.5])rotate([90,90,180]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0.8+420.5,-140+400-30-190+15-390,50-15+9.7+550-23.5])rotate([90,90,180]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
 }


 //translate([-675,0,0])color("azure",0.35){
 translate([-675,0,0])color("black"){
 //right
 translate([14+(708.8*0.58)-1+60-542-18-21+680-5,19+(638.4*0.58)-44-4-478+20+550-570,13-7-7])
 difference(){
 cube([3,569,624]); // inch 0.118, 22.4016, 24.5669
 //translate([-0.1,80,90])cube([3.2,400,430]);
 translate([-30,11.5+75,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+390,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+390,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);

 translate([0,0,552]){
 translate([-30,11.5+70.4,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+70.4,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+405,20+2])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+75+405,20+2+22])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 }


 /*
 translate([-30,11.5,20])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+300])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+570])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([0,549.6,0]){
 translate([-30,11.5,20])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+300])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5,20+570])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 } 
 translate([-30,11.5+40,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+240,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+480,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([0,0,604]){
 translate([-30,11.5+40,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+240,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 translate([-30,11.5+40+480,7])rotate([0,90,0])cylinder(r=4/2,h=130,$fn=30);
 }
 */
 }
 }





}
module back_panel(){
 //front
  translate([750,280,65])mirror([0,1,0])rotate([0,-90,0]){
  translate([0,0,40]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([0,0,40+400]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([506.5,0,580])rotate([0,180,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
  translate([506.5,0,1030])rotate([0,180,0]){
  translate([526-2.5+31,-155,300])rotate([-90,90,0])doormagnetholder();
  translate([526-2.5,-155+12.5,300-30])rotate([90,0,0])framemagnetholder();
  }
 }
 //color("azure",0.35){
 color("black"){
 //back
 translate([14+(708.8*0.58)-1+60-542-18,19+(638.4*0.58)-44-4-478+20+552,13-7-8])
 difference(){
 cube([634,3,640]);  // inch 24.96, 0.118, 25.1969
 translate([12+69,-50,8+25+12])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 translate([12+69,-50,8+25+11-19])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 translate([12+69+450,-50,8+25+12])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 translate([12+69+450,-50,8+25+11-19])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);

 translate([20,0,571.5]){
 
 translate([12+69,-50,8+25+12+1])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 translate([12+69,-50,8+25+11-20])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 }
 translate([20+400,0,571.5]){
 translate([12+69,-50,8+25+12+1])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 translate([12+69,-50,8+25+11-20])rotate([-90,0,0])cylinder(r=4.7/2,h=100,$fn=20);
 }


 /*
 translate([12,-50,8+25])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12,-50,8+300])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12,-50,8+600])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([610,0,0]){
 translate([12,-50,8+25])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12,-50,8+300])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12,-50,8+600])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 }
 translate([12+35,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12+35+270,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12+35+270+260,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([0,0,624]){
 translate([12+35,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12+35+270,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 translate([12+35+270+260,-50,8])rotate([-90,0,0])cylinder(r=4/2,h=100,$fn=20);
 }
 */
 }
 }
}
module bottom_panel(){
 color("black"){
 //color("azure",0.35){
 translate([14+(708.8*0.58)-1+60-542-15,19+(638.4*0.58)-44-4-478+20-15,13-7-5-10])
 difference(){
 cube([627,547,3]);  //base
 translate([9,6.7,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+180,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+380,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+530,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([610,0,0]){
 translate([9,6.7,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+180,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+380,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+530,-50])cylinder(r=5/2,h=100,$fn=30);
 }
 translate([200,0,0]){
 translate([9,6.7,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+530,-50])cylinder(r=5/2,h=100,$fn=30);
 }
 translate([450,0,0]){
 translate([9,6.7,-50])cylinder(r=5/2,h=100,$fn=30);
 translate([9,6.7+530,-50])cylinder(r=5/2,h=100,$fn=30);
 }
 }
 }
}

module panel_higher(){
 //color("azure",0.35){
 //color("black"){
 //projection(cut="false")
 //rotate([90,0,0])
 /*
 */
 //translate([14+(708.8*0.58)-1+60-542-18-15+664/2,19+(638.4*0.58)-44-4-478+20+550-593,13-7-5])cube([324,3,656-30]); //rtfront
 //translate([14+(708.8*0.58)-1+60-542-18-15+8,19+(638.4*0.58)-44-4-478+20+550-593,13-7-5])cube([324,3,656-30]); //lffront

 /*
 right_panel();
 left_panel();
 back_panel();
 front_panel();
 top_panel();
 */
 bottom_panel();



 // translate([14+(708.8*0.58)-1+60-542-18-21,19+(638.4*0.58)-44-4-478+20+550-570,13-7-5])cube([3,569,621]); //left
 //}
/*
 translate([533,-164-5,150])import("PerfectHinge40mm.stl");
 translate([533,-164-5,150])perfecthinge_washer();
 translate([533,-164-5,450])import("PerfectHinge40mm.stl");
 translate([533,-164-5,450])perfecthinge_washer();
*/

 /*
 translate([482,0,647])rotate([0,180,0])mirror([0,0,0]){
 translate([533,-164-5,150])import("PerfectHinge40mm.stl");
 translate([533,-164-5,150])perfecthinge_washer();
 translate([533,-164-5,450])import("PerfectHinge40mm.stl");
 translate([533,-164-5,450])perfecthinge_washer();
 }
 */
}



module outside_frame_wider(bcl,cl,x,y){
{
translate([-100+15-70-3,103+380+30,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45,103+380+30,-73])import("files/foot_big.stl");
translate([-100+15-70-3,103-55-50+4,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45,103-55-50+4,-73])import("files/foot_big.stl");
}
//START ASSEMBLING FROM HERE
left_outside_frame_wider_zbed();
translate([440+42,0,0])mirror([1,0,0])left_outside_frame_wider_zbed();
//cross tslots
translate([-54,-55-45,21])rotate([0,90,0])tslot20(590);
translate([-54,-55-45,21+293])rotate([0,90,0])tslot20(590);
translate([-54,-55+464.5,21])rotate([0,90,0])tslot20(590);
translate([-54,-55+464.5,21+293])rotate([0,90,0])tslot20(590);
 //select this
 translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_a();
 translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_b();
 translate([15,16.5,-60-3])rotate([90,0,0])color(bcl)front_plate_x1_wider();
 translate([15,16.5+380,-60])rotate([90,0,0])color(bcl)back_plate_x1_wider();
 translate([-4+12.5+420+42,19,-60])rotate([90,0,90])color(bcl)right_plate_x1_wider();
 translate([-4+12.5,19,-60])rotate([90,0,90])color(bcl)left_plate_x1_wider();
}







module left_outside_frame_wider_zbed(){
translate([-29,0,0])y_encoder_support_wider(60);
translate([0,0,0]){
//begin 3d printed stuff
//end 3d printed stuff
//LFTL1
//HFS5-2020-484-TPW-Z5-XA94.5-XB312.5 now change to ...
//HFS5-2020-484-TPW-Z5-XA96-XB314
translate([-50-29,460-26-20+0.5,16-25])rotate([90,0,0]){
tslot20(489.5);
}
}
translate([360,250-260-33-1-85,10])rotate([180,180,-90]){
translate([75-1-45,-55+464,9.5-23.5-60]){
tslot20(564);
}
}
translate([360,250+85,10])rotate([180,180,-90]){
translate([75-0.5,-55+464,9.5-23.5-60]){
tslot20(564);
}
}
//z axis
translate([360,250-130,10])rotate([180,180,-90]){
translate([75-1-180,-55+464,6])tslot20(273);
translate([75-1-180+205,-55+464+2.5,6])rotate([0,180,0])tslot20innerbracket();
translate([75-1-355,-55+464+2.5,6+272])rotate([0,0,0])tslot20innerbracket();
translate([-60,0,0]){
translate([75-1+170,-55+464,6])tslot20(273);
translate([350,0,0]){
translate([75-1-180+205,-55+464+2.5,6])rotate([0,180,0])tslot20innerbracket();
translate([75-1-355,-55+464+2.5,6+272])rotate([0,0,0])tslot20innerbracket();
}
}
//translate([75,-55+464,0-50-125+165])tslot20(500);
}
}


module left_outside_frame_wider_zbed_higher(){

/*
left_outside_frame_wider_zbed_higher
6. tslot2040(529.5)
7. tslot2040(529.5)
8. tslot2040(529.5)
9. tslot2040(529.5)
10. tslot2040(664)
11. tslot2040(664)
12. tslot2040(664)
13. tslot2040(664)
14. tslot20(437)
15. tslot20(437)
16. tslot20(437)
17. tslot20(437)
*/

translate([-29,0,0+114])y_encoder_support_wider_enclosure(60);
translate([0,0,0]){
//begin 3d printed stuff
//end 3d printed stuff
//LFTL1
//HFS5-2020-484-TPW-Z5-XA94.5-XB312.5 now change to ...
//HFS5-2020-484-TPW-Z5-XA96-XB314

translate([-50-29,460-26-20+0.5,16-25])rotate([90,0,0]){
translate([0-0,-50,0])tslot20(529.5); //6 and 7 
translate([-20,-50,0])tslot20(529.5); //6 and 7

translate([-20,-50+564+90-10-20,0])rotate([0,0,0])tslot20(529.5); //6 and 7
translate([-20,-50+564+90-10-20-20,0])rotate([0,0,0])tslot20(529.5); //6 and 7

//translate([0-20,-50+564+90-10,0-20])tslot20(589.5); //8 and 9
}
}
translate([360,250-260-33-1-85,10])rotate([180,180,-90]){
translate([75-1-45,-55+464,9.5-23.5-60]){

//tslot20(564+80+20);
translate([0-40,20,0-10])tslot20(664); //10 and 11
translate([0-60,20,0-10])tslot20(664); //10 and 11
translate([-54-40+60-1-20+10,-55-45-12+25+114+8,21+293+109-413-52])rotate([0,0,0])foot();
translate([-54-40+60-1-20+10+570,-55-45-12+25+114+8,21+293+109-413-52])rotate([0,0,0])foot();
translate([-54-40+60-1-20,-55-45-12+25+114,21+293+109-413])rotate([180,0,0])import("HBLFSNF5_b.stl");
translate([-54-40+60-1+20,-55-45-12+25+114,21+293+109-413])rotate([180,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1+20,-55-45-12+25+114,21+293+109-413+20])rotate([90,0,90])import("HBLFSNF5_b.stl");
}
}
translate([360,250+85,10])rotate([180,180,-90]){
translate([75-0.5,-55+464,9.5-23.5-60-10]){
translate([-54-40+60-1+20+20,-55-45-12+25+114+20,21+293+109-413+10])rotate([180,0,-90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1+20+20,-55-45-12+25+114-20,21+293+109-413+10])rotate([180,0,-0])import("HBLFSNF5_b.stl");
tslot20(664); //12 and 13
translate([0,20,0])tslot20(664); //12 and 13
}
}
//z axis
translate([360,250-130,10])rotate([180,180,-90]){

translate([75-1-180,-55+464,6-50])tslot20(437); //14, 15, 
translate([-54-40+60-1-46,-55-45-12+25+114-224,21+293+109-413-55])rotate([90,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66,-55-45-12+25+114-224,21+293+109-413-55+440])rotate([-90,0,90])import("HBLFSNF5_b.stl");
//translate([75-1-180+205,-55+464+2.5,6-50])rotate([0,180,0])tslot20innerbracket();
//translate([75-1-355,-55+464+2.5,6+272+114])rotate([0,0,0])tslot20innerbracket();
translate([-60,0,0]){
translate([75-1+170,-55+464,6-50])tslot20(437); ////15, 16
translate([350,0,0]){

translate([-54-40+60-1-46,-55-45-12+25+114-224,21+293+109-413-55])rotate([90,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66,-55-45-12+25+114-224,21+293+109-413-55+440])rotate([-90,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66+108,-55-45-12+25+114-224,21+293+109-413-55+440])rotate([-90,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66+105.5,-55-45-12+25+114-224+20,21+293+109-413-55+440])rotate([-90,0,0])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-16+55,-55-45-12+25+114-224+1,21+293+109-413-55])rotate([90,0,-90])import("HBLFSNF5_b.stl");

translate([-54-40+60-1-66+108,-55-45-12+25+114-224-19,21+293+109-413-55+440+185-40])rotate([-90,0,90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66+105.5,-55-45-12+25+114-224+20,21+293+109-413-55+440+185-20])rotate([-90,0,0])import("HBLFSNF5_b.stl");

translate([-54-40+60-1-66-424,-55-45-12+25+114-224-19+20,21+293+109-413-55+440+185-40])rotate([-90,0,-90])import("HBLFSNF5_b.stl");
translate([-54-40+60-1-66-464,-55-45-12+25+114-224-19+20,21+293+109-413-55+440+185-20])rotate([-90,0,0])import("HBLFSNF5_b.stl");
//translate([75-1-180+205,-55+464+2.5,6-50])rotate([0,180,0])tslot20innerbracket();
//translate([75-1-355,-55+464+2.5,6+272+114])rotate([0,0,0])tslot20innerbracket();
}
}
/*
*/


//translate([75,-55+464,0-50-125+165])tslot20(500);
}
}







module y_encoder_support_wider_enclosure(sh){
/*
y_encoder_support_wider_enclosure
18. tslot2060(501.5)
*/
translate([0,410,330])rotate([180,0,0]){
//LLYENC it has 2 screws commented out below
//This needs to be updated fixed
//HFS5-2020-484-TPW-Z5-XA135.5-XB230-XC353.5
//HFS5-2020-484-TPW-Z5-XA134-XB352-YA230
translate([-50,400+sh-20+45+12,16])rotate([90,0,0]){
tslot20_2060(501.5);
translate([-20,0,0])tslot20_2060(501.5);
}
}
}





module y_encoder_support_wider(sh){
translate([0,410,330])rotate([180,0,0]){
//LLYENC it has 2 screws commented out below
//This needs to be updated fixed
//HFS5-2020-484-TPW-Z5-XA135.5-XB230-XC353.5
//HFS5-2020-484-TPW-Z5-XA134-XB352-YA230
translate([-50,400+sh-20+45,16])rotate([90,0,0]){
tslot20_2060(444.5+45);
//translate([-20,0,0])tslot20_2060(444.5+45);
}
}
}




module gantry_shelves_wider(){

translate([0,0-45,0]){

/*
translate([240+75+42,5-55+110,20+150-25-3])tslot20innerbracket();
translate([20-75,-55+110+4,20+150-3])rotate([0,90,0])tslot20(592);
translate([200-75,5+20-55+116,20+150-25])rotate([0,0,180])tslot20innerbracket();
translate([240+75+42,5-55+290,20+150-25-3])tslot20innerbracket();
translate([20-75,-55+290+4,20+150-3])rotate([0,90,0])tslot20(592);
translate([200-75,5+20-55+296,20+150-25])rotate([0,0,180])tslot20innerbracket();
*/
//translate([20-75,-55,20+150])rotate([0,90,0])tslot20(592);
translate([20-75,-55,20+220])rotate([0,90,0])tslot20(592+20);
color(""){
//translate([240+75+42,5-55,20+150-25])tslot20innerbracket();
translate([240+75+42+20,5-55,20+220-25])tslot20innerbracket();
translate([200-75,5+20-55,20+220-25])rotate([0,0,180])tslot20innerbracket();
//translate([200-75,5+20-55,20+150-25])rotate([0,0,180])tslot20innerbracket();
translate([420+50,-164-55,90])rotate([0,180,90])multichannel_drypad();

/*
translate([330+50,30-55-22+20,15])difference(){
cylinder(r=60,130);
translate([0,0,3])cylinder(r=55,130);
}
*/
}
/*
*/
}
}
/*
x = 91;
y = 30;
z =  40;
*/
module conduit_tubes(x,y,z){
  //echo(z);
 //translate([-74,198,550-150])rotate([0,90,0])tslot20innerbracket();
 //translate([-74,198+215,550-150])rotate([0,90,0])tslot20innerbracket();
 //conduit
 translate([172,410,260]){
  translate([-5,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=75+x+21);
  translate([-5-210,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=190);
  translate([-5-210+40,-10,210-178])rotate([0,-10,0])color("black")cylinder(r=25/2,h=190);
  //translate([x-21,y+30,z-40]){
  translate([x-21,0,0]){
  translate([105,-12,210])color("black")sphere(r=12.5);
  translate([105,-20,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")rotate([90,0,0])cylinder(r=12.5,h=250-y);
  translate([105,-30-210-3+y-30,210+5])color("black")rotate([180,0,-10])cylinder(r=12.5,h=80);
  }
   z = 85;
  //one
  translate([105-13.5+8+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-26,75,0])cylinder(r=3/2,h=80);
  //two
  translate([105-13.5+8+9+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,71,0])cylinder(r=3/2,h=72);
  //three
  translate([105-13.5+8+9*2+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,69,0])cylinder(r=3/2,h=62);
  translate([105-13.5+8+9*7+18+x-91-15,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //four
  translate([105-13.5+8+9*3+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-34,65,0])cylinder(r=3/2,h=58);
  translate([105-13.5+8+9*7+18+x-91-12,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //five
  translate([105-13.5+8+9*4+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-37,62,0])cylinder(r=3/2,h=52);
  translate([105-13.5+8+9*7+18+x-91-9,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //six
  translate([105-13.5+8+9*5+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-40,57,0])cylinder(r=3/2,h=48);
  translate([105-13.5+8+9*7+18+x-91-6,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //seven
  translate([105-13.5+8+9*6+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-43,50,0])cylinder(r=3/2,h=44);
  translate([105-13.5+8+9*7+18+x-91-3,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //eight
  translate([105-13.5+8+9*7+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18+x-91,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  /*
  */

  /*
  translate([x-91,y-30,z-40]){
  //one
  translate([105-13.5+8,-30-249+2,63])color("lightblue")rotate([-20,42,0])cylinder(r=3/2,h=110-40);
  translate([105-13.5+8,-30-249+2,63])color("lightblue")rotate([-20,42,0])cylinder(r=3/2,h=110+z-40);
  //two
  translate([105-13.5+8+9,-30-249+2,63])color("lightblue")rotate([-20,38,0])cylinder(r=3/2,h=110-40);
  //three
  translate([105-13.5+8+9*2,-30-249+2,63])color("lightblue")rotate([-20,34,0])cylinder(r=3/2,h=110-40);
  //four
  translate([105-13.5+8+9*3,-30-249+2,63])color("lightblue")rotate([-20,30,0])cylinder(r=3/2,h=110-40);
  //five
  translate([105-13.5+8+9*4,-30-249+2,63])color("lightblue")rotate([-20,26,0])cylinder(r=3/2,h=110-40);
  //six
  translate([105-13.5+8+9*5,-30-249+2,63])color("lightblue")rotate([-20,22,0])cylinder(r=3/2,h=110-40);
  //seven
  translate([105-13.5+8+9*6,-30-249+2,63])color("lightblue")rotate([-20,19,0])cylinder(r=3/2,h=90-40);
  //eight
  translate([105-13.5+8+9*7,-30-249+2,63])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18,-30-249+32,(84)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(33));
 }
 */

 }
/*
*/
 translate([172,410,260])color(""){
 translate([-50,6,240])cable_support_extrusion();
 translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
 rotate([0,0,90])cable_support();
 }
translate([-54,410,505])rotate([0,90,0])tslot20(200+390);
translate([140,410,505-105])rotate([0,0,0])tslot20(100);
}





module conduit_tubes_extruder_higher(x,y,z){

/*
conduit_tubes_extruder_higher
20. tslot20(630);
21. tslot(100)
*/

  //echo(z);
 //translate([-74,198,550-150])rotate([0,90,0])tslot20innerbracket();
 //translate([-74,198+215,550-150])rotate([0,90,0])tslot20innerbracket();
 //conduit
 translate([172,410,260-114+40+80-20]){
  translate([-5,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=75+x+21-46);
  translate([-5-210,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=190);
  translate([-5-210+40,-10,210-178])rotate([0,-10,0])color("black")cylinder(r=25/2,h=190);
  //translate([x-21,y+30,z-40]){
  translate([x-21-51,0,0]){
  translate([105,-12,210])color("black")sphere(r=12.5);
  translate([105,-20,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")rotate([90,0,0])cylinder(r=12.5,h=300-y);
  translate([105,-30-210-3+y-30-48,210+5])color("black")rotate([180,0,-10])cylinder(r=12.5,h=50);
  translate([105,-30-210-3+y-30-48,210+5])color("white")rotate([180,0,-10])cylinder(r=6/2,h=80,$fn=30);
  }

/*
  //one
  translate([105-13.5+8+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-26,75,0])cylinder(r=3/2,h=80);
  //two
  translate([105-13.5+8+9+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,71,0])cylinder(r=3/2,h=72);
  //three
  translate([105-13.5+8+9*2+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,69,0])cylinder(r=3/2,h=62);
  translate([105-13.5+8+9*7+18+x-91-15,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //four
  translate([105-13.5+8+9*3+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-34,65,0])cylinder(r=3/2,h=58);
  translate([105-13.5+8+9*7+18+x-91-12,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //five
  translate([105-13.5+8+9*4+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-37,62,0])cylinder(r=3/2,h=52);
  translate([105-13.5+8+9*7+18+x-91-9,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //six
  translate([105-13.5+8+9*5+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-40,57,0])cylinder(r=3/2,h=48);
  translate([105-13.5+8+9*7+18+x-91-6,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //seven
  translate([105-13.5+8+9*6+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-43,50,0])cylinder(r=3/2,h=44);
  translate([105-13.5+8+9*7+18+x-91-3,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //eight
  translate([105-13.5+8+9*7+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18+x-91,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
*/
 }
/*
*/
 translate([172,410,260-114+80+40-20])color(""){
 //translate([-50,6,240])cable_support_extrusion();
 translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
 rotate([0,0,90])cable_support();
 }
translate([-54-20+20,410,505-114+80+40-30])rotate([0,90,0])tslot20(630-40); // 20
//translate([-54+385,410,505-114])rotate([0,90,0])tslot20(210);
translate([140,410,505-105-114+80+20-20])rotate([0,0,0])tslot20(100); // 21
}


















module conduit_tubes_extruder(x,y,z){
  //echo(z);
 //translate([-74,198,550-150])rotate([0,90,0])tslot20innerbracket();
 //translate([-74,198+215,550-150])rotate([0,90,0])tslot20innerbracket();
 //conduit
 translate([172,410,260]){
  translate([-5,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=75+x+21-46);
  translate([-5-210,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=190);
  translate([-5-210+40,-10,210-178])rotate([0,-10,0])color("black")cylinder(r=25/2,h=190);
  //translate([x-21,y+30,z-40]){
  translate([x-21-51,0,0]){
  translate([105,-12,210])color("black")sphere(r=12.5);
  translate([105,-20,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")rotate([90,0,0])cylinder(r=12.5,h=300-y);
  translate([105,-30-210-3+y-30-48,210+5])color("black")rotate([180,0,-10])cylinder(r=12.5,h=50);
  translate([105,-30-210-3+y-30-48,210+5])color("white")rotate([180,0,-10])cylinder(r=6/2,h=80,$fn=30);
  }

/*
  //one
  translate([105-13.5+8+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-26,75,0])cylinder(r=3/2,h=80);
  //two
  translate([105-13.5+8+9+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,71,0])cylinder(r=3/2,h=72);
  //three
  translate([105-13.5+8+9*2+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,69,0])cylinder(r=3/2,h=62);
  translate([105-13.5+8+9*7+18+x-91-15,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //four
  translate([105-13.5+8+9*3+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-34,65,0])cylinder(r=3/2,h=58);
  translate([105-13.5+8+9*7+18+x-91-12,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //five
  translate([105-13.5+8+9*4+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-37,62,0])cylinder(r=3/2,h=52);
  translate([105-13.5+8+9*7+18+x-91-9,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //six
  translate([105-13.5+8+9*5+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-40,57,0])cylinder(r=3/2,h=48);
  translate([105-13.5+8+9*7+18+x-91-6,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //seven
  translate([105-13.5+8+9*6+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-43,50,0])cylinder(r=3/2,h=44);
  translate([105-13.5+8+9*7+18+x-91-3,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //eight
  translate([105-13.5+8+9*7+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18+x-91,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
*/
 }
/*
*/
 translate([172,410,260])color(""){
 translate([-50,6,240])cable_support_extrusion();
 translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
 rotate([0,0,90])cable_support();
 }
translate([-54,410,505])rotate([0,90,0])tslot20(210);
translate([-54+385,410,505])rotate([0,90,0])tslot20(210);
translate([140,410,505-105])rotate([0,0,0])tslot20(100);
}












module nema8_gasket_motor_mount(){
translate([150+17-5,10,300+40])rotate([0,0,-90]){
difference(){rotate([0,0,90])union(){
translate([15,10+6,1.5])rotate([0,0,-180])cube([30,6.5,3]);
translate([15-0.05,10+6,1.5])rotate([0,0,-180])cube([5,6.5+12,3]);
translate([15-0.80-24-0,10+6,1.5])rotate([0,0,-180])cube([4.5+0.8,6.5+12,3]);
translate([-10,-10,1.5])rotate([0,0,-0])import("NEMA8_Vacuum_Gasket.stl");
translate([0,0,-28])color("silver")rotate([0,-90,90])scale(10,10,10)import("Nema-8-stepper-motor.stl");
}
translate([-185-10.3,-9-1.2,-380]){
translate([165+7-3-1.45+15,20.75+25-23,300-7.5+7+22])rotate([0,0,0])cylinder(r=2.8/2,$fn=20,h=140);
translate([165+7+18+2.6,20.75+25-23,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.8/2,$fn=20,h=140);
translate([165+7+18+2.6,20.75+25-23-10-15,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.8/2,$fn=20,h=140);
translate([165+7+18+2.6-10,20.75+25-23-10-15,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.8/2,$fn=20,h=140);
//translate([165+7-3-1.45,20.75+25-23-10,300-7.5+7+10+22])rotate([0,0,0])cylinder(r=2.3/2,$fn=20,h=140);
}
}
}
}



module filament_runnout_sensor_stub(){

filamentDiameter = 2.3;
ptfeDiameter = 4;
screwDiameter = 3.5;
walls = 2;
radius = 3;
bottomHeight = 2;

switchLength = 13;
switchHeight = 5.8;
switchWidth = 6.5;
switchPadding = 2.5;
switchDiameter = 2.6;
switchOffsetX = 3;
switchOffsetY = 0.8;

/* [Hidden] */
$fn = 360;
filamentRadius = filamentDiameter / 2;
ptfeRadius = ptfeDiameter / 2;
screwRadius = screwDiameter / 2;
switchRadius = switchDiameter / 2;

length = (walls * 2 + switchPadding + screwDiameter) * 2 + switchLength;
width = walls * 2 + filamentDiameter + switchWidth + switchPadding;
height = switchHeight / 2 + bottomHeight;

difference() {
  hull() {
    translate([radius, -radius, 0])
      cylinder(r=radius, h=height);

    translate([length - radius, -radius, 0])
      cylinder(r=radius, h=height);
    
    translate([length - radius, radius - width, 0])
      cylinder(r=radius, h=height);
    
    translate([radius, radius - width, 0])
      cylinder(r=radius, h=height);
    
    translate([length / 2, -width + walls - radius, 0])
      cylinder(r=radius + walls / 2, h=height);
  }

  // Switch cutout
  group() {
    translate([walls * 2 + screwDiameter + switchPadding, -switchWidth, bottomHeight])
      cube([switchLength, switchWidth + 1, height]);

    translate([walls * 2 + screwDiameter, -width + walls, bottomHeight])
      cube([switchLength + switchPadding * 2, width - walls * 2, height]);
  }
  
  // Filament
  translate([-1, -width + walls + screwDiameter + filamentRadius - 0.8, height])
    rotate([0, 90, 0])
      cylinder(r=filamentRadius, h= length + 2);

  // PTFE tube holes
  group() {
    translate([-1, -width + walls + screwDiameter + filamentRadius - 0.8, height])
      rotate([0, 90, 0])
        cylinder(r=ptfeRadius, h= walls + radius + 1);

    translate([length - walls - radius, -width + walls + screwDiameter + filamentRadius - 0.8, height])
      rotate([0, 90, 0])
        cylinder(r=ptfeRadius, h= walls + radius + 1);
  }
  
  // Screwholes
  group() {
    translate([screwRadius + walls, -screwRadius - walls, -1])
      cylinder(r=screwRadius, h=height + 2);
    
    translate([length - walls - screwRadius, -screwRadius - walls, -1])
      cylinder(r=screwRadius, h=height + 2);
    
    translate([length / 2, -width + walls - radius, -1])
      cylinder(r=screwRadius, h=height + 2);
  }
  
  // Switch Holes
  group() {
    translate([walls * 2 + screwDiameter + switchPadding + switchOffsetX, -switchRadius - switchOffsetY, -1])
      cylinder(r=switchRadius, h=height);

    translate([walls * 2 + screwDiameter + switchPadding + switchLength - switchOffsetX, -switchRadius - switchOffsetY, -1])
      cylinder(r=switchRadius, h=height);
  
  }
}




}


module camera_ball_adjust_cap(){
//translate([-62.5,24,-10+10])rotate([90,0,0])import("stls/cap.stl"); //cap();
difference(){
translate([0,-5,0])cube([15,5+5,15]);
translate([7.5,7.5,7.5])sphere(r=6.5);
translate([7.5,7.5+20,7.5])rotate([90,90,0])cylinder(r=2.8/2,h=60, $fn=30);
//translate([7.5,-2.1,7.5])rotate([90,90,0])cylinder(r=7.8/2,h=3,$fn=6);
}
}

module camera_ball_adjust(){
//module lasermount_assy(){
translate([5,25,10])3dprint_dual_camera_assy();
difference(){union(){
translate([-20,30,-2])sphere(r=11);
translate([-15-5,27.5+2.5,-11+5+4])rotate([90,0,90])cylinder(r=10/2,h=20);
}
//for(i=[-6,-5,-4,-3,-2,-1,0,1,2,3,4]){
for(i=[-7:3]){
translate([-20,50,i])rotate([90,0,0])cylinder(r=3.7/2,h=200, $fn=30);
}
}
/*
translate([-10,0,0])difference(){
translate([10,20,-11])cube([20,20,20]);
translate([10,20,-11])
translate([10,10,-10])rotate([0,0,0])lasermodule();
}
*/
}


module cameramount_connector_two(){
union(){
difference(){
union(){
translate([-36+9,40-2,13])rotate([-90,0,0])import("stls/mirrorball.stl"); //mirrorball();
translate([-36+5+5,42-4+8,13])cube([15,12-8,15+5]);
}
for(i=[-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6]){
translate([-36+5+10+9,42-4+17,-2+i])rotate([90,90,0])cylinder(r=4.7/2,h=100);
}
translate([-36+5+10+9-7,42-4+17,-2+28])#rotate([90,90,0])cylinder(r=4.7/2,h=100, $fn=30);
/*
translate([-36+5+10,42-4+17,13+10])rotate([90,90,0])cylinder(r=4.7/2,h=10);
translate([-36+5+10,42-4+8,13+10])rotate([90,90,0])cylinder(r=10/2,h=10);
*/
}
}
}







