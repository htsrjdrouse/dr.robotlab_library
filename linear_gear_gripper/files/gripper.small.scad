include <../../hardware.scad>
//translate([12.5,-5,-18+1])color("grey")rotate([0,0,90])microservo();
include <../../parametricPulley_v3.scad>


/*
*/
/*
difference(){
rotate([0,0,0])scale(0.1)import("gripper_gear_rack_v1.stl");
translate([-19+7,-45,-0-2])cube([30,30,30]);
}
*/

/*
ps = -38+51+39-1;
difference(){
scale(0.1)
translate([-15,10-3,150])rotate([0,0,0])
import("gripper_pinion_gear_v1.stl");
translate([6.6,0.7,11])cylinder(r=5.1/2,h=40,$fn=30);
translate([6.6,0.7,-1])cylinder(r=2.5/2,h=40,$fn=30);
}
*/

/*
*/

/*
color("lime")gripper_feet_right();
color("lightblue")gripper_left_track_support();
translate([-100,0,0])color("pink")left_gripper_post();
color("black")translate([-60-7,0,-45])rotate([0,0,180])import("../../BOM_inventory/build6/multichannel_cameramount_tslot_part2.stl");
//import("../../gripper_mount_v3.stl");
color("thistle")import("../../gripper_gear_rack_v3.stl");
//gripper_gear_rack();
gripper_mount();
color("olive")gripper_mount_cover();
translate([0,0,-6]){
translate([-3.8+21,-5.3,-20+0.8])mirror(0,1,0)color("grey")microservo_hs82mg();
color("grey")translate([6.7,0.7,9.8+3])difference(){
disp_pulley();
translate([0,0,2.5])cylinder(r=5.1/2,h=10,$fn=30);
}
}
color("pink")gripper_post();
translate([-100,0,0])color("pink")left_gripper_post();
color("lime")gripper_feet_right();
color("lime")gripper_feet_left();
color("lightblue")gripper_left_track_support();
*/

module gripper_left_track_support(){
difference(){union(){
translate([-70,-15,-5.4])cube([20,5,20]);
translate([-70,-15-9,-5.4])cube([20,5+9,5]);
}
translate([-70+4,-15-9+2.25,-17.4])cylinder(r=4.7/2,h=40,$fn=30);
translate([-70+4+9,-15-9+2.25,-17.4])cylinder(r=4.7/2,h=40,$fn=30);
}

}


