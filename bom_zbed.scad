include <modparts.scad>
include <bom_multichannel.scad>
use<writescad/write.scad>

//translate([0,0,120])zbed_multichannel_setup(100);

//translate([0,-20,30])rotate([0,0,0])import("bowden_extruder/Duct.stl");
//pololu_screw_nobacklash_cap();
//leftside_midtopleft_tip_mtp_aligner_yend(144);
// translate([383.5/2-290/2+83,103.5-27-25+230-5,5])color("lightblue")

//plate_topright_aligner();
//mirror([1,0,0])leftside_midtopleft_tip_mtp_aligner_yend(144);
//leftside_midleftright_tip_mtp_aligner(144);
//mirror([1,0,0])midbotright_tip_mtp_aligner(144);
//midtopright_tip_mtp_aligner_yend(144);
//plate_btomright_aligner(144);
//plate_btomleft_aligner(144);



//mirror([1,0,0])rotate([0,0,180])leftside_midtopleft_tip_mtp_aligner_yend(144);
//zbed_assy(100);
/*
*/
//extrusion_riser();

//slidedeck_adjust_wheel();

//plate_aligner_on_zbed();
//plate_topright_aligner(144);


/*
plate_btomright_aligner(144);
plate_btomleft_aligner(144);
plate_topright_aligner(144);
plate_topleft_aligner(144);
*/


//rotate([-90,-90,0])z_encoder_clamp_wiper();

//translate([26,0,0])wiper_tip_m5(6);
/*
rotate([0,180,0])zbedslot_516_smz_zbed();
bed_leveler_better_lm8uu_for_metalversion();
rotate([0,90,0])lm8uu_smz_glider();
 translate([0+30-60+61,0,214.5+shim+modshim+83-85+83+2.5])rotate([180,0,180])color("gainsboro")lm8uu_smz_glider();
 }
 translate([25,7.5,17-1])rotate([0,-90,0])bed_leveler_better_lm8uu_for_metalversion();
 translate([25,7.5,16.5+218+35.5-1])rotate([0,-90,0])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
 translate([-230+2+486-10-400-46,75.5+1,135+28-33.5])rotate([0,90,0])color("gainsboro")zbedslot_516_smz_zbed();
 color("gainsboro")translate([25,130+120,118+10-23])rotate([0,-90,0])z_encoder_clamp_wiper();
*/

/*
mirror([1,0,0])tip_mtp_aligner(144);
tip_mtp_aligner(144);
mirror([1,0,0])tip_mtp_aligner_yend(144);
tip_mtp_aligner_yend(144);
mirror([1,0,0])tip_mtp_aligner(144);
*/


//zbed_fix();
//zbed_metal_version();
/*
projection(cut = false){
rotate([0,90,0])right_zbed_connector_bar_metal();
}
*/
// gantry();
// zbed_assy(z);

/*
 translate([37.5,2,133+20])multichannel_pipette_remove_assay();
 zencoder_assy();
 translate([570-2,0,0])zencoder_assy();
 zbed_assy(z);
 translate([20,120,130])rotate([0,90,0])tslot20(400);
 translate([20,120+101,130])rotate([0,90,0])tslot20(400);
zbed_multichannel_setup();
*/


module extrusion_riser(){

difference(){
cylinder(r=10.5/2,h=11.5);
translate([0,0,-1-50])cylinder(r=4/2,h=120);
}
}



module plate_aligner_on_zbed(){
// translate([383.5/2-290/2+83-20+220.5,103.5-27-25-11+200,0])color("lightbrown")rotate([0,0,180]) plate_topright_aligner(144);

 translate([383.5/2-290/2+83-20,103.5-27-25-11,0])color("")plate_topleft_aligner(144);
 translate([383.5/2-290/2+83-20+350,103.5-27-25-11,0])color("")plate_btomright_aligner(144);
 translate([383.5/2-290/2+83-20,103.5-27-25-11,0])color("")plate_btomleft_aligner(144);
 translate([383.5/2-290/2+83-20+220.5,103.5-27-25-11+200,0])color("")rotate([0,0,180]) plate_topright_aligner(144);
/*
*/
}

module plate_aligner_on_zbed_wider(){
// translate([383.5/2-290/2+83-20+220.5,103.5-27-25-11+200,0])color("lightbrown")rotate([0,0,180]) plate_topright_aligner(144);

 translate([383.5/2-290/2+83-20,103.5-27-25-11,0])color("")plate_topleft_aligner(144);
 translate([383.5/2-290/2+83-20,103.5-27-25-11-97,0])color("")plate_btomleft_aligner_wider(144);

 translate([383.5/2-290/2+83-20+350+135+42+5,103.5-27-25-11-94,0])color("")plate_btomright_aligner_wider(144);
 translate([383.5/2-290/2+83-20+220.5+135+42+5,103.5-27-25-11+200,0])color("")rotate([0,0,180]) plate_topright_aligner(144);
/*
*/
}









module leftside_plate_holder(){
translate([-202,0,0]){
 //translate([383.5/2-290/2+83-20+350,103.5-27-25-11,0])color("")microplate_corner(144+48);
translate([383.5/2-290/2+83-20+350-39,103.5-27-25-11+150-9,0])color("")rotate([0,0,90])microplate_corner_4sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0,103.5-27-25-11-45+8-0.5,0])color("")rotate([0,0,-90])microplate_corner_2sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5,103.5-27-25-11-45+8-0.5+130+152-0,0])color("")rotate([0,0,-90-90])microplate_corner(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+50+180+10-140,-40+103.5-27-25-11-45+8-0.5+130+152-0+100-62.5,0])color("")rotate([0,0,-90-90-0])microplate_corner_2sides(144+48);
 //translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+50+180+10-0,103.5-27-25-11-45+8-0.5+130+152-0+100-62.5,0])color("")rotate([0,0,-90-90-90])microplate_corner(144+48);
}
/*
*/
 translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_midleftright_tip_mtp_aligner(144);
 translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_plate_tip_mtp_left(144);
 translate([383.5/2-290/2+83,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])leftside_midtopleft_tip_mtp_aligner_yend(144);
 translate([383.5/2-290/2+83-101,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])leftside_fartopleft_tip_mtp_aligner_yend(144);
/*
*/
}


module plate_holder_corner(){
translate([-202,0,0]){
translate([383.5/2-290/2+83-20+350-39,103.5-27-25-11+150-9,0])color("")rotate([0,0,90])microplate_corner_4sides(144+48);
}
}

