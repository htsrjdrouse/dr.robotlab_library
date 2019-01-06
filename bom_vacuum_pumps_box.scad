include <modparts.scad>
use<writescad/write.scad>

//diaphragmpump_boxassy();
//diaphragmpump_case_base();

//translate([-100,0,0])boxstandoff();
//translate([-70,0,27])boxcouplers_panelside();
//translate([200,0,0])rotate([0,0,90])airpo_d2028B_pump_mount_assy();

//projection(cut=false){
//translate([-10-140,90,-53])translate([150,0,100-14-3])rotate([0,0,0])color("lime")diaphragmpump_case_lid_from_base();
//diaphragmpump_case_base();
//}
//diaphragmpump_case_base();

//diaphragmpump_end_justusb();
//diaphragmpump_end_6pin();
//diaphragmpump_end_6pin_pcb();

//translate([0,0,30])diaphragmpump_boxassy();


//diagphragm_pump_case();

/*
projection(cut = false){
//rotate([-90,0,0])translate([-100-56,-3+70-76,-150])mirror([0,1,0])diaphragmpump_longwall();
translate([-162,168,-57])rotate([90,0,0])translate([0,-3+70,0])mirror([0,0,0])diaphragmpump_longwall_pumpports();
//translate([28,-92,0])rotate([0,90,0])diaphragmpump_end();
translate([28,-92,0])rotate([0,90,0])
diaphragmpump_end_justusb();
}
*/
/*
translate([0,-3+70,0])mirror([0,1,0])diaphragmpump_longwall();
diaphragmpump_lid();
diaphragmpump_end();
*/
//diaphragmpump_longwall_pumpports();

/*
projection(cut = false){
rotate([0,90,0])diaphragmpump_end_6pin();
}
*/

//diagphragm_pump_case_to_be_lasercut();
//diagphragm_pump_case();

module lasercut_app(){
translate([-3,0,86])rotate([0,90,0])diaphragmpump_end();
translate([-10-140,90,-53])translate([150,0,100-14-3])rotate([0,0,0])color("lime")diaphragmpump_case_lid_from_base();
}

module diaphragmpump_boxassy(){
//diaphragmpump_end_rj45();
//translate([-3+160-4,0,0])rotate([0,0,0])diaphragmpump_end();

translate([150,0,100-14])rotate([0,180,0])color("gainsboro")diaphragmpump_case_lid_from_base();
color("pink")translate([150,0,100-14])rotate([0,180,0]){
translate([0+(140)+10,0,0])mirror([1,0,0])boxcouplers();
translate([0+(140)+10,0-71,0])mirror([1,0,0])boxcouplers();
translate([0+(0),0,0])mirror([0,0,0])boxcouplers();
translate([0+(0),0-71,0])mirror([0,0,0])boxcouplers();
}
translate([0,-3,0])color("")diaphragmpump_longwall_pumpports();
color("gainsboro")translate([-3,0,86])rotate([0,180,0])diaphragmpump_end();
translate([0,-3+70+1,0])mirror([0,1,0])color("gainsboro")diaphragmpump_longwall();
color("gainsboro")translate([-3+160-4,0,0])rotate([0,0,0])diaphragmpump_end_6pin();

color("gainsboro"){
translate([0+(140)+10,0,0])mirror([1,0,0])boxcouplers();
translate([0+(140)+10,-71,0])mirror([1,0,0])boxcouplers();
translate([0,-71,0])boxcouplers();
boxcouplers();
}
color("")
rotate([0,90,0])tslot20(150);

color("gainsboro")diaphragmpump_case_base();
}

module diagphragm_pump_case(){
//wash_waste_panel();
translate([0,0,30])diaphragmpump_case_base();
translate([-10-140,90,-53])translate([150,0,100-14-3])rotate([0,0,0])color("lime")diaphragmpump_case_lid_from_base();
translate([200,0,0])rotate([0,0,90])airpo_d2028B_pump_mount_assy();

}

module diagphragm_pump_case_to_be_lasercut(){

//to be laser cut
rotate([-90,0,0])translate([-100-56,-3+70-76,-150])mirror([0,1,0])diaphragmpump_longwall();
translate([28,-92,0])rotate([0,90,0])diaphragmpump_end();
//then this one 
translate([28,-76,0])rotate([0,90,0])translate([0,-50,0])mirror([0,1,0])diaphragmpump_end_rj45();
//then this one 
translate([-162,168,-57])rotate([90,0,0])translate([0,-3+70,0])mirror([0,0,0])diaphragmpump_longwall_pumpports();
//can do all of them now

}

