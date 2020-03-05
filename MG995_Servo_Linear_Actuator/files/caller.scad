/*translate([27,20,30+1])rotate([0,180,0])
difference(){
import("pinion.stl");
translate([7,0,-5])cylinder(r=3.2/2,h=30,$fn=30);
translate([-7,0,-5])cylinder(r=3.2/2,h=30,$fn=30);
}
*/

/*
include <sled_bottom.scad>
include <holder_half.scad>
translate([50,0,0]){include <sled_cap.scad>}
include <rack_renamed.scad>
include <holder_half.scad>
*/



module servo_linear_assy(){
//translate([54,100-30+0.5,0])rotate([0,0,0])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");
translate([34.5,109.5,63])rotate([0,180,-90])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");
translate([34.5-14,109.5-149,63])rotate([0,180,90])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");

/*
difference(){
translate([54,100-30+0.5,0])rotate([0,0,180])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");
translate([36,100-30+0.5+50,0+11])rotate([90,0,0])cylinder(r=2.8/2,h=120,$fn=30);
translate([36-18,100-30+0.5+50,0+11])rotate([90,0,0])cylinder(r=2.8/2,h=120,$fn=30);
}
*/
//translate([54-54,-0,0])rotate([0,0,0])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/holder_half.stl");
translate([50+4,-50+120+0.5,27.5])color("lime")rotate([0,180,90])import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/sled_bottom.stl");

translate([10-1,-10-15,30])rotate([0,0,90])color("pink")import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/rack.stl");
translate([0,4,-0])rotate([0,0,0])
difference(){
color("peru")import("/Users/richard/Documents/dr.robot/dr.robotlab_library/MG995_Servo_Linear_Actuator/files/pinion.stl");
}
translate([37,14-0,-12])rotate([0,0,90])servo();
}

module servo(){
 bcl = 0.4;
 color([bcl,bcl,bcl])
 cube([40.75,19.85,35]);
 difference(){
 color([bcl,bcl,bcl])translate([-(55.5-40.74)/2,0,35-8])cube([55.5,19.85,2.5]);
 translate([-(55.5-40.74)/2+3.8,0+4.5,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8,0+4.5+10,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8+49,0+4.5,35-8-10])cylinder(r=3.7/2,h=20);
 translate([-(55.5-40.74)/2+3.8+49,0+4.5+10,35-8-10])cylinder(r=3.7/2,h=20);
 }
/*
*/ 
 cl = 0.9;
 color([cl,cl,cl]){
 translate([10,10,30])cylinder(r=8/2,h=14);
 translate([10,10,41-6+8])difference(){
  cylinder(r=21/2,h=2);
  translate([0,7,-4])cylinder(r=2.6/2,h=20,$fn=30);
  translate([0,-7,-4])cylinder(r=2.6/2,h=20,$fn=30);
 }
 }
}




