//import("ToolChanger_-_Abdeckung-2.STL");



//import("CoreXY_Tool_Changer_Motion_System/files/m8_ybar_corexy.stl");


//import("Y_Axis_rod_holder.stl");
//idler_connect();

/*
difference(){
//rotate([-90,0,0])import("Y_Axis_right.STL");
rotate([-90,0,0])import("Y_Axis_left.STL");
for(i=[2:4]){
//translate([-0.5,4+i,-20])cylinder(r=3.7/2,h=34);
translate([-1.5,4+i,-20])cylinder(r=3.7/2,h=34);
translate([-2,4+i,-20])cylinder(r=3.7/2,h=34);
//translate([-0.5,19+i,-20])cylinder(r=3.7/2,h=34);
translate([-1.5,19+i,-20])cylinder(r=3.7/2,h=34);
translate([-2,19+i,-20])cylinder(r=3.7/2,h=34);
}
}
*/







//zdrive_corexy_beltplate();

//idler_connect();

//translate([151.5,44.75-10,3-1])color("pink")import("slider_wall.stl");


/*
translate([208-151.5,188+1.5,342-35])rotate([90,0,0])
zdrive_corexy();
translate([208+151.5+20,188+1.5-16,342-35])rotate([-90,180,0])
color("pink")zdrive_corexy_beltplate();
*/



module zdrive_corexy(){
translate([120,0,0])
difference(){
union(){
translate([20.8,9.5,0])#cube([41.3,80-0.79,5]);
difference(){union(){
translate([20.77,9.55,0])cube([8.64,66.5,22+4.5-2]);
translate([20.77+32.73,9.55,0])cube([8.64,66.5,22+4.5-2]);
}
translate([25.5+4-10,83.7-29+6,5])rotate([90,0,90])cylinder(r=10,h=39+30);
}
}
translate([25.5,83.7+0,-24])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+32,83.7,-24])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+32/2,83.7-44,0])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+4,83.7-29,-2])cube([4,12,30]);
translate([25.5+4+20,83.7-29,-2])cube([4,12,30]);
translate([25.5-1.5,83.7-13,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5,83.7-13-19,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5,83.7-13-56,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35.0,83.7-13,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35,83.7-13-19,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35,83.7-13-56,0])cylinder(r=2.7/2,h=40,$fn=20);
}
}

