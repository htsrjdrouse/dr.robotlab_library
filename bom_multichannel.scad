include <modparts.scad> use<writescad/write.scad>


//multichannel_pipette_holder();
//import("pi_back.stl");

//pi_bottom_for_panel();


//multichannel_pipette_holder();
//multichannel_drypad();

//rotate([90,0,0])multichannel_solenoid_connect_part();

//remove_tip_solenoid_coupler();

//pipette_p200(5);

//zbed_washer_hold_plate_into_place();
//laser_zbed(144);

//filament_driver_assy_motormount();
//rotate([0,-90,0])filament_driver_assy_motormount_spacer();
//translate([208-16+16,188-16+16,342-35+30])rotate([90,0,0])inductivesensorcap();
//inductivesensorcap();

//rotate([0,180,0])inductivesensorcap_aligner();


//slider_front_assy();

//tslot_clamp_filament_linearactuator_shuttle();
//the_actual_remove_pipette_part();

//rotate([0,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_spacer(6);

/*
shh = 0.9;color([shh,shh,shh])color("gainsboro")translate([-0.5,-37,22+7])filament_linearactuator_shuttle();
smaller_igus_slidermount_vertical_adjust_nema17();
shuttle_front_vertical_adjust();
rotate([0,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_spacer(6);
rotate([90,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17();
*/

//slider_front_assy_vertical_adjust_nema17();
//translate([-27.5,-41,20+3])rotate([0,0,180])smaller_igus_slidermount_vertical_adjust_nema17();


//filament_linearactuator_smaller_igus_slidermount_vertical_adjust_nema17();

//rotate([0,0,0])stepper_linear_m8nut_coupler_vertical_adjust_nema17_spacer(5);
//best spacer is 6mm high (could even be 6.1mm )
//translate([0,0,-60])stepper_linear_m8nut_coupler_vertical_adjust_nema17_nut();

/*
x =10;
y = 100;
 xshuttle_assy(x,y);
*/
//multichannel_pipette_holder();
//multichannel_top_fix();

//smaller_igus_slidermount();
//translate([-0.5,-37,22])
//tslot_clamp_filament_linearactuator_shuttle();
//tslot_clamp_filament_linearactuator_shuttle_shim(2);

//filament_linearactuator_shuttle();
// multichannel_pipette_holder();

//multichannel_drypad();
//slidedeck_adjust_wheel();
//iverntech_slider_tslot_connector();
//rotate([0,0,0])import("files/gt2belt_holder.stl");

/*
rotate([0,180,0])
iverntech_slider();
*/
//multichannel_lockwasher();

//slider_x4();

//translate([5.7,110,0])sliderwheel_assy();

//9pinconnector_for_softpot(42,37);
//laser_zbed(144);

/*
translate([231.75,195-0,145+5])wash_holder_arm();
translate([230+125.25,195-0,145+5])wash_holder_arm();
*/

//washbowl_assy();
//multichannel_wash_assembly();
//color("darkgrey")washbowl_watervacinput();

//multichannel_drypad();
//translate([9,0,0])pipette_conical_part_p200(2.2);
//multichannel_pipette_holder();


//multichannel_pipette_holder();

//multichannel_lockwasher();
//translate([0,0,-37])multichannel_top_fix();

//multichannel_ejection_flap();

//rotate([90,0,0])multichannel_solenoid_connect_part();


//rotate([90,0,0])multichannel_solenoid_base();

//translate([63,-0,-28])rotate([90,0,0])multichannel_ejection_flap_top();
//the_actual_remove_pipette_part();

//translate([0,0,-24])multichannel_top_fix();


/*the evolving assembly design
*/

//multichannel_ejection_flap();
//multichannel_ejection_flap_top();

//rotate([90,0,0])solenoid_make_straight_connectorbar();
//multichannel_pipette_remove_assay();
module multichannel_pipette_remove_assay(){
translate([5.5,0,0])multichannel_remove_pipette_assy();
translate([100.5,0,0])multichannel_remove_pipette_assy();

translate([-17.5,-2,2])rotate([0,90,0])tslot20(400);
translate([-11+185,-150+3,-150])rotate([180,0,-90])multichannel_drypad();
solenoid_make_straight_connectorbar();


}


