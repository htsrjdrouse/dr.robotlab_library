include <modparts.scad>
use<writescad/write.scad>


diagphragm_pump_case();

module diagphragm_pump_case(){
//wash_waste_panel();
translate([0,-0,30])diaphragmpump_case_base();
translate([-155,0,0])airpo_d2028B_pump_mount_assy();
rotate([-90,0,0])translate([-100-56,-3+70-76,-150])mirror([0,1,0])diaphragmpump_longwall();
translate([28,-92,0])rotate([0,90,0])diaphragmpump_end();
//then this one 
translate([28,-76,0])rotate([0,90,0])translate([0,-50,0])mirror([0,1,0])diaphragmpump_end_rj45();
//then this one 
translate([-10,90,-53])diaphragmpump_lid();
translate([-162,168,-57])rotate([90,0,0])translate([0,-3+70,0])mirror([0,0,0])diaphragmpump_longwall_pumpports();
}