module zdrive_corexy_beltplate(){
//import("ToolChanger_-_Schlitten_Deckel-1.STL");
difference(){
union(){
//translate([0,0,-1.06])color("pink")import("ToolChanger_-_Schlitten-1.stl");
translate([141.55-0.5,79+0.71,17+12.7-1-13.1])cube([35+6,9,25+14-0.9]);
translate([141.55+0.5-1,79+0.71-60.02,17+12.7+15+1])cube([35+6,9+56,9-1]);
translate([141.55+0.5-12.4,79+0.71-60.02,17+12.7+15+1])cube([64,24,9-1]);
translate([141.55+4-10+52/2,79+4.7-51+7,15.7])cylinder(r=10/2,h=35,$fn=20);
translate([141.55-12,79+0.71-20-10-30.017,17+12.7-1+2+1.55-1.55+0.5])cube([12,25,23-0.5]);
translate([141.55-12-5+6.05,79+0.71-20-10-30.017+22.5,17+12.7-1+2+1.55+20-20-1.55+0.5])rotate([90,0,0]){
for(i=[0:4]){
translate([i*2,0,0])cylinder(r=1.4/2,h=7,$fn=20);
translate([i*2,0,12])cylinder(r=1.4/2,h=7,$fn=20);
}
}
translate([52.2,0,0]){
translate([141.55-12,79+0.71-20-10-30.017,17+12.7-1+2+1.55-1.55+0.5])cube([12,25,23-0.5]);
translate([141.55-12-5+6.05+2,79+0.71-20-10-30.017+22.5,17+12.7-1+2+1.55+20-20-1.55+0.5])rotate([90,0,0]){
for(i=[0:4]){
translate([i*2,0,0])cylinder(r=1.4/2,h=7,$fn=20);
translate([i*2,0,12])cylinder(r=1.4/2,h=7,$fn=20);
}
}
}
}
translate([141.55+4-10+52/2,79+4.7-51+7,15.7-30])#cylinder(r=2.8/2,h=135,$fn=20);
translate([141.55+4+6,79+4.7+20+42.7-1.68,21-0.25])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20+42-0.95,21-0.25])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20+42-0.95,21-0.25+20])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20+42-0.95,21-0.25+20])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20,21-0.25])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20,21-0.25])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20,21-0.25+20])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20,21-0.25+20])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4,79+4.7,0])cylinder(r=2.8/2,h=60,$fn=20);
translate([141.55+4+32,79+4.7,0])cylinder(r=2.8/2,h=60,$fn=20);
translate([141.55+4-10,79+4.7-51,11])cylinder(r=3.7/2,h=48,$fn=20);
translate([141.55+4-10,79+4.7-51,51])cylinder(r=8.25/2,h=4,$fn=6);
translate([141.55+4-10+52,79+4.7-51,11])cylinder(r=3.7/2,h=49,$fn=20);
translate([141.55+4-10+52,79+4.7-51,51])cylinder(r=8.25/2,h=4,$fn=6);
translate([141.55+4-10+52-6.4,79+4.7-51+2,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4,79+4.7-51+2-12,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4-41.5,79+4.7-51+2,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4-41.5,79+4.7-51+2-12,-0.2])cube([2.4,7.5,60]);
}
}


/*
module zdrive_corexy_beltplate(){
//import("ToolChanger_-_Schlitten_Deckel-1.STL");
difference(){
union(){
translate([0,0,-1.06])color("pink")import("ToolChanger_-_Schlitten-1.stl");
translate([141.55-0.5,79+0.71,17+12.7-1-13.1])cube([35+6,9,25+14-0.9]);
translate([141.55+0.5-1,79+0.71-60.02,17+12.7+15+1])cube([35+6,9+56,9-1]);
translate([141.55+0.5-12.4,79+0.71-60.02,17+12.7+15+1])cube([64,24,9-1]);

translate([141.55+4-10+52/2,79+4.7-51,15.7])cylinder(r=13.7/2,h=35,$fn=20);


translate([141.55-12,79+0.71-20-10-30.017,17+12.7-1+2+1.55-1.55+0.5])cube([12,25,23-0.5]);
translate([141.55-12-5+6.05,79+0.71-20-10-30.017+22.5,17+12.7-1+2+1.55+20-20-1.55+0.5])rotate([90,0,0]){
for(i=[0:4]){
translate([i*2,0,0])cylinder(r=1.4/2,h=7,$fn=20);
translate([i*2,0,12])cylinder(r=1.4/2,h=7,$fn=20);
}
}
translate([52.2,0,0]){
translate([141.55-12,79+0.71-20-10-30.017,17+12.7-1+2+1.55-1.55+0.5])cube([12,25,23-0.5]);
translate([141.55-12-5+6.05+2,79+0.71-20-10-30.017+22.5,17+12.7-1+2+1.55+20-20-1.55+0.5])rotate([90,0,0]){
for(i=[0:4]){
translate([i*2,0,0])cylinder(r=1.4/2,h=7,$fn=20);
translate([i*2,0,12])cylinder(r=1.4/2,h=7,$fn=20);
}
}
}
}
translate([141.55+4+6,79+4.7+20+42.7-1.68,21-0.25])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20+42-0.95,21-0.25])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20+42-0.95,21-0.25+20])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20+42-0.95,21-0.25+20])rotate([90,0,0])cylinder(r=6.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20,21-0.25])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20,21-0.25])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6,79+4.7+20,21-0.25+20])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4+6+20,79+4.7+20,21-0.25+20])rotate([90,0,0])cylinder(r=3.5/2,h=60,$fn=20);
translate([141.55+4,79+4.7,0])cylinder(r=2.8/2,h=60,$fn=20);
translate([141.55+4+32,79+4.7,0])cylinder(r=2.8/2,h=60,$fn=20);
translate([141.55+4-10,79+4.7-51,11])cylinder(r=3.7/2,h=48,$fn=20);
translate([141.55+4-10,79+4.7-51,51])cylinder(r=8.25/2,h=4,$fn=6);
translate([141.55+4-10+52,79+4.7-51,11])cylinder(r=3.7/2,h=49,$fn=20);
translate([141.55+4-10+52,79+4.7-51,51])cylinder(r=8.25/2,h=4,$fn=6);
translate([141.55+4-10+52-6.4,79+4.7-51+2,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4,79+4.7-51+2-12,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4-41.5,79+4.7-51+2,-0.2])cube([2.4,7.5,60]);
translate([141.55+4-10+52-6.4-41.5,79+4.7-51+2-12,-0.2])cube([2.4,7.5,60]);
}
}
*/


