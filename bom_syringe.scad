include <modparts.scad>
use<writescad/write.scad>
include <dr.robotlab_repstrap.scad>







module one_1ml_syringe_parts(){
 //translate([-22.85,1-123.7,2.5])mirror([0,1,0])oneml_syringe_stepper_linear_m8nut_coupler();
 //translate([0,-4,0])iverntech_pump_slider_plate();
 //translate([0,-4,0])iverntech_pump_slider_plate_connect();
 multichannel_syringeshuttle_clipbracket();
 /*
 onechannel_plunger_clamp();
 translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
 translate([0,70,-0.1])one_channel_syringe1ml_clamp();
 one_syringe1ml_clamp_top_luerlock();
 //translate([0,70,-0.1])one_front_syringe1ml_clamp_luerlock();
 syringe_1ml_plungerclip();
 */
}




//multichannel_syringe_module();

module multichannel_syringe_module(){
eight_multichannel_assay();
translate([-100,160,0])nextgen_syringe1ml_multichannel_assy();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
multichannel_plunger_clamp();

translate([0,12,0]){
translate([-100,160,0])
//color("gainsboro")
translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
}
}





//syringe_pcb_holder_for_syringemodule();
//openmv_set();

//color("pink")
//syringe_pump_stls();
//syringe_1ml();

//rotate([0,180,0])multichannel_syringe1ml_clamp_top();
//rotate([0,-90,0])syringe_1ml();
//translate([64.5,0,0])syringe_1ml_plungerclip();

//color("gainsboro")translate([-25.75,123,-30])rotate([90,-90,0])syringeshuttle_clipbracket();
//multichannel_syringeshuttle_clipbracket();

//diagphragm_pump_case();
/*

*/
//translate([50,-4,4])igus_TW_04_12_slider_plate();

//translate([-22.85-20,1-24,2.5+91.5])rotate([90,0,90])stepper_linear_m8nut_coupler();
//color("yellow")translate([110,52,26])igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
//smaller_igus_slidermount_vertical_adjust_nema17();




