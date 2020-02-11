include <PiZero.scad>
/*
include <modparts.scad>
use<writescad/write.scad>
include <bom_vacuum_pumps_box.scad>
include <bom_openmv_camera.scad>
include <nanoplotter.scad>
include <PiZero.scad>
*/



//mirror([0,1,0])import("files/endstop_y.stl");

endstop_y();


//rotate([0,90,0])tslot20(100);
//translate([0,20,0])rotate([0,90,0])tslot20(100);
y_arm_flag();

module y_arm_flag(){

difference(){
cube([15,30,4]);
translate([6,6,-1])cylinder(r=5.7/2,h=30,$fn=30);
}
}


module endstop_y(){
difference(){
union(){
//import("files/endstop_y.stl");
translate([40+30-38,1.5,-0.0])cube([85-10+38-83,28,4]);
translate([40+30-38,1.5,-0.0])cube([18,28,4]);
//translate([40.9,12.5,0])rotate([0,0,45])cylinder(r=8.7/2,h=8,$fn=4);
}
translate([60,-114,0])rotate([0,0,90]){
#translate([40.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
#translate([60.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
}
translate([40.9,25,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9,5,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
//translate([50.,12,-0.2])cube([120,20,20]);
}
}







//mouse_restraint();
//mouse_nozzle();

/*
rfid();
translate([0,43,0])rfid();
*/
module rfid(){

difference(){
translate([0,-8,0])cube([30,35+16,32+8]);
translate([-1,0,8])cube([32,35,32+5]);
translate([6,18,-2-3.4+10.1])#cylinder(r=10/2,h=3.4,$fn=20);
translate([6,18,-2-3.29])#cylinder(r=5.7/2,h=10,$fn=20);
translate([24,18,-2-3.4+10.1])#cylinder(r=10/2,h=3.4,$fn=20);
translate([24,18,-2-3.29])#cylinder(r=5.7/2,h=10,$fn=20);

translate([15,24+33,-2-3.4+10.1])#cylinder(r=10/2,h=3.4,$fn=20);
translate([15,24+33,-2-3.29])#cylinder(r=5.7/2,h=10,$fn=20);
translate([15,24+70,0+28])rotate([90,0,0])#cylinder(r=2.8/2,h=130,$fn=20);
}
}


module mouse_nozzle(){
dia = 31;
difference(){
cylinder(r1=dia/2,r2=(5+5)/2,h=14,$fn=30);
translate([0,0,-0.5])cylinder(r1=(dia-8)/2,r2=(5)/2,h=14,$fn=30);
translate([0,0,-2])#cylinder(r=(5.4)/2,h=34,$fn=30);
}
}

module mouse_restraint(){
difference(){
dia = 31;
cylinder(r=dia/2,h=120,$fn=30);

translate([-15+4,10-3,10])#cube([22.5/2-4,20,30]);
translate([-15+4+22.5/2+4,10-3,10])#cube([22.5/2-4,20,30]);
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
//cage_assy();
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
translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6);
}
translate([-21,0,0]){
translate([10.5,-1.5-1.5,0])cylinder(r=4/2,h=6);
translate([0,12.5,0]){
translate([10.5,-1.5,0])cylinder(r=4/2,h=6);
}
}
}
translate([10.5,-1.5-1.5,1.5])cylinder(r=1.8/2,h=18);
translate([0,12.5,1.5]){
translate([10.5,-1.5,0])cylinder(r=1.8/2,h=18);
}
translate([-21,0,1.5]){
translate([10.5,-1.5-1.5,0])cylinder(r=1.8/2,h=18);
translate([0,12.5,0])translate([10.5,-1.5,0])cylinder(r=1.8/2,h=18);
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
translate([-30+20,-14,-46])cube([20,18,4+3]);
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
				square(gap+thickness,center=true);
			}
			circle(r=gap/2,center=true);
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












