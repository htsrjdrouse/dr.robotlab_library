include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>



translate([-480,0,-20])waterbottle();
translate([-580,0,-20])waterbottle();

//shuttle_front_vertical_adjust_wider_slider_wall();

//shuttle_front_vertical_adjust_wider();

//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();

//translate([0,3,0])washbowl_1tip();

//import("wash_assy_for_show.stl");
//washbowl_assy();

//translate([-99,340,300-60])rotate([0,0,180])nalgene_bottle_assy_electrocaloric();
translate([-300,200,-36])diaphragmpump_boxassy();
noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);

//translate([100,-50,100])rotate([90,0,0])nextgen_syringe10ml_assy();

//bottom_simple_m8_smoothrodholder_for_z();
//shuttle_front_vertical_adjust_wider_slider_wall();
//microplate_corner_4sides(100);
// translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_midleftright_tip_mtp_aligner(144);

//translate([-31.8+33,53.5+5,-3-23])color("gainsboro")stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();


//slider_front_assy_multichannel();
//slider_assy(10);
//translate([179.5,180-12.5+1.5,300-1])rotate([-90,0,180])multichannel_assy_wider();
//tslot_clamp_filament_linearactuator_shuttle_noextrusion();

//translate([-38,-30-5-8,3+18-5])color("silver")rotate([0,0,0])import("igus_sliders/TW_04_09_4.stl");


//translate([15-25+229.5,206.5-11,-63+400])rotate([90,0,0])sandwich_sliderwheel_assy();
//slider_back_assy();


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