module one_multichannel_assay(){
//translate([64.5,0,0])syringe_1ml_plungerclip();
translate([0,20,0]){
translate([0,70,-0.1])syringe_1ml_stack();
translate([0,70,-0.1])multichannel_syringe1ml_clamp();
//color("pink")
translate([0,70,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top_luerlock();
//color("pink")
translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
}
}









module eight_multichannel_assay(){
//translate([64.5,0,0])syringe_1ml_plungerclip();
translate([0,20,0]){
translate([0,70,-0.1])syringe_1ml_stack();
translate([0,70,-0.1])multichannel_syringe1ml_clamp();
//color("pink")
translate([0,70,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top_luerlock();
//color("pink")
translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
}
}



//multichannel_syringe1ml_clamp();
//multichannel_plunger_clamp();

/*
multichannel_syringe1ml_clamp_extrusion_connect();
syringe_1ml_stack();
rotate([0,180,0])multichannel_syringeshuttle_clipbracket();
multichannel_syringe1ml_clamp_extrusion_connect();

rotate([0,180,0])multichannel_syringe1ml_clamp_top();
rotate([0,180,0])multichannel_syringe1ml_clamp_top_luerlock();

multichannel_syringe1ml_clamp_top();
multichannel_syringe1ml_clamp_luerlock();
multichannel_syringe1ml_clamp_top_luerlock();
multichannel_syringe1ml_clamp_extrusion_connect();
*/



module onechannel_plunger_clamp(){
difference(){
translate([-183-13/2-5,170-13/2,30]){
union(){
//translate([0,2+7.25-2,2])rotate([0,0,0])cube([120,13/2+7,4]);
//translate([40,2,0])rotate([0,0,0])cube([42,13.9,15]);
translate([44,2+7.25-2,2])rotate([0,0,0])cube([20,13/2+7,4]);
translate([0+41.2,2+7.25-7-3,2])rotate([0,0,0])cube([25,10,4]);
}
}
translate([-183-13/2-5,170-13/2,30]){
translate([64.7-5-36.15,14.4-3-0.87-50+8-0.08,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
translate([64.7-5-36.15+17.5,14.4-3-0.87-50+8-0.08,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
for(i=[3]){
translate([64.7-5-36.15+17.5-50.75+(i*14),14.4-3-0.87-50+8-0.08+9.75,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=2.7/2, h=200);
}
}
}
}









module multichannel_plunger_clamp(){
difference(){
translate([-183-13/2-5,170-13/2,30]){
union(){
translate([0,2+7.25-2,2])rotate([0,0,0])cube([120,13/2+7,4]);
translate([0+41.2,2+7.25-7-3-5,2])rotate([0,0,0])#cube([25,10+5,4]);
}
}
translate([-183-13/2-5,170-13/2,30]){
translate([64.7-5-36.15,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
translate([64.7-5-36.15+17.5,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
for(i=[0:7]){
translate([64.7-5-36.15+17.5-50.75+(i*14),14.4-3-0.87-50+8-0.08+9.75,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=2.7/2, h=200);
}
}
}
}






module multichannel_syringeshuttle_clipbracket(){
translate([46.25,-57,300-4])rotate([180,0,90])difference(){
union(){
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3,10+11+10-3-15]);
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3-9.75-4,10+11+10-3]);
}
translate([65.2+0.75,14.4+7.5,155.75+20-1.5-4])cube([14-1.5,14,24]);

//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])translate([0,-3.5,0])cube([12,7,3.2]);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])translate([-12,-3.5,0])#cube([12,7,3.2]);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2-17.5,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
}
}



module syringe_1ml_plungerclip_1piece(){
difference(){
union(){
translate([0-4+10,-5+2.5,-8])cube([5,10+5,16]);
translate([0-4+10,-5+2.5,-8])#cube([14+15-10+4,10+5-1,4]);
}
translate([18+4,0,-8])#cylinder(r=3.7/2,h=40);
/*
for(i=[0:10]){
translate([-5,0,0+i])rotate([90,-0,90])cylinder(r=4/2,h=10);
translate([5,0,0+i])rotate([90,-0,90])cylinder(r=10.2/2,h=1.75);
}
*/
translate([2.5-2,40,4])rotate([90,0,0])cylinder(r=2.8/2,h=100);
}
}

module syringe_1ml_plungerclip(){
difference(){
union(){
translate([0-4,-5,-8])cube([14,10,16]);
translate([0-4,-5,-8])cube([14+15,10,4]);
}
translate([18,0,-8])cylinder(r=3.7/2,h=40);
for(i=[0:10]){
translate([-5,0,0+i])rotate([90,-0,90])cylinder(r=4/2,h=10);
translate([5,0,0+i])rotate([90,-0,90])cylinder(r=10.2/2,h=1.75);
}
translate([2.5-2,40,4])rotate([90,0,0])cylinder(r=2.8/2,h=100);
}
}


module syringe_1ml_stack(){
for(i=[0:7]){
color("")translate([-85-(i*14),105.5,44])rotate([-0,0,-90])syringe_1ml_plungerclip();
//color("white")
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
}
}

module syringe_1ml_stack_1piece_multichannel(){

difference(){union(){

/*
//clamp part
translate([-0.3-14,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6])cube([5,6.5,35-15-4]);
translate([-0.3-14-(8*14)-3.5,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6])cube([5,6.5,35-15-4]);
*/


//attach part
translate([-0.3-14-(8.6*13),0+146-2-7.4,-1])
translate([-110+54.5+6-14-3-1,-81.5+1.5+40+6.6+3.5-14.5+2.3,16+15+6])cube([5+3+1,6.5-1.5,35-15-4]);
translate([-85-(9*14),105.5,44])
translate([0-4+10.5+10+1,-5+2.5-22.5-4,-8])#cube([14+15-10-10-1,10+5+4,4]);


for(i=[0:7]){
color("")translate([-85-(i*14),105.5,44])rotate([-0,0,-90])syringe_1ml_plungerclip_1piece();
//translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
//translate([0-42.5-(i*14),-4+230-80-2,0])iverntech_pump_slider_plate_connect_multichannel();
}
}

translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);

for(i=[0:7]){
//translate([18-(i*14),0,-8])cylinder(r=3.7/2,h=40);

/*
translate([-85-(i*14),105.5,44])rotate([-0,0,-90])
for(i=[0:10]){
translate([-5,0,0+i])rotate([90,-0,90])cylinder(r=4/2,h=10);
translate([5,0,0+i])rotate([90,-0,90])cylinder(r=10.2/2,h=1.75);
}
*/

translate([-14,0,0]){
translate([-77.5-(i*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(i*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);

translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
}
}
/*

rotate([0,0,0])difference(){
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
translate([0,70,-0.1])multichannel_syringe1ml_clamp();
translate([-183-13/2-5,170-13/2+70,30]){
translate([0,2,10/2+10-20])rotate([0,0,0])cube([70,15,15/2+2+30]);
translate([0+102,2,10/2+10-20])rotate([0,0,0])cube([70,15,15/2+2+30]);
}
}
*/
//translate([0,70,-0.1+0])multichannel_syringe1ml_clamp_top();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp();
//translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_luerlock();

module multichannel_syringe1ml_clamp_extrusion_connect(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
//translate([0,2,0])rotate([0,0,0])cube([120,13,15]);
translate([69,2-15,-9.5])rotate([0,0,0])cube([18+8,23+20,9.48]);
}
}
translate([-120,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+15,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5-4,220-60+23+7,0])cylinder(r=4.7/2,h=100);
translate([-120+7.5-4,220-60+23+7,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,0])cylinder(r=4.7/2,h=100);
}
}




module one_syringe1ml_clamp_top_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
//translate([0,2+7.25+60-1,10/2+10])rotate([0,0,0])cube([120,13/2+1,15/2+2]);
translate([40,2+7.25+60-1,10/2+10])rotate([0,0,0])cube([42,13/2+1,15/2+2]);
}
}
for(i=[3]){
translate([-183+(i*14),170+60,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50+60,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175+60.6,0])#cylinder(r=3.7/2,h=150);
translate([-77.5-((i+2)*14)-0.5,175+60.6,0])#cylinder(r=3.7/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=3.7/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=3.7/2,h=150);
}
}




module multichannel_syringe1ml_clamp_top_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([0,2+7.25+60-1,10/2+10])rotate([0,0,0])cube([120,13/2+1,15/2+2]);
}
}
for(i=[0:7]){
translate([-183+(i*14),170+60,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50+60,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175+60.6,0])cylinder(r=3.7/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=3.7/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=3.7/2,h=150);
}
}




module multichannel_syringe1ml_clamp_top(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([0,2+7.25,10/2+10])rotate([0,0,0])cube([120,13/2,15/2+2]);
}
}
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175.6,0])cylinder(r=3.7/2,h=150);
}else{
translate([-77.5-(i*14),175.6,0])cylinder(r=3.7/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6,0])cylinder(r=3.7/2,h=150);
}
}