/*
//multichannel_remove_pipette_assy();
//the_actual_remove_pipette_part();
//multichannel_pipette_holder();
translate([0,-5,0])mirror([0,1,0])multichannel_remove_pipette_assy();
translate([-17.5,-28-5,1])rotate([0,90,0])tslot20(100);
//multichannel_lockwasher();
//translate([-17.5,-2+5,1])rotate([0,90,0])tslot20(100);
//multichannel_pipette_holder();
//translate([0,0,-24])multichannel_top_fix();
multichannel_pipette_holder();
*/


module solenoid_make_straight_connectorbar(){
translate([5.5+15,35-6,-50])difference(){
translate([8,0,0])color("lightblue")cube([110,2.5,8]);
translate([16,10,4])rotate([90,0,0])#cylinder(r=4/2,h=20);
translate([16+95,10,4])rotate([90,0,0])#cylinder(r=4/2,h=20);
}

}



module remove_tip_solenoid_coupler(){

difference(){
union(){
translate([0,0,0])rotate([0,0,45])cylinder(r=8/2,h=8+5,$fn=30);
translate([1.15+3,0,0])rotate([0,0,45])cylinder(r=8/2,h=8+5,$fn=4);
translate([-1.15-3,0,0])rotate([0,0,45])cylinder(r=8/2,h=8+5,$fn=4);
}
translate([-6-3,0,5+4.5])rotate([0,90,0])cylinder(r=2.8/2,h=20);
translate([0,0,-5])cylinder(r=3.9/2,h=20);
translate([0,0,8-3.4])cylinder(r=6.5/2,h=3.5+6);
}
}



module multichannel_top_fix(){
//multichannel_pipette_holder();
difference(){
union(){
for(i=[0:7]){
translate([i*9,0,0])
pipette_serological_1ml_for_top_fix(4.9);
}
}
sh = 32;
translate([-4+11,sh/2-3,-10])cylinder(r=5.5/2,h=80);
translate([-4+11,-sh/2+3,-10])cylinder(r=5.5/2,h=80);
translate([-4-11+(7*10),sh/2-3,-10])cylinder(r=5.5/2,h=80);
translate([-4-11+70,-sh/2+3,-10])cylinder(r=5.5/2,h=80);
//translate([-4+35,sh/2-3,-10])cylinder(r=4.7/2,h=80);
//translate([-4+35,-sh/2+3,-10])cylinder(r=4.7/2,h=80);
}
}








module multichannel_lockwasher(){
translate([-4.5+4.5,0,9-4])
for(i=[0:7]){
translate([i*9,0,-37])difference(){
cylinder(r=8/2,h=3);
cylinder(r=4/2,h=3);
}
}
}

module the_actual_remove_pipette_part(){


difference(){translate([-4.5,-10,9-4])
difference(){
union(){
translate([-2,2.5,0])cube([75,15,4]);
translate([-2+32.5,2.5-30-5,0])cube([12,75+10,4]);
}
translate([-2+32.5+6-0.5,2.5-30+6.4-5,-8])cylinder(r=3.8/2,h=20);
translate([-2+32.5+6-0.5,2.5-30+6.4+62+5,-8])cylinder(r=3.8/2,h=20);
translate([4.5,10,-12])
for(i=[0:7]){
translate([i*9,0,0])cylinder(r=7.5/2,h=30);
}
}
translate([-2-10,2.5-2.5,0])cube([75+10,15+30,40]);
}


}

module multichannel_remove_pipette_assy(){
ext = 0;
//translate([20-1.5+3,30-7+3-3,-50+12+2-4-4])rotate([0,-90,0])color("silver")multichannel_solenoid(ext);
translate([31,31,-26])rotate([180,0,90])remove_tip_solenoid_coupler();
translate([63,0,-32.1])rotate([0,180,0]){
translate([21.5+10,20+17-6,-4-20+15])rotate([0,180,0])multichannel_ejection_flap();
translate([63,-0,-28])rotate([0,180,0])multichannel_ejection_flap_top();
}
translate([63,50,0])rotate([180,180,0])multichannel_solenoid_base();
//translate([0,8,0])color("pink")multichannel_solenoid_connect_part();
}


/*
*/

