include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
include <nanoplotter.scad>
include <PiZero.scad>



//miuzei_raspicam_base();
//displayPiZero();


/*
translate([175-2,300-100,400])rotate([-90,0,90]){
translate([0,0,3])displayPiZero();
raspizerobase_extrusion();
color("white")raspizero_ribbon_cable();
}
*/

// X & Y co-ord calcs for header pin positions
function XPinPos(Xval) = -(19*1.27)+Xval*2.54;
function YPinPos(Yval) = PiHoleY-1.27+Yval*2.54;
function isitPiW() = (search("W",PiZeroVer)==[0]) ? "True" : "False";	// Returns true if first character of version is W


slider_assy(10);


//zdrive_camera_assy();
//translate([-11.5+3.8-(9*4),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")

module zdrive_camera_assy(){

//translate([-11.5+3.8+(9*5),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")miuzei_camera_breadboard_screwstub();
translate([-11.5+3.8+(9*5),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")import("BOM_inventory/build2/stls/miuzei_camera_breadboard_screwstub.stl");
//translate([-11.5+3.8-(9*4),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")miuzei_camera_breadboard_screwstub();
translate([-11.5+3.8-(9*4),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")import("BOM_inventory/build2/stls/miuzei_camera_breadboard_screwstub.stl");
translate([0-26-18,90-13.5,-50-13+5])rotate([-90,0,-90])miuzei_camera_breadboard();
//translate([-7-15,-25+120-31.5+16.4,-37-17+10])rotate([0,-90,-90])mnt_md_justclip();
translate([-7-15,-25+120-31.5+16.4,-37-17+10])rotate([0,-90,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([-18+2,100-21+1,-26.3+10-1.5])rotate([0,90,90])connectionarms2(0);
translate([-18+2+3,100-21+10+1,-26.3+10-1.5])rotate([0,90,-90])connectionarms2(0);

/*
*/

translate([-35-10,90,64])rotate([90,0,0]){
translate([30,1,8])#miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}


rotate([-90,0,0])multichannel_pipette_holder_linear_actuator_connect_cameramount();
}


/*
openmv_ball_adjust_set();
lasermount_assy();
lasermount_connector_cap();
*/

//translate([190,52,420])rotate([180,0,90])color([160/255,160/255,160/255])camera_assy();

//rotate([0,90,0])tslot20innerbracket();
//zbedclampsmooth();
//clamp();
/*
translate([-480,200,-20]){
waterbottle();
waterbottle_tubes();
}
translate([-580,200,-20]){
waterbottle();
wastebottle_tubes();
}
*/
//shuttle_front_vertical_adjust_wider_slider_wall();
//rotate([0,90,0])left_zbed_connector_bar_metal();

/*
projection(cut = false){
 zbed_multichannel_setup_wider(10);
//bottom_x1_wider();
//front_plate_x1_wider();
//back_plate_x1_wider();
//right_plate_x1_wider();
//left_plate_x1_wider();
//rotate([0,90,0])left_zbed_connector_bar_metal();
}
*/


//pipette_p1000(10);
//translate([0,0,9])
//rotate([0,180,0])p1000_model_eppendorf();

//shuttle_front_vertical_adjust_wider();

//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();

//translate([0,3,0])washbowl_1tip();
//lm8uu_smz_glider_wider();

//import("wash_assy_for_show.stl");
//washbowl_assy();
//translate([-99,340,300-60])rotate([0,0,180])nalgene_bottle_assy_electrocaloric();
//translate([-300,200,-36])diaphragmpump_boxassy();

//translate([-75,-95-45,-50+200])cube([630,575+50,2]);
//noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);
//translate([100,-50,100])rotate([90,0,0])nextgen_syringe10ml_assy();

//bottom_simple_m8_smoothrodholder_for_z();
//shuttle_front_vertical_adjust_wider_slider_wall();
//microplate_corner_4sides(100);
// translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_midleftright_tip_mtp_aligner(144);

//translate([-31.8+33,53.5+5,-3-23])color("gainsboro")stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();

//stepper_linear_m8nut_endstopflag(6);
//rotate([-90,0,0])multichannel_pipette_holder_linear_actuator_connect();
//slider_front_assy_multichannel();
//slider_assy(10);
//translate([179.5,180-12.5+1.5,300-1])rotate([-90,0,180])multichannel_assy_wider();
//tslot_clamp_filament_linearactuator_shuttle_noextrusion();

//translate([-38,-30-5-8,3+18-5])color("silver")rotate([0,0,0])import("igus_sliders/TW_04_09_4.stl");


//translate([15-25+229.5,206.5-11,-63+400])rotate([90,0,0])sandwich_sliderwheel_assy();
//slider_back_assy();

//translate([0,0,9])p1000_model_eppendorf();

//translate([0,0,38])rotate([-90,0,0])multichannel_pipette_holder_linear_actuator_connect();
//translate([-31.8+33,53.5,-3-23])color("gainsboro")rotate([-90,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();
//slider_wall();

//slider_back_assy();
//slider_assy(10);

//sandwich_sliderwheel_assy();

//color("silver")pressurecompensation_bottle();
//diaphragmpump_case_base();

//translate([-65,29,60])rotate([-90,0,0])multichannel_pipette_holder_noextrusion();
//translate([-8,30-6.5,28.2])rotate([0,180,90])color("gainsboro")tslot_clamp_filament_linearactuator_shuttle_noextrusion();

//translate([-65,29,60])rotate([-90,0,0])multichannel_pipette_holder_noextrusion();
//color("gainsboro")translate([-50+6,-115.5+7-4,1])rotate([0,0,180])stepper_linear_m8nut_endstopflag(6);

//shuttle_front_vertical_adjust();
//translate([-38,100,-3])rotate([90,0,0])stepper_linear_m8nut_endstopflag(6);
//slider_front_assy_multichannel();
//translate([208,188+1.5,342])rotate([90,0,0])filament_linearactuator_multichannel_wider();

//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();
//motormount_centered();
//rotate([-90,0,0])
//stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();