module leftside_plate_holder_wider(){
translate([-202,0,0]){
 translate([383.5/2-290/2+83-20+350,103.5-27-25-11,0])color("")microplate_corner(144+48);
translate([383.5/2-290/2+83-20+350-39,103.5-27-25-11+150-9,0])color("")rotate([0,0,90])microplate_corner_4sides(144+48);


 translate([383.5/2-290/2+83-20+350-100-140+0,103.5-27-25-11-45+8-0.5,0])color("")rotate([0,0,-90])microplate_corner_2sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5,103.5-27-25-11-45+8-0.5+130+152-0,0])color("")rotate([0,0,-90-90])microplate_corner(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+50+180+10-140,-40+103.5-27-25-11-45+8-0.5+130+152-0+100-62.5,0])color("")rotate([0,0,-90-90-0])microplate_corner_2sides(144+48);
 //translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+50+180+10-0,103.5-27-25-11-45+8-0.5+130+152-0+100-62.5,0])color("")rotate([0,0,-90-90-90])microplate_corner(144+48);
}
/*
*/
 translate([383.5/2-290/2+83,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])leftside_midtopleft_tip_mtp_aligner_yend(144);


 translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_midleftright_tip_mtp_aligner(144);
 translate([383.5/2-290/2+83,103.5-27-25,5])color("")leftside_plate_tip_mtp_left(144);
 translate([383.5/2-290/2+83-101,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])leftside_fartopleft_tip_mtp_aligner_yend(144);
/*
*/
}







module rightside_plate_holder(){
 translate([383.5/2-290/2+83-20+350,103.5-27-25-11,0])color("")microplate_corner_4sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0,103.5-27-25-11-45+8-0.5,0])color("")rotate([0,0,-90])microplate_corner_4sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5,103.5-27-25-11-45+8-0.5+130+152-0,0])color("")rotate([0,0,-90-90])microplate_corner_2sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+100,103.5-27-25-11-45+8-0.5+130+152-0,0])color("")rotate([0,0,-90-90])microplate_corner_2sides(144+48);
 

 //mid bottom right
 translate([383.5/2-290/2+83+177.5,103.5-27-25,5])color("") mirror([1,0,0])midbotright_tip_mtp_aligner(144);
 //far bottom right
 translate([383.5/2-290/2+83+177.5+24,103.5-27+65-90,5])color("") mirror([0,0,0])farbotright_tip_mtp_aligner(144);
//mid top right
 translate([383.5/2-290/2+83+177.5,103.5-27-25+230-5,5])color("")mirror([0,0,0])rotate([0,0,180])midtopright_tip_mtp_aligner_yend(144);
//far top right
 translate([383.5/2-290/2+83+177.5+28,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])fartopright_tip_mtp_aligner_yend(144);



translate([102,0,0]){


 translate([383.5/2-290/2+83-20+350,103.5-27-25-11,0])color("")microplate_corner_4sides(144+48);
 translate([383.5/2-290/2+83-20+350-100-140+0-37-0.5+100,103.5-27-25-11-45+8-0.5+130+152-0,0])color("")rotate([0,0,-90-90])microplate_corner_2sides(144+48);
 

 //mid bottom right
 //translate([383.5/2-290/2+83+177.5,103.5-27-25,5])color("") mirror([1,0,0])midbotright_tip_mtp_aligner(144);
 //far bottom right
 translate([383.5/2-290/2+83+177.5+24,103.5-27+65-90,5])color("") mirror([0,0,0])farbotright_tip_mtp_aligner(144);
//mid top right
 //translate([383.5/2-290/2+83+177.5,103.5-27-25+230-5,5])color("")mirror([0,0,0])rotate([0,0,180])midtopright_tip_mtp_aligner_yend(144);
//far top right
 translate([383.5/2-290/2+83+177.5+28,103.5-27-25+230-5,5])color("")mirror([1,0,0])rotate([0,0,180])fartopright_tip_mtp_aligner_yend(144);


}

}















