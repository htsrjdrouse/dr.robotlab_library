include <modparts.scad>
use<writescad/write.scad>

//syringe_pcb_holder_for_syringemodule();

//cable_support_extrusion();
//rotate([0,90,0])cable_support();
//rotate([0,90,0])cable_support_lid();

//cordclamp();

//m5bearing_washer();
//import("files/endstop_y.stl");

//endstop_z();

//xshuttle_assy_stls();
//filament_driver_assy_motormount();
//shh = 0.9;color([shh,shh,shh])color("gainsboro")translate([-0.5,-37,22+7])filament_linearactuator_shuttle();
//slider_front_assy_vertical_adjust_nema17();
//rotate([0,180,0])inductivesensorcap();
//linearactuator_filament_encodershuttle_filamentclamp();
//filament_linearactuator_smaller_igus_slidermount_vertical_adjust_nema17();
//slider_front_assy_vertical_adjust_nema17();
//shuttle_front_vertical_adjust();

/*
smaller_igus_slidermount_vertical_adjust_nema17();
rotate([0,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_spacer(6);
*/
//translate([0,0,-60])stepper_linear_m8nut_coupler_vertical_adjust_nema17_nut();
//rotate([90,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17();
//shuttle_back();


module xshuttle_assy_stls(){
//start x_axis(x)
  //start slider_assy(x);
  //start slider_front_assy();
   translate([20+0,-40-0,-28])linearactuator_filament_encodershuttle_filamentclamp();
   translate([-5,-6,26])rotate([0,180,0])inductivesensorcap();
    //start filament_linearactuator
    translate([0,-70+0,0])shuttle_front();
    translate([-55,5+0,37.34])rotate([-90,0,0])import("files/gt2belt_holder.stl");
    translate([-55,42,37.34])rotate([-90,0,0])import("files/gt2belt_holder.stl");
    translate([48.47-80+4-25,92+3-130-2,16.0-10])rotate([0,0,180])smaller_igus_slidermount();
    translate([-50+0,0,0])filament_linearactuator_shuttle();
    //end filament_linearactuator
  //end slider_front_assy();

  //start slider_back_assy();
   translate([-85+0,-45,0])shuttle_back();
   translate([39,0,6])rotate([0,180,0])wiper_clamp();
  //end slider_back_assy();
  //end slider_assy(x);
  //translate([15-25,206.5,-60+400])color("gray")
  //start wiper_clamp_yaxis();
  translate([50,0,6])rotate([0,180,90])wiper_clamp_yaxis();
  //stop wiper_clamp_yaxis();
//end x_axis(x);
//start x_encoder_support();
translate([0,55,15])rotate([0,90,90])#backextruder_clamp();
translate([20,55+10,15])rotate([0,90,90])#backextruder_clamp();
//end x_encoder_support();
}




