include <CameraFrontLeft.scad>
//include </Users/richard/Documents/009Reprapcatcube010715/dr.robotlab_repstrap.scad>
//include </Users/richard/Google\ Drive/mac_dev_drrobotlabs/dr.robotlabs/dr.robotlab_repstrap.scad>
//include <../dr.robotlab_repstrap.scad>
//include </Users/richard/Google Drive/009Reprapcatcube010715/dr.robotlab_repstrap.scad>
//29
//color("lime")translate([33.5,-29,24.5])rotate([-90,0,180])leftcamera();

//import("raspberri_pi_camera_case_back_v0.4.STL");
//import("raspberri_pi_camera_case_front_v0.4.2.STL");


/*
translate([0,36,0])rotate([90,0,0])connectionarms();
translate([0,24,0])rotate([90,0,0])connectionarms();
translate([0,12,0])rotate([90,0,0])connectionarms();
rotate([90,0,0])connectionarms();
*/


module stroboscope_assy(){

stroboscope_base();
stroboscope();
stroboscope_wall();
rotate([0,0,0])stroboscopelid();
}

module ledmount_magnet(){
translate([25,22,0])difference(){
union(){
cube([13+48,13,5]);
translate([7,6,0])cylinder(r=4.15/2,h=10);
}
translate([7+8,6,0.5])cylinder(r=6.65/2,h=9);
translate([7+8+59-16,6,0.5])cylinder(r=6.65/2,h=9);
}
translate([25+59,22,0])difference(){
union(){
cube([13,13,5]);
translate([7,6,0])cylinder(r=4.15/2,h=10);
}
translate([7+8-16,6,0.5])cylinder(r=6.65/2,h=9);
}
}





module ledmount(){
translate([25,22,0])difference(){
union(){
translate([5.5,0,0])cube([13+48,13,5]);
}
translate([24,0,2])cube([13+10,13,4]);
translate([7+8,6,-0])cylinder(r=6.65/2,h=4);
translate([7+8+59-16,6,-0])cylinder(r=6.65/2,h=4);
translate([7+26,6,-5])cylinder(r=2/2,h=30);
translate([7+32,6,-5])cylinder(r=2/2,h=30);
}
}







