include <modparts.scad>
use<writescad/write.scad>


zbed_smz_stls();

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
 //translate([10,-108,-1])pololu_screw_nobacklash_cap();
 //translate([45,-108,-1])pololu_screw_nobacklash_cap();
 translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*2,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*3,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([0,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-90,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-5,98,0])rotate([0,-90,90])z_encoder_clamp_wiper();
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

