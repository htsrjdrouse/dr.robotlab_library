include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
include <nanoplotter.scad>
include <PiZero.scad>

rotate([90,0,0])connectionarms2(30);
//rotate([0,180,0])tslot20innerbracket();
//translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])

//ledholder();
//translate([-7-15,-25+120-31.5+16.4-36,-37-17+10+110-1])rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");

/*
translate([100-125,60+120,200])rotate([90,90,0])tslot20innerbracket();
translate([100-128,60+120-22,21])tslot20(100);
translate([100+203,60+120,200])rotate([90,90,0])tslot20innerbracket();
translate([100+201,60+120-22,21])tslot20(100);
for(i=[0:2]){
translate([0,i*150,0]){
carsensor_holder();
translate([-40+20-3-1+330,60-58,0])rotate([0,0,180])carsensor_holder_mirror();
}
}
cage_assy();
*/

module carsensor_holder_mirror(){
mirror([0,1,0])difference(){
union(){
//translate([-100+55-1+10,20+2,25-5])#cube([40-10,12,4]);
translate([-100+55-1+25,20+14,25-5])cube([40-24,20-5,4]);
translate([-100+55-1-2+10+17+10,20+2,25-5])cube([40-15-10,16,4+5+5]);
//translate([-100+46+9-5+10,22.5,25+4-5+5])color("pink")carsensor();
}
translate([-100+46+9+33,22.5+8+15-2,25+4-5+5-13])cylinder(r=4.7/2,h=40);
}
}





module carsensor_holder(){
difference(){
union(){
translate([-100+55-1+10,20+2,25-5])cube([40-10,16,4]);
translate([-100+55-1+25,20+14,25-5])cube([40-24,20,4]);

translate([-100+55-1-2+10,20+2,25-5])cube([40-15,16,4+5]);
translate([-100+46+9-5+10,22.5,25+4-5+5])color("pink")carsensor();
}
translate([-100+46+9+33,22.5+8+15,25+4-5+5-13])cylinder(r=4.7/2,h=40);
translate([-100+46+9+33-30.5+10,22.5+8-0.5,25+4-5+5-13])cylinder(r=4.7/2,h=40);
}
}

module cage_assy(){
//anglecornersupport();
//translate([-25,0,0])mirror([1,0,0])anglecornersupport();

translate([0,8,0]){
translate([300,-100+50+14+1,23])rotate([0,180,180])anglecornersupport();
translate([300-295,-100+50+14+1,23])rotate([0,180,180])mirror([1,0,0])anglecornersupport();
translate([-10+5,-50,25])rotate([0,90,0])tslot20(315);
}
translate([-50+10+2.7+40,-100+5+34+50,25])rotate([0,90,90])tslot20(400);
translate([-50+10+2.7+40+330,-100+5+34+50,25])rotate([0,90,90])tslot20(400);

translate([0+315-10,8+360,0])rotate([0,0,180]){
translate([300,-100+50+14+1,23])rotate([0,180,180])anglecornersupport();
translate([300-295,-100+50+14+1,23])rotate([0,180,180])mirror([1,0,0])anglecornersupport();
translate([-10+5,-50,25])rotate([0,90,0])tslot20(315);
}
color("lightblue")cube([300,380,180]);
translate([120+40,359+50,10])cage_miuzei_camera_module();
}

/*
*/


module carsensor(){
difference(){
cube([31,15,1]);
translate([31*0.25,15/2,-0.1])cylinder(r=3,h=3);
}
}




module cage_miuzei_camera_module(){
//translate([0-26-18,90-13.5,-50-13+5])rotate([-90,0,-90])
//rotate([0,90,0])miuzei_camera_breadboard_a();
//import("BOM_inventory/build3/stls/miuzei_camera_breadboard_a.stl");
//rotate([0,180,0])import("BOM_inventory/build3/stls/miuzei_camera_breadboard_b.stl");
//translate([0,0,11])rotate([0,90,0])miuzei_camera_breadboard_b();
/*
translate([-212,-330-53,110+45])rotate([-90,0,0]){
translate([175-2+10,300-120,400])rotate([-90,0,90]){
translate([0,0,3+6])rotate([0,180,0])displayPiZero();
raspizerobase_extrusion();
color("white")raspizero_ribbon_cable();
}
}
*/
/*
translate([43,-57,-62]){
translate([-11.5+3.8+(9*5)-10+1+9+3,80-1.5+0.5-20-17-0.75,-50+10-1.3+100+7])rotate([90,0,90])color("pink")import("BOM_inventory/build2/stls/miuzei_camera_breadboard_screwstub.stl");
translate([-11.5+3.8+(9*5)-10+1+9-(9*9),80-1.5+0.5-20-17-0.75,-50+10-1.3+100+7])rotate([90,0,90])color("pink")import("BOM_inventory/build2/stls/miuzei_camera_breadboard_screwstub.stl");
}
*/
/*
*/

/*
//translate([0-26-18,90-13.5-20+1,-50-13+5+120])rotate([-0,90,-0])miuzei_camera_breadboard();
rotate([0,90,0])miuzei_camera_breadboard_a();
translate([0,0,-4])rotate([0,180,0])import("BOM_inventory/build3/stls/miuzei_camera_breadboard_b.stl");
*/


translate([-17-170-30-10,40-14-20,-55])rotate([0,0,180+45]){
translate([-7-15,-25+120-31.5+16.4-36,-37-17+10+110-1])rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([0,-60,83]){
translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])connectionarms2(50);
translate([-18+2+3,100-21+10+1-49+50,-26.3+10-1.5+10])rotate([0,90,-90])connectionarms2(50);
translate([-35-10,90-50+50,64-37+60])rotate([90,0,0]){
translate([30,1,8])miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}
}
}


translate([-17-170-30-10+500-100+20,40-14-20-500+35,-55])rotate([0,0,180-90-45]){
translate([-7-15,-25+120-31.5+16.4-36,-37-17+10+110-1])rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([0,-60,83]){
translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])connectionarms2(50);
translate([-18+2+3,100-21+10+1-49+50,-26.3+10-1.5+10])rotate([0,90,-90])connectionarms2(50);
translate([-35-10,90-50+50,64-37+60])rotate([90,0,0]){
translate([30,1,8])miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}
}
}


translate([-17-170-30-10+500-100+20,40-14-20-500+35+200+40,-55+40])rotate([0,0,180-90]){
translate([-7-15+15,-25+120-31.5+16.4-36-14,-37-17+10+110-1-18])rotate([0,-90,90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([0,-60,83]){
translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])connectionarms2(50);
translate([-18+2+3,100-21+10+1-49+50,-26.3+10-1.5+10])rotate([0,90,-90])connectionarms2(50);
translate([-35-10,90-50+50,64-37+60])rotate([90,0,0]){
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
/*
translate([30,1,8])miuzei_cover();
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
*/
}
}
}


translate([-17-170-30-10+500-100+20-400-5,40-14-20-500+35+200+40-31,-55+40])rotate([0,0,180+90]){
translate([-7-15+15,-25+120-31.5+16.4-36-14,-37-17+10+110-1-18])rotate([0,-90,90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([0,-60,83]){
translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])connectionarms2(50);
translate([-18+2+3,100-21+10+1-49+50,-26.3+10-1.5+10])rotate([0,90,-90])connectionarms2(50);
translate([-35-10,90-50+50,64-37+60])rotate([90,0,0]){
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
/*
translate([30,1,8])miuzei_cover();
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
*/
}
}
}









/*
*/
}