//translate([151.5,44.75-10,3-1])color("pink")import("slider_wall.stl");

//zdrive_corexy();

/*
module zdrive_corexy(){
translate([120,0,0])
difference(){
union(){
translate([20.8,9.5,0])cube([41.3,80,5]);
difference(){union(){
translate([20.77,9.55,0])cube([8.64,66.5,22+4.5]);
translate([20.77+32.73,9.55,0])cube([8.64,66.5,22+4.5]);
}
translate([25.5+4-10,83.7-29+6,5])rotate([90,0,90])cylinder(r=10,h=39+30);
}
}
translate([25.5,83.7,0])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+32,83.7,0])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+32/2,83.7-44,0])cylinder(r=3.7/2,h=40,$fn=20);
translate([25.5+4,83.7-29,-2])cube([4,12,30]);
translate([25.5+4+20,83.7-29,-2])cube([4,12,30]);
translate([25.5-1.5,83.7-13,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5,83.7-13-19,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5,83.7-13-56,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35.0,83.7-13,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35,83.7-13-19,0])cylinder(r=2.7/2,h=40,$fn=20);
translate([25.5-1.5+35,83.7-13-56,0])cylinder(r=2.7/2,h=40,$fn=20);
}
}


*/








module idler_connect(){
difference(){
union(){
//rotate([0,0,0])import("Idler_right.STL");
translate([0,25,0])cube([20,4,50]);
translate([10,45+10-20-2-1.5,32+3])rotate([90,90,0])rotate([0,0,45])cylinder(r=5.5/2,h=5,$fn=4);
translate([10,45+10-20-2-1.5,32])rotate([90,90,0])rotate([0,0,45])cylinder(r=5.5/2,h=5,$fn=4);
}
translate([10,45,4])rotate([90,90,0])cylinder(r=2.7/2,h=30);
translate([10,45,12])rotate([90,90,0])cylinder(r=2.7/2,h=30);
translate([10,45,24])rotate([90,90,0])cylinder(r=2.7/2,h=30);
translate([10,45,44])rotate([90,90,0])cylinder(r=3.7/2,h=30);
}
}





/*
difference(){
import("ToolChanger_-_Base_Halter-1.STL");
//translate([177.4,60-0.75,70])cylinder(r=(3.25+1)/2,h=50,$fn=12);
translate([177.4,60-0.75,70+37.9])rotate([0,0,90])cylinder(r=(9.5)/2,h=3,$fn=6);
translate([-31.5,0,0]){
//translate([177.4,60-0.75,70])cylinder(r=(3.25+1)/2,h=50,$fn=12);
translate([177.4,60-0.75,70+37.9])rotate([0,0,90])cylinder(r=(9.5)/2,h=3,$fn=6);
}
}


a = 20;
translate([165+a-23.5+0.1,14+a+5.5+0.225,35-0.2])rotate([0,0,11.6])cylinder(r=5.8, h=3.9,$fn=4);

//translate([165+a-23.5+0.1,14+a+5.5+0.225,35-0.2])rotate([0,0,11.6])cylinder(r=6.05, h=4.5);

translate([0,0,4.4])difference(){
import("ToolChanger_-_Welle-1.STL");
translate([165+a-23.5+0.1,14+a+5.5+0.225,10])rotate([0,0,11.6])cylinder(r=8.05, h=28.8-4.5);
}
import("ToolChanger_-_Welle-1.STL");
*/

