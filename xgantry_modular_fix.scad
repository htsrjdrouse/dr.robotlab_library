include <PiZero.scad>
include <utl.NEMA.scad>
include <printable_lm8uu.scad>
include <multichannel_cameramount.scad>
include <pipette_tip.scad>
include <bom_zbed.scad>
//include <bom_cytokinetics.scad>
include <Claw.scad>
//sandwich_delrinwheel();
//spring_stepper_linear_m8nut_coupler_lm8uu();

//multichannel_cameramount_tslot_part();
//multichannel_cameramount_tipholder();

//stepperconduitclamp();
//iverntech_railsystem();
//lm8uu_zdriver_assay();





/*
translate([-113,-151+9,520])rotate([0,180,0]){
multi_iverntech_railsystem();
translate([0,108,0])multi_iverntech_railsystem();
translate([0,108*2,0])multi_iverntech_railsystem();
translate([0,108*3,0])multi_iverntech_railsystem();
translate([0,108*4,0])multi_iverntech_railsystem();
}
ct = 0;
//for(i=[0:(12)-1]){
for(i=[0:(12*5)-1]){
translate([0,i*9,90])pipette_p300_lts_model();
for(j=[0:15]){
translate([-4+j*9,-3+i*9,50]){
color("red")cube([9,9,20]);
color("white")translate([4.5,4.5,0])cylinder(r=5/2,h=21);
}
}
translate([-4+160,-3+i*9,50]){
color("silver")cube([9,9,20]);
color("black")translate([4.5,4.5,0])cylinder(r=3/2,h=21);
}
translate([-4+175,-3+i*9,50]){
color("silver")cube([9,9,20]);
color("black")translate([4.5,4.5,0])cylinder(r=3/2,h=21);
}
translate([-4+185,-3+i*9,50]){
color("lightblue")cube([58,9,20]);
//color("black")translate([4.5+5,4.5,0])cylinder(r=3/2,h=21);
}
translate([-4+245,-3+i*9,50]){
color("grey")cube([20,9,20]);
color("black")translate([4.5+5,4.5,0])cylinder(r=3/2,h=21);
}
}
color("yellow")translate([-20,-5,45])cube([280,550,5]);
*/

//translate([49.7,31,25])slider_wall_holes();
//translate([49.7,31,25])slider_wall_holes_608bearing();
//translate([49.7,31,25])slider_wall_holes_bottomclamp();
//translate([49.7,31+118,25])slider_wall_holes_bottomclamp();


//XY_bearings_Right_x1_3dprint();
//XY_bearings_Left_x1_3dprint();
//backspacer();
//motormount_centered();
//iverntech_slider_xshuttle_connect();
/*
include <bom_multichannel.scad>
include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
include <nanoplotter.scad>
include <PiZero.scad>
*/
//iverntech_slider_tslot_connector();


//translate([120,250-4.5,654])rotate([180,0,90])iverntech_railsystem();
//xshuttle_assy_wider(x,y);
//translate([49.7,31,25])slider_wall_holes();
//translate([49.7,31,25])slider_wall_holes_608bearing();

//stepperconduitclamp();
//lm8uu_zdriver_assay();
//stepper_linear_m8nut_coupler_lm8uu();
//slider_wall_holes();
//slider_wall_holes_bottomclamp();

//stepper_driver_lm8uu_pla();


//slider_front_assy_multichannel_iverntech();
//shuttle_back();

//lm8uu_zslider();
//stepper_linear_m8nut_coupler_lm8uu();
//shuttle_back_fast();
//shuttle_front_vertical_adjust_wider_iverntech();
//shuttle_front_vertical_adjust_wider_slider_wall_beltfix();

//heater();


module heater(){
 difference(){
 union(){
 //cube([18,76,26]);
 //translate([0,0,26])cube([18,76,4]);
 translate([0,0,-4])cube([18,76,4]);
 }
 for(i=[0:7]){
 translate([6,6.5+i*9,6.1])cylinder(r=4/2,h=20+10,$fn=30);
 }
 translate([10,20,-0.1-4])cylinder(r=6.5/2,h=26,$fn=30);
 translate([10,20+36,-0.1-4])cylinder(r=6.5/2,h=26,$fn=30);
 translate([10,20+18,-0.1-4])cylinder(r=2.4/2,h=26,$fn=30);
 translate([14,12,-0.1-4])cylinder(r=2.4/2,h=35,$fn=30);
 translate([14,76-12,-0.1-4])cylinder(r=2.4/2,h=35,$fn=30);

 }
}


module stepperconduitclamp(){

difference(){
union(){
cube([60,60,6]);
translate([-10,20,0])cube([80,20,15]);
//translate([-4,-32,0])cube([40,40,10]);
translate([16,-14,0])cylinder(r=(24+20)/2,h=10,$fn=30);
}

translate([-6,-14-16,5])rotate([0,90,0])cylinder(r=8.3/2,h=14,$fn=30);
translate([-6,-14-16,5])rotate([0,90,0])cylinder(r=3.8/2,h=25,$fn=30);
translate([-6,-14-16,5])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([16,-40,-5])cube([8,20,50]);
translate([16,-14,-5])cylinder(r=24/2,h=50,$fn=30);
translate([-4+68,30,10])rotate([-90,0,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([-4,0,10])rotate([-90,0,0])cylinder(r=2.8/2,h=100,$fn=30);
translate([-4+68,0,10])rotate([-90,0,0])cylinder(r=2.8/2,h=100,$fn=30);
translate([-4,30,10])rotate([-90,0,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([-4,0,10])rotate([-90,0,0])cylinder(r=2.8/2,h=100,$fn=30);
translate([(60-43)/2,(60-43)/2,-1])cube([43,43,50]);
translate([-12.5,(60-43)/2+19,-1])cube([85,5,50]);
}

}



module backspacer(){

difference(){
cylinder(r=14/2,h=2.5,$fn=30);
cylinder(r=4.7/2,h=2.5,$fn=30);
}
}


module lm8uu_zdriver_assay(z){
stepper_driver_lm8uu_pla_dual(z);
//translate([-20.5-50,130+0.75+30,370.75-37])rotate([90,0,-90])multichannel_pipette_holder_linear_actuator_connect_cameramount();
translate([-20.5,130+0.75,370.75])rotate([-90,0,90]){
color("salmon"){
translate([49.7,31,25])slider_wall_holes();
translate([49.7,31,25])slider_wall_holes_608bearing();
translate([49.7,31,25])slider_wall_holes_bottomclamp();
translate([49.7,31+118,25])slider_wall_holes_bottomclamp();
}
}
}

module lm8uu_zdriver_assay_dual(z){
stepper_driver_lm8uu_pla_dual(z);
//translate([-20.5-50,130+0.75+30,370.75-37])rotate([90,0,-90])multichannel_pipette_holder_linear_actuator_connect_cameramount();

translate([-20.5,130+0.75,370.75])rotate([-90,0,90]){
color("salmon"){
translate([49.7,31,25])slider_wall_holes();
translate([49.7,31,25])slider_wall_holes_608bearing();
translate([49.7,31,25])slider_wall_holes_bottomclamp();
translate([49.7,31+118,25])slider_wall_holes_bottomclamp();
}
}


}










module pre_stepper_driver_lm8uu_slider_assy(){
translate([-20.5-2,130+0.75,370.75])rotate([-90,0,90]){
color("silver")translate([49.7+11,31+33+10+1,25+40-5])rotate([90,0,0])cylinder(r=8/2,h=131,$fn=30);
color("silver")translate([49.7+11,31+33+10-50-3,25+40-5])rotate([90,0,0])cylinder(r=15/2,h=25,$fn=30);
lm8uu_zslider();
}
}

module stepper_driver_lm8uu_slider_assy(){
translate([0,-9.5,0])pre_stepper_driver_lm8uu_slider_assy();
translate([0,9.5,0])pre_stepper_driver_lm8uu_slider_assy();

}





module stepper_driver_lm8uu_pla(z){
translate([-20.5-2,130+0.75,370.75])rotate([-90,0,90]){
color("silver")translate([49.7+11,31+33+10+1,25+40-5])rotate([90,0,0])cylinder(r=8/2,h=131,$fn=30);
}
translate([-100+50+6.5-10+10,154+76.5-1,250-5+30-z+40])rotate([-90,0,90])translate([0,0,0])spring_stepper_linear_m8nut_coupler_lm8uu();
translate([0,-1,0]){
translate([-45,232.5,282.5])rotate([0,0,180]){
motormount_centered();
translate([0,19,-18.5-48])linactnema17();
translate([21,40,-4])color("silver")cylinder(r=8/2,h=145,$fn=30);
}
}
}



module stepper_driver_lm8uu_pla_dual(z){


translate([0,0,0]){
translate([-20.5-2,130+0.75,370.75])rotate([-90,0,90]){
color("silver")translate([49.7+11,31+33+10+1,25+40-5])rotate([90,0,0])cylinder(r=8/2,h=131,$fn=30);
}
translate([-100+50+6.5-10+10,154+76.5-1,250-5+30-z+40])rotate([-90,0,90])translate([0,0,0])spring_stepper_linear_m8nut_coupler_lm8uu();
translate([-45,232.5,282.5])rotate([0,0,180]){
translate([21,40,-4])color("silver")cylinder(r=8/2,h=145,$fn=30);
}
}


translate([0,-1,0]){
translate([-45,232.5,282.5])rotate([0,0,180]){
motormount_centered();
translate([0,19,-18.5-48])linactnema17();
//translate([21,40,-4])color("silver")cylinder(r=8/2,h=145,$fn=30);
}
}
}





module stepper_driver_lm8uu(){
//stepper_driver_lm8uu_slider_assy();
translate([-20.5-2,130+0.75,370.75])rotate([-90,0,90]){
color("silver")translate([49.7+11,31+33+10+1,25+40-5])rotate([90,0,0])cylinder(r=8/2,h=131,$fn=30);
color("silver")translate([49.7+11,31+33+10-50-3,25+40-5])rotate([90,0,0])cylinder(r=15/2,h=25,$fn=30);
lm8uu_zslider();
}
translate([-100+50+6.5-10+10,154+76.5-1,250-5+30])rotate([-90,0,90])stepper_linear_m8nut_coupler_lm8uu();
translate([0,-1,0]){
translate([-45,232.5,282.5])rotate([0,0,180]){
motormount_centered();
translate([21,40,-18.5])nema17();
translate([21,40,-4])color("silver")cylinder(r=8/2,h=110,$fn=30);
}
}
}





module lm8uu_zslider(){
difference(){
union(){
translate([49.7+111,31+33+10-77,25+40-5+11.5-1])rotate([180,0,0])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
translate([49.7+11-7.5-2.5,31+33+10-50-3+20-9.3,25+40-5-4.5])rotate([90,0,0])cube([15+5,15+2,9]);
}
/*
translate([54+6.7,27+20-2,50+10])rotate([90,0,0])cylinder(r=8.7/2,h=100,$fn=30);
translate([54,27,50])cylinder(r=3.7/2,h=60, $fn=30);
translate([54,27,68.6])cylinder(r=8.5/2,h=4, $fn=30);
translate([13.5,0,0]){
translate([54,27,50])cylinder(r=3.7/2,h=60, $fn=30);
translate([54,27,68.6])cylinder(r=8.5/2,h=4, $fn=30);
}
*/
}
}


module slider_wall_holes_bottomclamp(){

difference(){
translate([49.7-59-2,31-118+2,25+11])cube([41+4,7,8]);
translate([-6.5,-20-62,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);}
translate([-6.5+35,-20-62,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);}
translate([-24+35,31+33+10+1-40+10,25+40-5-23])rotate([90,0,0])cylinder(r=7.8/2,h=141,$fn=30);


}
}



module slider_wall_holes_608bearing(){
difference(){
color("peru")translate([49.7-38.65-21,31-76-32-2.2+1,25-15.65-4])rotate([90,0,0])cube([42,15+4,9]);
translate([49.7-38.65,31-76-32,25-4.5])rotate([90,0,0])cylinder(r=22.4/2,h=7,$fn=30);
translate([49.7-38.65,31-76-32,25-4.5])rotate([90,0,0])cylinder(r=8.4/2,h=20,$fn=30);
translate([-6.5,-20-62,20-20]){translate([0,0,4.5])cylinder(r=2.8/2,h=50,$fn=30);}
translate([-6.5+35,-20-62,20-20]){translate([0,0,4.5])cylinder(r=2.8/2,h=50,$fn=30);}
}
}


module slider_wall_holes(){
difference(){
union(){
translate([49.7,31,25])slider_wall();

//color("peru")translate([49.7-38.65-21,31-76-32-2.2+1,25-15.65-4])rotate([90,0,0])cube([42,15+4,9]);

}
 translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}
  translate([35,0,0]){
  translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30,$fn=30);translate([0,0,-20])cylinder(r=2.7/2,h=40,$fn=30);}


}
translate([-6.5+35,-20-62,20]){translate([0,0,4.5])cylinder(r=2.8/2,h=30,$fn=30);}

translate([-6.5,-20-62,20]){translate([0,0,4.5])cylinder(r=3.8/2,h=30,$fn=30);}
translate([-6.5+35,-20-62,20]){translate([0,0,4.5])cylinder(r=3.8/2,h=30,$fn=30);}
translate([-24+35,31+33+10+1-40+10,25+40-5-23])rotate([90,0,0])cylinder(r=8.7/2,h=141,$fn=30);
translate([49.7-38.65,31-76-32,25-4.5])rotate([90,0,0])cylinder(r=22.4/2,h=7,$fn=30);
translate([49.7-38.65,31-76-32,25-4.5])rotate([90,0,0])cylinder(r=8.4/2,h=20,$fn=30);
}
}

module slider_wall(){
translate([-90,0,-0.5])difference(){
translate([0-7.5-10-32+56+3,-40+20+10+3-8+22+3,0])cube([10+15+10+10+32-48,10,6+3-5+14]);
translate([13,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
translate([13+19,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
}
difference(){
union(){
translate([25-47.5,17.32+1.38-14-87,-13.5+13]){
translate([-2,-35,0])cube([4.64+2,13.62+1+22+58.5+35,10]);
translate([-2-35,-35,0])cube([4.64+2,13.62+1+22+55+37,10]);
translate([-2-35,4-40,0])cube([4.64+2+35,10,10]);
translate([-2-35,85,0])cube([4.64+2+30,10,10]);
}
}
//translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65,-13.5+13-20])cylinder(r=1.8/2,h=200);
//translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+120,-13.5+13-20])cylinder(r=1.8/2,h=200);
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20+1,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
}
}




module spring_stepper_linear_m8nut_coupler_lm8uu(){
mirror([0,0,0]){
translate([0,-20-9,0])difference(){
union(){
//translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=18/2,h=23+3-15);
//color("green")
translate([49.7-87.75,31+33+10-50-3+10-66,25+40-26])rotate([90,0,0])lm8uu_pla();
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=22/2,h=10);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10-5,22.5])cube([5,20+10-21+10+5,20-4.2+0.3+0.45-4.5+15]);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10-5,22.5])cube([7,20+10-21+10+5,20-4.2+0.3+0.45-4.5+0]);
translate([-38.25+14-13.9-14+2-0.5+2+14,-70+30-5-10-10+21-10-5,22.5])cube([7,20+10-21+10+5,20-4.2+0.3+0.45-4.5+0]);
translate([-38.25+14-13.9-14+2-0.5+2+16,-70+30-5-10-10+21-10-5,22.5])cube([5,20+10-21+10+5,20-4.2+0.3+0.45-4.5+15]);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10,22.5+21])cube([20,20+10-21+10,6]);
}
translate([0.35+0.75,-8-2,0])rotate([0,0,0]){

translate([-38.25+14-13.9+6.5-7.5,-70+30-10+8+5-16+1.5+13+8.8,22.5+8-8])rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13+8.8-6.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13+8.75-6.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);


/*
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13+8.8,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13+8.75,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13+8.8-13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=30,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13+8.8-13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
*/

}
translate([-38.25+14-13.9-14+8+1.2-0.2,-70+30-5-10-17,22.5+13.5])cube([10,40,5]);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5-33,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10,22.5-8])rotate([-90,0,0])cylinder(r=8.5/2,h=4,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10-20,22.5+8])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);

