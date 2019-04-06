//import("ToolChanger_-_Abdeckung-2.STL");


/*

a = 20;
translate([165+a-23.5+0.1,14+a+5.5+0.225,35-0.2])rotate([0,0,11.6])cylinder(r=5.8, h=3.9,$fn=4);

//translate([165+a-23.5+0.1,14+a+5.5+0.225,35-0.2])rotate([0,0,11.6])#cylinder(r=6.05, h=4.5);

translate([0,0,4.4])difference(){
import("ToolChanger_-_Welle-1.STL");
translate([165+a-23.5+0.1,14+a+5.5+0.225,10])rotate([0,0,11.6])cylinder(r=8.05, h=28.8-4.5);
}
import("ToolChanger_-_Welle-1.STL");
*/


difference(){
import("ToolChanger_-_Schlitten-1.stl");
translate([148,26.55,0])#cylinder(r=2.9/2,h=200,$fn=20);
translate([175.25,26.55,0])#cylinder(r=2.9/2,h=200,$fn=20);
translate([148+(175.25-148)/2,26.55+29.65,0])#cylinder(r=2.9/2,h=200,$fn=20);
}
/*
difference(){
import("ToolChanger_-_Servo_Distanz-1.stl");
translate([150,0,19.5])cylinder(r=50,h=30);
translate([150-1.5,27-0.4,10])color("pink")servo_hole();
};
difference(){
import("ToolChanger_-_Schlitten_Deckel-1.stl");
translate([150-1.5,27-0.4,10])#color("pink")servo_hole();
}
*/
module servo_hole(){
difference(){
union(){
//#cylinder(r=13.5/2,h=20);
//#translate([0,7,0])cylinder(r=10/2,h=20);
#translate([0,7.5,0])cylinder(r=5.5/2,h=20);
#translate([0,7,0])cylinder(r=5.5/2,h=20);
#translate([0,6.5,0])cylinder(r=5.5/2,h=20);
#translate([0,6,0])cylinder(r=5.5/2,h=20);
}
translate([13.5/2+6.5,0,0])rotate([0,0,45])cylinder(r=10,h=50,$fn=4);
translate([-13.5/2-6.5,0,0])rotate([0,0,45])cylinder(r=10,h=50,$fn=4);
}
}

//import("Y_Axis_rod_holder.stl");
/*
difference(){
union(){
//import("XY_Stepper_holder.stl");
translate([-20,0,0])cube([62,42,4]);
translate([-0,-20,0])cube([42,62,4]);
}
translate([21,21,-1])cylinder(r=23/2,h=30);
translate([21-15.5,21-15.5,-1])#cylinder(r=4/2,h=30);
translate([21+15.5,21-15.5,-1])#cylinder(r=4/2,h=30);
translate([21+15.5,21+15.5,-1])#cylinder(r=4/2,h=30);
translate([21-15.5,21+15.5,-1])#cylinder(r=4/2,h=30);
translate([-20,0,4])cube([20,45,9]);
translate([-5,-20,4])cube([55,20,9]);
translate([-10,10,-4])cylinder(r=5.7/2,h=30);
translate([-10,32,-4])cylinder(r=5.7/2,h=30);
translate([10,-10,-4])cylinder(r=5.7/2,h=30);
translate([33,-10,-4])#cylinder(r=5.7/2,h=30);
}
*/
/*
//rotate([0,180,0])import("ToolChanger_-_Base_Halter-1.STL");
difference(){
rotate([0,0,0])import("Idler_right.STL");
//translate([20,0,0])rotate([0,0,180])import("Idler_left.STL");
translate([0,25,0])cube([20,20,50]);
translate([10,45,4])rotate([90,90,0])#cylinder(r=2.7/2,h=30);
translate([10,45,12])rotate([90,90,0])#cylinder(r=2.7/2,h=30);
translate([10,45,24])rotate([90,90,0])#cylinder(r=2.7/2,h=30);
}
*/
/*
difference(){
//rotate([0,0,0])import("Idler_right.STL");
//translate([20,0,0])rotate([0,0,180])import("Idler_left.STL");
translate([0,18,0-1-18])cube([20,4,48]);
translate([0,25,0])cube([20,20,50]);
translate([10,45,-14.5])rotate([90,90,0])#cylinder(r=4.7/2,h=30);
translate([10,45,-5])rotate([90,90,0])#cylinder(r=4.7/2,h=30);
translate([10,45,4])rotate([90,90,0])#cylinder(r=3.7/2,h=30);
translate([10,45,12])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([10,45,24])rotate([90,90,0])cylinder(r=3.7/2,h=30);
}
*/
/*
*/



