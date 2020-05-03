include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
//include <nanoplotter.scad>
include <PiZero.scad>

//miuzei_camera_module();

pcb_panels_wider();

//rotate([0,180,0])bottom_bed_fix();



//hdmi_rj45_usb_panel();

//multichannel_pipette_holder_linear_actuator_connect_cameramount();
//microwell_plate_guide();

//raspi2_bottom();

//multichannel_pipette_holder_linear_actuator_connect_cameramount();


// translate([-8,30-6.5,28.2])rotate([0,180,90])color("")tslot_clamp_filament_linearactuator_shuttle_noextrusion();

//m5bearing_washer();
//stepper_linear_m8nut_endstopflag(5);

//mirror([0,1,0])import("files/endstop_y.stl");

//mirror([0,1,0])import("files/endstop_y.stl");

//syringe_1ml_stack_1piece_multichannel_clamp();

//slider_wall();
//shuttle_front_vertical_adjust_wider_slider_wall();
/*
translate([0,20+3,0])rotate([0,90,0])tslot20(100);
rotate([0,90,0])tslot20(100);
*/
/*
difference(){
translate([0,5,-5])cube([16,43,4]);
translate([8,15,-10])#cylinder(r=4.7/2,h=30);
translate([8,15+23,-10])#cylinder(r=4.7/2,h=30);
}
*/
//slider_x4();
//shuttle_back();

//gantryhead_back_slider_x4();

//XY_bearings_Left_x1_3dprint();
//XY_bearings_Left_x1_3dprint();
//XY_bearings_Right_x1_3dprint();
//XY_motor_x2higher_3dprint();
//XY_motor_x2higher();
//m5bearing_washer();

//bom_controlpanel();
//pcb_panels_wider();

//import("files/foot_big.stl");


//noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);
//smallsyringe_valvesupportmodule_plate_4valve();


//translate([30,-4,0])iverntech_pump_slider_plate_directdrive_plexium();
//iverntech_pump_slider_plate_directdrive();
//color("pink")translate([0,-14,0])mirror([1,0,0])directdrive_coupler();
//iverntech_slider();

//valvepart_pp();


//valvesupportmodule_plate_4();
//smallsyringe_valvesupportmodule_plate_4servos();
/*
translate([0,69,0]){
color("")translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate_pre4();
color("")translate([52-60.5,190+85,33])cube([34,5,5]);
color("")translate([52,190+72,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate_pre4();
}
*/
//valve_assy();

//translate([1,232,61.3-0.5])rotate([0,0,0])valveconnectpart_pinchvalve();
//translate([1,232,61.3+8-8-0.5])color("pink")rotate([0,0,0])valveconnectpart_outside();

//translate([1,232,61.3])rotate([0,0,90])valvepart_pp();
/*
translate([1,232,61.3+8])color("pink")rotate([0,0,90])valve_pp_top();
color("")translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe_valve_pp();
*/
//color("")translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe_vertical_attach_pinchvalve();

//smallsyringe_valvesupportmodule_plate_4servos();

/*
translate([230,0,220])rotate([0,0,-90]){
//translate([0,3,-1])washbowl_8tip_base();
//translate([0-37,3,-1+18])washbowl_8tip_drypad();
translate([0,3,-1+18])washbowl_8tip();
}
// washplate_mount();
*/

//p1000_model_eppendorf();
//p1000_model_generic();



//miuzei_raspicam_base();

//extrusion_lid_coupler_breadboard();
//multichannel_drypad();
//rotate([0,180,0])iverntech_slider_xshuttle_connect();
/*
rotate([90,0,0])shuttle_back();
translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])
slider_front_assy_multichannel_iverntech();
*/
translate([120,250-4.5,654])rotate([180,0,90])iverntech_railsystem();
xshuttle_assy_wider(x,y);
//import("BOM_inventory/build5/xdrive_fix/shuttle_back.stl");
//import("BOM_inventory/build5/beltclamp.stl");
//beltclamp_fin_plate();

//iverntech_slider_xshuttle_connect();
//shuttle_back();
//ivernetech_slider_module_wider();
//iverntech_slider_shuttle_bottom();
//translate([0,-14+19,-26])slider_assy(x,y);

/*
//translate([-49.5+12,345,300-11])rotate([0,180,180])
*/


//shuttle_front_vertical_adjust_wider_slider_wall();

/*
outside_frame_wider(tcl,thcl,x,y);
//translate([0,0,-24])corexy_beltsetup_wider(x,y);
translate([0,0,-29.5])xymotor_assy_wider();
translate([0,0,-24])corexy_beltsetup_wider(x,y);
*/




/*
translate([-40,2,0])difference(){
translate([-5,-0,0])cube([10,22,5]);
translate([0,5,-1])#cylinder(r=3.7/2,h=20,$fn=20);
translate([0,5+12,-1])#cylinder(r=3.7/2,h=20,$fn=20);
}
*/

//translate([0,-4,0])iverntech_pump_slider_plate_directdrive_plexium();

//color("pink")translate([0,-14,0])mirror([1,0,0])directdrive_coupler();
//iverntech_slider();

//stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();
//translate([-22,-90,4])rotate([90,-90,0])motormount_screws();
//iverntech_slidermount_motormount();

//oneml_syringe_stepper_linear_m8nut_coupler();

//igus_slidermount_encoder_TW_04_12();
//iverntech_pump_slider();
//ivernetech_slidermount();
//translate([0,-4,0])iverntech_pump_slider_plate();

//diaphragmpump_boxassy();
//rotate([0,180,0])import("BOM_inventory/build3/stls/miuzei_camera_breadboard_b.stl");
//displayPiZero();
//raspizerobase_extrusion();
//rotate([90,0,90])color("")import("BOM_inventory/build2/stls/miuzei_camera_breadboard_screwstub.stl");
//import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
//rotate([90,0,0])connectionarms2(40);
//miuzei_cover();
//import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
//stroboscope_miuzei_mirror(10);
//miuzei_lenscap(16);

/*
rotate([50,90,45]){
translate([-20,5,60])rotate([0,0,180])miuzei_camera_module();
translate([0,0,-13.5])multichannel_pipette_holder_linear_actuator_connect_cameramount();
}
*/

//slider_front_assy_multichannel();
//multichannel_assy_wider();
//diaphragmpump_end_6pin_pcb();
//import("BOM_inventory/BOM");
//diaphragmpump_end_6pin_pcb_lid();
//nalgene_cap_for_electrocaloric();
//peristaltic_pump_lid();
//pressurecompensation_bottle();
//nalgene_bottle_assy_electrocaloric();
//bottle_cap();
//rotate([90,0,0])import("/Users/richard/Documents/009Reprapcatcube010715/cap.STL");