/*
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=2.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-16,22.5+8])rotate([-90,0,0])cylinder(r=2.8/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=2.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=2.8/2,h=36,$fn=35);
*/
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=3.7/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-16,22.5+8])rotate([-90,0,0])cylinder(r=3.7/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.7/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.7/2,h=36,$fn=35);


//translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=7.8/2,h=241);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=7.9/2,h=241,$fn=30);
//translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=10.8/2,h=241);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=15/2,h=27);
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}
}






















module stepper_linear_m8nut_coupler_lm8uu(){
mirror([0,0,0]){
translate([0,-20-9,0])difference(){
union(){
//translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=18/2,h=23+3-15);
//color("green")
translate([49.7-87.75,31+33+10-50-3+10-66,25+40-26])rotate([90,0,0])lm8uu_pla();
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=22/2,h=10);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10-5,22.5])cube([5,20+10-21+10+5,20-4.2+0.3+0.45-4.5+15]);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10-5,22.5])cube([7,20+10-21+10+5,20-4.2+0.3+0.45-4.5+0]);
translate([-38.25+14-13.9-14+2-0.5+2+14,-70+30-5-10-10+21-10-5,22.5])cube([7,20+10-21+10+5,20-4.2+0.3+0.45-4.5+0]);
translate([-38.25+14-13.9-14+2-0.5+2+16,-70+30-5-10-10+21-10-5,22.5])cube([5,20+10-21+10+5,20-4.2+0.3+0.45-4.5+15]);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10+21-10,22.5+21])cube([20,20+10-21+10,6]);
}
translate([0.35+0.75,-8-2,0])rotate([0,0,0]){
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13+8.8,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13+8.75,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13+8.8-13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=30,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13+8.8-13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.3/2,h=36,$fn=35);
}
translate([-38.25+14-13.9-14+8+1.2-0.2,-70+30-5-10-17,22.5+13.5])cube([10,40,5]);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5-33,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10,22.5-8])rotate([-90,0,0])cylinder(r=8.5/2,h=4,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10-20,22.5+8])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-16,22.5+8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=7.8/2,h=241);
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}
}



















module stepper_linear_m8nut_coupler_vertical_adjust_nema17_wider(){
mirror([0,0,0]){
translate([0,-20-9,0])difference(){
union(){
//translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=18/2,h=23+3-15);
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=22/2,h=10);
translate([-38.25+14-13.9-14+2-0.5+2,-70+30-5-10-10,22.5])cube([26-1-4,20+10,20-4.2+0.3+0.45]);
//translate([-38.25+14-13.9,-70+30.-5,22.5+3.8-1.0])cube([44.5,10,3.7+1.25]);
}
translate([0.35+0.75,-8-2,0])rotate([0,0,0]){
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
}
translate([-38.25+14-13.9-14+8+1.2-0.2,-70+30-5-10-17,22.5+13.5])cube([10,40,5]);
//cylinder(r=7.4,h=sl+4,$fn=6);
//translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5-33,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10,22.5-8])rotate([-90,0,0])cylinder(r=8.5/2,h=4,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10-20,22.5+8])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-16,22.5+8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-90,0,0])cylinder(r=2.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-0,40,0])cylinder(r=3.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9,-70+30-10+8+5,22.5])rotate([-90,0,0])cylinder(r=13.8/2,h=28,$fn=6);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=7.8/2,h=241);
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}
}





module motormountthin(){
 mmx = 42;
 mmy = 42;
 mmz = 5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 3.7/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1]){
  cylinder(r=motrad, h=9);
  cylinder(r=8.2/2, h=109);
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  }
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-5])
  cylinder(r=m3rad, h=50);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-5])
  cylinder(r=m3rad, h=50);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5]){
  cylinder(r=m3rad, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5]){
  cylinder(r=m3rad, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
 }
}








module slider_wall_mod(){
translate([-90,0+10,-0.5])difference(){
union(){
translate([0-7.5-10-32+56+3,-40+20+10+3-8+22+3,0])cube([10+15+10+10+32-48,10,6+3-5+14]);
translate([0-7.5-10-32+56+3+14+5,-40+20+10+3-8+22+3-10,0])cube([10+15+10+10+32-48-15,10,6+3-5+14-8]);
}
translate([13,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
translate([13+19,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
}
difference(){
union(){
translate([25-47.5,17.32+1.38-14-87,-13.5+13]){
translate([-2,-35+25,0])cube([4.64+2,105.12,10]);
translate([-2-35,-35+25,0])cube([4.64+2,105.12,10]);
translate([-2-35,4-40+25-4,0])cube([4.64+2+35,10,10]);
translate([-2-35,85,0])cube([4.64+2+30,10,10]);
}
}
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+21+(20*5)-(20*5),-13.5+13-20])cylinder(r=1.4/2,h=200,$fn=30);
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+21+(20*5),-13.5+13-20])cylinder(r=1.4/2,h=200,$fn=30);
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20+1,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
}
}




module motormount_centered(){
 translate([0.1,0,0])difference(){union(){
 translate([-3,5,-17.5-1])cube([20,14,5]);
 translate([-3,5+56,-17.5-1])cube([20,14,5]);
 motormountthin();
 }
 translate([6-0.5,12+12.4,-17+2])cylinder(r=8/2,h=3.5);
 translate([6-0.5,12+12.4+31,-17+2])cylinder(r=8/2,h=3.5);
 translate([6,12,-50])cylinder(r=4.7/2,h=120);
 translate([6,12+56,-50])cylinder(r=4.7/2,h=120);
 }
}







module sandwich_delrinwheel(){
 tbg = 0.9;color([tbg,tbg,tbg]){
 translate([0,0,-14])cylinder(r=5.7/2,h=40); 
} 
 bg = 0.2;color([bg,bg,bg]){
 cylinder(r=23.9/2,h=10.23);
 }
}





module slider_front_assy_multichannel_iverntech(){
//translate([179.5,180-12.5+1.5,300-1])rotate([-90,0,180])multichannel_assy_wider();
translate([0,3,0]){
translate([0,0,-3]){
//nested modules ...uhhhh
//this module filament_linearactuator_multichannel_wider_iverntech() is here
//which just calls this: color("")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall_beltfix()
//which is in modparts.scad file frustratingly at line 11879
//which then calls module shuttle_front_vertical_adjust_wider_iverntech()  at line 12023 also at modparts.scad
translate([208,188+1.5,342])rotate([90,0,0])filament_linearactuator_multichannel_wider_iverntech();
//inductive sensor
//color("silver")translate([208-16,188-16,342-35])cylinder(r=12/2,h=55);
}
}
//translate([15-25+229.5,206.5-11,-63+400])rotate([90,0,0])sandwich_sliderwheel_assy_iverntech();
}


module filament_linearactuator_multichannel_wider_iverntech(){
color("")translate([-1,0,0])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
//color("")translate([-25+8,5,41])rotate([-90,0,0])import("files/gt2belt_holder.stl");
//color("")translate([-25-53-8,5,41])rotate([-90,0,0])import("files/gt2belt_holder.stl");
}