module gripper_feet_left(){
translate([-100,0,0])difference(){
translate([11,-60-6,18-9])cube([16,6,18+18]);
translate([11+5,-82,18+7])rotate([-90,0,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([11+5,-82+16,18+7])rotate([-90,0,0])cylinder(r=8.5/2,h=2.5,$fn=30);
translate([11+5,-82,18+7+8])rotate([-90,0,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([11+5,-82+16,18+7+8])rotate([-90,0,0])cylinder(r=8.5/2,h=2.5,$fn=30);
}
}




module gripper_feet_right(){
difference(){
translate([11-6,-60-6,18-9])cube([16,6,18+18]);
translate([11+5,-82,18+7])rotate([-90,0,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([11+5,-82+16,18+7])rotate([-90,0,0])cylinder(r=8.5/2,h=2.5,$fn=30);
translate([11+5,-82,18+7+8])rotate([-90,0,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([11+5,-82+16,18+7+8])rotate([-90,0,0])cylinder(r=8.5/2,h=2.5,$fn=30);
}
}



module left_gripper_post(){
difference(){
translate([11,-60,18])cube([10,53,18]);
translate([11+5,-62,18+7])rotate([-90,0,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([11+5,-62,18+7+8])rotate([-90,0,0])cylinder(r=2.8/2,h=200,$fn=30);
}
}

module gripper_post(){
difference(){
translate([11,-60,18])cube([10,50,18]);
translate([11+5,-62,18+7])rotate([-90,0,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([11+5,-62,18+7+8])rotate([-90,0,0])cylinder(r=2.8/2,h=200,$fn=30);
}
}




module microservo_hs82mg(){
difference(){union(){
cube([29.8,12,19.9]);
translate([-(40.6-29.8)/2,0,19.9])cube([40.6,12,2.1]);
translate([3.5,0,19.9+2])cube([18,12,3.5]);
translate([3.5+7,6,19.9+2+3.5])cylinder(r=6.5/2,h=3.5,$fn=30);
translate([3.5+7,6,19.9+2+3.5])cylinder(r=3.5/2,h=13.5,$fn=30);
}
translate([2.4,0,0]){
translate([-(41-29.6)/2,6,0])cylinder(r=5.5/2,h=50,$fn=30);
translate([-(41-29.6)/2+36.2,6,0])cylinder(r=5.5/2,h=50,$fn=30);
}
}
}

module gripper_mount_cover(){
difference(){
translate([15-14+6.62-51+20+5-20+20-32+5-15,-10+1+4.5,4])rotate([0,0,0])cube([25+15,2,13]);
translate([15-14+6.62-51+55.4+4-10-30,0-8.1+20,33-26])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([15-14+6.62-51+55.4+4-10-47,0-8.1+20,33-26])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
}
}

module gripper_mount(){
difference(){union(){
//rotate([0,0,0])import("gripper_mount_v2.stl");
translate([15-14+6.62-20+42.5-20,0,0])rotate([0,0,0])import("track.stl");
translate([15-14+6.62-30+42.5-20,0,0])rotate([0,0,0])import("track.stl");
translate([15-14+6.62-50+42.5-20,0,0])rotate([0,0,0])import("track.stl");
translate([15-14+6.62-70+42.5-20,0,0])rotate([0,0,0])import("track.stl");
translate([15-14+6.62-90+42.5-20,0,0])rotate([0,0,0])import("track.stl");
translate([15-14+6.62-100+42.5-20,0,0])rotate([0,0,0])import("track.stl");

translate([-51,0,0]){
translate([15-14+6.62+20+5-20+20-27,-10+1,5])rotate([0,0,0])cube([25,5,5]);
translate([15-14+6.62+20+5-20+20,-10,-8-3])rotate([0,0,0])cube([45,4,15+3]);


translate([15-14+6.62+55.4-1,0-8-2,20-3])rotate([0,0,0])cube([10,5,19]);
translate([15-14+6.62+20+5-20+15.5+3,-10,-8-3])rotate([0,0,0])cube([7,4+12,8.65-3]);
translate([15-14+6.62+20+5-20+15.5+3+37.4,-10,-8-3])rotate([0,0,0])cube([7,4+12,8.65-3]);
}
}


translate([-51,0,0]){
translate([15-14+6.62+20+5-20+15.5+3+37.4+3-10-18,-10+10.5-6.5,-8+5])rotate([90,0,0])cylinder(r=8.5/2,h=2.1,$fn=30);
translate([15-14+6.62+20+5-20+15.5+3+37.4+3-10-18,-10+10.5+4,-8+5])rotate([90,0,0])cylinder(r=3.8/2,h=400,$fn=30);
translate([15-14+6.62+20+5-20+15.5+3+37.4+3-10,-10+10.5-6.5,-8+5])rotate([90,0,0])cylinder(r=8.5/2,h=2.1,$fn=30);
translate([15-14+6.62+20+5-20+15.5+3+37.4+3-10,-10+10.5+4,-8+5])rotate([90,0,0])cylinder(r=3.8/2,h=400,$fn=30);
translate([15-14+6.62+55.4+4-10-30,0-8.1+20,33-26])rotate([90,0,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([15-14+6.62+55.4+4-10-47,0-8.1+20,33-26])rotate([90,0,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([15-14+6.62+55.4+4,0-8.1+20,33-8])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([15-14+6.62+55.4+4,0-8.1+20,33])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([15-14+6.62+20+5-20+15.5+3+37.4+3,-10+10.5,-8-5])rotate([0,0,0])cylinder(r=2.8/2,h=400,$fn=30);
translate([15-14+6.62+20+5-20+15.5+3+37.4+3-36.2,-10+10.5,-8-5])rotate([0,0,0])cylinder(r=2.8/2,h=400,$fn=30);
}
}
}
/*
*/

//rotate([0,0,0])import("gripper_mount_v3.stl");

module gripper_gear_rack(){
difference(){union(){
translate([15-14+6.62-ps,0,0])rotate([0,0,0])import("justrack.stl");
translate([15-14+6.62-ps+20,0,0])rotate([0,0,0])import("justrack.stl");
translate([15-14+6.62-ps+42.5,0,0])rotate([0,0,0])import("justrack.stl");
translate([0-140+115+10-ps,-1-7.1,10.5])rotate([-90,0,0])import("gripper_gear_rack_v2.stl");

translate([0-140+115+10-ps,-1-7.1,10.5])rotate([-90,0,0])difference(){
union(){
translate([-2,0,0])import("gripper_gear_rack_v2.stl");
translate([-4,0,0])import("gripper_gear_rack_v2.stl");
}
translate([-4-9,-20,-5])cube([30,30,50]);

}
translate([15-14+6.62-ps-42.6-4,0-8.1,20])rotate([0,0,0])cube([12,5,17]);
}

translate([15-14+6.62-ps-42.6+4-2,0-8.1+20,33-8])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([15-14+6.62-ps-42.6+4-2,0-8.1+20,33])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
}

}


/*
*/

/*
difference(){
scale(0.1){
translate([0,-81,105])rotate([-90,0,0])import("gripper_gear_rack_v2.stl");
}
translate([-27.5,-20,0])cube([20,20,50]);
}
*/