module multichannel_syringe1ml_clamp_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2+60,30]){
translate([0,2+6.9,0])rotate([0,0,0])cube([120,13.9-7,15]);
translate([69,2-15-1,0])rotate([0,0,0])cube([18+8,23+20+1,5]);
}
}
translate([-120,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23+60,0])cylinder(r=3.7/2,h=100);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);

/*
if(i>0){
translate([-77.5-(i*14)-0.5,175.6+60,0])#cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=2.8/2,h=150);
}
*/
}
//translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=2.8/2,h=150);
}
}

module one_front_syringe1ml_clamp_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2+60,30]){
//translate([0,2+6.9,0])rotate([0,0,0])cube([120,13.9-7,15]);
translate([40,2+6.9,0])rotate([0,0,0])cube([42,13.9-7,15]);
translate([69,2-15-1,0])rotate([0,0,0])cube([18+8,23+20+1,5]);
}
}
translate([-120,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23+60,0])cylinder(r=3.7/2,h=100);
for(i=[3]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);

/*
if(i>0){
translate([-77.5-(i*14)-0.5,175.6+60,0])#cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=2.8/2,h=150);
}
*/
}
//translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=2.8/2,h=150);
}
}










module one_syringe1ml_clamp_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2+60,30]){
translate([0,2+6.9,0])rotate([0,0,0])cube([120,13.9-7,15]);
translate([69,2-15-1,0])rotate([0,0,0])cube([18+8,23+20+1,5]);
}
}
translate([-120,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23+60,0])cylinder(r=3.7/2,h=100);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);

