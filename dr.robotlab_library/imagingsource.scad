include <waste_simple_hinge.scad>
include <dr.robotlab_repstrap.scad>

//standoffkey_prismmountmod_bigger_rails();
//imagingsource_base();
//translate([-82,5,30])middle_lens_set_lens();

//rotate([90,0,0])connectionarms2(0);

//translate([0,0,19])imagingsource_cover();
//translate([98,-4,0])rotate([90,0,0])connectionarms2(0);
//translate([98,-9+10,2.5])rotate([-90,0,0])connectionarms2(1);

//translate([-155,0,5])rotate([180,0,0])camera_assy();
//rotate([90,0,0])nanoplotter_mount_assy();


//color("PowderBlue")translate([-82,5,40])standoffkey_prismmountmod_bigger_rails();
//rotate([0,180,0])standoffkey_prismmountmod_bigger_rails_bigger_lens();

/*
color("pink")translate([-15,5,40])middle_lens_set();
translate([60,60,43])imagingsource_base();
color("lime")translate([30,63,44])rotate([0,180,0])imagingsource_cover();
*/
/*
for (z = [0,1,2,3]) // two iterations, z = -1, z = 1
{
    translate([0,0,(12*z)])connectionarms();
}

*/
//middle_lens_set();
//imagingsource_base();
//standoffkey_prismmountmod_bigger_rails();


//color("lime")
//translate([30,58,1])rotate([0,180,0])imagingsource_cover();
/*
translate([-60,34,-3])standoffkey_prismmountmod_bigger_rails();
//translate([-125,34,-3])middle_lens_set();
translate([-82,5,30])middle_lens_set();

color("lime")translate([30,58,1])rotate([0,180,0])imagingsource_cover();
imagingsource_base();

translate([40,164,-3])rotate([0,0,90])cliparm();
*/

//translate([40,164,-3])rotate([0,0,90])cliparm();

//this works with M12 lens mount -- PT-LH008P

//this one is better and designed for the bigger lens mount
module standoffkey_prismmountmod_bigger_rails_bigger_lens(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){

translate([-13,-5,0])cube([40,40,6.6+3]);
translate([-6-2.5,-18+25,5])cube([5,18,1+3]);
translate([15+2.5,-18+25,5])cube([5,18,1+3]);
translate([-5-10+15-0.5,-5+12.5-22,0])cube([15,60,9.6]);
translate([-23,-5+12.5,0])cube([60,15,9.6]);

}
translate([-1-(5.6-6.1)/2,7.5-(5.6-6.1)/2,0-0.01])#cube([15.5,16+5.6-6.1,7-0.04]);
translate([-1-(5.6-6.1)/2-3.75,7.5-(5.6-6.1)/2+15.5/2-2.5,0])cube([23,5,7]);
//translate([-4-3.6,7.5+5.2,-1])cube([25.5+3.6,5.5,8]);
//translate([-1+0.25-3.75,7.5+0.25+15.5/2-2.5,-3])cube([23,5,7]);
//translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=15.35/2,h=50);

translate([-1-(5.6-6.1)/2+(16+5.6-6.1)/2,7.5-(5.6-6.1)/2+(16+5.6-6.1)/2,0-0.01])cylinder(r=15.35/2,h=50);


translate([15-8,-9.5,-3])cylinder(r=3.7/2,h=14.2);
translate([15-8,-9.5+50,-3])cylinder(r=3.7/2,h=14.2);
translate([15+25-8,-9.5+25,-3])cylinder(r=3.7/2,h=14.2);
translate([15-25-8,-9.5+25,-3])cylinder(r=3.7/2,h=14.2);
}
}


//this works with M12 lens mount -- PT-LH008P
module standoffkey_prismmountmod_bigger_rails(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){

translate([-13,-5,0])cube([40,40,5]);
translate([-6,-18+25,5])cube([5,18,1+2.85+3]);
translate([15,-18+25,5])cube([5,18,1+2.85+3]);

translate([-5-10+15,-5+12.5-22,0])cube([15,60,5]);
translate([-23,-5+12.5,0])cube([60,15,5]);

}
translate([-1,7.5,0])cube([16,16,20]);
translate([-4.5,7.5+5.2,0])cube([23,5.5,8]);
translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=11.1/2,h=50);

