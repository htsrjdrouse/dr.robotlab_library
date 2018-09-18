include <modparts.scad>
use<writescad/write.scad>
//translate([0,-20,30])rotate([0,0,0])import("bowden_extruder/Duct.stl");
//pololu_screw_nobacklash_cap();
//zbed_assy(100);

//zbed_fix();

//zbed_washer_hold_plate_into_place();
//color("pink")laser_zbed(144);

// x_level_guide();

 //y_level_guide();
 //color("lime")x_level_alignment_bar();


//tipbox_model(144);
//tipbox_leftmount(144);

tipbox_rightmount(144);
module tipbox_model(z){
translate([170,140,z+4])color("lime")cube([83,119,50]);
}

module tipbox_rightmount(z){
translate([170-45+130,142.5+87,z+4])difference(){
difference(){
union(){
color("red")cube([110,15,2]);
translate([90,0,0])color("red")cube([20,15,6]);
color("red")cube([10,15,6]);
translate([0,-9,0])color("red")cube([15,30-6,15]);
}
translate([9,7.5,-10])#cylinder(r=5/2,h=40);
translate([9,7.5,6])#cylinder(r=10/2,h=40);
translate([9+90,7.5,-10])#cylinder(r=5/2,h=40);
translate([-29,-4,10])rotate([0,90,0])#cylinder(r=3.7/2,h=100);
}
}
}

module tipbox_leftmount(z){
translate([170-45,142.5,z+4])difference(){
union(){
color("red")cube([43,15,6]);
translate([30,15,0])color("red")cube([13,20,15]);
}
translate([10,7.5,-10])#cylinder(r=6/2,h=40);
translate([10+25,7.5,-10])#cylinder(r=6/2,h=40);
translate([10,7.5+17,10])rotate([0,90,0])#cylinder(r=3.7/2,h=40);
}
}





module y_level_guide(){
translate([368,32,144+4])
difference(){
translate([1,-2,0])cube([16,90,2]);
translate([10-1,6,-10])#cylinder(r=8/2,h=20);
translate([10-1,6+75,-10])#cylinder(r=8/2,h=20);
}

}

module x_level_alignment_bar(){
translate([250,18-8+3,144+3])
translate([10,10,0])cube([160,10,2]);


}


module x_level_guide(){

translate([250,18,144-4])
difference(){
union(){
translate([10-30,0,0])#cube([120,20,4]);
translate([10-30,0,0])cube([120,5,10]);
for(i=[-1:3]){
translate([10+(i*26.5),0,0])cube([10,9,8]);
}
translate([7.5,5,0])cube([20,30,4]);
translate([88,5,0])cube([20,30,4]);
}
translate([17,20,0])#cylinder(r=9/2,h=30);
translate([17+80,20,0])#cylinder(r=9/2,h=30);
}
}


//zbed_metal_version();