module plate_topleft_aligner(z){
translate([28+5.5-101,64-35.5+7-6+190,z-11])mirror([0,1,0])
difference(){ 
 union(){
 translate([0,1,0])cube([10,55,3]);
 translate([0,1+22,0])cube([10,11,3+5]);
 translate([-4.8+20,1,0])cube([10,11,3+5]);
 translate([0,1,0])cube([25,11,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+45,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+45,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}



module plate_btomleft_aligner(z){
translate([28+5.5-101,64-35.5+7-6,z-11])
difference(){ 
 union(){
 translate([0,1,0])cube([10,55,3]);
 translate([0,1+22+10,0])cube([10,11,3+5]);
 translate([-4.8+20,1-3,0])cube([10,11,3+5]);
 translate([0,1-3,0])cube([25,11,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+45,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+45,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15+10,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}

module plate_btomleft_aligner_wider(z){
translate([28+5.5-101,64-35.5+7-6,z-11])
difference(){ 
 union(){
 translate([0,1,0])cube([10,55,3]);
 translate([0,1+22+10,0])cube([10,11,3+5]);
 translate([-4.8+20,1-3,0])cube([10,11,3+5]);
 translate([0,1-3,0])cube([25,11,3]);
 translate([5.3,5+15,0])cylinder(r=8/2,h=6);
 translate([5.3,5+45,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5+15,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+45,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15+10,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}




module plate_btomright_aligner_wider(z){
translate([28+5.5-101+5.5,64-35.5+7-6,z-11])
mirror([1,0,0])difference(){ 
 union(){
 translate([0,1,0])cube([10,58,3]);
 translate([0,1+22+13,0])cube([10,11,3+5]);
 translate([-4.8+20,1-3,0])cube([10,11,3+5]);
 translate([0,1-3,0])cube([25,11,3]);
 translate([5.3,5+15,0])cylinder(r=8/2,h=6);
 translate([5.3,5+48,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5+15,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+48,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15+13,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}








module plate_btomright_aligner(z){
translate([28+5.5-101+5.5,64-35.5+7-6,z-11])
mirror([1,0,0])difference(){ 
 union(){
 translate([0,1,0])cube([10,58,3]);
 translate([0,1+22+13,0])cube([10,11,3+5]);
 translate([-4.8+20,1-3,0])cube([10,11,3+5]);
 translate([0,1-3,0])cube([25,11,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+48,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+48,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15+13,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}










module plate_topright_aligner(z){
translate([28+5.5-101,64-35.5+7-6-58,z-11])
difference(){ 
 union(){
 translate([0,1-5,0])cube([10,60,3]);
 translate([0,1+22+11,0])cube([10,11,3+5]);
 translate([-4.8+20,1+10,0])cube([10,11,3+5]);
 translate([0,1+10,0])cube([25,11,3]);
 translate([5.3,5-3.1,0])cylinder(r=8/2,h=6);
 translate([5.3,5+45,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5-3.1,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+45,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15+11,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}



module microplate_corner(z){
translate([28+5.5-101+5.5-23,64-35.5+7-6+20-3,z-11-3-7+1+3])
mirror([1,0,0])difference(){ 
 union(){
 translate([0,1,0-4])cube([10+0.5,20,3+7+3]);
 translate([0,1,0-4])cube([10+3,20,3+7+3-3]);
 translate([0,1,0-4])cube([20,10.5,3+7+3]);
 translate([0,1,0-4])cube([20,10.5+3,3+7+3-3]);
 }
 bg = -4;
 translate([0+8,1+bg-5,0-4-1])rotate([0,0,45])cube([10+0.5,30,3+7+3+5]);
 translate([15,5,-27+2.5])cylinder(r=3.7/2,h=30);
 translate([15,5,-27+34-1.5])cylinder(r=9/2,h=13.5);
 translate([5-1,15,-27+2.5])cylinder(r=3.7/2,h=30);
 translate([5-1,15,-27+34-1.5])cylinder(r=9/2,h=13.5);
}
}

module microplate_corner_2sides(z){
microplate_corner(z);
translate([-140-0.4,-38.5,0])rotate([0,0,-90])microplate_corner(z);
}

module microplate_corner_4sides(z){
microplate_corner_2sides(z);
//translate([0,101,0])mirror([0,1,0])microplate_corner_2sides(z);
translate([-179,102,0])rotate([0,0,-180])microplate_corner_2sides(z);
}







module leftside_plate_tip_mtp_left(z){
translate([28+5.5-101,64-35.5+7,z-11])
difference(){ 
 union(){
 translate([5.3-2.8+4.5,5+10+1,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-10+24.5,5+10+1-11,0])cylinder(r=9/2,h=22);
 translate([-4.8+5,1,0])cube([10,55,3]);
 translate([-4.8,1,0])cube([25,11,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43,0])cylinder(r=8/2,h=6);
 }
 translate([5.3-2.8+4.5,5+10+1,0])cylinder(r=2.7/2,h=25);
 translate([5.3-2.8-10+24.5,5+10+1-11,0])cylinder(r=2.7/2,h=25);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43,-1])cylinder(r=3.7/2,h=10);
}
}

module leftside_midleftright_tip_mtp_aligner(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,55,3]);
 translate([5.3-2.8+3,5+10+0,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-10+2,5+10+1-11,0])cylinder(r=9/2,h=22);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43,0])cylinder(r=8/2,h=6);
 translate([0,8-3,0])cube([25+3,10,3]);
 translate([10,8-3,0])cube([15+3,10,8]);
 translate([10-33,8-3,0])cube([15+8,10,8]);
 //translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3-2.8+3,5+10+0,0])cylinder(r=2.7/2,h=22);
 translate([5.3-2.8-10+2,5+10+1-11,0])cylinder(r=2.7/2,h=22);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3+2-40,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
 translate([5.3+13+3+2,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}


module leftside_fartopleft_tip_mtp_aligner_yend(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 translate([5.3-2.8+3+1.5,5+10+2.5+1-1,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-11+4+22.5,5+10+2.5-10,0])cylinder(r=9/2,h=22);
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+48,0])cylinder(r=8/2,h=6);
 translate([0,8,0])cube([25,10,3]);
 }
 translate([5.3-2.8+3+1.5,5+10+2.5+1-1,0])cylinder(r=2.7/2,h=22);
 translate([5.3-2.8-11+4+22.5,5+10+2.5-10,0])cylinder(r=2.7/2,h=22);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+48,-30])cylinder(r=3.7/2,h=60);
}
}





module microwell_plate_rising_surface_washmount(z){
translate([28+5.5,64-35.5+7-84,z-11])
color("gainsboro")difference(){ 
 union(){
 translate([10-3-14,8-5-8,38])cube([15+8+24+44,30,6]);
 //translate([10-3-14,8-5-5+7.5,38])cube([15+8+24,4,6+4]);
}
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28+27,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28+27+13,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
}
}






module microwell_plate_riser_rising_surface(z){
translate([28+5.5,64-35.5+7-84,z-11])
color("gainsboro")difference(){ 
 union(){
 translate([10-3-14,8-5-8,38])cube([15+8+24,30,6]);
 translate([10-3-14,8-5-5+7.5,38])cube([15+8+24,4,6+4]);
}
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
}
}













module microwell_plate_riser(z){


/*
color("white")translate([28+5.5,64-35.5+7-84,z-11]){
 difference(){union(){
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0])cylinder(r=3.7/2,h=42);
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0+41.01])cylinder(r=8.7/2,h=3);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0])cylinder(r=3.7/2,h=42);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0+41.01])cylinder(r=8.7/2,h=3);
 }
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0+41.2])cylinder(r=5/2,h=3,$fn=6);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0+41.2])cylinder(r=5/2,h=3,$fn=6);
 }
}
*/

color("gainsboro")translate([28+5.5,64-35.5+7-84,z-11+3])
difference(){ 
 union(){
 //translate([10-3-14,8-5-8,38])cube([15+8+24,30,6]);
 //translate([10-3-14,8-5-5+7.5,38])cube([15+8+24,4,6+4]);

 translate([10-3,8-5,0])cube([15+8,10,3]);
 translate([10-10-3,8-5,0])cube([11,10,8]);
 translate([10-10-3+32,8-5,0])cube([13,10,8]);
 translate([5.3-2.8-11+2+10+30,5+10+2.5-10,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-11+4+10-2,5+10+2.5-10,0])cylinder(r=9/2,h=22);

 /*
 translate([5.3-2.8+3,5+10+2.5+1,0])cylinder(r=9/2,h=22);
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+48,0])cylinder(r=8/2,h=6);
 translate([0,8-5,0])cube([25+5,10,3]);
 translate([-20,2,0])cube([30,10,3]);
 */
 }

 //translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 //translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,28])cylinder(r=8.7/2,h=122);
 translate([5.3-2.8-11+4+20-10-2,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);
 translate([5.3-2.8-11+4+20-10+28,5+10+2.5-10,0])cylinder(r=2.7/2,h=122);

 for(i=[-4:2]){
 translate([5.3-2.8-11+4+20-10+9.25+i,5+10+2.5-10+0.6,0])cylinder(r=2.7/2,h=22);
 translate([5.3-2.8-11+4+20-10+9.25+10+i,5+10+2.5-10+0.6,0])cylinder(r=2.7/2,h=22);
 }
 translate([5.3+13+3+2-22+37,5+28-5,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
 translate([5.3+13+3+2-22-1,5+28-5,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);

 /* 
 translate([5.3-2.8+3,5+10+2.5+1,0])cylinder(r=2.7/2,h=22);
 translate([5.3,5,-1])cylinder(r=4.7/2,h=10);
 translate([5.3,5+48,-1])cylinder(r=4.7/2,h=10);
 */
}
}

module leftside_midtopleft_tip_mtp_aligner_yend(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 translate([5.3-2.8+3,5+10+2.5+1,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-11+4,5+10+2.5-10,0])cylinder(r=9/2,h=22);
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+48,0])cylinder(r=8/2,h=6);
 translate([0,8-5,0])cube([25+5,10,3]);
 translate([10,8-5,0])cube([15+5,10,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3-2.8+3,5+10+2.5+1,0])cylinder(r=2.7/2,h=22);
 translate([5.3-2.8-11+4,5+10+2.5-10,0])cylinder(r=2.7/2,h=22);
 translate([5.3,5,-1])cylinder(r=4.7/2,h=10);
 translate([5.3,5+48,-1])cylinder(r=4.7/2,h=10);
 translate([5.3+13+3+2,5+28-5,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}












module tip_mtp_aligner(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43,0])cylinder(r=8/2,h=6);
 translate([0,8,0])cube([25,10,3]);
 translate([10,8,0])cube([15,10,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}






module midbotright_tip_mtp_aligner(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3-2.8,5+10+1,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-10,5+10+1-11,0])cylinder(r=9/2,h=22);
 translate([5.3,5+43,0])cylinder(r=8/2,h=6);
 translate([0,8-3,0])cube([25+3,10,3]);
 translate([10,8-3,0])cube([15+3,10,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3-2.8-10,5+10+1-11,0])cylinder(r=2.8/2,h=26);
 translate([5.3-2.8,5+10+1,0])cylinder(r=2.8/2,h=26);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3+2,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}



module farbotright_tip_mtp_aligner(z){
translate([28+6,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,55,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3-2.8+3,5+10+0,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-10+2,5+10+1-11,0])cylinder(r=9/2,h=22);
 translate([5.3,5+43,0])cylinder(r=8/2,h=6);
 //translate([0,8,0])cube([25,10,3]);
 //translate([10,8,0])cube([15,10,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3-2.8-10+2,5+10+1-11,0])cylinder(r=2.8/2,h=26);
 translate([5.3-2.8+3,5+10+1-1,0])cylinder(r=2.8/2,h=26);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}




















module tip_mtp_aligner_yend(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,60,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43+5,0])cylinder(r=8/2,h=6);
 translate([0,8,0])cube([25,8,3]);
 translate([10,8,0])cube([15,8,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43+5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}


module midtopright_tip_mtp_aligner_yend(z){
translate([28+5.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,60,3]);
 translate([5.3-2.8,5+10+2.5,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-11,5+10+2.5-10,0])cylinder(r=9/2,h=22);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43+5,0])cylinder(r=8/2,h=6);
 translate([0,8-3,0])cube([25+3,10,3]);
 translate([10,8-3,0])cube([15+3,10,8]);
 translate([-20,2,0])cube([30,10,3]);
 }
 translate([5.3-2.8-11,5+10+2.5-10,0])cylinder(r=2.8/2,h=26);
 translate([5.3-2.8,5+10+2.5,0])cylinder(r=2.8/2,h=26);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43+5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3+2,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}
}

module fartopright_tip_mtp_aligner_yend(z){
translate([28+5.5-3.5,64-35.5+7,z-11])
difference(){ 
 union(){
 cube([10,60,3]);
 translate([5.3-2.8+3,5+10+2.5+1,0])cylinder(r=9/2,h=22);
 translate([5.3-2.8-11+4,5+10+2.5-10,0])cylinder(r=9/2,h=22);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+43+5,0])cylinder(r=8/2,h=6);
 //translate([0,8,0])cube([25,8,3]);
 //translate([10,8,0])cube([15,8,8]);
 translate([-20,2,0])cube([30,10,3]);


 }
 translate([5.3-2.8-11+4,5+10+2.5-10,0])cylinder(r=2.8/2,h=26);
 translate([5.3-2.8+3,5+10+2+2.5-1,0])cylinder(r=2.8/2,h=26);
 translate([5.3,5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3,5+43+5,-1])cylinder(r=3.7/2,h=10);
 translate([5.3+13+3,5+28,4])rotate([90,0,0])cylinder(r=2.7/2,h=30);
}

 /*
 //for show
 translate([28+5.5-3.5,64-35.5+7,z-11]){
 translate([5.3-2.8-11+4,5+10+2.5-10,0])color("silver")cylinder(r=2.8/2,h=40);
 translate([5.3-2.8-11+4,5+10+2.5-10,28.5])color("silver")cylinder(r=7.5/2,h=4.5,$fn=6);
 
 translate([5.3-2.8-11+4,5+10+2.5-10,43])
  difference(){color("silver")cylinder(r=8/2,h=3);
  cylinder(r=5/2,h=3.1,$fn=6);
 }
 translate([5.3-2.8+3,5+10+2+2.5-1,0])color("silver")cylinder(r=2.8/2,h=44);
 translate([5.3-2.8+3,5+10+2+2.5-1,28.5])color("silver")cylinder(r=7.5/2,h=4.5,$fn=6);
 translate([5.3-2.8+3,5+10+2+2.5-1,0+43])difference(){
  color("silver")cylinder(r=8/2,h=3);
  cylinder(r=5/2,h=3.1,$fn=6);
  }
 }
 */
}








module zbed_multichannel_setup(){
/*
 translate([383.5/2-83/2-2.3,103.5-27,0])tipbox_model(144);

 //translate([383.5/2-85/2-90-10,103.5-27-6,48])microwellplate_model(144);
 translate([383.5/2-85/2-90-10+70,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 //translate([383.5/2-85/2+88+14,103.5-27-6,48])microwellplate_model(144);
 translate([383.5/2-85/2+172,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92-130,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
*/
//projection(cut = false){
 difference(){union(){
 color("lightblue")translate([0,0,-10-10])multichannel_laser_zbed(144);
 color("lightblue")translate([-10,103.5-27-25,0])plateholder(144);
 //translate([383.5/2-290/2,103.5-27-25,1])ruler_plateholder(144);

color("gainsboro"){
rightside_plate_holder();
leftside_plate_holder();
plate_aligner_on_zbed();
}
 }

/*
  translate([0,6,0])for(i=[0:3]){
  b = 5;
  if (i==1){
  translate([25.5+22+20,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  } else {
  translate([25.5+22+20,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  }
  }


  translate([0,10,0]){
  translate([25.5+22+20+101+202-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:8]){  
  translate([25.5+22+i*50,75+3*(53.8),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+i*50,75+1*(60),100-50])cylinder(r=3/2,h=200);
  }
  for(i=[0:5]){
  translate([25.5+22,75+i*(45),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+(23*15),75+i*48,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:6]){
  translate([25.5+22+i*(50),75+8,100])cylinder(r=3/2,h=200);
  //translate([25.5+22+i*(23*2),75+(7*24),100])cylinder(r=3/2,h=200);
  }
*/

 }
}





module zbed_multichannel_setup_wider(){
/*  
  translate([129.75+(94*4)-1.5-103-332-70+454-6,276.5-4+25-25,11+3+24+3-26])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);} 
  translate([129.75+(94*4)-1.5-103-332-70+454-6,276.5-4+25-25-139,11+3+24+3-26])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);} 
   translate([49.25+10+((85+9)*4)-13,103.5-27-4,0+13])tipbox_model(144);
*/
 //translate([147.95,103.5-27,0])tipbox_model(144);
 //translate([49.25,103.5-27-6,48])microwellplate_model(144);
  /*
   for(i=[0:2]){
   translate([49.25+10+((85+9)*0)-7+62,103.5-27-6+92-127-9+(128*i)-67+25,190])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   }
  */
   //translate([49.25+10+((85+9)*0)-7+62,103.5-27-6+92-127-9,190])
   //rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");

/*
 for(i=[1,2,3]){
  //translate([49.25+10+((85+9)*i)-7,103.5-27-6,48])microwellplate_model(144);
   translate([49.25+10+((77+9)*i)-7+62-1,103.5-27-6+93,190-40])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   translate([49.25+10+((77+9)*i)-7+62,103.5-27-6+92-127-9,190-40])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
  //translate([49.25+10+((85+9)*i)-7,103.5-27-6-127-9,48])microwellplate_model(144);
 }
 */
/*
   translate([49.25+10+((77+9)*0)-7+62,103.5-27-6+92-127-9,190-40])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");

   //rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   translate([49.25+10+((77+9)*4)-7+62,103.5-27-6+92-127-9,190-40])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   translate([49.25+10+((85+9)*4)-13,103.5-27-4,0+13])tipbox_model(144);

 */
 /*


 //translate([383.5/2-85/2-90-10+70,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 //translate([383.5/2-85/2+88+14,103.5-27-6,48])microwellplate_model(144);
 translate([383.5/2-85/2+172,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2-90-10+70,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+65,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+65,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2-90-10+70,103.5-27-6+92-132-10,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 */


//projection(cut = false){
 difference(){union(){
 color("lightblue")translate([70,-25,-10])multichannel_laser_zbed_wider(144);
 color("")translate([-10,103.5-27-25,50-42])plateholder_wider(144);
 //translate([383.5/2-290/2,103.5-27-25,1])ruler_plateholder(144);

//translate([0,0,7])rightside_plate_holder();
//translate([0,0,7])leftside_plate_holder_wider();

/*
 translate([129.75+(94*4)-1.5-103,276.5-4,11-1])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_riser_rising_surface(144);}
*/
 corner_plate_set();
 translate([0,0-139,0])front_corner_plate_set();
 translate([160,0-139,0])rotate([0,0,0])bar_plate_set();
 translate([160,0,0])rotate([0,0,0])bar_plate_set();
 translate([160+188,0-139,0])rotate([0,0,0])front_rightcorner_bar_plate_set();
 translate([160+188,0,0])rotate([0,0,0])rightcorner_bar_plate_set();
 /*
 */
/*
 translate([129.75+(94*4)-1.5-103-9+61,276.5-4-45.5,11+135])color("")mirror([0,0,0])rotate([0,0,0]){cube([100,10,5]);}
 translate([129.75+(94*4)-1.5-103-9+61-153,276.5-4-45.5,11+135])color("")mirror([0,0,0])rotate([0,0,0]){cube([150,10,5]);}
 translate([129.75+(94*4)-1.5-103-9+61-153-160,276.5-4-45.5,11+135])color("")mirror([0,0,0])rotate([0,0,0]){cube([150,10,5]);}
*/

/*
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5,11+135])color("")mirror([0,0,0])rotate([0,0,0]){union(){translate([0,-140-94,0])cube([10,96,5]);translate([0,-138,0])cube([150,10,5]);}}
*/


// translate([129.75+(94*4)-1.5-103-332,276.5-4,11+3])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);} 

/*

 translate([129.75+(94*4)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*5)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); }
 translate([129.75+(94*4)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);}
 translate([129.75+(94*5)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);}
 translate([129.75+(94*4)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*5)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}

 //color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
 translate([129.75+(94*0)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_rising_surface_washmount(144);} //microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*0)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 
 translate([129.75+(94*0)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}

for(i=[1:3]){
 translate([129.75+(94*i)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4-180+180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 }

*/



translate([0,0,7])color("gainsboro")plate_aligner_on_zbed_wider();
}

  translate([25.5+22-15+3,-7+11,100])cylinder(r=5.7/2,h=200);
  translate([25.5+22-15+555,-7+11,100])cylinder(r=5.7/2,h=200);
  translate([25.5+22-15+555,-7+11+180,100])cylinder(r=5.7/2,h=200);
  translate([25.5+22-15+3,-7+11+180,100])cylinder(r=5.7/2,h=200);

  translate([25.5+22,-7,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+30,100])cylinder(r=2.8/2,h=200);

  translate([25.5+22,-7+217,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+45+217,100])cylinder(r=2.8/2,h=200);

  translate([25.5+2,-7+180,100])cylinder(r=2.8/2,h=200);
  translate([25.5+2,-7+10+180,100])cylinder(r=2.8/2,h=200);

  translate([527,3,0]){
  translate([25.5+22,-7,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+33,100])cylinder(r=2.8/2,h=200);

  translate([25.5+22,-7+217+6,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+45+217+9,100])cylinder(r=2.8/2,h=200);

  }
  translate([568,0,0]){
  translate([25.5+2,-7+180,100])cylinder(r=2.8/2,h=200);
  translate([25.5+2,-7+10+180,100])cylinder(r=2.8/2,h=200);
  }

/*

  translate([0,6,0])for(i=[0:3]){
  b = 5;
  if (i==1){
  translate([25.5+22+20,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  } else {
  translate([25.5+22+20,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  }
  }
  translate([0,10,0]){
  translate([25.5+22+20+101+202-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:8]){  
  translate([25.5+22+i*50,75+3*(53.8),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+i*50,75+1*(60),100-50])cylinder(r=3/2,h=200);
  }
  for(i=[0:5]){
  translate([25.5+22,75+i*(45),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+(23*15),75+i*48,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:6]){
  translate([25.5+22+i*(50),75+8,100])cylinder(r=3/2,h=200);
  //translate([25.5+22+i*(23*2),75+(7*24),100])cylinder(r=3/2,h=200);
  }
*/
 }
 
}



module zbed_multichannel_setup_wider_deeper(){
 //translate([147.95,103.5-27,0])tipbox_model(144);
 //translate([49.25,103.5-27-6,48])microwellplate_model(144);
   for(i=[0:2]){
   translate([49.25+10+((85+9)*4)-7+62,103.5-27-6+92-127-9+(128*i)-67+25+25,190])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   }
   //translate([49.25+10+((85+9)*0)-7+62,103.5-27-6+92-127-9,190])
   //rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
/*
 for(i=[1,2,3]){
  //translate([49.25+10+((85+9)*i)-7,103.5-27-6,48])microwellplate_model(144);
   translate([49.25+10+((85+9)*i)-7+62,103.5-27-6+92,190])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   translate([49.25+10+((85+9)*i)-7+62,103.5-27-6+92-127-9,190])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
  //translate([49.25+10+((85+9)*i)-7,103.5-27-6-127-9,48])microwellplate_model(144);
 }

   translate([49.25+10+((85+9)*4)-13,103.5-27-4,0])
   tipbox_model(144);
   //rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
   translate([49.25+10+((85+9)*4)-7+62,103.5-27-6+92-127-9,190])
   rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");

 */
 /*


 //translate([383.5/2-85/2-90-10+70,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 //translate([383.5/2-85/2+88+14,103.5-27-6,48])microwellplate_model(144);
 translate([383.5/2-85/2+172,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2-90-10+70,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+65,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172+100,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+172,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2+65,103.5-27-6+92-132,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 translate([383.5/2-85/2-90-10+70,103.5-27-6+92-132-10,48+133])rotate([0,0,90])color("lightblue")import("96_microwell_plate.STL.stl");
 */


//projection(cut = false){
 difference(){union(){
 color("lightpink")translate([70,-25,-10])multichannel_laser_zbed_wider_deeper(144);
 color("")translate([-10,103.5-27-25,50-42])plateholder_wider_deeper(144);
 //translate([383.5/2-290/2,103.5-27-25,1])ruler_plateholder(144);

//translate([0,0,7])rightside_plate_holder();
//translate([0,0,7])leftside_plate_holder_wider();

/*
 translate([129.75+(94*4)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*5)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); }
 translate([129.75+(94*4)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);}
 translate([129.75+(94*5)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);}
 translate([129.75+(94*4)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*5)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}

 //color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
 translate([129.75+(94*0)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_rising_surface_washmount(144);} //microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*0)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 
 translate([129.75+(94*0)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}

for(i=[1:3]){
 translate([129.75+(94*i)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4-180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 translate([129.75+(94*i)-1.5-103,276.5-142.4-180+180,11])color("")mirror([0,0,0])rotate([0,0,90]){microwell_plate_riser(144);microwell_plate_riser_rising_surface(144);}
 }
*/
//translate([0,0,7])color("gainsboro")plate_aligner_on_zbed_wider();
}

  translate([25.5+22,-7,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+30,100])cylinder(r=2.8/2,h=200);

  translate([25.5+22,-7+217,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+45+217,100])cylinder(r=2.8/2,h=200);

  translate([25.5+2,-7+180,100])cylinder(r=2.8/2,h=200);
  translate([25.5+2,-7+10+180,100])cylinder(r=2.8/2,h=200);

  translate([527,3,0]){
  translate([25.5+22,-7,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+33,100])cylinder(r=2.8/2,h=200);

  translate([25.5+22,-7+217+6,100])cylinder(r=2.8/2,h=200);
  translate([25.5+22,-7+45+217+9,100])cylinder(r=2.8/2,h=200);

  }
  translate([568,0,0]){
  translate([25.5+2,-7+180,100])cylinder(r=2.8/2,h=200);
  translate([25.5+2,-7+10+180,100])cylinder(r=2.8/2,h=200);
  }

/*

  translate([0,6,0])for(i=[0:3]){
  b = 5;
  if (i==1){
  translate([25.5+22+20,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11-b,100])cylinder(r=3/2,h=200);
  } else {
  translate([25.5+22+20,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+202,75+i*(48)+11,100])cylinder(r=3/2,h=200);
  }
  }
  translate([0,10,0]){
  translate([25.5+22+20+101+202-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  translate([25.5+22+20+101+100-25,75+0*(48)+11,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:8]){  
  translate([25.5+22+i*50,75+3*(53.8),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+i*50,75+1*(60),100-50])cylinder(r=3/2,h=200);
  }
  for(i=[0:5]){
  translate([25.5+22,75+i*(45),100-50])cylinder(r=3/2,h=200);
  translate([25.5+22+(23*15),75+i*48,100])cylinder(r=3/2,h=200);
  }
  for(i=[0:6]){
  translate([25.5+22+i*(50),75+8,100])cylinder(r=3/2,h=200);
  //translate([25.5+22+i*(23*2),75+(7*24),100])cylinder(r=3/2,h=200);
  }
*/
 }
 
}







































// }

module ruler_plateholder(z){
translate([28,64-35.5,z-11])color("blue")cube([290,14,5]);
}

module plateholder(z){
translate([25.5+2+40,64-35.5+8,z-11])color("yellow")cube([325,155,5]);
}

module plateholder_wider(z){
translate([25.5+2+40,64-35.5+8-100,z-11])difference(){
color("yellow")cube([325+136+42+5,155+100,5]);
for(i=[0:5]){
translate([14+i*94,255-7-4,0])cylinder(r=2.4/2,h=20);
translate([24+i*94,255-7-4,0])cylinder(r=2.4/2,h=20);
translate([14+i*94,255-7-142.5,0])cylinder(r=2.4/2,h=20);
translate([24+i*94,255-7-142.5,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+7,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+17,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+7+180,0])cylinder(r=2.4/2,h=200);
translate([17+i*94-9,255-7-242.5+17+180,0])cylinder(r=2.4/2,h=20);
}
}
}


module plateholder_wider_deeper(z){
translate([25.5+2+40,64-35.5+8-100,z-11])difference(){
color("yellow")cube([325+136+42+5,155+100+60,5]);
for(i=[0:5]){
translate([14+i*94,255-7-4,0])cylinder(r=2.4/2,h=20);
translate([24+i*94,255-7-4,0])cylinder(r=2.4/2,h=20);
translate([14+i*94,255-7-142.5,0])cylinder(r=2.4/2,h=20);
translate([24+i*94,255-7-142.5,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+7,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+17,0])cylinder(r=2.4/2,h=20);
translate([17+i*94-9,255-7-242.5+7+180,0])cylinder(r=2.4/2,h=200);
translate([17+i*94-9,255-7-242.5+17+180,0])cylinder(r=2.4/2,h=20);
}
}
}










//zbed_washer_hold_plate_into_place();
//color("pink")laser_zbed(144);

// x_level_guide();

 //y_level_guide();
 //color("lime")x_level_alignment_bar();


//tipbox_leftmount(144);

//tipbox_rightmount(144);

module microwellplate_model(z){
translate([25.5+2,64-35.5,z-11])color("pink")cube([85,127,14]);
}


module tipbox_model(z){
translate([25.5,64-35.5,z-11])color("lime")cube([83,119,50]);


translate([32,136,180])color("lightblue")
for(i=[0:8]){
for(j=[0:11]){
translate([9*i,-9*j,0])difference(){
cylinder(r2=7/2,r1=6/2,h=7);
cylinder(r2=6/2,r1=5/2,h=8);
}
}
}
}

module tipbox_rightmount(z){
translate([170-45+130,142.5+87,z+4])difference(){
difference(){
union(){
color("red")cube([110,15,2]);
translate([90,0,0])color("red")cube([20,15,6]);
color("red")cube([10,15,6]);
translate([0,-9,0])color("red")cube([15,30-6,15]);
}
translate([9,7.5,-10])cylinder(r=5/2,h=40);
translate([9,7.5,6])cylinder(r=10/2,h=40);
translate([9+90,7.5,-10])cylinder(r=5/2,h=40);
translate([-29,-4,10])rotate([0,90,0])cylinder(r=3.7/2,h=100);
}
}
}

module tipbox_leftmount(z){
translate([170-45,142.5,z+4])difference(){
union(){
color("red")cube([43,15,6]);
translate([30,15,0])color("red")cube([13,20,15]);
}
translate([10,7.5,-10])cylinder(r=6/2,h=40);
translate([10+25,7.5,-10])cylinder(r=6/2,h=40);
translate([10,7.5+17,10])rotate([0,90,0])cylinder(r=3.7/2,h=40);
}
}





module y_level_guide(){
translate([368,32,144+4])
difference(){
translate([1,-2,0])cube([16,90,2]);
translate([10-1,6,-10])cylinder(r=8/2,h=20);
translate([10-1,6+75,-10])cylinder(r=8/2,h=20);
}

}

module x_level_alignment_bar(){
translate([250,18-8+3,144+3])
translate([10,10,0])cube([160,10,2]);


}


module x_level_guide(){

translate([250,18,144-4])
difference(){
union(){
translate([10-30,0,0])cube([120,20,4]);
translate([10-30,0,0])cube([120,5,10]);
for(i=[-1:3]){
translate([10+(i*26.5),0,0])cube([10,9,8]);
}
translate([7.5,5,0])cube([20,30,4]);
translate([88,5,0])cube([20,30,4]);
}
translate([17,20,0])cylinder(r=9/2,h=30);
translate([17+80,20,0])cylinder(r=9/2,h=30);
}
}


//zbed_metal_version();

module zbed_metal_version(){
//Not really though maybe it is now
translate([-113,13.5-6,-20])rotate([0,90,0])zbed_connector_bar_metal();
translate([-177,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([24.5,7.5,-30+3])bed_leveler_better_lm8uu_for_metalversion();
}
translate([42,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([59.5,7.5,-30+3])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
}
}




module zbed_3dprint_version(){
//Not really though maybe it is now
translate([-113,13.5-6,-20])rotate([0,90,0])zbed_connector_bar();
translate([-177,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([24.5,7.5,-30+3])bed_leveler_better_lm8uu();
}
translate([42,0,8]){
rotate([0,90,0])lm8uu_smz_glider();
translate([59.5,7.5,-30+3])mirror([1,0,0])bed_leveler_better_lm8uu();
}
}




///rotate([0,90,0])zbed_connector_bar();
//lm8uu_smz_glider();
//bed_leveler_better_lm8uu();



//bed_leveler_better_lm8uu();
//translate([-40,81.5,200])rotate([0,180,0])zbedslot_516_smz_zbed();
//zbed_smz_stls();
//slidedeck_adjust_wheel();

/*
adafruit_microswitch_817();
difference(){
cylinder(r=12/2,h=6);
translate([0,0,-0.3])cylinder(r=6/2,h=7);
}
*/
/*
translate([-85,-90,0])raspi2_top_lego();
mirror([0,1,0])raspi2_bottom_lego_female();
*/
//translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
//motormount_smz_justcad();
//bearing_mount_smz();

module bed_support_strip(){
translate([22,7,10])
difference(){
cube([160,16,7]);
translate([160/2-8,8,0])cylinder(r=3.5/2,h=20);
translate([160/2+8,8,0])cylinder(r=3.5/2,h=20);
translate([6,8,0])cylinder(r=5.5/2,h=20);
translate([6+24,8,0])cylinder(r=5.5/2,h=20);
translate([115+10,0,0]){
translate([6,8,0])cylinder(r=5.5/2,h=20);
translate([6+24,8,0])cylinder(r=5.5/2,h=20);
}
}
}
 //zbed_wash_microwell_stls();
// slidedeck_adjust_wheel();

//zbed_wash_microwell_stls();

// translate([0,0,35])rotate([0,90,0])
//lm8uu_smz_glider();
//zbedslot_516_smz_zbed();

//color([100,100,100])
//zbed_smz_stls();

//zbedslot_516_smz_zbed();
//translate([0,3,0])washbowl_1tip();
//laser_zbed(144);
//laser_zbed_support_strobened();

//zbed_smz();

/*
projection(cut = false){
laser_zbed(144);
}
*/
/*
wash_and_strobparts();
laser_zbed_support_strobend();
laser_zbed(144);
*/
/*
laser_zbed_support_strobened();
translate([219,-0,282])rotate([0,180,0])laser_zbed_support_strobened();
translate([8,387,282])rotate([0,180,180])laser_zbed_support_strobened();
translate([219-50+263,387,0])rotate([0,0,180])laser_zbed_support_strobened();
*/


//translate([0,-360,-95])rotate([90,-0,-90])openmv_nice_assy_stroboscope();
//openmv_camera_mnt_zbed();

//openmv_set();

//laser_zbed(144);
//import("laser_zbed_144.stl");
//translate([0,-360,-95])rotate([90,-0,-90])openmv_nice_assy_stroboscope();
//openmv_set();
//openmv_nice_assy_stroboscope();



//wash_and_strobparts();
//translate([160-285,20-35,-3])rotate([0,180,90])color("DarkGray")washbowl_assy();

//washbowl_shim();

module zbed_smz_stls(){
//start zbed_smz_components
 translate([50,96,4])microwell_plate_guide();
 translate([10,-108,-1])pololu_screw_nobacklash_cap();
 translate([45,-108,-1])pololu_screw_nobacklash_cap();
 translate([0,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*2,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([-45*3,0,35])rotate([0,90,0])lm8uu_smz_glider();
 translate([0,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-90,-26,232])rotate([0,180,90])zbedslot_516_smz_zbed();
 translate([-5,98,0])rotate([0,-90,90])z_encoder_clamp_wiper();
 translate([-40,-60,-1])wiper_tip();
 translate([-170+106+90,-30+55+30+7,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 translate([-170+106+90,-30+55,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 //translate([-170,-60,-1])import("bed_leveler_foot.STL");
 //translate([-170,-30,-1])import("bed_leveler_foot.STL");
 translate([-170+106,-30+55,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 translate([-170+106,-30+55+30+7,-1])rotate([0,0,90])bed_leveler_better_lm8uu();
 //translate([0,0,0])import("bed_leveler_foot.STL");
//end zbed_smz_components
//start washbowl_assy
 //translate([-60,-26,-11])washbowl_shim();
 translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
 translate([40,-10,-1])rotate([0,0,90])drypad();
 translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
//end washbowl_assy 
}

module zbed_wash_microwell_stls(){
 //slidedeck_adjust_wheel();
//start zbed_smz_components
 translate([50,96,4])microwell_plate_guide();
 //translate([45,-108,-1])pololu_screw_nobacklash_cap();
//end zbed_smz_components
//start washbowl_assy
 //translate([-60,-26,-11])washbowl_shim();
 translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
 translate([40,-10,-1])rotate([0,0,90])drypad();
 translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
//end washbowl_assy 
}

module corner_plate_set(){
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5+138,11+135])color("")mirror([0,0,0])rotate([0,0,0]){difference(){union(){translate([1,-140-94,0])cube([8,98,5]);translate([1,-137,0])cube([140,8,5]);}
translate([21.25,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25,-133,-30])cylinder(r=4/2,h=140);
translate([21+94.5-0.25,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+94.5-0.25,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6,-133-41.5,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6,-133-41.5-10,-30])cylinder(r=4/2,h=140);
for(i=[2]){
translate([21.25+15+i*10,-133,-30])cylinder(r=2.7/2,h=140);
translate([21.25+15+i*10+10,-133,-30])cylinder(r=2.7/2,h=140);
}
for(i=[2.8,-3.5]){
translate([21-10+0.25-6,-133-41.5+i*10,-30])cylinder(r=2.8/2,h=140);
translate([21-10+0.25-6,-133-41.5+i*10-10,-30])cylinder(r=2.8/2,h=140);
}
}}
}

module front_corner_plate_set(){
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5+138,11+135])color("")mirror([0,0,0])rotate([0,0,0]){difference(){union(){translate([1,-140-94,0])cube([8,98,5]);translate([1,-137,0])cube([140,8,5]);}
translate([21.25,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25,-133,-30])cylinder(r=4/2,h=140);
translate([21+94.5-0.25,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+94.5-0.25,-133,-30])cylinder(r=4/2,h=140);

translate([21-10+0.25-6,-133-41.5-41,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6,-133-41.5-10-41,-30])cylinder(r=4/2,h=140);

for(i=[2]){
translate([21.25+15+i*10,-133,-30])cylinder(r=2.7/2,h=140);
translate([21.25+15+i*10+10,-133,-30])cylinder(r=2.7/2,h=140);
}
for(i=[2.8,-1]){
translate([21-10+0.25-6,-133-41.5+i*10,-30])cylinder(r=2.8/2,h=140);
translate([21-10+0.25-6,-133-41.5+i*10-10,-30])cylinder(r=2.8/2,h=140);
}
}}
}

module bar_plate_set(){
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5+138,11+135])color("")mirror([0,0,0])rotate([0,0,0]){
difference(){
union(){
  //translate([1,-140-94,0])cube([8,98,5]);
  translate([1,-137,0])cube([150,8,5]);
}
translate([21.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);
/*
translate([21-10+0.25-6,-133-41.5-41,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6,-133-41.5-10-41,-30])cylinder(r=4/2,h=140);
*/
for(i=[-2.8,5]){
translate([21.25+15+i*10,-133,-30])cylinder(r=2.7/2,h=140);
translate([21.25+15+i*10+10,-133,-30])cylinder(r=2.7/2,h=140);
}
/*
for(i=[2.8,-1]){
translate([21-10+0.25-6,-133-41.5+i*10,-30])cylinder(r=2.8/2,h=140);
translate([21-10+0.25-6,-133-41.5+i*10-10,-30])cylinder(r=2.8/2,h=140);
}
*/
}}
}


module rightcorner_bar_plate_set(){
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5+138,11+135])color("")mirror([0,0,0])rotate([0,0,0]){
difference(){
union(){
  translate([1+122.25,-140-94,0])cube([8,98,5]);
  translate([1,-137,0])cube([150,8,5]);
}
translate([21.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);

translate([21-10+0.25-6+122,-133-41.5-41+41.5,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6+122,-133-41.5-10-41+41.5,-30])cylinder(r=4/2,h=140);

for(i=[-2.8,5]){
translate([21.25+15+i*10,-133,-30])cylinder(r=2.7/2,h=140);
translate([21.25+15+i*10+10,-133,-30])cylinder(r=2.7/2,h=140);
}

for(i=[2.8,-3.5]){
translate([21-10+0.25-6+122,-133-41.5+i*10,-30])cylinder(r=2.8/2,h=140);
translate([21-10+0.25-6+122,-133-41.5+i*10-10,-30])cylinder(r=2.8/2,h=140);
}
}}
}


module front_rightcorner_bar_plate_set(){
 translate([129.75+(94*4)-1.5-103-9+61-153-240,276.5-4-45.5+138,11+135])color("")mirror([0,0,0])rotate([0,0,0]){
difference(){
union(){
  translate([1+122.25,-140-94,0])cube([8,98,5]);
  translate([1,-137,0])cube([150,8,5]);
}
translate([21.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);
translate([21-10+94.5-0.25+28,-133,-30])cylinder(r=4/2,h=140);

translate([21-10+0.25-6+122,-133-41.5-41,-30])cylinder(r=4/2,h=140);
translate([21-10+0.25-6+122,-133-41.5-10-41,-30])cylinder(r=4/2,h=140);

for(i=[-2.8,5]){
translate([21.25+15+i*10,-133,-30])cylinder(r=2.7/2,h=140);
translate([21.25+15+i*10+10,-133,-30])cylinder(r=2.7/2,h=140);
}

for(i=[2.8,-1]){
translate([21-10+0.25-6+122,-133-41.5+i*10,-30])cylinder(r=2.8/2,h=140);
translate([21-10+0.25-6+122,-133-41.5+i*10-10,-30])cylinder(r=2.8/2,h=140);
}
}}
}








