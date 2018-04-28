include <modparts.scad>
use<writescad/write.scad>

bcl = [155/255,155/255,155/255];
cl = [155/255,155/255,155/255];

outside_frame_stls(bcl,cl);


module outside_frame_stls(){
 right_outside_frame_stls();
 translate([-10,130,-0])left_outside_frame_stls();
}


module right_outside_frame_stls(){
//begin right_outside_frame();
 for(i=[0:3]){
  translate([-88-(i*28),0,0])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
  translate([-88-(i*28),-58,0])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
 }
 translate([-6,50,180])rotate([0,90,90]) tslot20innerbracketlonger_smfrnz_back();
 translate([-30,50,180])rotate([0,90,90]) tslot20innerbracketlonger_smfrnz_back();
 //begin right_y_encoder_support(34);
 translate([0,0,15])rotate([0,90,0])backextruder_clamp();
 translate([23,0,15])rotate([0,90,0])backextruder_clamp();
 //end right_y_encoder_support(34);
 translate([0,0,180]) rotate([0,90,90]) tslot20innerbracket();
 translate([-25,0,180]) rotate([0,90,90]) tslot20innerbracket();
 translate([48,0,18])bearing_mount_smz();
 //begin motormount_smz();
  translate([-2,56,18.5])rotate([0,0,90])motormount_smz_justcad();
 //end motormount_smz();
//end right_outside_frame();
}


module left_outside_frame_stls(){
//begin left_outside_frame();
 //begin y_encoder_support(60);
 translate([0,0,15])rotate([0,90,0])backextruder_clamp();
 translate([23,0,15])rotate([0,90,0])backextruder_clamp();
 //end y_encoder_support(60);
 translate([-6,50,180])rotate([0,90,90]) tslot20innerbracketlonger_smfrnz_back();
 translate([-30,50,180])rotate([0,90,90]) tslot20innerbracketlonger_smfrnz_back();
 translate([0,0,180]) rotate([0,90,90]) tslot20innerbracket();
 translate([-25,0,180]) rotate([0,90,90]) tslot20innerbracket();
 translate([48,0,18])bearing_mount_smz();
 //begin motormount_smz();
  translate([-5,55,18.5])rotate([0,0,90])motormount_smz_justcad();
 //end motormount_smz();
 for(i=[0:3]){
  translate([-90-(i*30),0,0])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
  translate([-90-(i*30),-58,0])rotate([0,0,0])simple_m8_smoothrodholder_for_z();
//end left_outside_frame();
 }
}