/*
conduit_tubes_3wayvalve();
//translate([0,0,-24])corexy_beltsetup_wider(x,y);
outside_frame_wider(tcl,thcl,x,y);
gantry_shelves_wider();
translate([0,0,-29.5])xymotor_assy_wider();
pcb_panels_wider();
*/
/*
translate([424-75,0+30,-63])rotate([0,0,0])atx_power_connect_assy();
*/
//translate([28,21,5])bananajackpanel();

//raspi2_bottom_lego_female();

/*
translate([-48,0,197])smallsyringe_valvesupportmodule_plate_4servos();

translate([-48-310+726,740-22,197+0-0])rotate([90,-90,0])smallsyringe_valvesupportmodule_plate_4servos();
*/

/*
translate([-45,405,276.5-20])rotate([0,-90,-90]){
for(i=[0:3]){
translate([0,-58*i,0])color("")translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate();
//valve_assy();
}
for(i=[0:3]){
translate([445-(i*58),-55.5*1,0])rotate([0,0,90])valve_assy();
}
}
*/
//translate([-20,436,490])rotate([-90,90,0])mirror([0,1,0])raspi2_bottom_lego_female();
//translate([-230,210,320])rotate([-90,90,0])mirror([0,0,0])raspi_module();


// translate([-50,6,240])cable_support_extrusion();

// translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
// rotate([0,0,90])cable_support();


/*
*/
//zbed_smz_wider_nomove();
//translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);
//microfluidics_set();
/*
*/
/*
*/
//translate([1,232,61.3])rotate([0,0,90])valveconnectpart();

//valve_assy();
//color("")translate([36,295.5,18])rotate([0,-90,90])
//valvemountplate_screwattach_smallersyringe_vertical_attach();
//color("")translate([36,295.5,18])rotate([0,-90,90])valvemountplate_screwattach_smallersyringe();

//valveconnectpart();

//syringe_1ml_stack_1piece_multichannel();
//syringe_1ml_stack_1piece_multichannel_clamp();

//translate([0,30-20,0])rotate([0,180,0])multichannel_syringe1ml_clamp_top_luerlock();


//iverntech_pump_slider_plate();
//oneml_syringe_stepper_linear_m8nut_coupler();
//translate([0,0,0])multichannel_syringe_module_iverntech();
//multichannel_syringe1ml_clamp_luerlock();
/*
translate([-1,12-7,7]){
translate([-100,160,0])
translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
}
*/
//translate([-1,-2,4])multichannel_plunger_clamp();



/*
translate([-150+3,100,3.0]){
//here is the rail
color("silver")cube([12,200,8]);
//here is the slider 
translate([-27/2+12/2,20,2-3+6])color("silver")cube([27,45,9]);
}
eight_multichannel_assay();
translate([-100,180,0]){
translate([-22.85,1-123.7,2.5])mirror([0,1,0])oneml_syringe_stepper_linear_m8nut_coupler();
translate([0,-4,0])iverntech_pump_slider_plate();
}
translate([0-15+14,92,6]){
syringe_1ml_stack_1piece_multichannel();
syringe_1ml_stack_1piece_multichannel_clamp();
}
translate([-1,12-7,7]){
translate([-100,160,0])
translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
}
translate([-1,-2,4])multichannel_plunger_clamp();
translate([0,30,0])multichannel_syringe1ml_clamp_top_luerlock();
*/







/*
*/
//translate([-1-300+18,-2,4+70])rotate([0,180,0])multichannel_plunger_clamp();


//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top_luerlock();
/*
multichannel_plunger_clamp();
multichannel_syringeshuttle_clipbracket();
translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
 onechannel_plunger_clamp();
*/

//multichannel_plunger_clamp();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();

//one_1ml_syringe_parts();

//translate([0,0,-13.5])multichannel_pipette_holder_linear_actuator_connect_cameramount();
//eight_multichannel_assay();
/*
multichannel_syringeshuttle_clipbracket();
translate([0,70,-0.1])multichannel_syringe1ml_clamp();
translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
translate([-100,160,0])nextgen_syringe1ml_multichannel_assy();
//one_1ml_syringe_parts();
// translate([0,70,-0.1])one_channel_syringe1ml_clamp();
translate([-74-8,-35,465-140])rotate([0,-90,0])multichannel_syringe_module();
multichannel_plunger_clamp();
multichannel_syringeshuttle_clipbracket();
eight_multichannel_assay();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
*/







//  translate([129.75+(94*4)-1.5-103-332-70+454-6,276.5-4+25-25,11+3+24+3-26])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);} 

//translate([420+50,-164-55,90])rotate([0,180,90])multichannel_drypad();
//multichannel_drypad_384();

// corner_plate_set();
/*
 translate([160+188,0,0])rotate([0,0,0])rightcorner_bar_plate_set();
 translate([160+188,0-139,0])rotate([0,0,0])front_rightcorner_bar_plate_set();
 translate([160,0-139,0])rotate([0,0,0])bar_plate_set();
 translate([0,0-139,0])front_corner_plate_set();
 translate([160,0,0])rotate([0,0,0])bar_plate_set();
*/



//translate([0,0,200])rotate([90,0,90])import("CoreXY_Tool_Changer_Motion_System/files/m8_ybar_corexy.stl");

//translate([-8,0,0])iverntech_slider_tslot_connector();
//rotate([0,180,0])iverntech_slider_shuttle_bottom();

//translate([-49.5+12,345,300-11])rotate([0,180,180])ivernetech_slider_module_wider();
//translate([420+50,-164-55,90])rotate([0,180,90])multichannel_drypad();
//zbed_smz_wider_nomove();
//microfluidics_set();

//left_outside_frame_wider_zbed();

/*
translate([-50,0,0])difference(){
cube([10,22,4]);
translate([5,3.5,-0.1])#cylinder(r=3.7/2,h=40);
translate([5,3.5+12,-0.1])#cylinder(r=3.7/2,h=40);
}
*/

//translate([0,-14+19,-26])slider_assy(100,100);
//filament_linearactuator_multichannel_wider();
//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();

//translate([0,-55,0])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
//shuttle_back();
//translate([15-25+229.5,206.5-11,-63+400])rotate([90,0,0])sandwich_sliderwheel_assy();
//color("")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
//slider_front_assy_multichannel();
///slider_back_assy();
//shuttle_back();
//translate([49.7,31,25])slider_wall();
//rotate([-90,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider();

/*
translate([18.55,10-1,-3])cube([8,11.95,2]);
color("gainsboro")translate([-25-12,5+4,41-12])rotate([-90,0,0])import("files/gt2belt_holder.stl");
*/