/*
if(i>0){
translate([-77.5-(i*14)-0.5,175.6+60,0])#cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=2.8/2,h=150);
}
*/
}
//translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=2.8/2,h=150);
}
}

















module one_channel_syringe1ml_clamp(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
//#translate([0,2,0])rotate([0,0,0])cube([120,13.9,15]);
translate([40,2,0])rotate([0,0,0])cube([42,13.9,15]);
translate([69,2-15,0])rotate([0,0,0])cube([18+8,23+20,5]);
}
}
translate([-120,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=3.7/2,h=100);
translate([-120,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+15,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+7.5,220-60+23,32])cylinder(r=9.7/2,h=10);
for(i=[3]){
translate([-183+(i*14),170,44])rotate([0,90,90])#syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175.6,0])#cylinder(r=2.8/2,h=150);
translate([-77.5-((i+2)*14)-0.5,175.6,0])#cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6,0])cylinder(r=2.8/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6,0])cylinder(r=2.8/2,h=150);
}
}















module multichannel_syringe1ml_clamp(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([0,2,0])rotate([0,0,0])cube([120,13.9,15]);
translate([69,2-15,0])rotate([0,0,0])cube([18+8,23+20,5]);
}
}
translate([-120,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=3.7/2,h=100);
translate([-120,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+15,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+7.5,220-60+23,32])cylinder(r=9.7/2,h=10);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175.6,0])cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6,0])cylinder(r=2.8/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6,0])cylinder(r=2.8/2,h=150);
}
}








module syringe_1ml(){

//translate([0,0,4])rotate([0,0,45])cylinder(r=10,h=15,$fn=4);
//translate([0,0,74])rotate([0,0,45])cylinder(r=10,h=15,$fn=4);
union(){
color("lightblue")translate([0,0,100])cylinder(r=3/2,h=30);
color("white")cylinder(r=9.5/2,h=92);
color("white")cylinder(r2=5.5/2,r1=9.5/2,h=92+7);
color("white")translate([0,0,-12-(71-12)])cylinder(r=4/2,h=92);
color("white")translate([0,0,-12-(71-12)])cylinder(r=(10-0.2)/2,h=1.5);
color("white")translate([0,0,0])cylinder(r=(10.5)/2,h=10.5);
color("white")translate([-12.5,-13/2-1,0])cube([25,13+2,2.4]);

/*
//luerlock
color("white")translate([0,0,98])cylinder(r=12/2,h=3);
color("white")translate([0,0,98+3])cylinder(r=8/2,h=3);

//tubing
color("lightblue")translate([0,0,98+3+3])cylinder(r=3.175/2, h=200);
//sphere(r=3.175/2,$fn=30);
*/
}
}



module syringe_pump_stls(){
//nextgen_syringe10ml_assy();
translate([0,0,-20]){
syringe_pcb_holder_for_syringemodule();
translate([40,68,0])syringe10mlmount_plungerfix_assy();
translate([-26.5,130,104.45])rotate([90,90,0])syringe10ml_clipmount();
color("yellow")translate([110,52,26])igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
translate([50,-4,4])igus_TW_04_12_slider_plate();
translate([-25.75+30-17,123,-34.65])rotate([90,-90,0])syringeshuttle_clipbracket();
translate([-22.85-20,1-24,2.5+91.5])rotate([90,0,90])stepper_linear_m8nut_coupler();
//translate([-50,0,-13])valve_assy();
//start valve_assy
translate([-38,50,23.8])rotate([0,0,90])valveconnectpart();
translate([36,295.5-130+10,18-2.5])rotate([90,0,0])valvemountplate_screwattach_smallersyringe_vertical_attach();
translate([10,165.5-32,18+74])rotate([0,90,0])valvemountplate_screwattach_smallersyringe();
translate([52,190-30,49.5])rotate([-90,90,90])smallsyringe_valvesupportmodule_plate();
//end valve_assy()

}
}