translate([15-8,-9.5,-8])cylinder(r=3.7/2,h=14.2);
translate([15-8,-9.5+50,-8])cylinder(r=3.7/2,h=14.2);
translate([15+25-8,-9.5+25,-8])cylinder(r=3.7/2,h=14.2);
translate([15-25-8,-9.5+25,-8])cylinder(r=3.7/2,h=14.2);
}
}




//camera_assy();
module camera_assy(){

translate([-82,5,28])standoffkey_prismmountmod_bigger_rails_bigger_lens();
translate([-82.075,5-0.075,23])middle_lens_set();
translate([0,0,19])imagingsource_cover();
imagingsource_base();

/*
translate([125,2.5,-3])rotate([0,0,180])justclip();
translate([125,42.5,-3])rotate([0,0,180])justclip();
translate([119,-12.5,-2])difference(){
translate([0,0,-1])cube([8,55,28]);
translate([-8,10,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
translate([-8,45,20])rotate([90,0,90]){cylinder(r=5.7/2,h=20);translate([0,0,7.5])cylinder(r=9/2,h=3);}
}
*/


//this part isn't as cool as the jagged_armholder();
//jagged_armholder();

/* connection arms
translate([98,-4,0])connectionarms2(0);
translate([98,-9,0])connectionarms2(1);
translate([0,40,0]){
translate([98,-4,0])connectionarms2(0);
translate([98,-9,0])connectionarms2(1);
}
*/


}

module nanoplotter_mount_assy(){

rotate([0,0,0]){
translate([0,0,0])nanoplotter_breadboard2();
translate([-28-5,-27.8,-40])tslot20(100);
pantilt_extrusion_connect();
}

}



module pantilt_extrusion_connect(){
difference(){
translate([-8,-24-10,-24])cube([8,40,28]);
translate([-8-10,-13,-18]){translate([18-3.5,0,0])rotate([0,90,0])cylinder(r=9.5/2,h=40);rotate([0,90,0])cylinder(r=4.7/2,h=40);}
translate([-8-10,-13,-3]){translate([18-3.5,0,0])rotate([0,90,0])cylinder(r=9.5/2,h=40);rotate([0,90,0])cylinder(r=4.7/2,h=40);}
translate([-8-10,1,-0]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=40);}
translate([-8-10,1,-20]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=400);}
translate([-8-10,1-30,-0]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=40);}
translate([-8-10,1-30,-20]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=400);}
}
}