//filament_linearactuator_shuttle();
//linearactuator_filament_encodershuttle();

//syringeplunger_modular_linearactuator_assy_igus_TW_04_07();
//filamentdriver_formed_modular_linearactuator_igus_TW_04_09();
//igus_lowprofile_assy();


//tslot20innerbracket_rtangle();

//aluminum_extrusion_breadboard();
//topbreadboard();

//tslot_topbreadboardmount();

//extrusion_lid_coupler_breadboard();

//iverntech_pump_slider_plate();

//back_plate_plug_rise();
//amp_powersupply_wallB_plug();
//translate([70,1,0])#miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
//translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");

//rotate([0,90,0])tslot20innerbracket();

//syringe_1ml_stack();
// translate([-141,200-19.7-32-225,44])rotate([0,0,-90])syringe_cavro250ul_plungerclip();

//miuzei_camera_module();
//syringe_1ml_plungerclip_1piece();
//one_1ml_syringe_parts();
// translate([0,70,-0.1])one_channel_cavro250ul_clamp();
// gantry_shelves_wider();

//color("darkgrey")translate([0-37,3,-1+18])washbowl_8tip_drypad();
//color("darkgrey")translate([0,3,-1+18])washbowl_8tip();
//color("darkgrey")translate([0,3,-1])washbowl_8tip_base();
// washplate_mount();


/*
translate([0,0,10])color("pink")phillip_lid();
phillip_base();
*/

//gesim_mount_lego();

//connectionarms2(30);
/*
rotate([0,90,0])miuzei_camera_breadboard_screwstub_gesimtip();
translate([-27-1.3-3.2+0.04,-7,12.4])rotate([90,0,90])#gesim_mount_lego_slot();


rotate([0,180,0])gesim_mount_lego_slot();
rotate([0,90,0])miuzei_camera_breadboard_screwstub_gesimtip();
*/


//zdrive_corexy();
//color("pink")zdrive_corexy_beltplate();
//color("lime")zdrive_corexy_beltplate_tslotconnect();





/*
fritholder();
translate([13,0,0])fritholder_top();
*/

module fritholder_top(){
difference(){
cylinder(r=(5.2+4+4)/2,h=2.1+3.5+1,$fn=6);
translate([0,0,3.5])#cylinder(r=(5.2+4+0.2)/2,h=2.2+3,$fn=6);
translate([0,0,-1])#cylinder(r=3.8/2,h=30);
}
}

module fritholder(){
difference(){cylinder(r=(5.2+4)/2,h=2.1+3.5,$fn=6);
translate([0,0,3.5])#cylinder(r=5.2/2,h=2.1);
translate([0,0,-3])#cylinder(r=3.8/2,h=12.1);
}
}


//translate([-27-1.3-3.2,-7,12.4])rotate([90,0,90])gesim_mount_lego_slot();
//rotate([0,90,0])miuzei_camera_breadboard_screwstub_gesimtip();
/*
*/



//slider_front_assy_multichannel();

//slider_front_assy_multichannel();
//translate([5,385,307+8])rotate([0,180,180])
//translate([-9+23+2,350-125,-25+4.5+12.5-12.5])rotate([90,0,0])tslot20(100);
//translate([179.5,180-12.5+1.5,300-1])rotate([-90,0,180])multichannel_assy_wider();
//translate([208,188+1.5,342])rotate([90,0,0])filament_linearactuator_multichannel_wider();
/*
*/

/*
translate([208-151.5,188+1.5,342-35])rotate([90,0,0])
zdrive_corexy();
translate([208+151.5+20,188+1.5-16,342-35])rotate([-90,180,0])
color("pink")zdrive_corexy_beltplate();
translate([208+151.5+20,188+1.5-16,342-35])rotate([-90,180,0])
color("lime")zdrive_corexy_beltplate_tslotconnect();
*/
//translate([208+151.5+20,188+1.5-16,342-35])rotate([-90,180,0])
//color("pink")zdrive_corexy_beltplate();

/*
*/
//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();


//stroboscope_miuzei_back();
//stroboscope_miuzei_mirror(10);


//XY_bearings_Right_x1();


//iverntech_slider_tslot_connector();
//usbs_socket_alu_support_lid_usbs_cover();

//color(col)translate([28,21,5])bananajackpanel();
//projection(cut = false)
//back_plate_x1_wider();
//right_plate_x1_wider();
//left_plate_x1_wider();
//pcb_panels_wider();

//cube([20,20,7]);

//translate([69.2-75,13-60-42+3,-52])rotate([90,0,0])mirror([0,1,0])bom_controlpanel();
//conveyer_panel_pcb_holder();
//mirror([0,1,0])import("files/endstop_y.stl");

//translate([30,0,0])cube([40,25,4]);

//openmv_nice_assy_stroboscope();
//stroboscope_assy();
//raspizerobase_extrusion();
//translate([-7-15,-25+120-31.5+16.4-36,-37-17+10+110-1])rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");

//rotate([0,180,0])miuzei_lenscap(16);
//translate([-18+2,100-21+1,-26.3+10-1.5])rotate([0,0,90])connectionarms2(0);


//translate([-15,60-20,35])rotate([90,180,0])miuzei_lenscap(11);

//pcb_panels_wider();

/*
//translate([-15,60-20,35])rotate([90,180,0])miuzei_lenscap_stroboscope(11+0);
stroboscope_miuzei();
translate([34-0.5,-60+0-24+51.5-22-0.4,-20+2-0.5]){
//miuzei_camera_curtain();
//miuzei_camera_curtain_support_stroboscope();
//translate([-30,0,0])mirror([1,0,0])miuzei_camera_curtain_support_stroboscope();
translate([-15,60-20,35])rotate([90,180,0])miuzei_lenscap_stroboscope(11+0);
translate([-35-10,90-50,64-37])rotate([90,0,0]){
translate([30,1,8])#miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}
}
*/


module miuzei_camera_curtain(){
translate([0,32,0])difference(){
translate([-15+16-25,60-20+5,35-10+1])cube([10+3+25,3,15]);
//translate([-15+13+5-1,60-20+5+25,35-10+5+1])rotate([90,0,0])#cylinder(r=3.8/2,h=40);
translate([-15+13+5-1+8.5,60-20+5+25+10,35-10+5+1-1])rotate([90,0,0])#cylinder(r=2.7/2,h=60);
}
}

