//include <modparts.scad>
//use<writescad/write.scad>
include <tslot_lib.scad>

//hdmi_rj45_usb_panel();

//cube([200,200,200]);
//bottom_bed_fix();
//projection(cut=false)
//front_plate_x1_wider();
//back_plate_x1_wider();
//back_plate_x1_wider();
//right_plate_x1_wider();
//projection(cut=false)
//left_plate_x1_wider();

//hdmi_rj45_usb_panel();

//m4_washer();

//rotate([0,90,0])tslot20(500);

//vacuum pump
//vacuum_pump_holder(36.5);

//peristaltic pump
//peristaltic_pump_holder(27.5);

/*
difference(){
cube([599.3,60.5,3]);
translate([62+120+60,14+10,-50])rotate([0,0,0])translate([-7,-7,-3.1])cube([x+8+30,y+8-20,700]);
for(i=[0:2]){
translate([62+120+50+i*50,14-3,-50])cylinder(r=2.8/2,h=200);
translate([62+120+50+i*50,14-3+35,-50])cylinder(r=2.8/2,h=200);
}
}
*/


module hdmi_rj45_usb_panel(){
difference(){
union(){
translate([0,0,400])rotate([-90,0,0])translate([92+34-53+10,410-10,-53-4])rotate([90,0,0])cube([117,43+8,3]);
translate([0,1,0])color(""){
}
}
translate([40,-58,0])for(i=[0,2]){
translate([62+120+50+i*50-180,14-3,-50])cylinder(r=3.7/2,h=200);
translate([62+120+50+i*50-180,14-3+35,-50])cylinder(r=3.7/2,h=200);
}
translate([10,0,0]){

//usb port
translate([77.5+17-1,20+3-76+1,0]){
translate([15/2,20,0])translate([0,-14.6,-1])cylinder(r=3.7/2,h=10);
translate([15/2,20,0])translate([0,0,-1])rotate([0,0,45])cylinder(r=16/2,h=10,$fn=4);
translate([15/2,20,0])translate([0,14.6,-1])cylinder(r=3.7/2,h=10);
}

//usb port
translate([77.5+17-1+25,20+3-76+1,0]){
translate([15/2,20,0])translate([0,-14.6,-1])cylinder(r=3.7/2,h=10);
translate([15/2,20,0])translate([0,0,-1])rotate([0,0,45])cylinder(r=16/2,h=10,$fn=4);
translate([15/2,20,0])translate([0,14.6,-1])cylinder(r=3.7/2,h=10);
}

translate([77.5+17-1+50,20+3-76+1,0]){
translate([15/2,20,0])translate([0,-14.6,-1])cylinder(r=3.7/2,h=10);
translate([15/2,20,0])translate([0,0,-1])rotate([0,0,45])cylinder(r=16/2,h=10,$fn=4);
translate([15/2,20,0])translate([0,14.6,-1])cylinder(r=3.7/2,h=10);
}
}
}
}






module front_plate_x1_wider(){
//length = 410.33
//width = 60.516
x = 58;
y = 35;
translate([-75,4,54+45])difference(){
//cube([410.3+147+42,60.51,3]);
cube([599.3,60.51,3]);

}
}


module left_plate_x1_wider(){
//length = 370.736
//width = 62.81
translate([-52-45,0,-75])difference(){
//cube([370.2,62.814,3]);
translate([0,4,0])cube([495.2+5,60.51,3]);
/*
translate([37.12,33.408,-0.1])cylinder(r=37.584/2,h=30);
//translate([20.88,16.704,-0.1])cylinder(r=5.365/2,h=30);
translate([20.88,16.704,-0.1])cylinder(r=5.365/2,h=30);
translate([54.29,16.704,-0.1])cylinder(r=5.365/2,h=30);
translate([20.88,49.65,-0.1])cylinder(r=5.365/2,h=30);
translate([54.29,48.65,-0.1])cylinder(r=5.365/2,h=30);
x = 58;
y = 35+8;
translate([62+120+60-180+180,14+10-4,-50])rotate([0,0,0])translate([-7,-7,-3.1])cube([x+8+30,y+8-20,700]);
for(i=[0,2]){
translate([62+120+50+i*50-180+180,14-3,-50])cylinder(r=2.7/2,h=200);
translate([62+120+50+i*50-180+180,14-3+35,-50])cylinder(r=2.7/2,h=200);
}
*/

/*
//usb port
translate([77.5+17-1+100,20+3-76+1+76,0])rotate([0,0,90]){
translate([15/2,20,0])translate([0,-14.6,-1])cylinder(r=3.7/2,h=10);
translate([15/2,20,0])translate([0,0,-1])rotate([0,0,45])cylinder(r=16/2,h=10,$fn=4);
translate([15/2,20,0])translate([0,14.6,-1])cylinder(r=3.7/2,h=10);
}

//usb port
translate([77.5+17-1+100-60,20+3-76+1+76,0])rotate([0,0,90]){
translate([15/2,20,0])translate([0,-14.6,-1])cylinder(r=3.7/2,h=10);
translate([15/2,20,0])translate([0,0,-1])rotate([0,0,45])cylinder(r=16/2,h=10,$fn=4);
translate([15/2,20,0])translate([0,14.6,-1])cylinder(r=3.7/2,h=10);
}
*/

}
}































