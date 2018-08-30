include <modparts.scad>
use<writescad/write.scad>

translate([-10,40,10])endstop_for_linearactuator();

//translate([-80,-20,-28])linearactuator_filament_encodershuttle_filamentclamp();

//filament_driver_assy_motormount();

//filament_driver_assy();
//filament_driver_assy_to_print();

//endstop_for_linearactuator();
//linearactuator_igus_slidermount_encoder_smoothpart();

//linearactuator_igus_slidermount_encoder_assy();

/*
translate([-60,0,6]){
linearactuator_igus_slidermount_encoder();
translate([-43+5.5+0.5,11-84,-3.6])color("lightgrey")linearactuator_igus_slidermount_encoder_part();
}
*/


//filament_driver_assy_motormount();
//filament_driver_assy_to_print();

module filament_driver_assy_to_print(){

translate([50,-30,0])import("compact_direct_drive_extruder_idler_alternative.stl");

translate([0,-70,0])compact_extruder();
translate([0,-13,4])rotate([0,180,0])filament_driver_assy_motormount();
translate([30,-83,0])encoder_ribboncable();
translate([-60,-80,0])cables_wall();
//translate([-100+80,-190,5])rotate([0,90,90])cable_support();
//translate([-100+80+100,-190,-35])rotate([0,90,90])cable_support_lid();
translate([0,-33,-25])linearactuator_filament_encodershuttle();
translate([-80,-20,-28])linearactuator_filament_encodershuttle_filamentclamp();
//translate([-55-2.5,30-1,7])rotate([0,0,180])
translate([-10,40,10])endstop_for_linearactuator();
//translate([0,-0,0])color("lightgrey")

translate([-10,0,0]){
linearactuator_igus_slidermount_encoder_assy();
//linearactuator_igus_slidermount_encoder();
//translate([-43+5.5+0.5,11-84,-3.6])color("lightgrey")linearactuator_igus_slidermount_encoder_part();
}
translate([-40,-20,0])linearactuator_igus_slidermount_encoder_smoothpart();

}

