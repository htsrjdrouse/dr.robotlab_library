include <modparts.scad>
include <RPiCam-OBJ2.scad>
use<writescad/write.scad>


//translate([0,0,0])color("pink")import("camera_front_box_v003.stl");
// translate([-12.5,13,10])rotate([0,180,180])raspi_cam();
/*
translate([-7,-25,0])rotate([0,0,-90])justclip();
translate([-10,-32,0])difference(){
cube([20,20,5]);
translate([5,9,0])cube([10,7,6]);
}
*/


//raspizero_velcromount();
//Miuzei Raspberry Pi Camera Module
//miuzei_raspicam_base();
rotate([0,180,0])miuzei_lenscap(16);

//translate([0,1,8])#miuzei_cover();

module raspizero_velcromount(){
difference(){
cube([55,25,4]);
translate([6,12.5,-2])#cylinder(r=4.7/2,h=30);
}
}


module miuzei_cover(){
difference(){
translate([0,0,0])roundedRect([26,24,2],3.5);

translate([0,-1,0]){
translate([10.5,-1.5-1.5,-1])#cylinder(r=2.8/2,h=10);
translate([0,12.5,-1]){
translate([10.5,-1.5,0])cylinder(r=2.8/2,h=10);
}
translate([-21,0,-1]){
translate([10.5,-1.5-1.5,0])cylinder(r=2.8/2,h=10);
translate([0,12.5,0])translate([10.5,-1.5,0])cylinder(r=2.8/2,h=10);
}
}



}

}
module miuzei_lenscap(h){

/*
translate([-21,0,-5])difference(){#cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=8);
}
translate([13,0,-5])difference(){translate([-7,0,0])cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=26);
}
*/

translate([0,4,-10])
difference(){
union(){
translate([0,0,-6])cylinder(r=20/2,h=h);
translate([-21,-4,5])difference(){cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=8);
}
translate([13,-4,5])difference(){translate([-7,0,0])cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=26);
}
}
translate([0,0,5])cylinder(r2=14/2,r1=11.7/2,h=5);
translate([0,0,1])cylinder(r2=15.5/2,r1=11.7/2,h=9);
//translate([0,0,8])cylinder(r=15/2,h=2);
translate([0,0,-7])cylinder(r=11.7/2,h=h+1);
}
}

module miuzei_raspicam_base(){

translate([-7,-25+8,0])rotate([0,0,-90])justclip();
translate([-10,-32,0])difference(){
union(){
translate([0,15,0])#cube([20,5,2.5]);
//translate([0,-0.7-3,0])#cube([20,20,5]);
}
translate([5,9,0])cube([10,5,6]);
}

translate([-21,0,0])difference(){cube([8,8,5]);
translate([4,4,-1])cylinder(r=2.8/2,h=8);
}

translate([13,0,0])difference(){cube([8,8,5]);
translate([4,4,-1])cylinder(r=2.8/2,h=26);
}

difference(){
union(){
difference(){
translate([0,1,0])roundedRect([26,24,10-2],3.5);
translate([-13,-11.5,1])cube([26,25,15]);
translate([-9,-20,1])cube([18,25,15]);
}
translate([0,1,0])roundedRect([26,24,1],3.5);
translate([0,1+2+2,0])roundedRect([26,20-4,5],3.5);

translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6);
//translate([10.5,-1.5-1.5,0])#cylinder(r=1.8/2,h=8);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6);
//translate([10.5,-1.5,0])cylinder(r=1.8/2,h=8);
}
translate([-21,0,0]){
translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6);
//translate([10.5,-1.5-1.5,0])cylinder(r=1.8/2,h=8);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6);
//translate([10.5,-1.5,0])cylinder(r=1.8/2,h=8);
}
}
}


translate([10.5,-1.5-1.5,1.5])#cylinder(r=1.8/2,h=18);
translate([0,12.5,1.5]){
translate([10.5,-1.5,0])#cylinder(r=1.8/2,h=18);
}
translate([-21,0,1.5]){
translate([10.5,-1.5-1.5,0])#cylinder(r=1.8/2,h=18);
translate([0,12.5,0])translate([10.5,-1.5,0])#cylinder(r=1.8/2,h=18);
}


translate([0,4,-1])cylinder(r=14/2,h=20);
translate([-12.5,1-0.5,1.5])cube([25,7,30]);
//translate([0,-1.5,-2])#cylinder(r=17/2,h=30);
translate([0,-1.5,1.5])rotate([0,0,45])cylinder(r=24.75/2,h=9,$fn=4);
translate([0,1.7,1])roundedRect([11.5,20,10],3.5);
}

module raspi_cam(){
//translate([xs/2 ,mhyc+mhoy,zs]) sensor();
//pcb();
color("green")difference(){
cube([25,24,1]);
translate([2,2,-1])#cylinder(r=2/2,h=4);
translate([25-2,2,-1])#cylinder(r=2/2,h=4);
translate([25/2,9,-1])#cylinder(r=8/2,h=20);

translate([0,16,0]){
translate([2,0,-1])#cylinder(r=2/2,h=4);
translate([25-2,0,-1])#cylinder(r=2/2,h=4);
}
}
}
}




module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];

linear_extrude(height=z)
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}
}


//translate([-70,36-20,-2])rotate([0,0,0])openmv_camera_base();
//translate([0,0,-2])openmv_camera_lensmount();
//translate([0,0,-2])openmv_camera_lensmount_lensepart();

/*
difference(){
translate([-85,115,0.39])rotate([0,0,90])import("openmv/files/OpenMV_rev_6_Camera_Bottom_cover.stl");
translate([-130,40,1.85])cube([50,50,20]);
}
*/


//translate([-135,80-30-50,3.35])translate([5+25,-10+6-15-2+2,-1.5])rotate([0,0,0])m12lens_screwshim_spacer(12,21.95);
//rotate([-90,0,180])color("pink")openmv_camera_mnt_zbed();
//microwell_plate_guide();
//raspicamera_assy();



//color("lime")
//openmv_set();
//translate([-85,115,0.39])rotate([0,0,90])import("openmv/files/OpenMV_rev_6_Camera_Bottom_cover.stl");
//openmv_nice_assy_stroboscope();

//wash_and_strobparts();