module nanoplotter_breadboard2(){

difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,35.5-10])cube([7,95,40]);
}
translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
}
translate([-3.1,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
for (x = [-2,0,1,4,5]) {
for (z = [2,3,4,5]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [-1,6]) {
for (z = [2,3,4]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}


for (x = [2,3]) {
for (z = [2,3,4,5]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

/*
for (x = [5]) {
for (z = [5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
*/
//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}

}



module connectionarms2(a){
translate([0,0,0])connector();
translate([-40,0,0])#cube([40,2,10]);
if (a == 0){
translate([-30,0,0])cube([40-20,2.5+2.5,10]);
}
if (a == 1){
translate([-30,-2.5,0])cube([40-20,2.5+2.5,10]);
}
translate([-39,2,0])rotate([0,0,180])#connector();
}

/*
module connector(w=2) {
  translate([1.5, w, 5])
  difference() {
    rotate([90])
      scale([1.7,1])
      cylinder(r=5, h=w);
    rotate([90])
      translate([4,0])
      cylinder(r=1.6, h=w, $fn=7);
    translate([-11.5, -3, -5])
    cube([10,4,10]);
  }
}
*/
/*
module connectors() {
  color("peru"){
  connector();
  translate([0, 5]) #connector();
  translate([0, 10]) #connector();
  }
}
*/

//connectors();
//This is the connector library


/*
module cliparm(){
translate([0,-15,0])difference(){
union(){
translate([0,7,0])color("red")cube([6, 16, 15]);
translate([0,6.2,7.5])rotate([0,90,0])color("green")cylinder(r=7.5,h=6);
}
translate([-2,6,8])rotate([0,90,0])cylinder(r=4.7/2,h=10);
}
}
*/


module justclip(){
translate([0, 15]) rotate([90]) difference() {
  color("blue")
  cube([15, 15, 15]);
  //translate([0,4.5])
  //cube([10, 6.2, 15]);
}
module base() {
  cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}






module clip(){

translate([0,-15,0])difference(){
union(){
translate([0,7,0])color("red")cube([6, 9, 15]);
translate([0,6.2,7.5])rotate([0,90,0])color("green")cylinder(r=7.5,h=6);
}
translate([-2,6,8])rotate([0,90,0])cylinder(r=4.7/2,h=10);
}
translate([0, 15]) rotate([90]) difference() {
  color("blue")cube([15, 15, 15]);

  //translate([0,4.5])
  //cube([10, 6.2, 15]);
}
module base() {
  cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}













module middle_lens_set(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){

translate([-13+0.075,-5+0.075,0])cube([40,40,5]);
/*
translate([-6,-18+25,5])cube([5,18,1+2.85]);
translate([15,-18+25,5])cube([5,18,1+2.85]);
*/
translate([-5-10+15-0.43,-5+12.5-22+0.075,0])cube([15,60,5]);
translate([-23+0.07,-5+12.5+0.075,0])cube([60,15,5]);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])#cylinder(r=11.1/2,h=50);
//translate([13.15/2+0.5,13.15/2+8.5,2.4])#cylinder(r=25.2/2,h=2.62);

translate([15-8+0.075,-9.5+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15-8+0.075,-9.5+50+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15+25-8+0.075,-9.5+25+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15-25-8+0.075,-9.5+25+0.075,-8])cylinder(r=3.7/2,h=14.2);
}
}

module middle_lens_set_lens(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){

translate([-13+0.075,-5+0.075,0])cube([40,40,5]);
/*
translate([-6,-18+25,5])cube([5,18,1+2.85]);
translate([15,-18+25,5])cube([5,18,1+2.85]);
*/
translate([-5-10+15-0.43,-5+12.5-22+0.075,0])cube([15,60,5]);
translate([-23+0.07,-5+12.5+0.075,0])cube([60,15,5]);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])#cylinder(r=11.1/2,h=50);
translate([13.15/2+0.5,13.15/2+8.5,2.4])#cylinder(r=(25.2+0.5)/2,h=2.62);
translate([15-8+0.075,-9.5+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15-8+0.075,-9.5+50+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15+25-8+0.075,-9.5+25+0.075,-8])cylinder(r=3.7/2,h=14.2);
translate([15-25-8+0.075,-9.5+25+0.075,-8])cylinder(r=3.7/2,h=14.2);
}
}






module imagingsource_cover(){
difference(){
union(){
translate([-5,-5,-3])cube([40,40,7]);
translate([-5-10,-5+12.5,-3])cube([60,15,7]);
translate([-5-10,-5+12.5,-6])#cube([9,15,7]);
translate([-5-10+51,-5+12.5,-6])#cube([9,15,7]);
translate([-5-10+22.5,-5+12.5-22,-3])cube([15,60,7]);
//translate([-5-10+22.5-3,-5+12.5-22,-3])cube([17,12,7]);
translate([5.2+0.5,-5,-5-3])cube([8.6-1,4,3+3]);
//translate([-0.5,-0.5,-6])cube([31,31,3.15]);
translate([-0.5,-0.5,-6])cube([5.5,5,3.15]);
translate([21.5,-0.5,-6])cube([9,5,3.15]);
translate([-0.5,25.5,-6])cube([10.5,5,3.15]);
translate([25,25.5,-6])cube([5.5,5,3.15]);
}
translate([-5+20,-5+20,-3])cylinder(r=11.1/2,h=30);
translate([15,-9.5,-8])cylinder(r=3.7/2,h=34.2);
translate([15,-9.5,-3])cylinder(r=7/2,h=4.2,$fn=6);
translate([15,-9.5+50,-8])cylinder(r=3.7/2,h=34.2);
translate([15,-9.5+50,-3])cylinder(r=7/2,h=4.2,$fn=6);
translate([15+25,-9.5+25,-8])cylinder(r=3.7/2,h=34.2);
translate([15+25,-9.5+25,-3-5])rotate([0,0,90])cylinder(r=7/2,h=4.2+5,$fn=6);
translate([15-25,-9.5+25,-8])cylinder(r=3.7/2,h=34.2);
translate([15-25,-9.5+25,-3-5])rotate([0,0,90])cylinder(r=7/2,h=4.2+5,$fn=6);
translate([15+24.5/2,2.5,-15])cylinder(r=3/2,h=30);
translate([15+24.5/2,2.5,0])cylinder(r=4.6/2,h=4);
translate([15-24.5/2,2.5,-15])cylinder(r=3/2,h=30);
translate([15-24.5/2,2.5,0])cylinder(r=4.6/2,h=4);
//translate([15-24.5/2,2.5,-3.5])cylinder(r=5.4/2,h=8,$fn=6);
translate([15+24.5/2,27.5,-15])cylinder(r=3/2,h=30);
translate([15+24.5/2,27.5,0])cylinder(r=4.6/2,h=4);
//translate([15+24.5/2,27.5,-3.5])cylinder(r=5.4/2,h=8,$fn=6);
translate([15-24.5/2,27.5,-15])cylinder(r=3/2,h=30);
translate([15-24.5/2,27.5,0])cylinder(r=4.6/2,h=4);
//translate([15-24.5/2,27.5,-3])cylinder(r=5.4/2,h=8,$fn=6);
}
}


//DMM 22BUC03-MLA
module imagingsource_base(){
difference(){
union(){
cube([30,30,3]);
difference(){
translate([-5,-5,-3])cube([30+10,30+10,13+6]);
translate([-1,-1,3])cube([32,32,14]);
}

translate([15+24.5/2,2.5,0])cylinder(r=6.5/2,h=10.);
translate([15+24.5/2-6,2.5-4,0])cube([10,5,10.]);

translate([15-24.5/2,2.5,0])cylinder(r=10/2,h=7.);


translate([15+24.5/2,27.5,0])difference([]){
cylinder(r=10/2,h=7.);
translate([-7,-7,0])cube([7,5,8]);
}


translate([15-24.5/2,27.5,0])cylinder(r=6.5/2,h=10.);
translate([15-24.5/2-3.7,27.5-1.5,0])cube([10,5,10.]);
}
translate([5.2,-8,2.2+1.6-6.81+8.26])cube([8.6,10,7.8-1.6+3+3]);
//translate([25.3-4.2,25.5-3.7-5.4,-5])cube([4.5,8,15]);
translate([25.3-4.2+2,25.5-3.7-5.4+4.5,-5])cylinder(r=3.5/2,h=30);
translate([25.3-4.2+2,25.5-3.7-5.4+4.5-1,-5])cylinder(r=3.5/2,h=30);
translate([25.3-4.2+2,25.5-3.7-5.4+4.5-2,-5])cylinder(r=3.5/2,h=30);
translate([25.3-4.2+2,25.5-3.7-5.4+4.5-3,-5])cylinder(r=3.5/2,h=30);

//translate([15-9,15,-5])cylinder(r=2.5/2,h=30);
//translate([15+9,15,-5])cylinder(r=2.5/2,h=30);
//The holes are designed for 2-56 screws
translate([15+24.5/2,2.5,-5])cylinder(r=3/2,h=30);
translate([15+24.5/2,2.5,-3.6])cylinder(r=7.8/2,h=8,$fn=6);

translate([15-24.5/2,2.5,-5])cylinder(r=3/2,h=30);
translate([15-24.5/2,2.5,-3.6])cylinder(r=7.8/2,h=8,$fn=6);

translate([15+24.5/2,27.5,-5])cylinder(r=3/2,h=30);
translate([15+24.5/2,27.5,-3.6])cylinder(r=7.8/2,h=8,$fn=6);

translate([15-24.5/2,27.5,-5])cylinder(r=3/2,h=30);
translate([15-24.5/2,27.5,-3.6])cylinder(r=7.8/2,h=8,$fn=6);
}


//this is the clip part
translate([-4,17,0]){
translate([35,10,-3])rotate([0,0,-0])justclip();

/*
translate([-12,0,0])color("Thistle"){
translate([114,13.7,-4])connectionarms();
translate([114,13.7+5.5,-4])connectionarms();
}
*/

}

translate([-4,-23,0]){
translate([35,10,-3])rotate([0,0,-0])justclip();

/*
translate([-12,0,0])color("Thistle"){
translate([114,13.7,-4])connectionarms();
translate([114,13.7+5.5,-4])connectionarms();
}
*/

}


}
