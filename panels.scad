include <modparts.scad>
use<writescad/write.scad>

 pcb_panels();


//translate([0,66+66,0])front_plate_x1();
//projection(cut = false){
// left_plate_x1();
  right_plate_x1();
//}
/*
projection(cut = false){
left_plate_x1();;
translate([0,66,0])right_plate_x1();
translate([0,66+66,0])front_plate_x1();
translate([0,66+(65*2),0])back_plate_x1();
translate([0,-380,0])bottom_x1();

translate([0,40,0]){
translate([-40,0,0])gantryhead_back_slider_x4();
translate([-40,90,0])slider_x4();
translate([-40,90+67,0])slider_x4();
translate([-40,90-160,0])slider_x4();
translate([-40,10-140,0])XY_bearings_Right_x1();
translate([-40-23,50-155-200,0])XY_bearings_Left_x1();
translate([-40,90-290,0])slider_x4();
translate([-40,90-290-65,0])slider_x4();
//translate([-40,90-290-65-65,0])slider_x4();
}
}
*/
/*