ext = 0;
//translate([20-1.5+3,30-7+3-3,-50+12+2-4-4])rotate([0,-90,0])color("pink")multichannel_solenoid(ext);
/*
translate([0,0,4.3])remove_pipette_multichannel(ext);
*/

//translate([60,30,-50])rotate([0,-90,0])multichannel_solenoid(ext);

module multichannel_solenoid_connect_part(){
translate([3,0,0])difference(){
union(){
translate([62,23-4,-39])rotate([0,180,0])cube([12+55,4,19]);
translate([62-18,23-4,-39])rotate([0,180,0])cube([12+19,4,19+24]);
}
translate([33,23-4,-39])rotate([0,180,0])#cube([10,4,13+8]);

translate([-6+62,50,-53])rotate([90,0,0])cylinder(r=2.8/2,h=120);
translate([-6+62,50,-43])rotate([90,0,0])cylinder(r=2.8/2,h=120);
translate([1,50,-53])rotate([90,0,0])cylinder(r=2.8/2,h=120);
translate([1,50,-43])rotate([90,0,0])cylinder(r=2.8/2,h=120);
translate([15.5,0+19,-45+1])rotate([0,90,0]){
translate([10-8+5,10,20-3+3])rotate([90,0,0])#cylinder(r=5/2,h=20);
translate([39-5-2-8+5,10,3+3])rotate([90,0,0])#cylinder(r=5/2,h=20);
}
}
}

module multichannel_solenoid_base(){

//this is part of multichannel_ejection_flap_top now
translate([3,0,0])difference(){
union(){
translate([7,23,-5])rotate([0,180,0])cube([12,4,17+40-3]);
translate([9-5,23,-5])rotate([0,180,0])cube([12+5,4,17]);
translate([62+8,23,-5])rotate([0,180,0])cube([12+6.5,4,17]);
translate([62,23,-5])rotate([0,180,0])cube([12,4,17+40-3]);
}
translate([4,50,-13.7])rotate([90,0,0])cylinder(r=4.7/2,h=120);
translate([-8+62,50,-13.7])rotate([90,0,0])cylinder(r=4.7/2,h=120);
translate([-6+62,50,-53])rotate([90,0,0])cylinder(r=3.7/2,h=120);
translate([-6+62,50,-43])rotate([90,0,0])cylinder(r=3.7/2,h=120);
translate([1,50,-53])rotate([90,0,0])cylinder(r=3.7/2,h=120);
translate([1,50,-43])rotate([90,0,0])cylinder(r=3.7/2,h=120);
}
translate([3,0,0]){
translate([-8,29,-13])rotate([90,45,0])cylinder(r=6.3/2,h=2,$fn=4);
translate([4+62,29,-13])rotate([90,45,0])cylinder(r=6.3/2,h=3,$fn=4);
}
}


module multichannel_ejection_flap_top(){

//translate([0,0,4])multichannel_solenoid_connect_part();
// multichannel_solenoid_base();

translate([21.5,20+4,-4])difference(){cube([20,17-2.5,4]);
//translate([10,24,-1])
translate([10,7,0])cylinder(r=4/2,h=20);
}
difference(){
union(){
translate([21.5-10,20+3,-4-10+2-4-3-2])cube([13,4,16+5]);
translate([21.5-10+27,20+3,-4-10+2-4-3-2])cube([13,4,16+5]);
translate([21.5-5-5,20+3,-4-10+2-4-3-2])cube([40,1.6,16+5]);
}
translate([21.5-5+2+3-4,20+3+10,-4-10+2-4+6.2])rotate([90,0,0])cylinder(r=5.9/2,h=30);
translate([21.5-5+2+23+4,20+3+10,-4-10+2-4+6.2])rotate([90,0,0])cylinder(r=5.9/2,h=30);

}
translate([21.5+10,20+17-6,-15]){
difference(){
rotate([0,0,45])cylinder(r=21/2,h=11,$fn=4);
rotate([0,0,45])cylinder(r=18/2,h=20.5,$fn=4);
}
}
}



module multichannel_ejection_flap(){
difference(){
union(){
translate([-12.5/2,-3.5-2.15,-3])cube([12.5,17,3]);
rotate([0,0,45])cylinder(r=16/2,h=15,$fn=4);
}
translate([0,0,4])rotate([0,0,45])cylinder(r=11.5/2,h=20.5,$fn=4);
translate([0,0,-10])rotate([0,0,45])cylinder(r=4/2,h=35);
}
/*
difference(){
rotate([0,0,0])cylinder(r=5/2,h=15+13);
rotate([0,0,0])cylinder(r=2.8/2,h=20.5+30);
}
*/
}