/*
module miuzei_camera_curtain_support(){
difference(){
union(){
translate([-15+13,60-20+5,35-10+1])cube([10+3,5,10]);
translate([-15+13+9,60-20+5,35-10+1])cube([7,30,8]);
}
translate([-15+13+5-1+8.5,60-20+5+25+10,35-10+5+1-1])rotate([90,0,0])#cylinder(r=2.7/2,h=60);
translate([-15+13+5-1,60-20+5+25,35-10+5+1])rotate([90,0,0])#cylinder(r=3.8/2,h=40);
}
}
*/
module miuzei_camera_curtain_support_stroboscope(){
difference(){
union(){
translate([-15+13,60-20+5,35-10+1])cube([10+3+5,5,10]);
translate([-15+13+9+5,60-20+5,35-10+1])#cube([7,30,8]);
}
translate([-15+13+5-1+8.5,60-20+5+25+10,35-10+5+1-1])rotate([90,0,0])#cylinder(r=2.7/2,h=60);
translate([-15+13+5-1,60-20+5+25,35-10+5+1])rotate([90,0,0])#cylinder(r=3.8/2,h=40);
}
}






//translate([28,21,5])liquidlevel_pumps_pcb();
//translate([69.2-75,13-60-42+3,-52])rotate([90,0,0])bom_controlpanel();

//translate([0,0,-13.5])multichannel_pipette_holder_linear_actuator_connect_cameramount();

//multichannel_syringe_module();


/*
for(i=[0:2]){
translate([0+i*9,0,0]){
rotate([0,90,0])miuzei_camera_breadboard_screwstub_gesimtip();
translate([-27-1.3-3.2,-7,12.4])rotate([90,0,90])gesim_mount_lego_slot();
}
}
*/
//gesim_mount_lego();
//multichannel_syringe_module();


module gesim_mount_lego_slot(){
translate([0,0,3.2])difference(){
union(){
translate([0,-2,-2])cube([10,1.85,3.2+2]);
translate([0,7.55,-2])cube([10,1.85,3.2+2]);
translate([0-8,0-0.15,0-0.05])cube([10+8,7.7,3.252]);
}
translate([0+5,7.5/2,-4.3])cylinder(r=2/2,h=20);
translate([-8.5-4-2+10.5,-11+13,-29.3-6])rotate([0,0,0])cylinder(r=2/2,h=50);
}
}



module gesim_mount_lego(){
difference(){
cube([20,7.5,3.2]);
translate([0+5,7.5/2,-4.3])#cylinder(r=2.7/2,h=20);
}
}


//nalgene_cap_for_sst_liquidlevel();
//nalgene_bottle_assy_electrocaloric();
//nalgene_liquidsensor();
//pressurecompensation_bottle();

// translate([6.5,-6.5,185])nalgene_cap_for_electrocaloric();



//multichannel_plunger_clamp();

//multichannel_syringe_module();
//translate([0,0,7])color("gainsboro")plate_aligner_on_zbed_wider();
//zbed_multichannel_setup_wider();

//atx_power_connect_assy();


/*
 corner_plate_set();
 translate([0,0-139,0])front_corner_plate_set();
 translate([160,0-139,0])rotate([0,0,0])bar_plate_set();
 translate([160,0,0])rotate([0,0,0])bar_plate_set();
 translate([160+188,0-139,0])rotate([0,0,0])front_rightcorner_bar_plate_set();
 translate([160+188,0,0])rotate([0,0,0])rightcorner_bar_plate_set();
*/






/*
difference(){
cube([35,18,4]);
a = 0;
translate([8+a,9,-1])cylinder(r=4.7/2,h=20);
translate([8+20+a,9,-1])cylinder(r=4.7/2,h=20);
}
*/
//translate([0,70,-0.1])syringe_1ml_stack_1piece_multichannel();

//gesim_mount();

//multichannel_syringe_module();


//translate([-100,-100,0])rotate([90,-90,0])linearactuator_cordglide();
//translate([-11.5+3.8+(9*5),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")miuzei_camera_breadboard_screwstub();




//cables_wall();


// translate([-50,6,240])cable_support_extrusion();
// translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
// rotate([0,0,90])cable_support();

//cordclamp();


//gesim_mount();

// zbed_smz_wider_nomove();
//raspizerobase_extrusion();

// xshuttle_assy_wider(100,100);

//color("gainsboro")translate([-25-12,5+4,41-12])rotate([-90,0,0])import("files/gt2belt_holder.stl");
// slider_assy(100,100);
//slider_front_assy_multichannel();
//translate([179.5,180-12.5+1.5,300-1])rotate([-90,0,180])multichannel_assy_wider();
//translate([208,188+1.5,342])rotate([90,0,0])filament_linearactuator_multichannel_wider();
//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();

// translate([0,-14+19,-26])slider_assy(100,100);
//iverntech_slider_x4();

//iverntech_slider_wider(100);
//iverntech_slider();
//iverntech_slider_tslot_connector();
//iverntech_slider_shuttle_bottom();

//bom_controlpanel();

//color(col)translate([28,21,5])bananajackpanel();

//rotate([0,180,0])bottom_bed_fix();
// hdmi_rj45_usb_panel();


//translate([-60-7,25-55-45,-60])rotate([0,0,180])XY_motor_x2higher();
//XY_motor_x2higher_3dprint();

//mirror([1,0,0])XY_motor_x2higher_3dprint();

//joinpieces_bottom_surface();

module joinpieces_bottom_surface(){
  difference(){
   cube([25,60,4]);
   translate([12.5,10,-0.2])#cylinder(r=5/2,h=20);
   translate([12.5,50,-0.2])#cylinder(r=5/2,h=20);
  }
} 
 
/*
translate([28,21,5])syringe_pcb_holder_back();
translate([40-12.5,-40+61,2])syringe_pcb_holder();
translate([40-12.5,-40+61,6])syringe_pcb_holder_cover();
translate([40-12.5+53,-40+61,2])syringe_pcb_holder_placeholder();
*/

//noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);

//pcb_panels_wider();
//bananajackpanel();
//liquidlevel_pumps_pcb();
//atx_power_connect_assy();
//translate([100,-200,0])one_1ml_syringe_parts();

//translate([-74-8,-35,465-140])rotate([0,-90,0])multichannel_syringe_module();
//multichannel_plunger_clamp();
//multichannel_syringeshuttle_clipbracket();
//eight_multichannel_assay();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();







//translate([100,-200,0])one_1ml_syringe_parts();

// translate([0,-14+19,-26])slider_assy(x=10,y=10);
//iverntech_slider();
//iverntech_slider_tslot_connector();

//iverntech_connector();

//filament_linearactuator_multichannel_wider();

//translate([15-25+229.5,206.5-11,-63+400])rotate([90,0,0])
//color("gainsboro")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall();

//multichannel_assy_wider();

//slider_front_assy_multichannel();
//slider_back_assy();

//ledamp();
z = 40;
// translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);