module shuttle_front_vertical_adjust_wider_slider_wall_beltfix(){
 difference(){
  union(){
  //translate([49.7,31,25])slider_wall();
  shuttle_front_vertical_adjust_wider_iverntech();
 //color("")translate([-25+8,5,41])rotate([-90,0,0])import("files/gt2belt_holder.stl");
 translate([-25+8-30+14-5.2,22.5+2,0])rotate([90,0,0])cube([24+10,7,20]);
 translate([-25+8-30+14-5.2+60,22.5+2,0])rotate([90,0,0])cube([24+10,7,20]);
  }
 translate([-25+8-30+14-5.2+42+4-32,22.5-4+11-10-9,0-20])rotate([0,0,0])cube([4,8,30]);
 translate([-25+8-30+14-5.2+42+4+70-38,22.5-4+11-9-10,0-20])rotate([0,0,0])cube([4,8,30]);
 translate([-25+8-30+14-5.2+88,22.5-2,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([-25+8-30+14-5.2+88,22.5-2-12,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([-25+8-30+14-5.2+6,22.5-2,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([-25+8-30+14-5.2+6,22.5-2-12,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
  translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,-20+12.5,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17+12.5,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([35,0,0]){
  translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,-20+12.5,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17+12.5,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  }
 }
}














module shuttle_front_vertical_adjust_wider_iverntech(){
//color("")import("head_front.stl");

translate([-28.5,-10,0])difference(){
union(){
translate([0,-1.75-4,0])cube([73,53+4,5]);
//translate([25-2,15+9,0])cube([25+6,13+16,3+7+7]);
//translate([25-2,15+9,0])cube([25+6,13+16,3+7+7]);
//translate([25-2,15+9,0])cube([25+6,13,3+7+7]);
//translate([25-2+5,15+9,0])cube([25+6-10,13+16,3+7+7]);
}
///translate([25-2,15+9+10,3])rotate([0,0,60])cube([25+6,13+16,3+7+8+9]);
//translate([25-2+16,15+9+10+26,3])rotate([0,0,-60])cube([25+6,13+16,3+7]);
translate([0-3,-16-4,-0.3])cube([33+3,23,10]);
translate([47,-9-8,-0.3])cube([33,23,10]);
translate([32,32,-3]){
//translate([0,-4,0])cylinder(r=2.8/2,h=30,$fn=30);
//translate([14,0-4,0]){cylinder(r=2.8/2,h=30,$fn=30);}
translate([7,-4,0])cylinder(r=2.8/2,h=30,$fn=30);
/*
//this is the middle hole going to try this out
translate([7,14-4,2.9]){cylinder(r=2.8/2,h=30,$fn=30);}//cylinder(r=6.8/2,h=5.5,$fn=6);}
translate([7,14-4,2.9+3+9]){difference(){
cylinder(r=10/2,h=30,$fn=30);
//cylinder(r=5/2,h=30,$fn=30);
}
}
*/
//this is the first side I think its not necessary
translate([7-8,14-4,2.9]){cylinder(r=2.8/2,h=30,$fn=30);}//cylinder(r=6.8/2,h=5.5,$fn=6);}
translate([7-8,14-4,2.9+3+9]){difference(){
cylinder(r=10/2,h=30,$fn=30);
//cylinder(r=5/2,h=30,$fn=30);
}
}
//this is the other side I think its not necessary
translate([7+8,14-4,2.9]){cylinder(r=2.8/2,h=30,$fn=30);}//cylinder(r=6.8/2,h=5.5,$fn=6);}
translate([7+8,14-4,2.9+3+9]){difference(){
cylinder(r=10/2,h=30,$fn=30);
//cylinder(r=5/2,h=30,$fn=30);
}
}
}
//bearings screws
translate([42-1.1,5.15-0.15-3.5,-4])cylinder(r=5.7/2,h=30, $fn=30);
translate([42-1.1,5.15-0.15-3,-4])cylinder(r=5.7/2,h=30, $fn=30);
translate([42-1.1,5.15-0.15-2.5,-4])cylinder(r=5.7/2,h=30, $fn=30);
for(i=[0:12]){
translate([42-1.1,5.15+2.5-i/2,-4])cylinder(r=5.7/2,h=30, $fn=30);
}
translate([42-1.1,5.15+2.5,-4+7])rotate([90,0,0])cylinder(r=2/2,h=300, $fn=30);
/*
*/
translate([42-1.1+25+1,5.15+42,-4])cylinder(r=5.7/2,h=30, $fn=30);
translate([42-1.1-25-1.,5.15+42,-4])cylinder(r=5.7/2,h=30, $fn=30);
}
/*
*/
//belt clamp left side
translate([+2,0,0])union(){
//translate([25,17.32+1.38,0])cube([15.6,3.62,10]);
translate([25,17.32+1.38-14,0])difference(){
translate([-4,0-30-0.1,0])cube([4.64+2+2,13.62+1+52,24.5+0.5]);translate([-10,5,6.5])rotate([90,0,90]){cylinder(r=2.8/2,h=30,$fn=30);}
translate([0.25,100,7])rotate([90,0,0])cylinder(r=2.8/2,h=300);
} //  translate([0,0,9])cylinder(r=6.6/2,h=3,$fn=6);}}
}
//end belt clamp
//belt clamp right side
translate([-1,0,0]){
//translate([25-45.84-7.3,17.32+1.38,0])cube([15.6+7.3,3.62,10]);
translate([25-35.73+2,17.32+1.38-14-4-0.2,0])difference(){translate([0,4.1-30,0])cube([4.64+2+2,13.62+6-4+22+29,24.5+0.5]);translate([-10,5+4,6.5])rotate([90,0,90]){cylinder(r=2.8/2,h=30,$fn=30);}
translate([4,100,7])rotate([90,0,0])cylinder(r=2.8/2,h=300);
} //translate([0,0,13])cylinder(r=6.6/2,h=3,$fn=6);}}
}
//inductor mount
translate([25-45.84-7.3-8,17.32+1.38-21.61-2,0])difference(){
translate([-2,-4,0])cube([15.6+7.3+4,7.8+4,10+6-0.5]);
translate([2.8,4-.08-2,0]){translate([0,0,-10])cylinder(r=3/2,h=40,$fn=30);}
translate([2.8+20-2.8,4-.08-2,0]){translate([0,0,-10])cylinder(r=3/2,h=40,$fn=30);}
translate([11.45,20,16])rotate([90,0,0])cylinder(r=11.5/2,h=40);
}
}



















module shuttle_back_fast(){
//translate([-30,39-7+15,28-26])rotate([0,90,0])tslot20(100);
//translate([24.8,0,3])rotate([0,180,0])color("")import("head_back.stl");
translate([-28.52,-10,0])difference(){
union(){
translate([9,-4,0])cube([73,53+4,5]);
//translate([9+22,-4,0])cube([73-30,53+4-42,8]);
translate([19-10,20,0])cube([53,60,5]);
translate([19-10+6,66,0])cube([13,13,3.6]);
translate([19-10+36,66,0])cube([13,13,3.6]);
 translate([-25+8-30+14-5.2+35,22.5+10,0])rotate([90,0,0])cube([24+10,7,18]);
 translate([-25+8-30+14-5.2+35+64,22.5+10,0])rotate([90,0,0])cube([24+10,7,18]);
//translate([25-2,15+9,0])cube([25+6,13+16,3+7]);
}
 translate([-25+8-30+14-5.2+42+4,22.5-4+11-10,0-20])rotate([0,0,0])cube([4,8,30]);
 translate([-25+8-30+14-5.2+42+4+70,22.5-4+11-10,0-20])rotate([0,0,0])cube([4,8,30]);
 translate([3.8,29.5,-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([3.8,29.5-12,-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([-25+8-30+14-5.2+42+84,22.5-4+11,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
 translate([-25+8-30+14-5.2+42+84,22.5-4-12+11,0-50])rotate([0,0,0])cylinder(r=2.7/2,h=400,$fn=20);
translate([0,-16,-0.3])cube([33,23,10]);
translate([50,-9,-0.3])cube([33,23,10]);
//bearings screws
//here is the bearing screws adjustment
translate([60-8.5,72.35-1.3,-4-4.4])cylinder(r=5.7/2,h=42, $fn=30);
translate([30-8.6,72.35-1.3,-4-4.4])cylinder(r=5.7/2,h=42, $fn=30);
//translate([42-1.1,5.15-3.5,-4])cylinder(r=4.7/2,h=30, $fn=30);
//translate([42-1.1,5.15-3,-4])cylinder(r=4.7/2,h=30, $fn=30);
for(i=[0:12]){
translate([42-1.1,5.15+2.5-i/2,-4])cylinder(r=4.7/2,h=30, $fn=30);
}
translate([42-1.1,5.15+2.5,-4+7])rotate([90,0,0])cylinder(r=2/2,h=300, $fn=30);
translate([42-1.1+25+1,5.15+42,-4])cylinder(r=4.7/2,h=30, $fn=30);
translate([42-1.1-25-1,5.15+42,-4])cylinder(r=4.7/2,h=30, $fn=30);
}
//belt clamp left side
translate([5,0,0])union(){
//translate([25,17.32+1.38,0])cube([15.6+7,3.62,10]);
translate([19.5,12.7,0])difference(){{translate([-1,0,0])cube([6+2,6,10]);translate([3.2,3,0]){cylinder(r=2.8/2,h=20);
translate([0,0,0])cylinder(r=6.8/2,h=10-7,$fn=6);
}}}
translate([25,17.32+1.38-14,0])difference(){cube([5.5+1,13.62+1,10]);translate([-10,5,6.5])rotate([90,0,90]){cylinder(r=2.8/2,h=30,$fn=30);
//translate([0,0,9-9])cylinder(r=6.8/2,h=13,$fn=6);
}}
}
//translate([24,12.8,0])difference(){cube([6,6,10]);translate([3.2,3,0]){cylinder(r=2.8/2,h=20);cylinder(r=6.8/2,h=13,$fn=6);}}
//belt clamp right side
translate([5,0,0]){
//translate([25-45.84-7.3+7.4,17.32+1.38,0])cube([15.6+2,3.62,10]);
translate([25-35.73,17.32+1.38-14-4,0])difference(){translate([0.6,4.1,0])cube([4.64+0.2+2,13.62+6-4,10]);translate([-10,5+4,6.5])rotate([90,0,90]){cylinder(r=2.8/2,h=30,$fn=30);
//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);
}
}
}
}




module iverntech_railsystem(z){
translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();
translate([-80+19,159,322.8+13-z])rotate([90,0,-90]){
multichannel_cameramount_tslot_part();
//translate([0,-0,10])multichannel_cameramount_tipholder();
//translate([-33,33,73])rotate([0,-90,90])show_gripper();
//gripper_paddles();


/*
*/
}
lm8uu_zdriver_assay(z);
translate([-37.5,192.5,350-1])rotate([0,90,0])sandwich_delrinwheel();
translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
translate([-15.5,-10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(100);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(100);
}
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
/*
*/
}

module iverntech_railsystem_rfid(z){

translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();

translate([-80+19,159,322.8+13-z])rotate([90,0,-90]){
multichannel_cameramount_tslot_part();
//translate([-90,0,100])rotate([0,90,0])tslot20(100);
//translate([10,50,40])rotate([0,0,90])import("cytokinetics/rfid_holder.stl");
//translate([5.8,45,40])rotate([0,0,90])rfid_holder();
}
lm8uu_zdriver_assay(z);
translate([-37.5,192.5,350-1])rotate([0,90,0])sandwich_delrinwheel();
translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
translate([-15.5,-10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(100);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(100);
}
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
/*
*/
}


module multi_iverntech_railsystem_directdrive(z){
//translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();
translate([-80+19,159,322.8+13])rotate([90,0,-90]){
//translate([0,z-29,0])color("lime")multichannel_cameramount_tslot_part();
//translate([0,z-11-5.25,0+5])multichannel_cameramount_tipholder(z);
}
//translate([-130,200-3,400-2])rotate([90,0,90])stepper_linear_m8nut_endstopflag(6);
//color("")lm8uu_zdriver_assay(z);
/*
translate([-37.5,192.5,350-1])rotate([0,90,0])sandwich_delrinwheel();

translate([0,-28,0]){
translate([43-25-55-10,206.5-15-41.5+28+19+300,-60+430-28])rotate([-0,90,-90])tslot20(552);
}
*/
color("lime")translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
color("lime")translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
color("Plum")translate([-25.5-31,20+167+1,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Plum")translate([-25.5-31,20+167+1+82,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Olive")translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
/*
*/

//translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
/*
translate([-27/2+12/2-48+6+12,55-60-30-60,310-6+5])color("black")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
*/
translate([-15.5,-10+10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(120);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(120);
//translate([0-30,250,269-5])rotate([90,0,0])tslot20(100);
//translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(100);
}
/*
*/
}






module multi_iverntech_railsystem(z){
//translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();
translate([-80+19,159,322.8+13])rotate([90,0,-90]){
translate([0,z-29,0])color("lime")multichannel_cameramount_tslot_part();
translate([0,z-11-5.25,0+5])multichannel_cameramount_tipholder(z);
}
translate([-130,200-3,400-2])rotate([90,0,90])stepper_linear_m8nut_endstopflag(6);
color("")lm8uu_zdriver_assay(z);
/*
translate([-37.5,192.5,350-1])rotate([0,90,0])sandwich_delrinwheel();

translate([0,-28,0]){
translate([43-25-55-10,206.5-15-41.5+28+19+300,-60+430-28])rotate([-0,90,-90])tslot20(552);
}
*/
color("lime")translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
color("lime")translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
color("Plum")translate([-25.5-31,20+167+1,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Plum")translate([-25.5-31,20+167+1+82,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Olive")translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
/*
*/

//translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
/*
translate([-27/2+12/2-48+6+12,55-60-30-60,310-6+5])color("black")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
*/
translate([-15.5,-10+10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(120);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(120);
//translate([0-30,250,269-5])rotate([90,0,0])tslot20(100);
//translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(100);
}
/*
*/
}




module multi_iverntech_railsystem_dualactuator(z){
//translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();
translate([-80+19,159,322.8+13])rotate([90,0,-90]){
//translate([0,z-29,0])color("lime")multichannel_cameramount_tslot_part();
//translate([0,z-11-5.25,0+5])multichannel_cameramount_tipholder(z);
}
//translate([-130,200-3,400-2])rotate([90,0,90])stepper_linear_m8nut_endstopflag(6);
color("")lm8uu_zdriver_assay(z);
color("lime")translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
color("lime")translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
color("Plum")translate([-25.5-31,20+167+1,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Plum")translate([-25.5-31,20+167+1+82,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Olive")translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
/*
*/

translate([-15.5,-10+10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(120);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(120);
}
}






















module extruder_connector(){
difference(){
color("pink")translate([507-2+5,0-30-4,-25.75-1.0])cube([20,50,11]);
color("pink")translate([507-2+5+2,0-30-4+25,-25.75-1.0-20])cylinder(r=20/2,h=100,$fn=30);
color("pink")translate([507-2+5,0-30-4+25,-25.75-1.0-20])cylinder(r=20/2,h=100,$fn=30);

translate([507-2-5-0.5,0-30-4+25-17.25,-25.75-1.0+5.5])rotate([0,90,0])cylinder(r=3.7/2,h=100,$fn=30);
translate([507-2-5-0.5,0-30-4+25-17.25+35,-25.75-1.0+5.5])rotate([0,90,0])cylinder(r=3.7/2,h=100,$fn=30);

translate([2,0,0]){
translate([507-2-5-0.5,0-30-4+25-17.25,-25.75-1.0+5.5])rotate([0,90,0])cylinder(r=8/2,h=20,$fn=30);
translate([507-2-5-0.5,0-30-4+25-17.25+35,-25.75-1.0+5.5])rotate([0,90,0])cylinder(r=8/2,h=20,$fn=30);
}


//translate([0,0-14,0])rotate([0,90,0])cylinder(r=7/2,h=1000,$fn=30);
}
//extruder_attach_motormountthin();
}


module extruder_attach_motormountthin(){
 mmx = 42;
 mmy = 42;
 mmz = 6;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  union(){
  translate([mmposx+20-10,mmposy,mmposz])cube([mmx-20+10-6.5,mmy,mmz+11]);
  translate([mmposx+10,mmposy-25,mmposz])cube([18,90,mmz]);
  }
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  }
  translate([-6.5,0,0]){
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5-68-3-3])cylinder(r=9.5/2, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5-68-3-3])cylinder(r=9.5/2, h=90);
  }
  translate([mmposx+mmx/2+15.5-1.5-16.5,mmposy+mmy/2-15.5-20,mmposz-5])cylinder(r=5.7/2, h=290);
  translate([mmposx+mmx/2+15.5-1.5-16.5,mmposy+mmy/2-15.5+52,mmposz-5])cylinder(r=5.7/2, h=290);
 }
}


module extruder_attach_motormountthin_ender(){
 mmx = 42;
 mmy = 42;
 mmz = 6;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  union(){
  translate([mmposx+20-10,mmposy,mmposz])cube([mmx-20+10-6.5,mmy,mmz+11]);
  translate([mmposx+10,mmposy-25,mmposz])cube([18,90,mmz]);
  }
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  }
  translate([-6.5,0,0]){
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5])cylinder(r=m3rad, h=90,$fn=30); 
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5-68-3-3+6-2.5-2.5])#cylinder(r=9.5/2, h=90, $fn=30);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5])cylinder(r=m3rad, h=90, $fn=30); 
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5-68-3-3+6-2.5-2.5])#cylinder(r=9.5/2, h=90, $fn=30);
  }
  translate([mmposx+mmx/2+15.5-1.5-16.5,mmposy+mmy/2-15.5-20,mmposz-5])cylinder(r=5.7/2, h=290, $fn=30);
  translate([mmposx+mmx/2+15.5-1.5-16.5,mmposy+mmy/2-15.5+52,mmposz-5])cylinder(r=5.7/2, h=290, $fn=30);
 }
}














module extruder_railsystem(z){
//translate([-96,221.5,250])rotate([0,180,180])stepperconduitclamp();
translate([-80+19,159,322.8+13])rotate([90,0,-90]){
translate([-10-25,z-39-22-46.5,41+6-15+2.5+2+24])rotate([-0,0,180])extruder_assy();

//color("pink")multichannel_cameramount_tslot_part();
//translate([0,z-29,0])multichannel_cameramount_tipholder();

//translate([25,z-39-15,41-7])rotate([-90,0,180])rotate([0,90,0])tslot20(100);
//translate([25,z-39-15,41-7+20])rotate([-90,0,180])rotate([0,90,0])tslot20(100);
}
//color("")lm8uu_zdriver_assay(z);
/*
translate([-37.5,192.5,350-1])rotate([0,90,0])sandwich_delrinwheel();
translate([0,-28,0]){
translate([43-25-55-10,206.5-15-41.5+28+19+300,-60+430-28])rotate([-0,90,-90])tslot20(552);
}
*/
//translate([-46-2-30-1,100-7.5+58+80,280+17.5-0])rotate([0,90,180])extruder_attach_motormountthin();
translate([-46-2-30-1,100-7.5+58+80,280+17.5-0])rotate([0,90,180])extruder_attach_motormountthin_ender();


//translate([-46-2,100-7.5+58,280+17.5])rotate([0,0,0])
translate([-600,200,325+6.5])extruder_connector();
/*
color("Salmon")translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])slider_front_assy_multichannel_iverntech();
color("Salmon")translate([-25.5,20,320-3])rotate([0,180,0])iverntech_slider_xshuttle_connect();
color("Plum")translate([-25.5-31,20+167+1,320-8])rotate([90,0,90])import("beltclamp.stl");
color("Plum")translate([-25.5-31,20+167+1+82,320-8])rotate([90,0,90])import("beltclamp.stl");
//translate([-20+5-220-3+0.5,200+5-231.8,678.8])rotate([0,180,-90])shuttle_front_vertical_adjust_wider_slider_wall_beltfix();
color("Olive")translate([-20+5-3,200+5,340])rotate([-90,0,-90])shuttle_back_fast();
*/
/*
translate([-27/2+12/2-48+6+12,55-60-30-60,310-6+5])color("black")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
*/
/*
translate([-15.5,-10,0]){
translate([0-30,250,269-5])rotate([90,0,0])tslot20(120);
translate([0-30-20,250,269-5])rotate([90,0,0])tslot20(120);
}
*/
}


module rfid_holder(){
//translate([0,0,0])rotate([0,90,90])tslot20(100);
difference(){
union(){
translate([-4,-4,0])cube([61+8,96+8,13]);
translate([-23,5,0])cube([20,20,4]);
translate([-23,60,0])cube([20,20,4]);
}
translate([-23+8,70,-10])cylinder(r=4.7/2,h=30);
translate([-23+8,15,-10])cylinder(r=4.7/2,h=30);
translate([0,0,2])cube([61,96,20]);
translate([15,15,-1])cube([61-30,96-30,20]);
translate([50,20,6])rotate([0,90,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([50,80,6])rotate([0,90,0])cylinder(r=2.8/2,h=30,$fn=30);
}
}








module y_arm_flag(){

difference(){
cube([15,30,4]);
translate([6,6,-1])cylinder(r=5.7/2,h=30,$fn=30);
}
}


module endstop_multichannel_syringe(){

difference(){
union(){
//import("files/endstop_y.stl");
translate([40+30-38+13,1.5,-0.0])cube([85-10+38-83-13,30,4]);
translate([40+30-52,1.5,-0.0])cube([28,18,4]);
//translate([40+30-38,1.5,-0.0])cube([18,28,4]);
//translate([40.9,12.5,0])rotate([0,0,45])cylinder(r=8.7/2,h=8,$fn=4);
}
translate([60,-114,0])rotate([0,0,90]){
translate([40.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
translate([45.75+80,4.5,-0.2])cylinder(r=2.3/2,h=30,$fn=20);
translate([55.75+80,4.5,-0.2])cylinder(r=2.3/2,h=30,$fn=20);
translate([60.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
}
translate([40.9,25,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9,10,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9-15,10,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
//translate([50.,12,-0.2])cube([120,20,20]);
}
}

module endstop_z(){
difference(){
union(){
translate([40+30-38+18,1.5+9,-0.0])cube([85-10+38-83-20-4,28-3+33-9,4]);
translate([40+30-38+18,1.5+30,-0.0])cube([85-10+38-83-20,28-3+33-30,4]);
translate([40+30-38+18+1,1.5+28+17,0.0])cube([85-10+38-83-20+10,13,4]);
}
translate([60,-114,0])rotate([0,0,90]){
translate([40.75+80+9,4.5+0.5+2,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
translate([60.75+80+9,4.5+0.5+2,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
translate([60.75+80+27,4.5+1,-0.2])cylinder(r=3.5/2,h=30,$fn=20);
translate([60.75+80+27,4.5-11,-0.2])cylinder(r=3.5/2,h=30,$fn=20);
}
translate([40.9,25,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9,5,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
}
}

module endstop_y(){
difference(){
union(){
translate([40+30-38,1.5,-0.0])cube([85-10+38-83,28,4]);
translate([40+30-38,1.5,-0.0])cube([18,28,4]);
}
translate([60,-114,0])rotate([0,0,90]){
translate([40.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
translate([60.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
}
translate([40.9,25,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9,5,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
}
}







/*
rfid();
translate([0,43,0])rfid();
*/
module rfid(){

difference(){
translate([0,-8,0])cube([30,35+16,32+8]);
translate([-1,0,8])cube([32,35,32+5]);
translate([6,18,-2-3.4+10.1])cylinder(r=10/2,h=3.4,$fn=20);
translate([6,18,-2-3.29])cylinder(r=5.7/2,h=10,$fn=20);
translate([24,18,-2-3.4+10.1])cylinder(r=10/2,h=3.4,$fn=20);
translate([24,18,-2-3.29])cylinder(r=5.7/2,h=10,$fn=20);

translate([15,24+33,-2-3.4+10.1])cylinder(r=10/2,h=3.4,$fn=20);
translate([15,24+33,-2-3.29])cylinder(r=5.7/2,h=10,$fn=20);
translate([15,24+70,0+28])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=20);
}
}


module mouse_nozzle(dia){
//dia = 31;
difference(){
cylinder(r1=dia/2,r2=(5+5)/2,h=14,$fn=30);
translate([0,0,-0.5])cylinder(r1=(dia*0.8)/2,r2=(5)/2,h=14,$fn=30);
translate([0,0,-2])cylinder(r=(5.4)/2,h=34,$fn=30);
}
}

module mouse_flatnozzle(dia){
//dia = 31;
difference(){
cylinder(r=(dia+6)/2,h=14,$fn=30);
translate([0,0,2])cylinder(r=(dia+0.4)/2,h=20,$fn=30);
translate([0,0,-1])cylinder(r=(5.5)/2,h=30,$fn=30);
}
}

module mouse_conenozzle(dia,hi,cut){
//dia = 31;
//hi = 9;
difference(){
union(){
translate([0,0,hi+1])cylinder(r=(dia+6)/2,h=hi-cut,$fn=30);
cylinder(r2=(dia+6)/2,r1=10,h=hi+1,$fn=30);
}
translate([0,0,2])cylinder(r1=(dia*0.4)/2,r2=(dia+0.6-6.125)/2,h=hi-0.9,$fn=30);
translate([0,0,hi+3])cylinder(r=(dia+0.4)/2,h=hi*3,$fn=30);
translate([0,0,hi+1])cylinder(r=(dia+0.4-6.125)/2,h=hi*3,$fn=30);
translate([0,0,-1])cylinder(r=(5.5)/2,h=hi*3,$fn=30);
}
}






module mouse_restraint(dia,hi){
difference(){
//dia = 31;
cylinder(r=dia/2,h=hi,$fn=30);

translate([-15+4,10-3,10-6])cube([22.5/2-4,20,30+6]);
translate([-15+4+22.5/2+4,10-3,10-6])cube([22.5/2-4,20,30+6]);

translate([0,0,-2])cylinder(r=(dia-5)/2,h=125,$fn=30);
translate([0,0,100])for(i=[0:20]){
if (i>17){
translate([0,0,0+i])rotate([0,90,0])cylinder(r=15/2,h=40);
translate([0,0,0+i])rotate([0,-90,0])cylinder(r=15/2,h=40);
translate([0,0,0+i])rotate([90,0,0])cylinder(r=15/2,h=40);
translate([0,0,0+i])rotate([-90,0,0])cylinder(r=15/2,h=40);
} else {
translate([0,0,0+i])rotate([0,90,0])cylinder(r=10/2,h=40);
translate([0,0,0+i])rotate([0,-90,0])cylinder(r=10/2,h=40);
translate([0,0,0+i])rotate([90,0,0])cylinder(r=10/2,h=40);
translate([0,0,0+i])rotate([-90,0,0])cylinder(r=10/2,h=40);
}
}
}
}
/*
*/

//camera_65mm_mount_tslotstand();
//waterproof_camera(15);
//pvc_raspi();
//waterproof_camera_square_tube(0);
//translate([-40,-2,3+5])rotate([0,0,90])camera_65mm_mount_disc_square();
//uctronics_5();
//one_inch_pvc_mount();
//translate([12.5,60,-25])rotate([90,0,0])tslot20(200);



/*
color("lime")translate([-10+2+8,-42-7,0])rotate([90,45,0])cylinder(r=(59)/2,h=5,$fn=4);
color("pink")translate([-10+2+8,-42,0])rotate([90,45,0])cylinder(r=(60.81)/2,h=5,$fn=4);
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([43-sh,43-sh,5], sh);
sh=2.1;
difference(){union(){
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([43-sh,43-sh,5], sh);
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([43-sh+8,43-sh+8,3], sh);
}
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([43-sh-14,43-sh-14,5], sh);
}
*/

module one_inch_pvc_mount(){

difference(){
union(){
cylinder(r=(34+8)/2,h=18);
translate([-9+25-15,-30+8,0])cube([18+15,63+12-30,4]);
}
translate([0,0,-3])cylinder(r=(34-0.2)/2,h=400);
translate([-30,0,12])rotate([0,90,0])cylinder(r=(2.8)/2,h=20,$fn=20);
translate([0+27.5,-24-6+14,-7])cylinder(r=(4.7)/2,h=20,$fn=20);
translate([0+27.5,26+6-16,-7])cylinder(r=(4.7)/2,h=400,$fn=20);
}
}




module uctronics_5(){
difference(){
translate([-20,-22,0])cube([120+40,75+44,3+3.5+2]);
translate([-0.2-0.5,-0.2-1.5,0])cube([120.4+1,75.4+3,6.5]);
translate([-0.2-0.5+3,-0.2-1.5+3,0])cube([120.4+1-6,75.4+3-6,16.5]);
translate([-9,-12,0]){
cylinder(r=3.2/2,h=100,$fn=20);
translate([0,0,5])cylinder(r=10/2,h=100,$fn=20);
}
translate([-9,-12+99,0]){
cylinder(r=3.2/2,h=100,$fn=20);
translate([0,0,5])cylinder(r=10/2,h=100,$fn=20);
}
translate([-9+138,-12+99,0]){
cylinder(r=3.2/2,h=100,$fn=20);
translate([0,0,5])cylinder(r=10/2,h=100,$fn=20);
}
translate([-9+138,-12,0]){
cylinder(r=3.2/2,h=100,$fn=20);
translate([0,0,5])cylinder(r=10/2,h=100,$fn=20);
}

translate([3,-4,-2]){
translate([0,0,0])cylinder(r=3.2/2,h=100,$fn=20);
translate([0,-1,0])cylinder(r=3.2/2,h=100,$fn=20);
translate([114,0,0])cylinder(r=3.2/2,h=100,$fn=20);
translate([114,-1,0])cylinder(r=3.2/2,h=100,$fn=20);
}
translate([3,75+4,-2]){
cylinder(r=3.2/2,h=100,$fn=20);
translate([114,0,0])cylinder(r=3.2/2,h=100,$fn=20);
}
}
}


module waterproof_camera_square_tube(ang){
translate([0,0,39-2]){
translate([0,0,3])rotate([90,0,ang])camera_65mm_mount();
translate([0,0,3+5])rotate([90,0,ang])camera_65mm_mount_disc_square();
translate([0,0,7])rotate([-90,0,ang])color("black")cylinder(r=14/2,h=15,$fn=20);
}
//color("pink")waterproof_toppanel();
translate([0,0,60-9])rotate([0,0,ang]){
translate([-40+13+2,2.2,22])rotate([0,90,0])pvc_raspi();
translate([0,0,50])rotate([0,90,0])displayPiZero();
}
translate([0,0,37])color("")camera_65mm_mount_tslotstand();
//1.5inch PVC pipe
//translate([0,0,150-4])color("black")rotate([0,0,45+ang])cylinder(r=(44.45-0.3)/2,h=4,$fn=4);
//translate([0,0,150])color("black")rotate([0,0,45+ang])cylinder(r=(44.45-0.3+4.5)/2,h=4,$fn=4);
difference(){
color("lightblue")rotate([0,0,45+ang])cylinder(r=71.5/2,h=150,$fn=4);
translate([0,0,-0.2])rotate([0,0,45+ang])cylinder(r=58/2,h=324,$fn=4);

//color("lightblue")rotate([0,0,45+ang])cylinder(r=50.8/2,h=150,$fn=4);
//translate([0,0,-0.2])rotate([0,0,45+ang])cylinder(r=44.45/2,h=324,$fn=4);

}
}






module waterproof_camera(ang){
translate([0,0,39-2]){
translate([0,0,3])rotate([90,0,ang])camera_65mm_mount();
translate([0,0,3+5])rotate([90,0,ang])camera_65mm_mount_disc();
translate([0,0,7])rotate([-90,0,ang])color("black")cylinder(r=14/2,h=15,$fn=20);
}
//color("pink")waterproof_toppanel();
translate([0,0,60-9]){
translate([-40+13+2,2.2,22])rotate([0,90,0])pvc_raspi();
translate([0,0,50])rotate([0,90,0])displayPiZero();
}
translate([0,0,37])color("")camera_65mm_mount_tslotstand();
//1.5inch PVC pipe
translate([0,0,150])color("black")cylinder(r=49/2,h=4);
difference(){
color("lightblue")cylinder(r=49/2,h=150);
translate([0,0,-0.2])cylinder(r=40.5/2,h=324);
}
}




/*
*/

//translate([120+40,359+50,10])cage_miuzei_camera_module();

//lightfixture();

module lightfixture(){
difference(){
union(){
translate([-44,0,0])cube([100,11+8,10]);
rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
}
translate([-44-1,4,5])cube([102,11,10]);
}
}

//translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
//translate([120+40,359+50,10])cage_miuzei_camera_module();
//translate([300,-100+50+14+1,23])rotate([0,180,180])anglecornersupport();


//translate([300,-100+50+14+1,23])rotate([0,180,180])anglecornersupport();
//cage_assy();


//translate([30,0,0])


//translate([0,0,3])rotate([0,0,0])camera_65mm_mount();


/*
translate([0,0,3])rotate([90,0,0])camera_65mm_mount();
color("pink")camera_65mm_mount_tslotstand();
translate([0,0,3])rotate([90,0,0])camera_65mm_mount();
translate([0,0,7])rotate([-90,0,0])color("black")cylinder(r=14/2,h=15,$fn=20);
*/

//rotate([90,0,0])

/*
color("pink")waterproof_toppanel();
waterproof_toppanel_lid();
color("pink")waterproof_toppanel();
translate([-28,-6+4,26])displayPiZero();
waterproof_backpanel();
waterproof_rightpanel();
waterproof_frontpanel();
waterproof_camera_case();
waterproof_leftpanel();
*/







module waterproof_toppanel_lid(){
 translate([0,0,15])difference(){union(){
 translate([10.1-75-4-5,-16-5-8,21+5])cube([86+12+5,39+8+7,4]);
 }
 translate([-30+24-80+68.5+1-48-5,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48-5,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89/2,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89/2,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 }
}




module pvc_raspi(){
 md = 9-2.5+0.2-1.75+6.5-4.8-2+1;
 //md = 9-2.5+0.2-1.75+6.5-4.8-2+1-18;
 difference(){union(){
 //md = 9-2.5+0.2;
 //md = 9-2.5+0.2-1.75;
 translate([10.1-75-4-5+10,-16-5-8+md,21])cube([70,39+8+7-md*2,4]);
 /*
 difference(){ 
 translate([10.1-75-4-5+10+35,-16-5-8+26.5+0.5,21])cylinder(r=52.5,h=4);
 translate([10.1-75-4-5+10,-16-5-8+md-20,21])cube([90,39+8+7-md*2+40,4]);
 }
 */
 /*
 translate([10.1-75-4,-16-5-8,21])cube([86+10,8,15+5]);
 translate([10.1-75-4,-16-5-8+46,21])cube([86+10,8,15+5]);
 translate([10.1-75-4-5,-16-5-8,21])cube([8,39+8+7,15+5]);
 translate([10.1-75-4+90,-16-5-8,21])cube([8,39+8+7,15+5]);
 */
 }
 translate([10.1-75-4-5+20,-16-5-8+md+10,21-10])cube([70-20,39+8+7-md*2-20,29]);

 //translate([-30+24-80+68.5-4+30,-14+2.5,-32+4+51.6-3])rotate([0,0,0])cube([2.5,19,8]);

 translate([-30+24-80+68.5+1+17.5,-14+9-8.6,-32+4-10])rotate([0,0,0])cylinder(r=2.2/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1+17.5,-14+9-8.6+23,-32+4-10])rotate([0,0,0])cylinder(r=2.2/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1+17.5-58,-14+9-8.6,-32+4+50-10])rotate([0,0,0])cylinder(r=2.2/2,h=20,$fn=20);
 translate([-30+24-80+68.5+1+17.5-58,-14+9-8.6+23,-32+4+50-10])rotate([0,0,0])cylinder(r=2.2/2,h=20,$fn=20);


 }
}

module waterproof_toppanel(){
 difference(){union(){
 translate([10.1-75-4-5,-16-5-8,21])cube([86+10+5,39+8+7,6]);
 translate([10.1-75-4,-16-5-8,21])cube([86+10,8,15+5]);
 translate([10.1-75-4,-16-5-8+46,21])cube([86+10,8,15+5]);
 translate([10.1-75-4-5,-16-5-8,21])cube([8,39+8+7,15+5]);
 translate([10.1-75-4+90,-16-5-8,21])cube([8,39+8+7,15+5]);
 }

 translate([-30+24-80+68.5-4+30,-14+2.5,-32+4+51.6-3])rotate([0,0,0])cube([2.5,19,8]);

 translate([-30+24-80+68.5+1-48-5,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48-5,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89/2,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89/2,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89,-14+9-19,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1-48+89,-14+9-19+44,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);

 translate([-30+24-80+68.5+1+17.5,-14+9-8.6,-32+4])rotate([0,0,0])cylinder(r=2.2/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1+17.5,-14+9-8.6+23,-32+4])rotate([0,0,0])cylinder(r=2.2/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1+17.5-58,-14+9-8.6,-32+4+50])rotate([0,0,0])cylinder(r=2.2/2,h=20,$fn=20);
 translate([-30+24-80+68.5+1+17.5-58,-14+9-8.6+23,-32+4+50])rotate([0,0,0])cylinder(r=2.2/2,h=20,$fn=20);

 translate([-30+24-80+68.5+1,-14+9,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1,-14+9,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);
 //translate([-30+24-80+68.5+1,-14+9+13,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);

 translate([-30+24-80+76,-14+9+14+5,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76,-14+9+14+5,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);

 translate([-30+24-80+76+20,-14+9+14+5,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76+20,-14+9+14+5,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);
 translate([0,-36,0]){
 translate([-30+24-80+76,-14+9+14+11,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76,-14+9+14+11,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);
 translate([-30+24-80+76+20,-14+9+14+11,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76+20,-14+9+14+11,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);
 }
 translate([38.1,0,0]){
 translate([-30+24-80+68.5-4,-14+9,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5-4,-14+9,-32+4+51.6])rotate([0,0,0])cylinder(r=8/2,h=3.5,$fn=20);
 //translate([-30+24-80+68.5-4,-14+9+13,-32+4])rotate([0,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 }
 }
}







module waterproof_rightpanel(){
translate([38.1,0,0])difference(){union(){
translate([-18-2.1,16-36,-32])cube([2,38,53]);
translate([-18-2.1-4,16-36+5,-32+49])cube([5,38-10,4]);
}
 translate([-30+24-80+10,-14+9,-32+4])rotate([0,90,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+10,-14+9+14,-32+4])rotate([0,90,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5-4,-14+9,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5-4,-14+9+13,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
}
}


module waterproof_leftpanel(){
translate([0.1,0,0])difference(){union(){
translate([-18-2.1,16-36,-32])cube([2,38,53]);
translate([-18-2.1,16-36+5,-32+49])cube([6,38-10,4]);
}
 translate([-30+24-80+10,-14+9,-32+4])rotate([0,90,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+10,-14+9+14,-32+4])rotate([0,90,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1,-14+9,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+68.5+1,-14+9+13,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
}
}



module waterproof_frontpanel(){
difference(){union(){
translate([-18,16,-32])cube([36,2,53]);
translate([-18+4,16-5,-32+49])cube([36-8,5,4]);
}

 translate([-30+24-80+80+13/2-0.35,-14+9+14+50,-32+4+35])rotate([90,0,0])cylinder(r=15.8/2,h=150,$fn=20);

 translate([-30+24-80+80,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+93,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76,-14+9+14+5,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+76+20,-14+9+14+5,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
}
}

module waterproof_backpanel(){
translate([0,-36,0])difference(){union(){
translate([-18,16,-32])cube([36,2,53]);
translate([-18+4,16-5+6,-32+49])cube([36-9,5,4]);
}
 translate([-30+24-80+80,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+93,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+76,-14+9+14+11,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+76+20,-14+9+14+11,-32+4])rotate([0,0,0])cylinder(r=2.8/2,h=150,$fn=20);
}
}


module cytokinetics_miuzei_raspicam_base(){
translate([-7,-25+8,0])rotate([0,0,-90])smd_justclip();
translate([-10,-32,0])difference(){
union(){
translate([0,15,0])cube([20,5,2.5]);
}
translate([5,9,0])cube([10,5,6]);
}
/*
translate([-21,0,0])difference(){cube([8,8,5]);
translate([4,4,-1])cylinder(r=2.8/2,h=8);
}
translate([13,0,0])difference(){cube([8,8,5]);
translate([4,4,-1])cylinder(r=2.8/2,h=26);
}
*/
difference(){
union(){
difference(){
translate([0,1,0])roundedRect([26,24,10-2],3.5);
translate([-13,-11.5,1])cube([26,25,15]);
translate([-9,-20,1])cube([18,25,15]);
}
translate([0,1,0])roundedRect([26,24,1],3.5);
translate([0,1+2+2,0])roundedRect([26,20-4,5],3.5);
translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6, $fn=30);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6, $fn=30);
}
translate([-21,0,0]){
translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6, $fn=30);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6, $fn=30);
}
}
}
translate([10.5,-1.5-1.5,1.5])cylinder(r=1.8/2,h=18, $fn=30);
translate([0,12.5,1.5]){
translate([10.5,-1.5,0])cylinder(r=1.8/2,h=18, $fn=30);
}
translate([-21,0,1.5]){
translate([10.5,-1.5-1.5,0])cylinder(r=1.8/2,h=18);
translate([0,12.5,0])translate([10.5,-1.5,0])cylinder(r=1.8/2,h=18, $fn=30);
}
translate([0,4,-1])cylinder(r=14/2,h=20);
translate([-12.5,1-0.5,1.5])cube([25,7,30]);
//translate([0,-1.5,-2])cylinder(r=17/2,h=30);
translate([0,-1.5,1.5])rotate([0,0,45])cylinder(r=24.75/2,h=9,$fn=4);
translate([0,1.7,1])roundedRect([11.5,20,10],3.5);
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




module waterproof_camera_case(){
 difference(){union(){
 translate([10.1,-16,-31.5])cube([8,32,7]);
 translate([10.1-28,-16+24,-31.5])cube([8+26,8,7]);
 translate([10.1-28,-16+24-7,-31.5])cube([8+26,8+3,3]);
 translate([10-28.1,-16,-31.5])cube([8,32,7]);
 translate([10.1-28,-16+24-24-1.8,-31.5])cube([8+28,6.5+2.2,7]);
 }
 translate([-30+24-80+10,-14+9,-32+4])rotate([0,90,0])cylinder(r=3.8/2,h=150,$fn=20);
 translate([-30+24-80+10,-14+9+14,-32+4])rotate([0,90,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+80,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=2.8/2,h=150,$fn=20);
 translate([-30+24-80+93,-14+9+14+50,-32+4])rotate([90,0,0])cylinder(r=2.8/2,h=150,$fn=20);
}
}

module camera_65mm_mount_tslotstand(){
difference(){
union(){
translate([-30-10-6,-14,-46])cube([60+20+12,18,4]);
translate([-30+20,-14,-46])cube([23,18,4+3]);
}
translate([-30+24-80,-14+9,-46-10+28])rotate([0,90,0])cylinder(r=2.8/2,h=150,$fn=20);
translate([-30+24,-14+9,-46-10])cylinder(r=3.7/2,h=40,$fn=20);
translate([-30+24+12,-14+9,-46-10])cylinder(r=3.7/2,h=40,$fn=20);
translate([-30+24,-14+9,-46-10+10])cylinder(r=8.5/2,h=4,$fn=20);
translate([-30+24+12,-14+9,-46-10+10])cylinder(r=8.5/2,h=4,$fn=20);
translate([-30+8-10-6,-14+9,-46-10])cylinder(r=4.7/2,h=40,$fn=20);
translate([-30+60-8+10+6,-14+9,-46-10])cylinder(r=4.7/2,h=40,$fn=20);
}
}

module camera_65mm_mount_disc_square(){
sh=2.1;
difference(){
union(){
//translate([-10+2+8,-42,0])rotate([90,45,0])cylinder(r=(44.45-0.3)/2,h=5,$fn=4);
//translate([-10+2+8,-42-3,0])rotate([90,0,0])cylinder(r=(38.1-0.4+2.9+8)/2,h=2);
//translate([-10+2+8,-42,0])rotate([90,45,0])cylinder(r=(60.81-.5)/2,h=5,$fn=4);
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([42.4-sh,42.4-sh,5], sh);
difference(){
translate([-10+2+8-0.1,-42-3,0+0])rotate([90,45-45,0])roundedRect([43-sh+9+6,43-sh+9+6,6], sh);
translate([-10+2+8-0.1,-42-3+2,0+0])rotate([90,45-45,0])roundedRect([43-sh+9,43-sh+9,6], sh);

}
/*
difference(){
translate([-10+2+8,-42-3,0])rotate([90,45,0])cylinder(r=(71.5+8)/2,h=2+4,$fn=4);
translate([-10+2+8,-42-3,0])rotate([90,45,0])cylinder(r=(71.5-1)/2,h=2,$fn=4);
}
*/
//color("lightblue")rotate([0,0,45+ang])cylinder(r=71.5/2,h=150,$fn=4);
//translate([0,0,-0.2])rotate([0,0,45+ang])cylinder(r=58/2,h=324,$fn=4);

}
translate([-6,-20-10,5])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([6,-20-10,5])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
}
}

module camera_65mm_mount_disc(){
difference(){
union(){
translate([-10+2+8,-42,0])rotate([90,0,0])cylinder(r=(38.1-0.4+2.9)/2,h=5);
translate([-10+2+8,-42-3,0])rotate([90,0,0])cylinder(r=(38.1-0.4+2.9+8)/2,h=2);
}
translate([-6,-20,5])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([6,-20,5])rotate([90,0,0])cylinder(r=3.8/2,h=30,$fn=30);
}
}







module camera_65mm_mount(){
difference(){
union(){
//import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
cytokinetics_miuzei_raspicam_base();
translate([-10,-42+5,0])cube([20,17-5,10]);
translate([-10+2,-42+5,0])cube([14+2,17+8-5,10-3]);
//camera_65mm_mount_disc();
}
translate([-30+24-80,-14+9-26,-46-10+61])rotate([0,90,0])cylinder(r=2.8/2,h=150,$fn=20);
translate([-6,-20,5])rotate([90,0,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([6,-20,5])rotate([90,0,0])cylinder(r=2.8/2,h=30,$fn=30);
}
}


/*
translate([-17-170-30-10,40-14-20,-55])rotate([0,0,180]){
//translate([-17-170-30-10,40-14-20,-55])rotate([0,0,180+45]){
translate([-7-15,-25+120-31.5+16.4-36,-37-17+10+110-1])rotate([0,-0,-90])import("BOM_inventory/build2/stls/mnt_md_justclip.stl");
translate([0,-60,83]){
//translate([-18+2,100-21+1,-26.3+10-1.5+10])rotate([0,90,90])connectionarms2(50);
//translate([-18+2+3,100-21+10+1-49+50,-26.3+10-1.5+10])rotate([0,90,-90])connectionarms2(50);
translate([-35-10,90-50+50,64-37+60])rotate([90,0,0]){
translate([30,1,8])miuzei_cover();
//translate([30,0,0])miuzei_raspicam_base();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
//translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
//translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}
}
}
*/




//rotate([90,0,0])connectionarms2(30);
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
//translate([-100+55-1+10,20+2,25-5])cube([40-10,12,4]);
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


translate([-9,60,30])rotate([0,0,-90])waterproof_camera(15);

translate([-9+150,-22,30])rotate([0,0,0])waterproof_camera(15);

translate([0,8,0]){
translate([-10+5-17,-50,25])rotate([0,90,0])tslot20(315+35);
}
translate([-50+10+2.7+40,-100+5+34+50-6,25])rotate([0,90,90])tslot20(430);
translate([-50+10+2.7+40+330,-100+5+34+50-6,25])rotate([0,90,90])tslot20(430);

translate([0+315-10,8+360,0])rotate([0,0,180]){
translate([-10+5,-50,25])rotate([0,90,0])tslot20(315);
}
translate([15,15,0])color("lightblue")cube([300-30,380-30,180]);
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



//(C) Nathan Zadoks 2011
//CC-BY-SA or GPLv2, pick your poison.
module tslot(
	size=10,	//size of each side
	length=10,	//length. descriptive enough, no?
	thickness=3,	//thickness of the 'sheet'
	gap=0,		//gap, thickness of the lower part of the 'T'
	center=false,	//somewhat vague. todo.
	nut=false,	//set to true to make a fitting T-slot nut
){
	start=thickness/sqrt(2);
	if(nut){
		linear_extrude(height=10)
		intersection(){
			polygon([[size/2-gap/2,0],[size/2-gap/2,thickness],[thickness+start,thickness],[size/2,size/2-2],[size-thickness-start,thickness],[size/2+gap/2,thickness],[size/2+gap/2,0]]);
			square([size,size/2-(gap+thickness)/2]);
		}
	}	
	else{
		color([0.5,0.5,0.5])
		linear_extrude(height=length,center=center)
		translate([15,15])
		difference(){
			union(){
				for(d=[0:3]) rotate([0,0,d*90]) polygon(points=[
					[0,0],
					[0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
					[size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
				]);
				square(gap+thickness);
			}
			circle(r=gap/2);
		}
	}
}
module tslot20(length,nut){
	tslot(size=20,gap=5.26,thickness=1.5,length=length,nut=nut);
}
module tslot30(length,nut){
	tslot(size=30,gap=8.13,thickness=2.55,length=length,nut=nut);
}
module tslot30_3060(length,nut){
	union(){
		tslot30(length,nut);
		translate([30,0,0])
		tslot30(length,nut);
	}
}


// EXAMPLE USAGE:
// roundedBox([20, 10, 4], 5, true);

// size is a vector [w, h, d]
module roundedBox(size, radius, sidesonly)
{
  rot = [ [0,0,0], [90,0,90], [90,90,0] ];
  if (sidesonly) {
    cube(size - [2*radius,0,0], true);
    cube(size - [0,2*radius,0], true);
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2]) {
      translate([x,y,0]) cylinder(r=radius, h=size[2], center=true);
    }
  }
  else {
    cube([size[0], size[1]-radius*2, size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1], size[2]-radius*2], center=true);
    cube([size[0]-radius*2, size[1]-radius*2, size[2]], center=true);

    for (axis = [0:2]) {
      for (x = [radius-size[axis]/2, -radius+size[axis]/2],
             y = [radius-size[(axis+1)%3]/2, -radius+size[(axis+1)%3]/2]) {
        rotate(rot[axis]) 
          translate([x,y,0]) 
          cylinder(h=size[(axis+2)%3]-2*radius, r=radius, center=true);
      }
    }
    for (x = [radius-size[0]/2, -radius+size[0]/2],
           y = [radius-size[1]/2, -radius+size[1]/2],
           z = [radius-size[2]/2, -radius+size[2]/2]) {
      translate([x,y,z]) sphere(radius);
    }
  }
}



// This generates geometry for creating PVC pipe fittings
// Licenced under Creative Commons: Attribution, Share-Alike
//		http://creativecommons.org/licenses/by-sa/3.0/
// For attribution you can direct people to the original file on thingiverse:
// 		http://www.thingiverse.com/thing:222574

// ================ variables

//CUSTOMIZER VARIABLES

/* [Main] */

// Rated strength
schedule=40; // [40:schedule_40,1:schedule_80]

// Nominal size ("inch")
nom_idx=1; // [0:1/2,1:3/4,2:1,3:1 1/4,4:1 1/2,5:2,6:2 1/2,7:3,8:4,9:5,10:6,11:8,12:10,13:12,14:14,15:16]

// Length in mm
length=35;

// What to generate
generate=1; // [0:outside fitting,1:outside fitting - boolean diff,2:inside fitting,3:inside fitting - boolean diff,4:inside outside,5:inside outside - boolean diff]

// Tightness of fit, in mm (0=tight 0.3=snug 0.6=loose)
tightness=0.3; // 0.0,1.0

// In points per cylinder
resolution=64;

//CUSTOMIZER VARIABLES END
/* [Hidden] */

// =============== calculated variables
$fn=resolution;

// =============== program

// ---- Data
nom_data=["1/2","3/4","1","1 1/4","1 1/2","2","2 1/2","3","4","5","6","8","10","12","14","16"];
sch40id_data=[0.622,0.824,1.049,1.38,1.61,2.067,2.469,3.068,4.026,5.047,6.065,7.981,10.02,11.938,13.124,15];
sch40od_data=[0.84,1.05,1.315,1.66,1.9,2.375,2.875,3.5,4.5,5.563,6.625,8.625,10.75,12.75,14,16];
sch40pvcweight_data=[0.16,0.21,0.32,0.43,0.51,0.68,1.07,1.41,2.01,2.73,3.53,5.39,7.55,10.01,11.8,15.43];
sch40cpvcweight_data=[0.17,0.23,0.34,0.46,0.55,0.74,1.18,1.54,2.2,-1,3.86,5.81,8.24,10.89,-1,-1];
sch80id_data=[0.546,0.742,0.957,1.278,1.5,1.939,2.323,2.9,3.826,4.813,5.761,7.625,9.564,11.376,12.5,14.314];
sch80od_data=[0.84,1.05,1.315,1.66,1.9,2.375,2.875,3.5,4.5,5.563,6.625,8.625,10.75,12.75,14,16];
sch80pvcweight_data=[0.2,0.27,0.41,0.52,0.67,0.95,1.45,1.94,2.75,3.87,5.42,8.05,12,16.5,19.3,25.44];
sch80cpvcweight_data=[0.22,0.3,0.44,0.61,0.74,1.02,1.56,2.09,3.05,-1,5.82,8.83,13.09,18,-1,-1];
thou2mm=25.4;

//---- Functions

/////////////////////////////////////////////////////////
// module create_pvc_component()
// This generates geometry for creating PVC pipe fittings.
// In general, you should use create_pvc() instead because it gives more options.
// schedule = Rated strength (40 or 80)
// nom_idx = Nominal size index as described by nom_data[] 
// length - Length in mm
// generate - What to generate:
//		0="outside fitting"
//		1="outside fitting - boolean diff"
//		2="inside fitting"
//		3="inside fitting - boolean diff"
// tightness - Tightness of fit, in mm (0=tight 0.3=snug 0.6=loose)
module create_pvc_component(schedule=40,nom_idx=0,generate=0,tightness=0.02,length=35) {
	dia=
	(thou2mm*(schedule==80 ?
		(generate==0||generate==1?sch80od_data[nom_idx]:sch80id_data[nom_idx])
		:
		(generate==0||generate==1?sch40od_data[nom_idx]:sch40id_data[nom_idx])
	))
	+(generate==2||generate==3?-tightness:tightness);
	echo("========== INFO ==========");
	echo(str("for ",nom_data[nom_idx],"in (nom) pipe"));
	echo(str("created ",dia,"mm dia part"));
	echo(str("including ",(generate==2||generate==3?-tightness:tightness),"mm for fit"));
	echo("==========================");
	// now draw it
	rotate([90,0,0]) if(generate==1||generate==3){
		cylinder(r=dia/2,h=length,center=true);
	}else{
		difference() {
			cube([dia+10,dia+10,length],center=true);
			cylinder(r=dia/2,h=length,center=true);
		}
	}
};

/////////////////////////////////////////////////////////
// module create_pvc()
// This generates geometry for creating PVC pipe fittings.
// Just like create_pvc_component() only adds generate options 4 and 5
// schedule = Rated strength (40 or 80)
// nom_idx = Nominal size index as described by nom_data[] 
// length - Length in mm
// generate - What to generate:
//		0="outside fitting"
//		1="outside fitting - boolean diff"
//		2="inside fitting"
//		3="inside fitting - boolean diff"
//		4="inside outside"
//		5="inside outside - boolean diff"
// tightness - Tightness of fit, in mm (0=tight 0.3=snug 0.6=loose)
module create_pvc(schedule=40,nom_idx=0,generate=0,tightness=0.02,length=35) {
	if(generate<=3){
		create_pvc_component(schedule,nom_idx,generate,tightness,length);
	}
	else if(generate==4){
		difference() {
			create_pvc_component(schedule,nom_idx,1,tightness,length);
			create_pvc_component(schedule,nom_idx,3,tightness,length*2);
		}
	}
	else{
		union() {
			create_pvc_component(schedule,nom_idx,0,tightness,length);
			create_pvc_component(schedule,nom_idx,3,tightness,length);
		}
	}
};

//---- The program

//light_pvc_holder();
//translate([333,0,0])light_pvc_holder();
module light_pvc_holder(){
//translate([-15,200-60,33])color("white")create_pvc(schedule,nom_idx,generate,tightness,length+20);
translate([-15,200-60,103-11])color("white")rotate([90,0,0])create_pvc(schedule,nom_idx,generate,tightness,length+100);
translate([-15,200-7,170])color("lightblue")create_pvc(schedule,nom_idx,generate,tightness,length+100);
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












//remember you got to mirror this
//mirror([0,1,0])raspi2_bottom();
module raspi2_bottom(){
//color("lime")
translate([106,6,0])
difference(){
union(){
cube([62,90.5+2-20,2]);
translate([60,20,0])cube([30,20,4]);
}
translate([80,30,0])cylinder(r=4.7/2,h=20,$fn=30);
translate([2,22,2])cube([62-4,86.5+1,15.5]);
translate([42.7,75,7])cube([14.5,20,35.5]);
translate([42.7-18,75,7])cube([14.5,20,35.5]);
translate([4.5,75,7])cube([14.5+38,20,35.5]);
translate([42.7-28,-10,7])cube([34.5,20,35.5]);
translate([42.7-20,-10,2])cube([16,20,35.5]);
translate([4.5-10,72-45-2.5,5])cube([14.5,21,65.5]);
translate([-5,56.6,10])rotate([0,90,0])cylinder(r=4.5,h=20);
translate([4.5-10,72-45-2.5-17,5])cube([14.5,12.5,65.5]);
translate([45-1.5+9-0.5-48,72-60,-5]){for (b=[0:6]){translate([6.5,b*10,0])cube([40,5,20]);}}

translate([0,0,-5]){
translate([6.25,6.25,0]){translate([0,0,3])cylinder(r=2/2,h=30);}
translate([6.25+49,6.25,0]){translate([0,0,3])cylinder(r=2/2,h=30);}
translate([0,58,-5]){
translate([6.25,6.25,0]){translate([0,0,3])cylinder(r=2/2,h=30);}
translate([6.25+49,6.25,0]){translate([0,0,3])cylinder(r=2/2,h=30);}
}
}
/*
*/


}//end difference


translate([106,6,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=2/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=2/2,h=30);}}
translate([0,58,0]){
translate([6.25,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=2/2,h=30);}}
translate([6.25+49,6.25,0]){difference(){cylinder(r=6.5/2,h=6);translate([0,0,3])cylinder(r=2/2,h=30);}}
}
}


/*
translate([106,6,0]){
translate([60,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([-10,80,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([6.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([0,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
translate([50,-10,0])difference(){cube([11,10,10.5]);for(a=[0:0]){translate([5.5,5+(10*a),-2]){cylinder(r=3.7/2,h=30);translate([0,0,2])rotate([0,0,90])cylinder(r=6.6/2,h=3,$fn=6);}}}
}
*/
}

module iverntech_slider_tslot_connector(){

/*
*/
//bearings for corexy example
translate([-27/2+12/2+29.5,150-5+8,2-3+6-25-3-3.2])
translate([4,1,-15]){
color("silver")
cylinder(r=5.3/2,h=20);
difference(){
union(){
color("silver")
cylinder(r=17/2,h=5);
color("black")
translate([0,0,0.5])cylinder(r=18/2,h=4);
}
translate([0,0,-0.5])cylinder(r=5.7/2,h=6);
}
}
translate([-27/2+12/2+29.5,150-5+8+52,2-3+6-25-3-3.2])
translate([4,1,-15]){
color("silver")
cylinder(r=5.3/2,h=20);
difference(){
union(){
color("silver")
cylinder(r=17/2,h=5);
color("black")
translate([0,0,0.5])cylinder(r=18/2,h=4);
}
translate([0,0,-0.5])cylinder(r=5.7/2,h=6);
}
}
//for show
/*
//This is the screw
translate([-27/2+12/2+29.5,150-5,2-3+6-25-3-3.2]){
translate([9,9+9,6.0-2])cylinder(r=5.9/2,h=11);
translate([9,9+9,2])difference(){
 cylinder(r=9/2,h=3);
 translate([0,0,-0.1])cylinder(r=5/2,h=3.1,$fn=6);
}
translate([9,9+52-9,6.0-2])cylinder(r=5.9/2,h=10);
translate([9,9+52-9,2])difference(){
 cylinder(r=9/2,h=3);
 translate([0,0,-0.1])cylinder(r=5/2,h=3.1,$fn=6);
 }
}
*/


translate([-27/2+12/2+29.5,150-5,2-3+6-25-3-3.2])difference(){
union(){

color("")cube([18,70,4.5+3+3.3]);
color("")translate([-30,20,0])cube([18+30,30,3.3]);
color("")translate([-30+35,20,0])cube([18+30-15,30,4.4]);
}
translate([9,9+9,6.0])cylinder(r=5.9/2,h=10);
translate([9,9+9,6.0-30-10])cylinder(r=12/2,h=40);
translate([9,9+52-9,6.0])cylinder(r=5.9/2,h=10);
translate([9,9+52-9,6.0-30-10])cylinder(r=12/2,h=40);
translate([9-5+23,9+52/2,-6])cylinder(r=5.9/2,h=20);
//translate([9-5,9+52/2,4])cylinder(r=12/2,h=10);
translate([9-5-20-4,9+52/2,-20.5])cylinder(r=5/2,h=50);
//translate([9-5-30,9+52/2,-20.5])cylinder(r=2.8/2,h=50);
translate([9-5,9+52,-34])cylinder(r=5/2,h=40);
translate([9-5,9+52,6])cylinder(r=9.5/2,h=30,$fn=6);
translate([9-5,9,-34])cylinder(r=5/2,h=40);
translate([9-5,9,6])cylinder(r=9.5/2,h=40,$fn=6);
}
}




module XY_bearings_Right_x1_3dprint(){

mirror([0,0,0]){
translate([(20.28*0.508),(48.24*0.508),5.3])color("silver")cylinder(r=(21.22*0.508)/2,h=5);
translate([(20.28*0.508),(48.24*0.508),-0.1]){
color("silver")cylinder(r=(11.22*0.508)/2,h=30);
color("silver")translate([0,0,20])cylinder(r=(13)/2,h=5);
color("black")translate([0,0,20])cylinder(r=(18)/2,h=5);
color("silver")translate([0,0,20])cylinder(r=(17)/2,h=1);
color("silver")translate([0,0,25])cylinder(r=(17)/2,h=1);
}
translate([(52.8*0.508),(62.52*0.508),-0.1]){
cylinder(r=(11.22*0.508)/2,h=20);
color("silver")translate([0,0,10])cylinder(r=(13)/2,h=5);
color("black")translate([0,0,10])cylinder(r=(18)/2,h=5);
color("silver")translate([0,0,10])cylinder(r=(17)/2,h=1);
color("silver")translate([0,0,15])cylinder(r=(17)/2,h=1);
}
}


scale([0.508,0.508,1])mirror([0,0,0])difference(){
union(){
translate([0,0,0])color("silver")cube([61+10,63.60+12,7.5]);
translate([52.8,62.52,-0.0])color("silver")cylinder(r=13,h=7.5);
}
translate([53.16,20.28,-0.1])cylinder(r=9.25/2,h=30);
translate([53.16,20.28,5.5-.5])cylinder(r=19.25/2,h=3);
translate([20.28,48.24,-0.1])cylinder(r=11.22/2,h=30);
//translate([20.28,48.24,8.3-5+6-12])cylinder(r=18.50/2,h=5,$fn=6);
translate([52.8,62.52,-0.1])cylinder(r=11.22/2,h=30);
translate([52.8,62.52,-2.1])cylinder(r=18.5/2,h=5,$fn=6);
}
}


module XY_bearings_Left_x1_3dprint(){
//bearings
translate([0,15,-5])mirror([0,1,0]){
translate([(20.28*0.508),(48.24*0.508),5.3])color("silver")cylinder(r=(21.22*0.508)/2,h=5);
translate([(20.28*0.508),(48.24*0.508),-0.1]){
color("silver")cylinder(r=(11.22*0.508)/2,h=30);
color("silver")translate([0,0,20])cylinder(r=(13)/2,h=5);
color("black")translate([0,0,20])cylinder(r=(18)/2,h=5);
color("silver")translate([0,0,20])cylinder(r=(17)/2,h=1);
color("silver")translate([0,0,25])cylinder(r=(17)/2,h=1);
}
translate([(52.8*0.508),(62.52*0.508)+12,-0.1]){
color("silver")cylinder(r=(11.22*0.508)/2,h=20);
color("silver")translate([0,0,10])cylinder(r=(13)/2,h=5);
color("black")translate([0,0,10])cylinder(r=(18)/2,h=5);
color("silver")translate([0,0,10])cylinder(r=(17)/2,h=1);
color("silver")translate([0,0,15])cylinder(r=(17)/2,h=1);
}
}

scale([0.508,0.508,1])mirror([0,1,0])difference(){
union(){
color("silver")cube([61+4+10-4,63.60+8+10,4.5+3]);
translate([52.80,62.24,0])color("silver")cylinder(r=13+3,h=4.5+3);
}
translate([20.16,20.64,-0.1])cylinder(r=11.22/2,h=30);
translate([20.16,20.64,8.3-10])cylinder(r=18.5/2,h=5,$fn=6);
translate([53.28,20.32,-0.1-6])cylinder(r=9.25/2,h=12+5);
translate([53.28,20.32,10-4.5])cylinder(r=18.5/2,h=3);
translate([52.80,62.24,-0.1])cylinder(r=11.22/2,h=30);
}
}

module iverntech_slider_xshuttle_connect(){
translate([-27/2+12/2,150,3+3]){
translate([0,0,9])difference(){
 union(){
 translate([0,0,-1])color("")cube([27,45,9+4.9]);
 color("")translate([20+10,45/2-9,2+1.5])cube([16-5,18,6+4.9-1.5]);
 color("")translate([20+10-3,45/2-7-30-9,2+1.5])cube([16+5-5,14+60+19,6+4.9-1.5]);
 } //end union
 translate([27/2+23+2-8+5,45/2-2,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+8,45/2-2,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+5,45/2-0,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+8,45/2-0,-5+12.5-10+3])cylinder(r=17/2,h=10);

// translate([27/2+23,45/2,-5])cylinder(r=5.7/2,h=20);
// translate([27/2+23,45/2,2-0.1])cylinder(r=10/2,h=3);
 translate([27/2+23+2-8+2,45/2-26-9,-5+12.5])cylinder(r=5.7/2,h=10);
 translate([27/2+23+2-8+2,45/2-26-9,-5+12.5-10])cylinder(r=10/2,h=10);
 translate([27/2+23+2-8+2,45/2+26+9,-5+12.5])cylinder(r=5.7/2,h=10);
 translate([27/2+23+2-8+2,45/2+26+9,-5+12.5-10])cylinder(r=10/2,h=10);
 translate([27/2+4+16.5,45/2-18,-5])cylinder(r=3.7/2,h=20);
 translate([27/2+4+16.5,45/2-18,-5+14])cylinder(r=8.5/2,h=4);
 translate([27/2+4+16.5,45/2+15,-5])cylinder(r=3.7/2,h=20);
 translate([27/2+4+16.5,45/2+15,-5+14])cylinder(r=8.5/2,h=4);
 translate([27/2-10,45/2-10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2-10,45/2-10,6])cylinder(r=8/2,h=10);
 translate([27/2+10,45/2-10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2+10,45/2-10,6])cylinder(r=8/2,h=10);
 translate([27/2-10,45/2+10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2-10,45/2+10,6])cylinder(r=8/2,h=10);
 translate([27/2+10,45/2+10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2+10,45/2+10,6])cylinder(r=8/2,h=10);
 translate([27/2+4,45/2,-5])cylinder(r=2.8/2,h=20);
 translate([27/2-8,45/2,-5])cylinder(r=2.8/2,h=20);
 translate([27/2+4,45/2,-1])cylinder(r=7/2,h=4,$fn=6);
 translate([27/2-8,45/2,-1])cylinder(r=7/2,h=4,$fn=6);
 translate([27/2-10,45/2-10,5])cylinder(r=6.5/2,h=3);
 translate([27/2+10,45/2-10,5])cylinder(r=6.5/2,h=3);
 translate([27/2-10,45/2+10,5])cylinder(r=6.5/2,h=3);
 translate([27/2+10,45/2+10,5])cylinder(r=6.5/2,h=3);
}
}
}

module iverntech_slider_zbed_connect(){
//translate([0,125,33.1-4])rotate([0,90,0])tslot20(100);
translate([-27/2+12/2,150,3+3]){
translate([0,0,9])difference(){
 union(){
 translate([0,0,-1])color("")cube([27,45,9+4.9]);
 //color("")translate([20+10,45/2-9,2+1.5])#cube([16-5,18,6+4.9-1.5]);
 //color("")translate([20+10-3,45/2-7-30-9,2+1.5])cube([16+5-5,14+60+19,6+4.9-1.5]);
 color("")translate([20+10-3-27,45/2-7-30-9+6,9-10])cube([16+5-5+11,30,4]);
 color("")translate([20+10-3-27,45/2-7-30-9+6,9-10])cube([16+5-5+11+13,20,4]);
 } //end union
 /*
 translate([27/2+23+2-8+5,45/2-2,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+8,45/2-2,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+5,45/2-0,-5+12.5-10+3])cylinder(r=17/2,h=10);
 translate([27/2+23+2-8+8,45/2-0,-5+12.5-10+3])cylinder(r=17/2,h=10);
 */
// translate([27/2+23,45/2,-5])cylinder(r=5.7/2,h=20);
// translate([27/2+23,45/2,2-0.1])cylinder(r=10/2,h=3);

 //#translate([27/2+23+2-8+5,45/2-26-9+35,-5+12.5])cylinder(r=4.7/2,h=10, $fn=30);
 #translate([27/2+23+2-8+(5-43)/2+20,45/2-26-9+35-32.5,-5+12.5-12])cylinder(r=4.7/2,h=10, $fn=30);
 //#translate([27/2+23+2-8+4-43,45/2-26-9+35,-5+12.5])cylinder(r=4.7/2,h=10, $fn=30);

 //#translate([27/2+23+2-8+2,45/2-26-9,-5+12.5-10])cylinder(r=10/2,h=10);
 //translate([27/2+23+2-8+2,45/2+26+9,-5+12.5-10])cylinder(r=10/2,h=10, $fn=30);
 translate([27/2+4+16.5,45/2-18,-5])cylinder(r=3.7/2,h=20);
 translate([27/2+4+16.5,45/2-18,-5+14])cylinder(r=8.5/2,h=4);
 translate([27/2+4+16.5,45/2+15,-5])cylinder(r=3.7/2,h=20);
 translate([27/2+4+16.5,45/2+15,-5+14])cylinder(r=8.5/2,h=4);
 translate([27/2-10,45/2-10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2-10,45/2-10,6])cylinder(r=8/2,h=10);
 translate([27/2+10,45/2-10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2+10,45/2-10,6])cylinder(r=8/2,h=10);
 translate([27/2-10,45/2+10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2-10,45/2+10,6])cylinder(r=8/2,h=10);
 translate([27/2+10,45/2+10,-4])cylinder(r=3.7/2,h=10);
 translate([27/2+10,45/2+10,6])cylinder(r=8/2,h=10);
 translate([27/2+4,45/2,-5])cylinder(r=2.8/2,h=20);
 translate([27/2-8,45/2,-5])cylinder(r=2.8/2,h=20);
 translate([27/2+4,45/2,-1])cylinder(r=7/2,h=4,$fn=6);
 translate([27/2-8,45/2,-1])cylinder(r=7/2,h=4,$fn=6);
 translate([27/2-10,45/2-10,5])cylinder(r=6.5/2,h=3);
 translate([27/2+10,45/2-10,5])cylinder(r=6.5/2,h=3);
 translate([27/2-10,45/2+10,5])cylinder(r=6.5/2,h=3);
 translate([27/2+10,45/2+10,5])cylinder(r=6.5/2,h=3);
}
}
}


module iverntech_railmodule(){
translate([0,-5,0]){
translate([-83.5,145,-231])rotate([0,90,0])tslot20(100);
translate([-37.5,20,-274])rotate([0,0,0])iverntech_slider_zbed_connect();
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
}
translate([-27/2+12/2-48+6+12,55-60-30-60,310-6+5])color("pink")cube([12,450,8]);

}