module multichannel_solenoid(ext){
//uxcell JF-1039B DC 12V 400mA 4800W 25N 10mm Pull Push 
translate([-42,8.5,-20])rotate([0,0,0]){difference(){
union(){
cube([39,26,20]);
translate([39,26/2,20/2])rotate([0,90,0])cylinder(r=9/2,h=65-39-ext-13);
translate([-10-ext,26/2,20/2])rotate([0,90,0])cylinder(r=3.7/2,h=65-39);
}
translate([10,10,20-3])rotate([90,0,0])cylinder(r=5/2,h=20);
translate([39-5,10,3])rotate([90,0,0])cylinder(r=5/2,h=20);
}
}
}



module multichannel_pipette_holder(){

translate([-9,-6.6,-4])cube([6,13.2,12]);
translate([-9+76.5-0.3+1,-6.6,-4])cube([5,13.2,12]);

/*
difference(){
translate([21.5,10-47,-4])cube([20,17,4]);
translate([21.5+10,10-47+6,-10])
rotate([0,0,0])cylinder(r=6.3/2,h=15+13);
}
difference(){
translate([21.5,10-47+57,-4])cube([20,17,4]);
translate([21.5+10,10-47+6+62,-10])
rotate([0,0,0])cylinder(r=6.3/2,h=15+13);
}
*/
translate([1,0,0])difference(){
union(){
for(i=[0:7]){
if (i==0){
 translate([i*(9),0,0])
  ///pipette_serological_1ml(5);
  //pipette_serological_1ml(7.5);
  pipette_p1000(8.1);
  //pipette_p200(5); 
}
else if (i==7){
 translate([i*9,0,0])
 //pipette_p200(5); 
 //pipette_serological_1ml(5.2);
 //pipette_serological_1ml(7.7);
 pipette_p1000(8.1);
}
else {
translate([i*9,0,0])
 //pipette_serological_1ml(5.3);
 //pipette_serological_1ml(7.8);
 pipette_p1000(8.1);
 //pipette_p200(5); 
}
}
}
sh = 32;
translate([-4+11,sh/2-3+5,-10])cylinder(r=5.5/2,h=80);
translate([-4-11+(7*10),sh/2-3+5,-10])cylinder(r=5.5/2,h=80);
//translate([-4+35,sh/2-3,-10])cylinder(r=5.5/2,h=80);
//translate([-4+35,-sh/2+3,-10])cylinder(r=5.5/2,h=80);
translate([-4+11,-sh/2+3-5,-10])cylinder(r=5.5/2,h=80);
translate([-4-11+70,-sh/2+3-5,-10])cylinder(r=5.5/2,h=80);
}

}


module remove_pipette_multichannel(ext){
translate([21.5,7,ext-4])difference(){
cube([20,30,4]);
translate([10,24,-1])cylinder(r=6/2,h=20);
}
translate([21.5,7-44,ext-4])difference(){
cube([20,30,4]);
translate([10,6,-1])cylinder(r=6/2,h=20);
}
color("silver")translate([0,0,ext])difference(){
for(i=[0:7]){
 translate([i*9,0,0])difference(){
 translate([-5,-10,-4])cube([10,20,4]);
 translate([0,0,-50.2])cylinder(r=6/2,h=100);
}
}
}
}


//this is the p50 multichannel
module pipette_conical_part_p50(){
difference(){
union(){
translate([0,0,11.5])cylinder(r2=3/2,r1=4.5/2,h=16);
translate([0,0,0])cylinder(r2=5/2,r1=5.5/2,h=11.5);
translate([-5,-40/2,-4])cube([10,40,4]);
}
translate([0,0,-50.2])cylinder(r=2.1/2,h=100);
}
}

