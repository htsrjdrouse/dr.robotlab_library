//import("bowden_fitting.stl");


module extruder_assy(){
color("grey")translate([21,2.5,53])rotate([90,0,0])import("BMG_M.stl");
color("silver")translate([25,-16,36])rotate([90,0,0])import("13003_nema17_25mm.stl");
translate([16.5,-20,41])rotate([90,0,90])color("silver")import("e3d_v6_hoted.stl");
import("MyDD_Back.stl");
color("peru")import("MyDD_Front.stl");
translate([6,18,-4])color("white")rotate([0,-90,0])import("40mm_fan.stl");
import("MyDD_Nozzle_.stl");
color("grey")translate([32,-66,-3])rotate([0,-90-40,90])import("5015_blowerFan_40mm.stl");
translate([20,-63,14])rotate([0,90,180])import("MyDD_Fan_Support.stl");
color("pink")import("MyDD_BLTouch.stl");
translate([85,-26,42])color("white")rotate([90,0,180])import("bltouch.stl");
import("MyDD_Spacer.stl");
}
/*

*/
//import("MyDD_EZABL.stl");
//import("MyDD_BLTouch_Volcano.stl");
//import("MyDD_Part_Cooling_Fan_Angle_Bracket_Volcano.stl");
//import("MyDD_Part_Cooling_Fan_Volcano.stl");
/*
*/