/*
 corner_plate_set();
 translate([0,0-139,0])front_corner_plate_set();
 translate([160,0-139,0])rotate([0,0,0])bar_plate_set();
 translate([160,0,0])rotate([0,0,0])bar_plate_set();
 translate([160+188,0-139,0])rotate([0,0,0])front_rightcorner_bar_plate_set();
 translate([160+188,0,0])rotate([0,0,0])rightcorner_bar_plate_set();
*/
//translate([0,0,7])color("gainsboro")plate_aligner_on_zbed_wider();






module ledamp(){

difference(){
cube([50,13,3]);
translate([5,13/2,-1])cylinder(r=3.8/2,h=20);
translate([50-5,13/2,-1])cylinder(r=3.8/2,h=20);
translate([5+10,13/2,-1])cylinder(r=5.2/2,h=20);
translate([5+20,13/2,-1])cylinder(r=5.2/2,h=20);
translate([5+30,13/2,-1])cylinder(r=5.2/2,h=20);
}
}


module bananajack_amp(){
difference(){
cube([60,17,3]);
translate([5,17/2,-0])#cylinder(r=3.8/2,h=30);
translate([15,17/2,-1])#cylinder(r=7/2,h=30);
translate([15+11,17/2,-1])#cylinder(r=7/2,h=30);
translate([15+22,17/2,-1])#cylinder(r=7/2,h=30);
translate([60-5,17/2,-0])#cylinder(r=3.8/2,h=30);
}
}
//amp_lidbox_assy();

//atx_print_pcb_connector();
//bananajackpanel();

//syringe_pcb_holder_back();
//syringe_pcb_holder_for_syringemodule();
//hdmi_usb_4pin_5pin_10pin_panel();
//hdmi_rj45_usb_panel();

module atx_print_pcb_connector(){

difference(){
translate([15,10,0])cube([14,14,4]);
translate([15+7,18,-1])#cylinder(r=3.9/2,h=30);
}
difference(){
translate([15,-20,0])cube([14,14,4]);
translate([15+7,-20+6,-1])#cylinder(r=3.9/2,h=30);
}

//sp = 3.85;
sp = 4.2;
difference(){
translate([-8-1,-10+sp/2,0])
cube([58+6,20,7]);
translate([-8+5-3,-10+sp/2,0])
#translate([3,5,2])cube([49.5+3,10,20]);
for(i=[0:11]){
translate([i*sp,0,-1])#cylinder(r=1,h=4);
translate([i*sp,sp,-1])#cylinder(r=1,h=4);
}
}
}


/*
for(i=[0:3]){
translate([0,i*11,0])teensy_enclosure_highnut();
translate([11,i*11,0])teensy_enclosure_nutspacer(3.8);
translate([22,i*11,0])teensy_enclosure_nutspacer(2.8);
}
*/

module teensy_enclosure_nutspacer(dia){
difference(){
translate([0,0,0])cylinder(r=10/2,h=6);
translate([0,0,-1])cylinder(r=dia/2,h=50);
}
}

module teensy_enclosure_highnut(){
difference(){
rotate([0,0,45])cylinder(r=10/2,h=25);
translate([0,0,-1])cylinder(r=2.9/2,h=50);
}
}

//translate([143,0,0])amp_powersupply_wallB_plug();
// hdmi_rj45_usb_panel();
//translate([40-12.5,-40+61,2])syringe_pcb_holder();
//translate([40-12.5-40,-40+61,6])syringe_pcb_holder_cover();



//amp_lidbox_assy();
//amp_powersupply_box_assy();
//projection(cut = false)
//teensy_amp_module();
//rotate([0,90,0])tslot20innerbracket();

//bottom_x1_wider_a();
//bottom_x1_wider_b();






module bottom_x1_wider_a(){
 translate([14+(708.8*0.58)-1,19+(638.4*0.58),13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([182,-30,0])#cube([301,500,5]);
 } 
 translate([-3-114,-2-40,0-1])cube([(595+3)/2,(495+5)+30,3+4]);
}
}

module bottom_x1_wider_b(){
 translate([14+(708.8*0.58)-1,19+(638.4*0.58),13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([-115,-30,0])#cube([297,500,5]);
 }
 translate([-3+185,-2-40,0-1])cube([((595+3)/2)+5,(495+5)+36,3+4]);
}
}



//miuzei_camera_module();
//translate([-18+2,100-21+1,-26.3+10-1.5])rotate([0,0,90])connectionarms2(0);
//translate([30,1,8])#miuzei_cover();

//nalgene_cap_for_electrocaloric();
//rotate([0.0,90])smallsyringe_valvesupportmodule_plate();
//translate([100,-200,0])one_1ml_syringe_parts();

//nalgene_cap_for_sst_liquidlevel();
//nalgene_bottle_assy_electrocaloric();
//nalgene_liquidsensor();
//pressurecompensation_bottle();

 //atx_connect();

module atx_connect(){
difference(){union(){
cube([130,20,2]);
translate([50,17,0])cube([30,20,4]);
translate([4,10,0])cylinder(r=10/2,h=9);
translate([4+121,10,0])cylinder(r=10/2,h=9);
}
translate([55,31-0,-1])#cylinder(r=3.7/2,h=20);
translate([55+20,31,-1])#cylinder(r=3.7/2,h=20);
translate([4,10,-1])#cylinder(r=2.8/2,h=15);
translate([4+121,10,-1])#cylinder(r=2.8/2,h=15);
}
}

//translate([-100+32,60,0])rotate([0,0,90+180])diaphragmpump_end_6pin_pcb();
//translate([0,0,0])peristaltic_pump_lid();

//translate([1,232,61.3])rotate([0,0,90])valveconnectpart();
//peristaltic_adafruit();
//translate([-40,0,0])rotate([0,0,90])diaphragmpump_end_6pin_pcb();
/*
*/


//translate([100,-200,0])one_1ml_syringe_parts();
//zbedslot_516_smz_zbed();
//  #translate([18,2,33])rotate([0,180,0])pololu_screw_nobacklash();

//iverntech_nextgen_syringe10ml_assy();
//iverntech_pump_slider();
//translate([0,-4,0])iverntech_pump_slider_plate();
//igus_TW_04_12_slider_plate();
//color("silver")translate([-34+5-9-3,20-3.5,3])igus_TW_04_12_slider();
//multichannel_syringeshuttle_clipbracket();



/*
module one_1ml_syringe_parts(){
 translate([0,70,-0.1])one_channel_syringe1ml_clamp();
 onechannel_plunger_clamp();
 //one_syringe1ml_clamp_top_luerlock();
 translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
 translate([0,70,-0.1])one_front_syringe1ml_clamp_luerlock();
 syringe_1ml_plungerclip();
}
*/


//translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
//color("")translate([-85-(i*14),105.5,44])rotate([-0,0,-90])

//
//multichannel_syringe1ml_clamp_luerlock();
//module one_syringe1ml_clamp_luerlock(){
//multichannel_plunger_clamp();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();

//translate([0,70,-0.1])multichannel_syringe1ml_clamp();
//one_multichannel_assay();



//eight_multichannel_assay();
//translate([-74-8,-35,465-140])rotate([0,-90,0])multichannel_syringe_module();
//color("darkgrey")translate([0,3,0])washbowl_1tip();
//igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
//translate([0,0,0])nextgen_syringe10ml_assy();

//translate([0,-4,0])iverntech_pump_slider_plate();
/*
color("gainsboro")translate([-25.75,123,-30])rotate([90,-90,0])syringeshuttle_clipbracket();
translate([0,-4,0])iverntech_pump_slider_plate();
translate([-26.5-20.5,-3.5-90+35,3])iverntech_model_300();
*/


//igus_TW_04_12_slider_plate();

//ivernetech_slider_module();
//iverntech_slider();
// xshuttle_assy(x=30,y=50);


//pressurecompensation_bottle();
//translate([0,0,10])color("pink")phillip_lid();
//phillip_base();



module phillip_lid(){
difference(){
union(){
translate([-12-10,-37.5-10,0])cube([25+20,75+20,10]);
}

translate([-12+3,-37.5-10+14,-0.1])cube([25-6,75-8,50]);
translate([-12-1,-37.5-1,10-1.5])cube([27,77,1.6+10]);
translate([-12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([0,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);


translate([18,42,-20])rotate([0,0,45])#cylinder(r=(3.7)/2,h=100);
translate([-18,42,-20])rotate([0,0,45])#cylinder(r=(3.7)/2,h=100);
translate([18,-42,-20])rotate([0,0,45])#cylinder(r=(3.7)/2,h=100);
translate([-18,-42,-20])rotate([0,0,45])#cylinder(r=(3.7)/2,h=100);
}
}

module phillip_base(){
translate([-12,-37.5,10-1])color("lightblue")cube([25,75,1]);
difference(){
union(){
translate([-12-10,-37.5-10,0])cube([25+20,75+20,10]);
}

translate([-12-2,-37.5-10+14+5,-0.1])cube([25+4,75-18,50]);
translate([-12+3,-37.5-10+14,-0.1])cube([25-6,75-8,50]);
translate([-12-1,-37.5-1,10-1.5])cube([27,77,1.6+10]);
translate([-12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([0,60,5])rotate([90,0,0])#cylinder(r=(3.7)/2,h=150);
translate([12,60,5])rotate([90,0,0])#cylinder(r=(3.7)/2,h=150);
translate([18,42,-20])rotate([0,0,45])#cylinder(r=(2.7)/2,h=100);
translate([-18,42,-20])rotate([0,0,45])#cylinder(r=(2.7)/2,h=100);
translate([18,-42,-20])rotate([0,0,45])#cylinder(r=(2.7)/2,h=100);
translate([-18,-42,-20])rotate([0,0,45])#cylinder(r=(2.7)/2,h=100);
}
}





//rotate([-90,0,0])color("lime")light_connector();

//99cent_lamp();

module 99cent_lamp(){
difference(){
union(){
translate([0,20,0])cylinder(r=40/2,h=10);
translate([11+1.6,0.5-2,0])cube([6,26,10]);
translate([11-29.6,0.5-2,0])cube([6,26,10]);
translate([0,43+4,5])rotate([90,45,0])#cylinder(r=14.14/2,h=10,$fn=4);
}
translate([0,43+40,5])rotate([90,0,0])cylinder(r=2.7/2,h=100);
translate([0,33+3.5,5])rotate([90,0,0])cylinder(r=8/2,h=100);
translate([-30,3,5])rotate([0,90,0])cylinder(r=2.7/2,h=100);
translate([-30,3,5])rotate([0,90,0])cylinder(r=3.7/2,h=30);
translate([0,20,-20])cylinder(r=25.4/2,h=100);
for(i=[0:20]){
translate([0,20-i,-20])cylinder(r=25.4/2,h=100);
}
}
}

module gesim_mount(){
difference(){
union(){
translate([0,17.5,-6.5])cube([56-30-15,2.5,6.5+8]);
translate([0,0-1,-6.5])cube([56-30-15,8,6.5+8]);
translate([0,0,-6.5])cube([56-30-15,20,6.5]);
//translate([0,0,-6.5])#cube([56-25,13,4.5]);
translate([0,0-20,-6.5])cube([56-45,13+20,4.5]);
translate([4,9,0])for(i=[0:0]){
 translate([i*4.5,0,0])cube([2,6.5,6.25]);
}
}
translate([5,13/2-20,-10])#cylinder(r=4/2,h=20);
translate([27,13/2,-10])#cylinder(r=4/2,h=20);
translate([27,13/2,-10])#cylinder(r=4/2,h=20);
translate([4+3+0.2+1-1,10,0])for(i=[0:0]){
 translate([i*4.5+0.05,0+16-9,0+1+2.5+1-1])rotate([90,0,0])cylinder(r=2/2,h=30);
 //translate([i*4.5+0.05,0+16-23+1,0+1+2.5])rotate([90,0,0])#cylinder(r=4.5/2,h=6);
 //translate([i*4.5+0.05,0+16-17.5,0+1+2.5])rotate([90,0,0])cylinder(r=2.8/2,h=15);
}

//translate([13,0-2,-20])cube([30,30,30]);
}
}


//import("BOM_inventory/build3/stls/valveconnectpart_microservo.stl");
//microfluidics_set();
//multichannel_drypad();

//valve_assy_microservo();
//translate([1+4,232,61.3])rotate([0,0,90])#valveconnectpart_microservo();

//multichannel_drypad_384();


//rotate([90,0,0])valvemountplate_screwattach_smallersyringe_vertical_attach();
//valveconnectpart_microservo();
//translate([1,232,61.3])rotate([0,0,90])valveconnectpart();
//valve_assy_microservo();
//translate([0,130,0])microservo();
//rotate([0,90,0])smallsyringe_valvesupportmodule_plate_microservo();
//valveconnectpart();

//cube([30,50,12]);
//translate([1,232,61.3])rotate([0,0,90])valveconnectpart();
//rotate([0.0,90])smallsyringe_valvesupportmodule_plate();
//color("gainsboro")translate([52,190,63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate();
//rotate([0,90,0])smallsyringe_valvesupportmodule_plate_microservo();
//color("gainsboro")translate([36,295.5,18])
//rotate([0,90,90])valvemountplate_screwattach_smallersyringe();

//microfluidics_tjunction();
//translate([1,232,61.3])rotate([0,0,90])valveconnectpart_microservo();
//translate([0,0,0])nextgen_syringe10ml_assy();

//translate([0,0,0])nextgen_syringe30ml_assy();
//translate([-45+4,85+16.3-12+12-10,35+3.5])rotate([0,90,90])syringe_30ml();
//rotate([0,90,0])syringe30ml_clipmount();
//translate([-45+4,85+16.3-12,35+3.5])rotate([0,90,90])syringe_30ml();

//rotate([0,-90,0])syringe30mlshuttle_clipbracket();

//translate([0,98,0])syringe30mlmount_plungerfix_assy();

//color("gainsboro")translate([-25.75,123,-30])rotate([90,-90,0])syringe30mlshuttle_clipbracket();

//rotate([0,90,0])valvemountplate_screwattach_smallersyringe();
//rotate([0,90,0])smallsyringe_valvesupportmodule_plate();
//color("gainsboro")translate([36,295.5,18])rotate([0,-90,90])
//rotate([90,0,0])valvemountplate_screwattach_smallersyringe_vertical_attach();

//valve_assy();

module microfluidics_tjunction(){
h=4;
difference(){
union(){
cube([22,60,4]);
translate([0,-3,0])cube([10,70,4]);
}

translate([5,0,-0.2])#cylinder(r=2.8/2,h=20);
translate([5,10,0])#cylinder(r=2.8/2,h=20);

translate([7,25,0]){
translate([5,0,-0.2])#cylinder(r=2.8/2,h=20);
translate([5,10,-0.2])#cylinder(r=2.8/2,h=20);
}

translate([0,51,0]){
translate([5,0,-0.2])#cylinder(r=2.8/2,h=20);
translate([5,10,-0.2])#cylinder(r=2.8/2,h=20);
}
translate([0,5,h])rotate([0,90,0])cylinder(r=4/2,h=12);
translate([15.5,23,h])rotate([90,90,0])#cylinder(r=4/2,h=13);
translate([15.5,23+14.8,h])rotate([90,90,0])#cylinder(r=4/2,h=15);
translate([0,23+14.8-7.5,h])rotate([0,90,0])#cylinder(r=4/2,h=15);
translate([15.5,23+14+13.8,h])rotate([90,90,0])#cylinder(r=4/2,h=13);
translate([0,51+5,h])rotate([0,90,0])cylinder(r=4/2,h=12);
for(i=[2:10]){
translate([10+i/2+0.5,5+i/2+0.5,h])rotate([0,90,0])#sphere(r=4/2);
}
for(i=[2:10]){
translate([10+i/2+0.5,51+5-i/2+0.5,h])rotate([0,90,0])#sphere(r=4/2);
}
}
}



//translate([12+16,12+30,10])rotate([0,0,180])import("CoreXY_Tool_Changer_Motion_System/files/Y_Axis_rod_holder.STL");

//bed_leveler_better_lm8uu_for_metalversion();
//translate([84,-90-4,-114+275])rotate([0,180,0])

//m8_ybar_corexy();

//color("gainsboro")clamp_bottom_simple_m8_smoothrodholder_for_z();



module peristaltic_pump_lid(){
difference(){
translate([0,30,0])cylinder(r=64,h=3);
translate([-95,30,0])rotate([0,0,45])cylinder(r=104,h=3,$fn=4);
translate([-15,-25,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([-15,30,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([-15,85,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([58,30,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([30,75,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([30,-15,0])rotate([0,0,0])#cylinder(r=3.7/2,h=13);
translate([0,62+1,0])peristaltic_adafruit();
translate([34,62/2,0])peristaltic_adafruit();
translate([0,-2,0])peristaltic_adafruit();
}
}
module peristaltic_adafruit(){
translate([0,-25,0])cylinder(r=2.7/2,h=13);
translate([0,0,0])cylinder(r=29/2,h=13);
translate([0,25,0])cylinder(r=2.7/2,h=13);
}
//translate([50-50,-3,1])rotate([0,0,180])
//translate([30,0,0])drypad();
//color("darkgrey")translate([0-37,3,-1+18])washbowl_8tip_drypad();
//color("darkgrey")translate([0,3,-1+18])washbowl_8tip();
//color("darkgrey")translate([0,3,-1])washbowl_8tip_base();

// washplate_mount();
// microwell_plate_riser(144);
 //microwell_plate_rising_surface_washmount(144);
//washbowl_assy();

//color("darkgrey")translate([0,3,0])washbowl_1tip();

//color("darkgrey")washbowl_watervacinput();
//color("darkgrey")translate([9.5+16-1.5,0+50,4])rotate([0,180,180])drypad();
//color("darkgrey")translate([0,3,-1])washbowl_8tip();

//color("darkgrey")translate([0,3,-19])washbowl_8tip_base();


// xshuttle_assy_wider(20,100);
//valve_assy();

//rotate([0,0,0])decapper_servo_handle();
//decapper_servo_arm();

/*
difference(){
cube([24,24,6.8]);
translate([12,12,-0.1])#cylinder(r2=4,2,r1=6.5/2,h=7);
}
*/
//rotate([90,45,0])decapper_supports();

/*
translate([-59,0,0])
//translate([-5.5,-5,3])
#decapper_base_top();
decapper_base_bottom();
decapper_supports();
*/
module decapper_supports(){
difference(){
cylinder(r=8,h=58,$fn=4);
translate([0,0,-1])cylinder(r=2.8/2,h=65);
}
}











/*
difference(){
cylinder(r=6/2,h=2);
translate([0,0,-0.1])#cylinder(r=3/2,h=10);
}
*/
//translate([0,60-(0),0])gasket_48well_lid();

/*
difference(){
union(){
cube([119,84,3]);
translate([5+10,6+6,-0.1])#cube([15,55,5]);
translate([38.5+15,6+6,-0.1])#cube([15,55,5]);
translate([74.5+15,6+6,-0.1])#cube([15,55,5]);
}
translate([5,6,-0.1])#cylinder(r=3.2/2,h=20);
translate([5,6+70,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+74.5,6,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+74.5,6+70,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+38.5,6,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+38.5,6+70,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+112.5,6,-0.1])#cylinder(r=3.2/2,h=20);
translate([5+112.5,6+70,-0.1])#cylinder(r=3.2/2,h=20);
}

*/
/*
 translate([0,14,0])for(i=[0:2]){
 translate([0,60-(i*37),0])gasket_48well_lid();
 }

translate([97,14,0])
 for(i=[0:2]){
 translate([0,60-(i*37),0])gasket_48well();
 }
*/
// gasket_48well();

module gasket_48well_lid(){
sh=2.5;
difference(){
union(){
translate([0,0,1])cube([90,45,3]);
cube([90,45,3]);
translate([4,4,0])cylinder(r=8/2,h=4+sh);
translate([4,45-4,0])cylinder(r=8/2,h=4+sh);
 translate([85,45-4,0])cylinder(r=8/2,h=4+sh);
 translate([85,4,0])cylinder(r=8/2,h=4+sh);
 translate([(90-4)/2,45-4,0])cylinder(r=8/2,h=4+sh);
 translate([(90-4)/2,4,0])cylinder(r=8/2,h=4+sh);
}
translate([(90-72)/2,(45-23)/2,-1])cube([72,23,8]);
translate([(90-76)/2,(45-29)/2,2.9])cube([76,29,8]);
 translate([4,4,-1])cylinder(r=3.7/2,h=30);
 translate([4,45-4,-1])cylinder(r=3.7/2,h=30);
 translate([85,45-4,-1])cylinder(r=3.7/2,h=30);
 translate([85,4,-1])cylinder(r=3.7/2,h=30);
 translate([(90-4)/2,45-4,-1])cylinder(r=3.7/2,h=30);
 translate([(90-4)/2,4,-1])cylinder(r=3.7/2,h=30);
}
}



module gasket_48well(){
difference(){
cube([90,45,7]);
translate([(90-76)/2,(45-29)/2,2.1])cube([76,29,10]);
translate([(90-72)/2,(45-23)/2,-2.1])cube([72,23,10]);
 translate([4,4,-1])cylinder(r=2.7/2,h=30);
 translate([4,45-4,-1])cylinder(r=2.7/2,h=30);
 translate([85,45-4,-1])cylinder(r=2.7/2,h=30);
 translate([85,4,-1])cylinder(r=2.7/2,h=30);
 translate([(90-4)/2,45-4,-1])cylinder(r=2.7/2,h=30);
 translate([(90-4)/2,4,-1])cylinder(r=2.7/2,h=30);
}
}



//cube([25,140,2.5]);

/*
 corner_plate_set();
 translate([0,0-139,0])front_corner_plate_set();
 translate([160,0-139,0])rotate([0,0,0])bar_plate_set();
 translate([160,0,0])rotate([0,0,0])bar_plate_set();
 translate([160+188,0,0])rotate([0,0,0])rightcorner_bar_plate_set();
*/
// translate([160+188,0-139,0])rotate([0,0,0])front_rightcorner_bar_plate_set();



// z_encoder_inbetween();
//abs_3mm_constraint();

//stepper_linear_m8nut_endstopflag(5);

//microwell_plate_riser(144);
// translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);
//multichannel_assy_wider();
//rotate([90,0,0])connectionarms2_half(0);
//miuzei_lenscap(16);
//rotate([0,180,0])miuzei_lenscap(9);

//miuzei_raspicam_base();



//multichannel_drypad();
//raspizerobase_extrusion();
//color("gainsboro")translate([-50+6,-115.5+7-4+130,1+56.5])rotate([180,0,180])
//stepper_linear_m8nut_endstopflag(6);
//translate([-7-15,-25+120-31.5+16.4,-37-17+10])rotate([0,-90,-90])

//mnt_md_justclip();


/*
difference(){
cylinder(r=12/2,h=4);
translate([0,0,-0.1])cylinder(r=6.2/2,h=10);
}
*/

//front_corner_plate_set();


//bar_plate_set();
//front_rightcorner_bar_plate_set();
//rightcorner_bar_plate_set();



//hdmi_rj45_usb_panel();
//syringe_panel_wider();

//translate([1,0-20,284+28])rotate([90,0,90])color("gainsboro")
//iverntech_connector();
//import("BOM/misumi_hts_v1/HFS5-2020-552-TPW.stl");
//translate([40-12.5+53,-40+61,2])syringe_pcb_holder_placeholder();

//miuzei_camera_module();
//zdrive_camera_assy();
//openmv_set();
//noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);
// translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);

//corner_plate_set();
/*
openmv_ball_adjust_set();
lasermount_assy();
lasermount_connector_cap();
*/



//translate([1,0,284])rotate([90,0,90])iverntech_connector();
//rotate([0,180,0])iverntech_slider_wider(10);
//translate([-8,0,0])iverntech_slider_tslot_connector();
//rotate([0,180,0])bottom_bed_fix();
//thinnermotormount();

//mirror([0,0,1])rotate([0,180,0])XY_motor_x2higher_3dprint();

//translate([-35,25,30])plate_aligner_on_zbed_wider();

//translate([10-23+70+0+450+42,25-55-45,-65])rotate([0,180,180])mirror([0,0,1])XY_motor_x2higher();
//translate([-60-7,25-55-45,-60])rotate([0,0,180])XY_motor_x2higher();



//translate([0-26-18,90-13.5,-50-13+5])rotate([-90,0,-90])
//rotate([0,90,0])miuzei_camera_breadboard_a();
//import("BOM_inventory/build3/stls/miuzei_camera_breadboard_a.stl");
//rotate([0,180,0])import("BOM_inventory/build3/stls/miuzei_camera_breadboard_b.stl");
//translate([0,0,11])rotate([0,90,0])miuzei_camera_breadboard_b();


//rotate([-90,0,0])multichannel_pipette_holder_linear_actuator_connect_cameramount();



/*
translate([30,1+7,8-8])color("green")rotate([0,0,180])miuzei_lenscap(16);
translate([30,1,8])color("lime")miuzei_cover();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");


translate([0,0,-20]){
difference(){
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-10])color("lightblue")cylinder(r=8/2,h=18);
}
translate([30,4,-10-0.2])color("lightblue")cylinder(r=8/2,h=18);
}
*/
/*
translate([30,4,-10-0.2+13])color("black")rotate([0,0,45])cylinder(r=4/2,h=4,$fn=4);
difference(){
translate([30,4,-3])color("grey")cylinder(r=15.3/2,h=8);
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
}
*/
/*
*/


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

//translate([0-26-18,90-13.5,-50-13+5])rotate([-90,0,-90])miuzei_camera_breadboard();

//slider_assy(10);


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
translate([30,1,8])miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}


rotate([-90,0,0])multichannel_pipette_holder_linear_actuator_connect_cameramount();
}


//translate([190,52,420])rotate([180,0,90])color([160/255,160/255,160/255])camera_assy();

//rotate([0,90,0])tslot20innerbracket();
//zbedclampsmooth();
//clamp();




/*
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

//translate([-75,-95-45,-50+200])cube([630,575+50,2]);
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
