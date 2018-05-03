include <modparts.scad>
use<writescad/write.scad>



//rightside_underneath_plate_x1();

//washdry_pcv_pump_enclosure();

xshuttle_assy_stls();

//corexy_beltsetup(30,-20);


module xshuttle_assy_stls(){
//start x_axis(x)

  //start slider_assy(x);
  //start slider_front_assy();
   translate([20,-40,-28])linearactuator_filament_encodershuttle_filamentclamp();
   translate([-5,-6,26])rotate([0,180,0])inductivesensorcap();
    //start filament_linearactuator
    translate([0,-70,0])shuttle_front();
    translate([-55,5,37])rotate([-90,0,0])import("files/gt2belt_holder.stl");
    translate([-55,42,37])rotate([-90,0,0])import("files/gt2belt_holder.stl");
    translate([48.47-80+4-25,92+3-130-2,16.0-10])rotate([0,0,180])smaller_igus_slidermount();
    translate([-50,0,0])filament_linearactuator_shuttle();
    //end filament_linearactuator
  //end slider_front_assy();

  //start slider_back_assy();
   translate([-85,-45,0])shuttle_back();
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


