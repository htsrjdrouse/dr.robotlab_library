include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
include <nanoplotter.scad>
include <PiZero.scad>

one_1ml_syringe_parts();
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
// translate([0,0-55+55+29-29,0])gantry();
//igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
//translate([0,0,0])nextgen_syringe10ml_assy();
//iverntech_nextgen_syringe10ml_assy();
//iverntech_pump_slider();

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

//gesim_mount();


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
translate([0,17.5,-6.5])cube([56-30,2.5,6.5+8]);
translate([0,0-1,-6.5])cube([56-30,8,6.5+8]);
translate([0,0,-6.5])cube([56-30,20,6.5]);
translate([4,9,0])for(i=[0:3]){
 translate([i*4.5,0,0])cube([2,6.5,6.25]);
}
}
translate([4+3+0.2,10,0])for(i=[0:3]){
 translate([i*4.5+0.05,0+16,0+1+2.5])rotate([90,0,0])#cylinder(r=2/2,h=30);
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
//valve_assy();
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

//noconveyer_gantry_assy(20,-75+78-166+260,-45+50+100-50-100+70,-55,0,267,tcl,thcl);

/*
translate([-40,0,0])rotate([0,0,90])diaphragmpump_end_6pin_pcb();
translate([-100,0,0])rotate([0,0,90])diaphragmpump_end_6pin_pcb_lid();
*/

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
//translate([-74-8,-35,465-140])rotate([0,-90,0])multichannel_syringe_module();

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
//miuzei_camera_module();
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


//translate([-11.5+3.8+(9*5),80-1.5+0.5,-50+10-1.3])rotate([0,90,0])color("pink")miuzei_camera_breadboard_screwstub();
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