module right_plate_x1_wider(){
//length = 370.736
//width = 62.81
space = (29.2+20);
translate([-52-45,0,74])difference(){
union(){
translate([0,4,0])color("gray")cube([495.74+5,60.51,3]);
}
translate([77.5+30-50,20+3+0,5-6])rotate([0,0,90])translate([15/2,20,0]){
j = 0.7;
}
x = 58;
y = 35;

/*
translate([62+120+60-18,14+10,-50])rotate([0,0,0])translate([-7,-7-2,-3.1])cube([x+8+30,y+8-20+4,700]);
for(i=[0,2]){
translate([62+120+50+i*50-18,14-3,-50])cylinder(r=2.8/2,h=200);
translate([62+120+50+i*50-18,14-3+35,-50])cylinder(r=2.8/2,h=200);
}
*/
}
}















module front_plate_x1_wider(){
//length = 410.33
//width = 60.516
x = 58;
y = 35;
/*
translate([-75,4,54+45])difference(){
//cube([410.3+147+42,60.51,3]);
cube([599.3,60.51,3]);
translate([62,14+14,-50])rotate([0,0,0])translate([-7,-7.5,-2.9])cube([58,18+3,700]);
//translate([62,14,-50])rotate([0,0,0])translate([-7,-7,-3.1])cube([x+8,y+8,700]);
translate([-1,2.8,0]){
translate([62+120+60,14+10,-50])rotate([0,0,0])translate([-7,-7,-3.1])cube([x+8+30,y+8-20,700]);
for(i=[0:2]){
translate([62+120+50+i*50,14-3,-50])cylinder(r=3.7/2,h=200);
translate([62+120+50+i*50,14-3+35,-50])cylinder(r=3.7/2,h=200);
}
}
ff = 60;
translate([ff,19+10-15+2,-50])cylinder(r=4.2/2,h=200);
translate([ff+52.2,19+10-15+3,-50])cylinder(r=4.2/2,h=200);
translate([ff,19+10+15.3,-50])cylinder(r=4.2/2,h=200);
translate([ff+50.8,19+10+15.3,-50])cylinder(r=4.2/2,h=200);
}
*/
translate([-75+75,4,54+45-3])
linear_extrude(height = 5, center = true, convexity = 10)
   import (file = "front_plate_x2_wider.dxf", layer = "");

}


module bottom_x1_wider_a(){
/*
 translate([14+(708.8*0.58)-1,19+(638.4*0.58),13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([182,-30,0])#cube([301,500,5]);
 }
 translate([-3-114,-2-40,0-1])cube([(595+3)/2,(495+5)+30,3+4]);
}
*/
translate([14+(708.8*0.58)-1-475,19+(638.4*0.58)-470,13-7])
linear_extrude(height = 5, center = true, convexity = 10)
   import (file = "bottom_x1_wider_a_ponoko.dxf", layer = "");
}

module bottom_x1_wider_a_enclosure(){
/*
 translate([14+(708.8*0.58)-1,19+(638.4*0.58),13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([182,-30,0])#cube([301,500,5]);
 }
 translate([-3-114,-2-40,0-1])cube([(595+3)/2,(495+5)+30,3+4]);
}
*/
translate([14+(708.8*0.58)-1-475,19+(638.4*0.58)-470,13-7])
linear_extrude(height = 5, center = true, convexity = 10)
   import (file = "bottom_x1_wider_a_ponoko.dxf", layer = "");
}