module nextgen_syringe1ml_multichannel_assy(){
//board mount here
//color("pink")syringe_pcb_holder_for_syringemodule();
/*
*/
//color("gainsboro")translate([0,98,0])syringe10mlmount_plungerfix_assy();
/*
color(""){
//here is the luer lock
color("white")translate([-70+8+27-6,178-3,30-5+10])rotate([90,0,0])cylinder(r=8/2,h=3);
color("white")translate([-70+8+27-6,178,30-5+10])rotate([90,0,0])cylinder(r=12/2,h=3);
//end luer lock
//tubing from valve to syringe
color("lightblue")
translate([-70+8+27-6,178+4,30-5+10])
{
for(i=[0:44]){translate([0,i/8-5,0])sphere(r=3.175/2,$fn=30);}
for(i=[0:232]){translate([-i/30,i/8+12/8,i/7.75])sphere(r=3.175/2,$fn=30);}
for(i=[0:80]){translate([-7.75,i/8+12/8+232/8,232/8+1])sphere(r=3.175/2,$fn=30);}
}
}
*/
//end tubing
/*
color("white")translate([-70+8+27-6,178-3+7,30-5+10])translate([-18,50,30])rotate([90,0,90])cylinder(r=8/2,h=3);
color("white")translate([-70+8+27-6-3,178+4,30-5+10])translate([-18,50,30])rotate([90,0,90])cylinder(r=12/2,h=3);
color("white")translate([-70+8+27+4,178-3+7-8,30-5+10])translate([-18,50,30])rotate([90,0,0])cylinder(r=8/2,h=3);
color("white")translate([-70+8+27+4,178+4-11,30-5+10])translate([-18,50,30])rotate([90,0,0])cylinder(r=12/2,h=3);
color("white")translate([-70+8+27+4,178-3+7-8+20,30-5+10])translate([-18,50,30])rotate([90,0,0])cylinder(r=8/2,h=3);
color("white")translate([-70+8+27+4,178+4-11+23,30-5+10])translate([-18,50,30])rotate([90,0,0])cylinder(r=12/2,h=3);
*/
color(""){
//valve 1 direction tubing
/*
color("lightblue")translate([-70+8+27-6,178+4,30-5+10])
{
for(i=[0:200]){translate([-18-i/2,50,30])sphere(r=3.175/2,$fn=30);}
}
*/
//end valve 1 direction tubing
//valve 2 direction tubing
/*
color("lightblue")translate([-70+8+27-6,178+4,30-5+10])
{
for(i=[0:800]){translate([-7.75,i/8+12/8+232/8+30,232/8+1])sphere(r=3.175/2,$fn=30);}
}
*/

//end valve 2 direction tubing
}

//translate([-41,-20+100,35])color("gainsboro")rotate([0,90,90])syringe_10ml();
//color("gainsboro")translate([-56.5,200,104.45])rotate([90,90,0])syringe10ml_clipmount();

color("silver")translate([-70+8,-80+40-50,30-5])rotate([-90,0,0])cylinder(r=8.7/2,h=250);
color("silver")translate([-70+8,-80,30-5])rotate([-90,0,0])cylinder(r=16/2,h=18);
translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
color("silver")translate([-34+5-9-3,20-3.5,3])igus_TW_04_12_slider();
igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
translate([-25-6.5,320,-4.6])rotate([90,0,0])tslot20(400);

translate([0,12,0]){
//sbg = 0.9;color([sbg,sbg,sbg])
//color("gainsboro")
translate([0,-4,0])igus_TW_04_12_slider_plate();
//color("gainsboro")translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
//color("gainsboro")
translate([-22.85,1,2.5])stepper_linear_m8nut_coupler();
/*
//cbg = 0.55;color([cbg,cbg,cbg])
//nbg = 0.4;color([nbg,nbg,nbg])
*/
}
//translate([-50,0,-13])valve_assy();
}








































