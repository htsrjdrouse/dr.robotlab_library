include <modparts.scad>
use<writescad/write.scad>

//syringe_pcb_holder_for_syringemodule();
//openmv_set();

//color("pink")
//syringe_pump_stls();
translate([-100,160,0])nextgen_syringe10ml_assy();


module syringe_pump_stls(){
//nextgen_syringe10ml_assy();
translate([0,0,-20]){
syringe_pcb_holder_for_syringemodule();
translate([40,68,0])syringe10mlmount_plungerfix_assy();
translate([-26.5,130,104.45])rotate([90,90,0])syringe10ml_clipmount();
color("yellow")translate([110,52,26])igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
translate([50,-4,4])igus_TW_04_12_slider_plate();
translate([-25.75+30-17,123,-34.65])rotate([90,-90,0])syringeshuttle_clipbracket();
translate([-22.85-20,1-24,2.5+91.5])rotate([90,0,90])stepper_linear_m8nut_coupler();
//translate([-50,0,-13])valve_assy();
//start valve_assy
translate([-38,50,23.8])rotate([0,0,90])valveconnectpart();
translate([36,295.5-130+10,18-2.5])rotate([90,0,0])valvemountplate_screwattach_smallersyringe_vertical_attach();
translate([10,165.5-32,18+74])rotate([0,90,0])valvemountplate_screwattach_smallersyringe();
translate([52,190-30,49.5])rotate([-90,90,90])smallsyringe_valvesupportmodule_plate();
//end valve_assy()

}
}
