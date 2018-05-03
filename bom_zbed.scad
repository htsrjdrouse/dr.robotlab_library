include <modparts.scad>
use<writescad/write.scad>


zbed_smz_stls();


//zbed_smz();

//wash_and_strobparts();
//translate([160-285,20-35,-3])rotate([0,180,90])color("DarkGray")washbowl_assy();

//washbowl_shim();

module zbed_smz_stls(){
 
//start zbed_smz_components
 translate([10,-108,5])pololu_screw_nobacklash_cap();
 translate([45,-108,5])pololu_screw_nobacklash_cap();
 translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*2,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*3,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([0,-30,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-90,-30,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-5,105,0])rotate([0,-90,90])z_encoder_clamp_wiper();
 translate([-80,-60,-1])import("bed_leveler_foot.STL");
 translate([-80,-30,-1])import("bed_leveler_foot.STL");
 translate([-170,-60,-1])import("bed_leveler_foot.STL");
 translate([-170,-30,-1])import("bed_leveler_foot.STL");
 //translate([0,0,0])import("bed_leveler_foot.STL");
//end zbed_smz_components
//start washbowl_assy
 translate([-60,-26,-11])washbowl_shim();
 translate([-50,-40,29])rotate([0,180,90])washbowl_watervacinput();
 translate([40,-10,-1])rotate([0,0,90])drypad();
 translate([-75,-103+17,9])rotate([0,180,90])washbowl_1tip();

//end washbowl_assy 


}