/*
difference(){
import("ToolChanger_-_Schlitten-1.stl");
translate([148,26.55,0])cylinder(r=2.9/2,h=200,$fn=20);
translate([175.25,26.55,0])cylinder(r=2.9/2,h=200,$fn=20);
translate([148+(175.25-148)/2,26.55+29.65,0])cylinder(r=2.9/2,h=200,$fn=20);
}
*/
/*
difference(){
import("ToolChanger_-_Servo_Distanz-1.stl");
translate([150,0,19.5])cylinder(r=50,h=30);
translate([150-1.5,27-0.4,10])color("pink")servo_hole();
};
difference(){
import("ToolChanger_-_Schlitten_Deckel-1.stl");
translate([150-1.5,27-0.4,10])color("pink")servo_hole();
}
*/
module servo_hole(){
difference(){
union(){
//cylinder(r=13.5/2,h=20);
//translate([0,7,0])cylinder(r=10/2,h=20);
translate([0,7.5,0])cylinder(r=5.5/2,h=20);
translate([0,7,0])cylinder(r=5.5/2,h=20);
translate([0,6.5,0])cylinder(r=5.5/2,h=20);
translate([0,6,0])cylinder(r=5.5/2,h=20);
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
translate([21-15.5,21-15.5,-1])cylinder(r=4/2,h=30);
translate([21+15.5,21-15.5,-1])cylinder(r=4/2,h=30);
translate([21+15.5,21+15.5,-1])cylinder(r=4/2,h=30);
translate([21-15.5,21+15.5,-1])cylinder(r=4/2,h=30);
translate([-20,0,4])cube([20,45,9]);
translate([-5,-20,4])cube([55,20,9]);
translate([-10,10,-4])cylinder(r=5.7/2,h=30);
translate([-10,32,-4])cylinder(r=5.7/2,h=30);
translate([10,-10,-4])cylinder(r=5.7/2,h=30);
translate([33,-10,-4])cylinder(r=5.7/2,h=30);
}
*/

/*

//rotate([0,180,0])import("ToolChanger_-_Base_Halter-1.STL");
difference(){
//rotate([0,0,0])import("Idler_right.STL");
translate([20,0,0])rotate([0,0,180])import("Idler_left.STL");
translate([0,25,0])cube([20,20,50]);
translate([10,45,4])rotate([90,90,0])cylinder(r=2.7/2,h=30);
translate([10,45,12])rotate([90,90,0])cylinder(r=2.7/2,h=30);
translate([10,45,24])rotate([90,90,0])cylinder(r=2.7/2,h=30);
}
*/
/*
difference(){
//rotate([0,0,0])import("Idler_right.STL");
//translate([20,0,0])rotate([0,0,180])import("Idler_left.STL");
translate([0,18,0-1-18])cube([20,4,48]);
translate([0,25,0])cube([20,20,50]);
translate([10,45,-14.5])rotate([90,90,0])cylinder(r=4.7/2,h=30);
translate([10,45,-5])rotate([90,90,0])cylinder(r=4.7/2,h=30);
translate([10,45,4])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([10,45,12])rotate([90,90,0])cylinder(r=3.7/2,h=30);
translate([10,45,24])rotate([90,90,0])cylinder(r=3.7/2,h=30);
}
*/
/*
*/