module bottom_x1_wider_b_enclosure(){
 /*
 translate([14+(708.8*0.58)-1,19+(638.4*0.58)-6,13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([-115,-30,0])#cube([297,500,5]);
 }
 translate([-3+185,-2-40,0-1])cube([((595+3)/2)+5,(495+5)+36,3+4]);
}
 */

translate([14+(708.8*0.58)-1-180,19+(638.4*0.58)-6-470,13-7])
linear_extrude(height = 5, center = true, convexity = 10)
   import (file = "bottom_x1_wider_b_ponoko.dxf", layer = "");

}





module bottom_x1_wider_b(){
 /*
 translate([14+(708.8*0.58)-1,19+(638.4*0.58)-6,13-7])color(bcl)rotate([0,0,180])
difference(){
 union(){
 bottom_x1_wider();
 //translate([-115,-30,0])#cube([297,500,5]);
 }
 translate([-3+185,-2-40,0-1])cube([((595+3)/2)+5,(495+5)+36,3+4]);
}
 */

translate([14+(708.8*0.58)-1-180,19+(638.4*0.58)-6-470,13-7])
linear_extrude(height = 5, center = true, convexity = 10)
   import (file = "bottom_x1_wider_b_ponoko.dxf", layer = "");

}












module back_plate_x1_wider(){
x = 58;
y = 35;

translate([-75,0,-30])
difference(){
cube([599.3,60.5,3]);
translate([62+120+60,14+10,-50])rotate([0,0,0])translate([-7,-7,-3.1])cube([x+8+30,y+8-20,700]);
for(i=[0:2]){
translate([62+120+50+i*50,14-3,-50])cylinder(r=2.8/2,h=200);
translate([62+120+50+i*50,14-3+35,-50])cylinder(r=2.8/2,h=200);
}
}
}














module bottom_bed_fix(){
translate([0,-93,16]){
difference(){
union(){
cube([30,30,4]);
translate([0,20,-8])cube([30,10,5+7]);
}
translate([5,10,0])cylinder(r=4.7/2,h=20);
translate([30-5,10,0])cylinder(r=4.7/2,h=20);
translate([5,30-4,-14])cylinder(r=2.8/2,h=20);
translate([30-5,30-4,-14])cylinder(r=2.8/2,h=20);
}
}
}




module m4_washer(){
difference(){union(){
cylinder(r=(10)/2,h=5);
}
translate([0,0,-1])cylinder(r=5.8/2,h=20);
}
}





module peristaltic_pump_holder(dia){
difference(){
union(){
cylinder(r=(dia+dia/2)/2,h=20);
translate([0,20,0])rotate([0,0,45])cylinder(r=(30)/2,h=20,$fn=4);
translate([0,-15,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
translate([0,-15,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
translate([0,-15,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
}
translate([0,50,10])rotate([90,0,0])cylinder(r=5.7/2,h=80,$fn=100);
translate([0,50-9.35-4-6-4,10])rotate([90,0,0])cylinder(r=10/2,h=80,$fn=100);
translate([-80,-22,10])rotate([0,90,0])cylinder(r=3.7/2,h=80,$fn=100);
translate([-10,-22,10])rotate([0,90,0])cylinder(r=2.7/2,h=80,$fn=100);
translate([0,0,-1])cylinder(r=dia/2,h=30);
for(i=[0:30]){
translate([0,-10-i,-1])cylinder(r=10.5/2,h=30);
}
}
}






module vacuum_pump_holder(dia){
difference(){
union(){
cylinder(r=(dia+dia/2)/2,h=20);
translate([0,30,0])rotate([0,0,45])cylinder(r=(30)/2,h=20,$fn=4);
translate([0,-20,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
translate([2,-20,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
translate([-2,-20,0])rotate([0,0,45])cylinder(r=(40)/2,h=20,$fn=4);
}
translate([0,50,10])rotate([90,0,0])cylinder(r=5.7/2,h=80,$fn=100);
translate([0,50-9.35-4,10])rotate([90,0,0])cylinder(r=10/2,h=80,$fn=100);
translate([-40,-28,10])rotate([0,90,0])cylinder(r=3.7/2,h=36,$fn=100);
translate([-10,-28,10])rotate([0,90,0])cylinder(r=2.7/2,h=80,$fn=100);
translate([0,0,-1])cylinder(r=dia/2,h=30);
for(i=[0:30]){
translate([0,-10-i,-1])cylinder(r=10.5/2,h=30);
}
}
}





