module pipette_conical_part_p200(dia){
difference(){
union(){
//translate([0,0,4])cylinder(r2=4.5/2,r1=5.5/2,h=8);
translate([0,2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([0,-2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([0,0,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([-5,-40/2,-4])cube([10,40,4]);
}
translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
translate([0,0+50,-50.2+46+8])rotate([90,0,0])cylinder(r=1.7/2,h=100);

//translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=(dia+0.2)/2,h=2);
}

//this is for show
//color("lightblue")translate([0,0,-50.2+46-33+8-6])cylinder(r=dia/2,h=50);
}



module pipette_serological_1ml_for_top_fix(dia){
difference(){
union(){
//translate([0,0,4])cylinder(r2=4.5/2,r1=5.5/2,h=8);
//translate([0,2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
//translate([0,-2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
//translate([0,0,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([-5,-40/2+13.4,-4])cube([10,30-3.4,4]);
}
translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
translate([0,0+50,-50.2+46+8])rotate([90,0,0])cylinder(r=1.7/2,h=100);

//translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=(dia+0.2)/2,h=2);
}

//this is for show
//color("lightblue")translate([0,0,-50.2+46-33+8-6])cylinder(r=dia/2,h=50);
}

module pipette_p200(dia){
difference(){
union(){
//translate([0,0,4])cylinder(r2=4.5/2,r1=5.5/2,h=8);
translate([0,2,0])rotate([0,0,45])cylinder(r=13/2,h=7,$fn=4);
translate([0,-2,0])rotate([0,0,45])cylinder(r=13/2,h=7,$fn=4);
translate([0,0,0])rotate([0,0,45])cylinder(r=13/2,h=7,$fn=4);
translate([-5,-40/2+13.4,-4])cube([10,40-13,4]);
//the other side for solenoid
//translate([-5,-40/2,-4])cube([10,40-13,4]);
}
translate([0,0,-50.2+46+4.25-7])cylinder(r2=8/2,r1=8/2,h=7);
translate([0,0,-50.2+46+4.25])cylinder(r2=6.5/2,r1=8/2,h=7);
translate([0,0+50,-50.2+46+8])rotate([90,0,0])cylinder(r=1.7/2,h=100);

//translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=(dia+0.2)/2,h=2);
}
/*
translate([0,0,-65+41]){
//this is for show
color("lightblue")translate([0,0,-36.7])cylinder(r=4.5/2,h=102-13-10);
color("lightblue")translate([0,0,62])cylinder(r=2.5/2,h=13);
color("lightblue")translate([0,0,52.3-10])cylinder(r2=2.5/2,r1=4.5/2,h=20);
color("lightblue")translate([0,0,-36.7])cylinder(r=7.5/2,h=20);

//here is the luer lock
color("white")translate([0,0,-36.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-36.7-3])cylinder(r=12/2,h=3);
//cylinder(r=12/2,h=3);
//end luer lock
}
*/

}



module pipette_p1000(dia){
difference(){
union(){
//translate([0,0,4])cylinder(r2=4.5/2,r1=5.5/2,h=8);
translate([0,2,-4])rotate([0,0,45])cylinder(r=13/2,h=12,$fn=4);
translate([0,-2,-4])rotate([0,0,45])cylinder(r=13/2,h=12,$fn=4);
translate([0,0,-4])rotate([0,0,45])cylinder(r=13/2,h=12,$fn=4);
translate([-5,-40/2+13.4+12,-4])cube([10,40-13+4-12,4]);
//the other side for solenoid
//translate([-5,-40/2-4,-4])cube([10,40-13+4,4]);
}
translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
translate([0,0+50-50,-50.2+46+8])rotate([90,0,0])#cylinder(r=1.7/2,h=30);
//translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=(dia+0.2)/2,h=2);
}
/*
translate([0,0,-65+41]){
//this is for show
color("lightblue")translate([0,0,-36.7])cylinder(r=4.5/2,h=102-13-10);
color("lightblue")translate([0,0,62])cylinder(r=2.5/2,h=13);
color("lightblue")translate([0,0,52.3-10])cylinder(r2=2.5/2,r1=4.5/2,h=20);
color("lightblue")translate([0,0,-36.7])cylinder(r=7.5/2,h=20);
//here is the luer lock
color("white")translate([0,0,-36.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-36.7-3])cylinder(r=12/2,h=3);
//cylinder(r=12/2,h=3);
//end luer lock
}
*/
}













module pipette_serological_1ml(dia){
difference(){
union(){
//translate([0,0,4])cylinder(r2=4.5/2,r1=5.5/2,h=8);
translate([0,2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([0,-2,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([0,0,0])rotate([0,0,45])cylinder(r=13/2,h=8,$fn=4);
translate([-5,-40/2+13.4,-4])cube([10,40-13,4]);
//the other side for solenoid
//translate([-5,-40/2,-4])cube([10,40-13,4]);
}
translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
translate([0,0+50,-50.2+46+8])rotate([90,0,0])cylinder(r=1.7/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=dia/2,h=100);
//translate([0,0,-50.2+46])cylinder(r=(dia+0.2)/2,h=2);
}
/*
translate([0,0,-65+41]){
//this is for show
color("lightblue")translate([0,0,-36.7])cylinder(r=4.5/2,h=102-13-10);
color("lightblue")translate([0,0,62])cylinder(r=2.5/2,h=13);
color("lightblue")translate([0,0,52.3-10])cylinder(r2=2.5/2,r1=4.5/2,h=20);
color("lightblue")translate([0,0,-36.7])cylinder(r=7.5/2,h=20);
//here is the luer lock
color("white")translate([0,0,-36.7-5])cylinder(r=8/2,h=3);
color("white")translate([0,0,-36.7-3])cylinder(r=12/2,h=3);
//cylinder(r=12/2,h=3);
//end luer lock
}
*/
}























module multichannel_drypad(){
translate([-148,85,-150])difference(){
union(){
translate([-75.5-5+22-5,-40,0])cube([29,90,3]);
translate([-75.5-5+45,-40-10,0])cube([10,90+20,5]);
}
/*
translate([-30,33,-10]){
cylinder(r=3.7/2,h=30);translate([0,0,10])
cylinder(r=6.7/2,h=3.2);
}
translate([-30,33-66,-10]){
cylinder(r=3.7/2,h=30);
translate([0,0,10])cylinder(r=6.7/2,h=3.2);
}
*/
for(a=[0:1]){
translate([-44-(a*10),-40+5,-1])cube([5,71+10,13]);
}


translate([-33,-66,-20])rotate([0,0,90]){


//actually c-to-c spacing on prusa is 8.723 not 9mm
for(j=[0:7]){
for(k=[0:3]){
 //The is for the Rainin LTS tip without the filter
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([7,25/2-8,-0.1])#cylinder(r=7.8/2,h=40);
 //The is for the Rainin LTS tip with this is too tight
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.5,25/2-8,-0.1])#cylinder(r=6.5/2,h=40);
 translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.8,25/2-8,-0.1])#cylinder(r=7/2,h=40);


}}

/*
translate([19+7,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
*/
//translate([19+7,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,-0.1])#cylinder(r=3.7/2,h=240);
//translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
//translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,-0.1])#cylinder(r=3.7/2,h=240);

}
}
}





module multichannel_vacuum(){
wh = 20;
sh = 9;
difference(){
translate([26,2.5,2])color("lightgreen")cube([90,25+15,wh]);
translate([26+9,2.5+21,2+5])cube([90-14,12,50]);
for(i=[0:12]){
translate([26+9+i*5,2.5+7,2+5+(7-(i*1.2)/2)])cube([5,11,50]);
}
translate([26+70,2.5+7,2+5])cube([15,11,50]);
for(j=[112,85,55,30]){
translate([j,15+sh+15,4]){cylinder(r=2.8/2,h=200);}
translate([j,15-sh,4]){cylinder(r=2.8/2,h=200);}
}

translate([95,15,15])rotate([0,90,0])cylinder(r=5/2,h=30);
translate([95,30,10])rotate([0,90,0])cylinder(r=5/2,h=30);





}
}


module multichannel_wash_assembly(){

color("darkgrey")translate([220,350,0])rotate([0,180,-90])multichannel_drypad();

translate([20-13,185-10,-62.5+5]){
difference(){
union(){
translate([242-10,0,200])washstation_for_multichannel();
translate([242-10,0,200-25])multichannel_vacuum();
}
translate([270,15,200])multichannel_module();
}
}
}

module wash_holder_arm(){
l = 33.05;
difference(){
translate([0,-0.5,0])color("peru")cube([l,12,5]);
translate([3.3,10/2,-5])cylinder(r=2.8/2,h=20);
translate([l-3.3,10/2,-5])cylinder(r=2.8/2,h=20);
translate([l-8.3,10/2,-5])cylinder(r=2.8/2,h=20);
}
}



//mirror([0,0,0])import("files/endstop_y.stl");

//translate([0,35,0])pipette_plate();
//distributor_plate();
//pipetteboy_shaft();
//serological_1ml_shaft();

//multichannel_holder_assy();

module multichannel_module(){
ang = 20;
for(i=[0:14]){
translate([i*4.5,0+15,-1])rotate([0,0,45])cylinder(r=7/2,h=20,$fn=4);
translate([i*4.5,0,7])rotate([0,0,45])cylinder(r=11/2,h=20,$fn=4);
}
for(i=[0:7]){
translate([i*9,0,0])rotate([0,0,45])cylinder(r1=2/2,r2=7/2,h=7.1);
for(k=[0:15]){
translate([i*9,k,5-k/4])rotate([0,0,45])cylinder(r=3/2,h=20);
}
}
}



module washstation_for_multichannel(){
sh = 9;
h=9.5;
wh = 7;

translate([19+7,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])cylinder(r=2.8/2,h=40);
}

translate([19+7+37,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])cylinder(r=2.8/2,h=40);
}

translate([19+7+75,2.5-10,2])difference(){
color("lightblue")cube([15,10,3]);
translate([7.5,25/2-8,-0.1])cylinder(r=2.8/2,h=40);
}





translate([19,2.5+10,2])difference(){
translate([0,7,0])color("lime")cube([7,12,wh]);
translate([3.5,25/2,-0.1])cylinder(r=3.7/2,h=20);
translate([3.5,25/2,3.6])cylinder(r=9/2,h=3.5);
}
translate([97+19,2.5+10,2])difference(){
translate([0,7,0])color("lime")cube([7,12,wh]);
translate([3.5,25/2,-0.1])cylinder(r=3.7/2,h=20);
translate([3.5,25/2,3.6])cylinder(r=9/2,h=3.5);
}
difference(){
translate([26,2.5,2])color("pink")cube([90,25+15,wh]);
//translate([119,6+sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
//translate([22,6+sh,-0.2+h-4]){cylinder(r=9/2,h=4);}


translate([114,15+sh+15,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([114,15-sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([28,15-sh,-0.2+h-4]){cylinder(r=9/2,h=4);}
translate([28,15+sh+15,-0.2+h-4]){cylinder(r=9/2,h=4);}

for(j=[112,85,55,30]){
translate([j,15+sh+15,-0.2]){cylinder(r=3.7/2,h=20);translate([0,0,h-4])cylinder(r=9/2,h=4);}
translate([j,15-sh,-0.2]){cylinder(r=3.7/2,h=20);translate([0,0,h-4])cylinder(r=9/2,h=4);}
}



}
}


module multichannel_holder_assy(){
 difference(){
  union(){
   translate([25,40,16])rotate([90,0,0])serological_1ml_shaft();
   translate([25,15,16])rotate([90,0,0])pipetteboy_shaft();
   translate([0,-5,0])base_for_pipetteboy();
  }
  translate([19,20.5,-10])cylinder(r=3.7/2,h=120);
  translate([19+12,20.5,-10])cylinder(r=3.7/2,h=120);
 }
}

module base_for_pipetteboy(){
 translate([25,25,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
 translate([25,15,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
 translate([25,35,2])rotate([0,0,45])cylinder(r=20,h=2,$fn=4);
}

module serological_1ml_shaft(){
 difference(){
  union(){
  translate([0,0,-0.1])cylinder(r=(4+8)/2,h=15);
  translate([-6,5,7.5])rotate([0,90,0])cylinder(r=(7)/2,h=12);
  translate([0,-5,-0.1])rotate([0,0,45])cylinder(r=(14)/2,h=15, $fn=4);
  translate([0,-7.5,-0.1])rotate([0,0,45])cylinder(r=(14)/2,h=15, $fn=4);
  }
  translate([-7,5,7.5])rotate([0,90,0])cylinder(r=(2.8)/2,h=14);
  translate([0,0,-5])cylinder(r=4.5/2,h=30);
  translate([0,3,-5])rotate([0,0,45])cylinder(r=6/2,h=30,$fn=4);
  translate([0,7,-5])rotate([0,0,45])cylinder(r=6/2,h=30,$fn=4);
 }
}

module pipetteboy_shaft(){
 difference(){
 union(){
 translate([0,0,-0.1])cylinder(r=(10+8)/2,h=15);
 translate([-8,7,7.5])rotate([0,90,0])cylinder(r=(7)/2,h=16.5);
 translate([0,-5,-0.1])rotate([0,0,45])cylinder(r=(16)/2,h=15, $fn=4);
 translate([0,-7.5,-0.1])rotate([0,0,45])cylinder(r=(16)/2,h=15, $fn=4);
 }
 translate([-11,7,7.5])rotate([0,90,0])cylinder(r=(2.8)/2,h=25);
 translate([0,0,-5])cylinder(r=10/2,h=30);
 translate([0,5,-5])rotate([0,0,45])cylinder(r=10/2,h=30,$fn=4);
 translate([0,7,-5])rotate([0,0,45])cylinder(r=10/2,h=30,$fn=4);
 }
}

module pipette_plate(){
difference(){
translate([12,-5+5,0])cube([78,15,3]);
translate([21,0,0])lower_microchannel_segment();
}
}


module distributor_plate(){
difference(){
translate([-15,-5,0])cube([125,27,3]);
upper_microchannel_segment();
}
}



module lower_microchannel_segment(){
//translate([-4,5,3])rotate([90,0,90])cylinder(r=4/2,h=68);
for (i=[-1:6]){
if(i==3){
//translate([0+i*(9),5,3])rotate([90,0,90])eldon_james_nyloncross();
translate([0+i*(9)+7.5,5,3])rotate([90,0,0])cylinder(r=4/2,h=30);
translate([0+i*(9)+7.5,5+10,3])rotate([90,0,0])cylinder(r=4/2,h=15);
}else{
//translate([0+i*(9),5,3])rotate([90,0,90])eldon_james_nylontee();
translate([0+i*(9)+7.5,5+10,3])rotate([90,0,0])cylinder(r=4/2,h=15);
}
}
}




module upper_microchannel_segment(){
translate([-11,5,3])rotate([90,0,90])cylinder(r=4/2,h=117);
for (i=[-1:6]){
if(i==3){
//translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nyloncross();
translate([0+i*(16)+7.5,5,3])rotate([90,0,0])cylinder(r=4/2,h=30);
translate([0+i*(16)+7.5,5+10+8,3])rotate([90,0,0])cylinder(r=4/2,h=18);
}else{
//translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nylontee();
translate([0+i*(16)+7.5,5+10+8,3])rotate([90,0,0])cylinder(r=4/2,h=18);
}
}
}


//multichannel_fluidicdesign();


module multichannel_fluidicdesign(){
for (i=[0:5]){
if(i==3){
translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nyloncross();
}else{
translate([0+i*(16),5,3])rotate([90,0,90])eldon_james_nylontee();
}
}
translate([6*16,5,3])rotate([90,0,90])eldon_james_nylonrtang();
translate([-0.0*16-1,5,3])rotate([-90,0,90])eldon_james_nylonrtang();
}




/*
difference(){
cube([14,12,3]);
translate([0,5,3])rotate([90,0,90])eldon_james_nylontee();
}
*/
//eldon_james_nyloncross();
//eldon_james_nylonrtang();





module eldon_james_nylonrtang(){
cylinder(r=3/2,h=15/2+1.5);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
//translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
}



module eldon_james_nylontee(){
cylinder(r=3/2,h=15);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
}

module eldon_james_nyloncross(){
cylinder(r=3/2,h=15);
translate([0,0,7.5-0.75-2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5-0.75+2])rotate([0,0,0])cylinder(r=5/2,h=1.5);
translate([0,0,7.5])rotate([0,90,0])cylinder(r=3/2,h=7.5);
translate([0,0,7.5])rotate([0,-90,0])cylinder(r=3/2,h=7.5);
translate([1.75,0,7.5])rotate([0,90,0])cylinder(r=5/2,h=1.5);
translate([-1.75,0,7.5])rotate([0,-90,0])cylinder(r=5/2,h=1.5);
}