module armholder(){
//imagingsource_base();
translate([125,2.5,-3])rotate([0,0,180])justclip();
translate([125,42.5,-3])rotate([0,0,180])justclip();
translate([119,-12.5,-2])difference(){
translate([0,0,-1])cube([8,55,28]);
translate([-8,10,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
translate([-8,45,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
}
}


module jagged_armholder(){
//imagingsource_base();
translate([125,2.5,-3])rotate([0,0,180])justclip();
translate([125,42.5,-3])rotate([0,0,180])justclip();
translate([119,-12.5,-2])difference(){
union(){
translate([0,10.5,-1+13])cube([8,35,15]);
translate([0,0,-1])cube([8,55,15]);
}
translate([-8,10+9,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
translate([-8,37,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
}
}





/*

module connectionarms(){
translate([0,0,0])connector_wider();
translate([-40,0,0])cube([40,2.8,10]);
translate([-39,2.8,0])rotate([0,0,180])connector_wider();
}
*/


module stroboscopelid(){
difference(){
union(){
color("pink")translate([-7,-65,30-1])cube([73,65,4]);
color("green")translate([-7+6.5+1.55,-4,30-4])cube([73-14.6,4,4]);
}
translate([10,-55,25])cube([17,1.5,20]);

//rightwall holes
translate([-7,-25,-7]){
translate([65+3,-40+7+45,0])cylinder(r=4/2,h=39);
translate([65+3,-40+7,0])cylinder(r=4/2,h=39);
}
//leftwall holes
translate([-7,-20,-7]){
translate([3,16.5,0])cylinder(r=4/2,h=39);
translate([3,16.5-56,0])cylinder(r=4/2,h=39);
}
}
}

module stroboscope_wall(){
difference(){
union(){
translate([-7,-20,-7])leftwall();
translate([-7,-25,-7])backwall();
translate([-7,-25,-7])rightwall();
}
translate([-6,-20,-7]){
translate([65+3,-40+7+45,0])cylinder(r=4.1/2,h=5);
translate([65+3,-40+7+45/2,0])cylinder(r=4.1/2,h=5);
translate([65+3,-40-1,0])cylinder(r=4.1/2,h=5);
translate([65+3-20,-40-1,0])cylinder(r=4.1/2,h=5);
translate([65+3-45,-40-1,0])cylinder(r=4.1/2,h=5);
}
translate([-6-69+5,-20,-7]){
translate([65+3,-40+7+45,0])cylinder(r=4.1/2,h=4);
translate([65+3,-40+7+45/2,0])cylinder(r=4.1/2,h=4);
translate([65+3,-40-1,0])cylinder(r=4.1/2,h=4);
}
}
}




module stroboscope_base(){
translate([-0,0,0])basesupport_b();
translate([30,0,0])basesupport_a();
collection_plate();
translate([-6,-20,-7]){
translate([65+3,-40+7+45,0])cylinder(r=3.1/2,h=2);
translate([65+3,-40+7+45/2,0])cylinder(r=3.1/2,h=2);
translate([65+3,-40-1,0])cylinder(r=3.1/2,h=2);
translate([65+3-20,-40-1,0])cylinder(r=3.1/2,h=2);
translate([65+3-45,-40-1,0])cylinder(r=3.1/2,h=2);
}
translate([-6-69+5,-20,-7]){
translate([65+3,-40+7+45,0])cylinder(r=3.1/2,h=2);
translate([65+3,-40+7+45/2,0])cylinder(r=3.1/2,h=2);
translate([65+3,-40-1,0])cylinder(r=3.1/2,h=2);
}
//translate([-7,-20,-7])leftwall();
//translate([-7,-25,-7])backwall();
//translate([-7,-25,-7])rightwall();
}
//translate([-30,0,6.65])basesupport_b();
//standoffkey_prismmountmod_bigger_rails_bigger_lens();

/*
difference(){
import("raspberri_pi_camera_case_front_v0.4.2.STL");
 translate([2,0+2,0])cylinder(r=3/2,h=15);
 translate([28,0+2,0])cylinder(r=3/2,h=15);
 translate([2,24,0])cylinder(r=3/2,h=15);
 translate([2+13,24.3,0])cylinder(r=3/2,h=15);
 //translate([2+13,-0.3,0])cylinder(r=3/2,h=15);
 translate([28,24,0])cylinder(r=3/2,h=15);
}
*/


module rightwall(){
union(){
translate([68+2,-40,0])cube([3,64.8,36]);
translate([68+2-4,-18+6,0])cube([7,20,8]);
}
translate([65,-40,0])cube([8,10,36]);
translate([65,-40+47,0])cube([8,10,36]);
translate([65+1.5,-40+47+7.8,0])cube([6,10,36]);
translate([65+3,-40+7+45,0])cylinder(r=3.1/2,h=38);
translate([65+3,-40+7,0])cylinder(r=3.1/2,h=38);
}

module backwall(){
difference(){
union(){
translate([0,-40,0])cube([73,4,36]);
translate([18,-40,0])cube([35,7,8]);
}
translate([57,-30,20])rotate([90,0,0])cylinder(r=4/2,h=20);
}
}


module leftwall(){
union(){
translate([0,-40,0])cube([3,60,5]);
translate([0,15-2,0])cube([8,5+2,36]);
translate([0,15-2-6,0])cube([8,5+2+6,8]);
//translate([0,15-2-20,0])cube([8,5+2+23,7]);
translate([3,16.5,0])cylinder(r=3.1/2,h=38);
translate([3,16.5-56,0])cylinder(r=3.1/2,h=38);
translate([0,15-60+5-5+2,0])cube([8,5+2,36]);
translate([0,-40-5,0])cube([3,60+5,36]);

}
}


module next_raspi_cam_assay(){
 import("raspberri_pi_camera_case_front_v0.4.2.STL");
 translate([30,0,12])rotate([0,180,0])import("raspberri_pi_camera_case_back_v0.4.STL");
 translate([-46.25,1,-11.5])m12_plate_bigger();
}

module next_raspi_cam_assay_for_headcam(){
 import("raspberri_pi_camera_case_front_v0.4.2.STL");
 translate([30,0,12])rotate([0,180,0])import("raspberri_pi_camera_case_back_v0.4.STL");
 translate([-46.25,1,-11.5])m12_plate_bigger_headcam();
 m12_plate_bigger_headcam_lid();
}




module m12_plate(){
translate([50,0,0]){
difference(){union(){
translate([-3,0,0])cube([22+6,22,8.9]);
cube([22,22,5]);
}
translate([4,-7.5+3,5]){
translate([-1+0.25,7.5+0.25,-3])cube([15.5,15.5,7]);
translate([-1+0.25-3.75,7.5+0.25+15.5/2-2.5,-3])#cube([23,5,7]);
//translate([-4.5,12.75,-3])cube([23,5.5,8+9]);
translate([13.15/2+0.5,12.7+2.8,-24])#cylinder(r=15.3/2,h=50);
}
}
}
}

module m12_plate_bigger(){
translate([50,0,0]){
m12_plate();
difference(){union(){
translate([-7,-3,0])cube([22+14,22+6+4,13-1.5]);
translate([-7,-3.1-0.15,0])cube([22+14,2,13-1.5+5]);
translate([-7,22+6+4-3-1+0.15,0])cube([22+14,2,13-1.5+5]);
translate([-7,-3,0])cube([3,22+6+4,13-1.5+5]);
translate([22+14-9.5,-3,0])cube([3,22+6+5,13-1.5+5]);
cube([22,22,5]);
}
/*
translate([4+0.1,-7.5+3+0.4,5]){
translate([-1,7.5,0])cube([16,16,20]);
translate([-4.5,7.5+5.2,0])cube([23,5.5,8]);
translate([13.15/2+0.5,13.15/2+8.5,-24])cylinder(r=15.5/2,h=50);
}
*/
translate([4,-7.5+3+0.4,5]){
translate([-3.8,4.3,0])cube([16+5.6,16+5.6,6.8]);
translate([-7.6,12.1+0.21,-0])cube([25.5+3.6,5.5,8]);
translate([13.15/2+0.5,13.15/2+8.5,-14])cylinder(r=15.5/2,h=50);
}
translate([4,-7.5+3+0.4,5]){
for (a =[0:50]){
translate([13.15/2+0.5+0.15,13.15/2+8.5+20,-14+8+(a*0.5)])rotate([90,0,0])cylinder(r=4/2,h=3);
}
}
translate([0,68.3,15.5]){
translate([33.5-15.0-13,-10.5+5-15-17.5,12.5-20])rotate([90,0,0])cylinder(r=4.1/2,h=3.5);
translate([33.5-15.0-13+19,-10.5+5-15-17.5,12.5-20])rotate([90,0,0])cylinder(r=4.1/2,h=3.5);
}
}
}
}

module m12_plate_bigger_headcam_lid(){

translate([-12,-8.25,30])cube([22+14+10.5,22+6+4+11.4,3]);
translate([-12+10-3.5/2,-8.25+10,30-1])cube([26.5+3.5,22+6+4+11.4-20,2]);
translate([1.7,-10+1.75,27-1])cube([18,3,6]);
translate([-7.5,-4,26])cylinder(r=4.4/2,h=6);
translate([-7.5,30,26])cylinder(r=4.4/2,h=6);
translate([30,-4,26])cylinder(r=4.4/2,h=6);
translate([30,30,26])cylinder(r=4.4/2,h=6);
}

module m12_plate_bigger_headcam(){

translate([25,22,0])difference(){
cube([13,13,4]);
translate([7,6,-5])cylinder(r=5/2,h=30);
}
translate([25+59,22,0])difference(){
cube([13,13,4]);
translate([7,6,-5])cylinder(r=5/2,h=30);
}



translate([33,-43,12])rotate([0,0,0]){
translate([120-120,35,-12])rotate([0,0,-90])justclip();
translate([120-120+40,35,-12])rotate([0,0,-90])justclip();
}
translate([50,0,0]){
difference(){union(){
//translate([0,0,-5])m12_plate_bigger_headcam_lid();
translate([-7,-3,0])cube([22+14,22+6+4,13-1.5]);
difference(){
translate([-7-5,-3.1-0.15-5,0])cube([22+14.5+10,2+5,13-1.5+5+9]);
translate([-7-5+10,-3.1-0.15-5+2,8])cube([22+14.5+10-20,6,13-1.5+5+35]);
}
translate([-7-5,22+6+4-3-1+0.15,0])cube([22+14.5+10,2+5,13-1.5+5+9]);
translate([-7-5,-3,0])cube([3+5,22+6+4,13-1.5+5+9]);
translate([22+14-9.5,-3,0])cube([3+5,22+6+5,13-1.5+5+9]);
cube([22,22,5]);
}
translate([-7.5,-4,18])cylinder(r=5/2,h=8);
translate([-7.5,30,18])cylinder(r=5/2,h=8);
translate([30,-4,18])cylinder(r=5/2,h=8);
translate([30,30,18])cylinder(r=5/2,h=8);

translate([1.7,-10,19.5])cube([18,5,6]);
translate([4,-7.5+3+0.4,5-3]){
translate([-3.8+5.6/2+0.25,4.3+5.6/2+0.25,0])cube([16-0.5,16-0.5,9.6]);
translate([-7.6+2+2.1/2,12.1+0.21+0.25,-0])cube([23,5,9.6]);
translate([13.15/2+0.5,13.15/2+8.5,-14])cylinder(r=15.4/2,h=30);
}
translate([4,-7.5+3+0.4,5]){

/*
for (a =[0:50]){
translate([13.15/2+0.5+0.15,13.15/2+8.5+20,-14+8+(a*0.5)])rotate([90,0,0])cylinder(r=4/2,h=3);
}
*/


}
}
}
}













module basesupport_a(){

/*
translate([0,30,-6.65-2])
difference(){
translate([-10,0,0])cube([63-30,25,4]);
translate([11.5,16,-5])cylinder(r=4.7/2,h=60);
}
*/

difference(){union(){
translate([0,0,-6.65])cube([63-30,33,6.65]);
translate([0,-40,-6.65-2])cube([63-40+10,33+40,2]);
translate([-5,-40,-6.65-2])cube([63-40,33+40,2]);
translate([0-5,-40-20-5,-6.65-2])cube([63-30+8,33+40+5,2]);
}
translate([18.6-13+13,18.2+6-20,-13])cylinder(r=4/2,h=55);
translate([18.6-13+13,18.2+6+3,-13])cylinder(r=4/2,h=55);

//translate([18.6-13,18.2+6+3,-13])cylinder(r=4/2,h=55);
//translate([18.6-13,18.2+6-20,-13])cylinder(r=4/2,h=55);
}
}





module collection_plate(){

difference(){
union(){
translate([0,1,-6.65-2-4-10])
cube([63-10,25+6,4+10]);
translate([9,0,0]){
translate([5,16,-6.65-2-4-10-20])cylinder(r=6/2,h=30);
translate([12,16,-6.65-2-4-10-20])cylinder(r=6/2,h=30);
}
}
translate([18.6-13,18.2+6+3,-13-30])cylinder(r=4/2,h=55);
translate([18.6-13,18.2+6-20,-13-30])cylinder(r=4/2,h=55);
translate([18.6-13+13+30,18.2+6-20,-13-30])cylinder(r=4/2,h=55);
translate([18.6-13+13+30,18.2+6+3,-13-30])cylinder(r=4/2,h=55);
}

}




module basesupport_b(){

//original clamp way which doesn't fit if rotate the other way
translate([0,30,-6.65-2])
difference(){
cube([63-10,25,4]);
translate([11.5,16,-5])cylinder(r=4.7/2,h=60);
translate([11.5+30,16,-5])cylinder(r=4.7/2,h=60);
}

/*
//another clamp way
translate([0-20,30-27,-6.65-2])
difference(){
translate([-5,0,0])cube([63-40+5,25,4]);
translate([11.5-2.1-5,16-0.7,-5])cylinder(r=4.7/2,h=60);
}

translate([0-20+78,30-27,-6.65-2])
difference(){
translate([-5,0,0])cube([63-40+5,25,4]);
translate([11.5-2.1-5+12,16-0.7,-5])cylinder(r=4.7/2,h=60);
}
*/
//another clamp way


/*
translate([0,30-120,-6.65-2])
difference(){
union(){
translate([0,-1,0])cube([63-40,25,4]);
cube([63-40,25,2]);
}
translate([11.5,16-5,-5])cylinder(r=4.7/2,h=60);
}
*/

difference(){union(){
translate([0,0,-6.65])cube([63-40+10,33,6.65]);
translate([-7,-60-5,-6.65-2])cube([63-35,33+28+5,2]);
translate([0,-60-5,-6.65-2])cube([63-35,33+60+5,2]);
}
translate([18.6-13,18.2+6+3,-13])cylinder(r=4/2,h=55);
translate([18.6-13,18.2+6-20,-13])cylinder(r=4/2,h=55);
translate([18.6-13+13,18.2+6+3-9,-13])cylinder(r=9.5/2,h=15);

translate([18.6-13+13,18.2+6+3,-13])cylinder(r=4/2,h=515);
translate([18.6-13+13,18.2+6-20,-13])cylinder(r=4/2,h=55);
}
for (a =[0:60]){
translate([33.5-15.0,-10.5+5-15-(0.5*a),12.5-20])rotate([0,0,0])cylinder(r=3.1/2,h=2.5);
}

translate([33.5-15.0-13,-10.5+5-15-17.5,12.5-20])rotate([0,0,0])cylinder(r=3.1/2,h=2.5);
translate([33.5-15.0-13+19,-10.5+5-15-17.5,12.5-20])rotate([0,0,0])cylinder(r=3.1/2,h=2.5);

}



module stroboscope(){
difference(){union(){
translate([0,0,0])cube([63,33+1.5,9]);
//translate([0,0,-6.65])cube([63-40,33,6.65]);
//translate([0,0,-6.65])basesupport_a();
//translate([65,-40,0])cube([63-40,33,6.65]);
cube([63,1.5,26]);
translate([2.5,-9,0])color("pink")cube([48.5,9,26]);
translate([2.5,-5.5,0])color("red")cube([56.5,5.5,26]);
translate([59-8,-9,0])rotate([0,0,23.65])color("lightblue")cube([9,2,26]);


translate([0,1.5,0]){
color("lime")translate([0,33-4.2,0])cube([14.5,4.2,16.5]);
color("red")translate([0,33-2,0])cube([23.4,2,16.5]);
color("lightblue")translate([14.5,33-4.2,0])rotate([0,0,14.5])cube([9.2,2,16.5]);
}
}
translate([0,1.5,9-3.5])cube([63,8,3.6]);
translate([18.6,18.2,-3])cylinder(r=10/2,h=20);

translate([18.6-13,18.2+6+3,-3])cylinder(r=4/2,h=20);
translate([18.6-13,18.2+6-20,-3])cylinder(r=4/2,h=20);
//translate([18.6-13+13,18.2+6+3,-3])cylinder(r=4/2,h=20);
//translate([18.6-13+13,18.2+6-20,-3])cylinder(r=4/2,h=20);

translate([30,0,0]){
translate([18.6-13+13,18.2+6+3,-3])cylinder(r=4/2,h=20);
translate([18.6-13+13,18.2+6-20,-3])cylinder(r=4/2,h=20);
//translate([18.6-13,18.2+6+3,-3])cylinder(r=4/2,h=20);
//translate([18.6-13,18.2+6-20,-3])cylinder(r=4/2,h=20);
}

translate([18.6,18.2-10,12.5])rotate([90,0,0])cylinder(r=9/2,h=20);
translate([33.5+5-3,-10.5+5,12.5])led();
translate([0,0,0]){
translate([25.5,-0.5,10.0])cube([11.5,2,5]);
translate([25.5+11.5/2,-0.5-3-8,10.0])cube([11.5/2,5+9,5]);
}
translate([33.5-15.0,-10.5+5,12.5])rotate([90,0,0])cylinder(r=16/2,h=4);
}
/*
for (a =[0:60]){
translate([33.5-15.0,-10.5+5-15-(0.5*a),12.5-20])rotate([0,0,0])cylinder(r=3.1/2,h=2.5);
}
*/
}

module led(){

translate([0,0,0])rotate([90,0,23.65]){
difference(){
sphere(r=9.9/2);
cylinder(r=9.9/2,h=13);
}
cylinder(r=9.9/2,h=7);
translate([0,0,7])color("pink")cylinder(r=10.5/2,h=2);
}
}