module zbed_metal_version(){
//Not really though maybe it is now
translate([-113,13.5-6,-20])rotate([0,90,0])#zbed_connector_bar();
translate([-177,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([24.5,7.5,-30+3])bed_leveler_better_lm8uu_for_metalversion();
}
translate([42,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([59.5,7.5,-30+3])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
}
}




module zbed_3dprint_version(){
//Not really though maybe it is now
translate([-113,13.5-6,-20])rotate([0,90,0])#zbed_connector_bar();
translate([-177,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([24.5,7.5,-30+3])bed_leveler_better_lm8uu();
}
translate([42,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([59.5,7.5,-30+3])mirror([1,0,0])bed_leveler_better_lm8uu();
}
}




///rotate([0,90,0])zbed_connector_bar();
//lm8uu_smz_glider();
//bed_leveler_better_lm8uu();



//bed_leveler_better_lm8uu();
//translate([-40,81.5,200])rotate([0,180,0])zbedslot_516_smz_zbed();
//zbed_smz_stls();
//slidedeck_adjust_wheel();

/*
adafruit_microswitch_817();
difference(){
cylinder(r=12/2,h=6);
translate([0,0,-0.3])cylinder(r=6/2,h=7);
}
*/
/*
translate([-85,-90,0])raspi2_top_lego();
mirror([0,1,0])raspi2_bottom_lego_female();
*/
//translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
//motormount_smz_justcad();
//bearing_mount_smz();

module bed_support_strip(){
translate([22,7,10])
difference(){
cube([160,16,7]);
translate([160/2-8,8,0])#cylinder(r=3.5/2,h=20);
translate([160/2+8,8,0])#cylinder(r=3.5/2,h=20);
translate([6,8,0])#cylinder(r=5.5/2,h=20);
translate([6+24,8,0])#cylinder(r=5.5/2,h=20);
translate([115+10,0,0]){
translate([6,8,0])#cylinder(r=5.5/2,h=20);
translate([6+24,8,0])#cylinder(r=5.5/2,h=20);
}
}
}
 //zbed_wash_microwell_stls();
// slidedeck_adjust_wheel();

//zbed_wash_microwell_stls();

// translate([0,0,35])rotate([0,90,0])
//lm8uu_smz_glider();
//zbedslot_516_smz_zbed();

//color([100,100,100])
//zbed_smz_stls();

//zbedslot_516_smz_zbed();
//translate([0,3,0])washbowl_1tip();
//laser_zbed(144);
//laser_zbed_support_strobened();

//zbed_smz();

/*
projection(cut = false){
laser_zbed(144);
}
*/
/*
wash_and_strobparts();
laser_zbed_support_strobend();
laser_zbed(144);
*/
/*
laser_zbed_support_strobened();
translate([219,-0,282])rotate([0,180,0])laser_zbed_support_strobened();
translate([8,387,282])rotate([0,180,180])laser_zbed_support_strobened();
translate([219-50+263,387,0])rotate([0,0,180])laser_zbed_support_strobened();
*/


//translate([0,-360,-95])rotate([90,-0,-90])openmv_nice_assy_stroboscope();
//openmv_camera_mnt_zbed();

//openmv_set();

//laser_zbed(144);
//import("laser_zbed_144.stl");
//translate([0,-360,-95])rotate([90,-0,-90])openmv_nice_assy_stroboscope();
//openmv_set();
//openmv_nice_assy_stroboscope();



//wash_and_strobparts();
//translate([160-285,20-35,-3])rotate([0,180,90])color("DarkGray")washbowl_assy();

//washbowl_shim();

module zbed_smz_stls(){
//start zbed_smz_components
 translate([50,96,4])microwell_plate_guide();
 translate([10,-108,-1])pololu_screw_nobacklash_cap();
 translate([45,-108,-1])pololu_screw_nobacklash_cap();
 translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*2,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*3,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([0,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-90,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-5,98,0])rotate([0,-90,90])z_encoder_clamp_wiper();
 translate([-40,-60,-1])wiper_tip();
 translate([-170+106+90,-30+55+30+7,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 translate([-170+106+90,-30+55,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 //translate([-170,-60,-1])import("bed_leveler_foot.STL");
 //translate([-170,-30,-1])import("bed_leveler_foot.STL");
 translate([-170+106,-30+55,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 translate([-170+106,-30+55+30+7,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 //translate([0,0,0])import("bed_leveler_foot.STL");
//end zbed_smz_components
//start washbowl_assy
 //translate([-60,-26,-11])washbowl_shim();
 translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
 translate([40,-10,-1])rotate([0,0,90])drypad();
 translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
//end washbowl_assy 
}

module zbed_wash_microwell_stls(){
 //slidedeck_adjust_wheel();
//start zbed_smz_components
 translate([50,96,4])microwell_plate_guide();
 //translate([45,-108,-1])pololu_screw_nobacklash_cap();
//end zbed_smz_components
//start washbowl_assy
 //translate([-60,-26,-11])washbowl_shim();
 translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
 translate([40,-10,-1])rotate([0,0,90])drypad();
 translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
//end washbowl_assy 
}







