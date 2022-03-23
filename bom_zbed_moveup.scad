
//extrusion_threadrod_clamp_noextrusion();
//lm8uu_smz_glider_wider();
//zbedslot_516_smz_zbed_wider;



module bed_attach_assy(){
rotate([0,90,0]){
color("lime")back_threadrod_bed_adjustwheel();
color("pink")front_threadrod_bed_adjustwheel();
threadrod_bed_joiner();
}
}

module bed_attach_assy_tslot(){
translate([-10,0,0])rotate([0,90,0]){
//color("lime")back_threadrod_bed_adjustwheel();
//color("pink")
front_threadrod_bed_adjustwheel_tslot();
//threadrod_bed_joiner();
}
}





module back_threadrod_bed_adjustwheel(){
difference(){
union(){
translate([-7,20+108-20+10+4,5-27])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7-10,-10-10-50+158,-22])cube([10,33-3+10,10+22]);
}
//translate([60,0-16,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
//translate([60,0-8,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([60,87+8,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([60,87+16,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([55,20-50-14+28-65,5])rotate([0,-90,0]){
cylinder(r=3.8/2,h=200,$fn=30);
//translate([0,0,40])cylinder(r=40/2,h=5,$fn=30);
translate([0-27,209-20+10-207.5,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0-27,209-20+10+3,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0-27,209-20+10+4,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0-27,209-20+10+5,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0-27,209-20+10,40])cylinder(r=40/2,h=5,$fn=30);
}
}
}







module front_threadrod_bed_adjustwheel(){
translate([0,0,-20])difference(){
union(){
translate([-7,20-50-51-25+10,5-5])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7,20-50-51-25+10+3,5-5])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7-10,-10-10-50+20-25-25,0])cube([10,17+50-20+25+25,10]);
}
translate([60,0-16,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([60,0-8,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([55,20-50-14+28-65-25+10,5])rotate([0,-90,0]){
translate([-6.6,0,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([-6.6,0+6.8,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0,0,40])cylinder(r=40/2,h=5,$fn=30);
//translate([0,209,0])cylinder(r=3.8/2,h=200,$fn=30);
//translate([0,209,40])cylinder(r=40/2,h=5,$fn=30);
}
}
}



module front_threadrod_bed_adjustwheel_tslot(){
translate([-4,0+8,-20-1])difference(){
union(){
for(i=[0:8]){
translate([-7,20-50-51-25+10,5-5+i])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7,20-50-51-25+10+3,5-5+i])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
}
/*
translate([-7,20-50-51-25+10,5-5+4])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7,20-50-51-25+10+3,5-5+4])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7,20-50-51-25+10,5-5+8])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
translate([-7,20-50-51-25+10+3,5-5+8])rotate([0,-90,0])cylinder(r=20/2,h=10,$fn=30);
*/
translate([-7-10,-10-10-50+20-25-25-20,0-10])cube([10,17+50-14,10]);
}
/*
translate([60,0-16,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([60,0-8,5])rotate([0,-90,0])cylinder(r=3.8/2,h=200,$fn=30);
*/
translate([55-61,20-50-14+28-65-25+29,5-15+4])translate([-6,2,0])cylinder(r=9/2,h=200,$fn=30);
translate([55-61,20-50-14+28-65-25-9,5-15+4])translate([-6,2,0])cylinder(r=9/2,h=200,$fn=30);
translate([55-61,20-50-14+28-65-25+29,5-20])translate([-6,2,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([55-61,20-50-14+28-65-25-9,5-20])translate([-6,2,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([55,20-50-14+28-65-25+10,5+13])rotate([0,-90,0]){
//translate([-6,2,60])cylinder(r=40/2,h=2,$fn=30);
translate([-6,2,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([-6,2,0])cylinder(r=4.8/2,h=200,$fn=30);
//translate([-6.6,0+6.8,0])cylinder(r=4.8/2,h=200,$fn=30);
translate([0,0,40])cylinder(r=40/2,h=5,$fn=30);
//translate([0,209,0])cylinder(r=3.8/2,h=200,$fn=30);
//translate([0,209,40])cylinder(r=40/2,h=5,$fn=30);
}
}
}













module threadrod_bed_joiner(){

difference(){
union(){
translate([-7,-10-10,0])cube([17,108+20,10]);
translate([-7-0,-10-10,-20])cube([17,30,10+20]);
//translate([-7-0,-10-10+98,-20])cube([17,30,10+20]);
}
//translate([-7-1,-10+20,5])cube([20,108-40,10]);
/*
translate([55,0-50,-0])rotate([0,-90,0]){
cylinder(r=3.8/2,h=200,$fn=30);
translate([0,0,40])cylinder(r=40/2,h=5,$fn=30);
translate([0,209,0])cylinder(r=3.8/2,h=200,$fn=30);
translate([0,209,40])cylinder(r=40/2,h=5,$fn=30);
}
*/
translate([-0,0,-40])cylinder(r=8.7/2,h=200,$fn=30);
translate([0,87,-45])cylinder(r=8.7/2,h=200,$fn=30);
translate([60,0-8,5-20])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([60,0-16,5-20])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([60,0,5])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);

translate([60,87,5])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([60,87+8,5])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);
translate([60,87+16,5])rotate([0,-90,0])cylinder(r=2.8/2,h=200,$fn=30);
}
}





module bczamd_a8_clamp(){
difference(){
union(){
translate([5,-9,7.5])cube([20,18+5,4+14]);
}
translate([14.5+15-15,-9+40-31,7.5-1-15])rotate([0,0,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([14.5+40,-9+40-31,7.5-1+10])rotate([0,-90,0])cylinder(r=8.7/2,h=600,$fn=30);
translate([14.5+15-15+4,-9+40-31+8,7.5-1-15])rotate([0,0,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([14.5+15-15-4,-9+40-31+8,7.5-1-15])rotate([0,0,0])cylinder(r=2.8/2,h=50,$fn=30);
}
}





module bczamd_a8_hotbed_support_attachplate(){
difference(){
color("silver")translate([2,48-5,0])cube([219-185,219-60,4]);

/*
translate([12.5,104.5+5,0]){
for(i=[-4:0]){
translate([-4+12,80+i*10,-20])cylinder(r=2.8/2,h=30,$fn=30);
translate([4+12,80+i*10,-20])cylinder(r=2.8/2,h=30,$fn=30);
translate([-4+12,80+i*10-84,-20])cylinder(r=2.8/2,h=30,$fn=30);
translate([4+12,80+i*10-84,-20])cylinder(r=2.8/2,h=30,$fn=30);
}
}
translate([12.5,104.5+5,0]){
translate([0,0,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,19,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,29,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,39,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,-10,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,-20,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,-19,0]){
translate([0,-20,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,-30,0])cylinder(r=3.7/2,h=30,$fn=30);
translate([0,-40,0])cylinder(r=3.7/2,h=30,$fn=30);
}
}
*/

}
}









module bczamd_a8_hotbed_support(){
difference(){
union(){
//color("silver")cube([219,219,3]);
//translate([0,0,10])color("gold")cube([219,219,3]);

translate([0-90,0-80,10])color("gold")cube([400,300,3]); //inches 15.75 x 11.81
//length 15.75, 11.81 inch;

translate([5-75,5,-1])cylinder(r=4.8/2,h=12,$fn=30);
translate([5+(104.5*2)+75,5,-1])cylinder(r=4.8/2,h=12,$fn=30);
translate([0,209,0]){
translate([5-75,5,-1])cylinder(r=4.8/2,h=12,$fn=30);
translate([5+(104.5*2)+75,5,-1])cylinder(r=4.8/2,h=12,$fn=30);
translate([5-75,5,-1-15])cylinder(r=20/2,h=3,$fn=30);
translate([5+(104.5*2)+75,5,-1-15])cylinder(r=20/2,h=3,$fn=30);
}
translate([5-75,5,-1-15])cylinder(r=20/2,h=3,$fn=30);
translate([5+(104.5*2)+75,5,-1-15])cylinder(r=20/2,h=3,$fn=30);
}


/*
*/
/*
translate([5+104.5,5,-1])cylinder(r=4.8/2,h=30,$fn=30);
translate([104.5+5,104.5+5,0]){
translate([-6,0,0])cylinder(r=4.8/2,h=30,$fn=30);
translate([6,0,0])cylinder(r=4.8/2,h=30,$fn=30);
}
translate([12.5,104.5+5,0]){
translate([0,0,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,0,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,19,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,19,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,29,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,29,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,39,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,39,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-10,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-10,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-19,0]){
translate([0,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-30,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-30,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-40,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-40,0])cylinder(r=5/2,h=30,$fn=30);
}
}
translate([209+5-7.5-24,104.5+5,0]){
translate([0,0,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,0,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,19,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,19,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,29,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,29,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,39,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,39,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-10,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-10,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-19,0]){
translate([0,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-20,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-30,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-30,0])cylinder(r=5/2,h=30,$fn=30);
translate([0,-40,0])cylinder(r=5/2,h=30,$fn=30);
translate([24,-40,0])cylinder(r=5/2,h=30,$fn=30);
}
}
*/
}
}




module zbed_assy_wider_threadedrod_noextrusion_higher(z){
translate([-2,0,0])moving_zbed_parts_higher();
translate([-80,315-122+1,172-156])rotate([0,0,0])tslot20(437);
translate([-80,315-122+1-100+20,172-156])rotate([0,0,0])tslot20(437);
translate([-80+611,315-122,172-156])rotate([0,0,0])tslot20(437);
translate([480+3,0,0])mirror([1,0,0])moving_zbed_parts_higher();
translate([0,0,z]){
zbed_smz_wider_threadedrods_noextrusions();
}
}





module zbed_assy_wider_threadedrod_noextrusion(z){
moving_zbed_parts();
translate([-80,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([-80+611,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([480,0,0])mirror([1,0,0])moving_zbed_parts();
translate([0,0,z]){
zbed_smz_wider_threadedrods_noextrusions();
}
}






module zbed_assy_wider_threadedrod(z){
moving_zbed_parts();
translate([-80,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([-80+611,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([480,0,0])mirror([1,0,0])moving_zbed_parts();
translate([0,0,z]){
zbed_smz_wider_threadedrods();
translate([0,0,z-70+55])multichannel_laser_zbed_wider_deeper(98);
}
}




//right here base zbed modules
module zbed_assy_wider(z){
moving_zbed_parts();
translate([-80,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([-80+611,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([480,0,0])mirror([1,0,0])moving_zbed_parts();
translate([0,0,z]){
zbed_smz_wider();
translate([0,0,z-70+55])multichannel_laser_zbed_wider_deeper(98);
}
}


module extrusion_threadrod_clamp_noextrusion(){
difference(){
union(){
translate([5,-9,7.5-8])cube([20,18,4+8+11+14]);
//translate([-5,-9,7.5])cube([38,18,4]);
}
//translate([14.5-15,-9+40-31,7.5-1])rotate([0,0,0])cylinder(r=4.7/2,h=50,$fn=30);
//translate([14.5+15-15,-9+40-31,7.5-1-15])rotate([0,0,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([14.5+15-15-15,-9+40-31,7.5-1-15+16])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([14.5+15-15-15+15,-9+40-31+18,7.5-1-15+16+21])rotate([90,0,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([14.5,-9+40,7.5-1])rotate([90,0,0])cylinder(r=8.7/2,h=50,$fn=30);
translate([14.5+40,-9+40-31,7.5-1+10+12])rotate([0,-90,0])cylinder(r=8.7/2,h=600,$fn=30);
}
}

module extrusion_threadrod_clamp(){
difference(){
union(){
translate([5,-9,7.5-8])cube([20,18,4+8]);
translate([-5,-9,7.5])cube([38,18,4]);
}
translate([14.5-15,-9+40-31,7.5-1])rotate([0,0,0])cylinder(r=4.7/2,h=50,$fn=30);
translate([14.5+15,-9+40-31,7.5-1])rotate([0,0,0])cylinder(r=4.7/2,h=50,$fn=30);
translate([14.5,-9+40,7.5-1])rotate([90,0,0])cylinder(r=8.7/2,h=50,$fn=30);
}
}


module bed_bar_clamp(){
 difference(){union(){
 translate([0,-5,0])cube([18,50,4]);
 translate([0,10,0])cube([18,20,15]);
 }
 translate([9-20,2+18,-3+11-1.5])rotate([0,90,0])cylinder(r=8.7/2,h=60,$fn=30);
 translate([9,2+20,-3])cylinder(r=2.8/2,h=40,$fn=30);
 translate([9,2,-3])cylinder(r=4.7/2,h=40,$fn=30);
 translate([9,40-2,-3])cylinder(r=4.7/2,h=40,$fn=30);
 }
}

module bed_crossclamp(){

difference(){
color("silver")cube([588,26,9]);
translate([0+103,13,-50])cylinder(r=3.9/2,h=80,$fn=30);
translate([0+103+410,13,-50])cylinder(r=3.9/2,h=80,$fn=30);
}
}


module zbed_smz_wider_threadedrods_noextrusions(){
 translate([0,68,0]){
 translate([0,0,10]){
 translate([125+1,50-15,150-10-10])rotate([0,0,0])bczamd_a8_hotbed_support();
 translate([30-75,0,0]){
 //translate([153-30,146-14,130-8])bed_attach_assy_tslot();
 //translate([153-30,146-14+200,130-8])bed_attach_assy_tslot();
 translate([50-30,0,0]){
 //translate([61,112,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([61,112+84+3.5,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([125-70-18,270,0+123])rotate([90,0,0])tslot20(300);
 translate([125-70-18-65,270-34,0+123-2])rotate([0,0,0])bed_crossclamp();
 translate([125-70-18-65,270-34-210,0+123-2])rotate([0,0,0])bed_crossclamp();
 }
 }
 translate([30+270+75,0,0]){
 //translate([153-30-102,146-14,130-8])mirror([1,0,0])bed_attach_assy_tslot();
 //translate([153-30-102,146-14+200,130-8])mirror([1,0,0])bed_attach_assy_tslot();
 translate([50-30,0,0]){
 //translate([61,112,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([61,112+84+3.5,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([125-70-18,270,0+123])rotate([90,0,0])tslot20(300);
 }
 }
 }
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0-50+24,0+29,0+5])rotate([0,0,0])zbed_smz_components_wider_threadedrod(0,0);
 translate([0,-340+1-29-42,0+5])mirror([0,1,0])zbed_smz_components_wider_threadedrod(0,0);
 translate([0+60,98.5,139])mirror([0,1,0])rotate([0,0,90])carriage_prototype_zaxis();
 translate([0+4,0+80-0.1,10])tslot20(280);
 translate([0+60,98.5-580+1.3,139])mirror([0,0,0])rotate([0,0,90])carriage_prototype_zaxis();
 translate([0+4,0+80-0.1-580+8.5,10])tslot20(280);
 }
}



module zbed_smz_wider_threadedrods_extrusions(){
 translate([0,68,0]){
 translate([0,0,10]){
 //translate([125+1,50-15,150-10+5])rotate([0,0,0])bczamd_a8_hotbed_support();
 translate([30-75,0,0]){
 //translate([153-30,146-14,130-8])bed_attach_assy_tslot();
 //translate([153-30,146-14+200,130-8])bed_attach_assy_tslot();
 translate([50-30,0,0]){
 //translate([61,112,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([61,112+84+3.5,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([125-70-18,270,0+123])rotate([90,0,0])tslot20(300);
 }
 }
 translate([30+270+75,0,0]){
 //translate([153-30-102,146-14,130-8])mirror([1,0,0])bed_attach_assy_tslot();
 //translate([153-30-102,146-14+200,130-8])mirror([1,0,0])bed_attach_assy_tslot();
 translate([50-30,0,0]){
 //translate([61,112,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([61,112+84+3.5,115+13])rotate([0,180,0])bed_bar_clamp();
 //translate([125-70-18,270,0+123])rotate([90,0,0])tslot20(300);
 }
 }
 //translate([15-65,120+100+35-54+15-84,141.5-20])rotate([0,90,0])color("silver")cylinder(r=8.7/2,h=582,$fn=30);
 //translate([15-65,120+100+35-54+15+3.5,141.5-20])rotate([0,90,0])color("silver")cylinder(r=8.7/2,h=582,$fn=30);
 }
 }
 //translate([125,50,150-10-10])rotate([0,0,0])bczamd_a8_hotbed_support_attachplate();
 //translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 //translate([15-65,120-50+15,141.5-20])color("silver")rotate([0,90,0])cylinder(r=8.7/2,h=582,$fn=30);
 //translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 //translate([35-65-14,134-49,105])color("")extrusion_threadrod_clamp();
 //translate([35+370+120-29,134-49,105])color("")extrusion_threadrod_clamp();
 //translate([35+370+120,134-49,105])color("")extrusion_riser();

 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider_extrusion(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider_extrusion(0,0);
 }
}
















module zbed_smz_wider_threadedrods(){
 translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_threadrod_clamp();
 translate([35+370+120-29,134-49,105])color("")extrusion_threadrod_clamp();
 //translate([35+370+120,134-49,105])color("")extrusion_riser();
 translate([0,131,0]){
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_threadrod_clamp();
 translate([35+370+120-29,134-49,105])color("")extrusion_threadrod_clamp();
 //translate([35-65-14,134-18,105])color("")extrusion_riser();
 //translate([35+370+120,134-18,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider_threadedrod(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider_threadedrod(0,0);
 }
}




module zbed_smz_wider(){
 translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_riser();
 translate([35+370+120,134-49,105])color("")extrusion_riser();
 translate([0,100,0]){
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-18,105])color("")extrusion_riser();
 translate([35+370+120,134-18,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider(0,0);
 }
}


//zbed_smz();
//zbed_smz_components_wider(0,0);


//this is where I need to modify
module zbed_smz(){
 translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35,134,105])color("")extrusion_riser();
 translate([35+370,134,105])color("")extrusion_riser();
 translate([0,100,0]){
 translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35,134,105])color("")extrusion_riser();
 translate([35+370,134,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 zbed_smz_components_wider(0,0);
 translate([0,-340+1,293.5])rotate([180,0,0])zbed_smz_components_wider(0,10);
 }
 //color("")translate([25,130+120,118+10-23])rotate([0,-90,0])z_encoder_clamp_wiper();
 //color("")translate([25+380,130+120+25,118+10-23+3])rotate([0,-90,180])z_encoder_clamp_wiper();
}








module zbed_assy(z){
translate([0,0,z]){
zbed_smz();
laser_zbed(144);
//translate([0,0,-10])laser_zbed(144);
//translate([25,130+120,118+10])rotate([0,-90,0])z_encoder_clamp_wiper();
}
}


module moving_zbed_parts(){
translate([-54,169,90-20])rotate([0,0,90]){
//begin 3d printed stuff
translate([50,80-30,180+20])rotate([0,180,180])color("")bearing_mount_smz();
translate([50-0,40+10,10])mirror([0,1,0])motormount_smz();
translate([74.5,315-305,172-180])rotate([0,0,0])nema17();
//end 3d printed stuff
}
translate([10-39-35,102+107+35,75]){color("silver")cylinder(r=8/2,h=208);}
translate([-45,1.5,0]){
translate([10+509-509-29,102-1.5+142-76,20]){color("silver")cylinder(r=8.7/2,h=290-20);}
translate([-54-29,169-1.5+142-76,130]){
translate([40+44,-40,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,-90-4,-114+275])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
translate([-45,-0.-0.5,0]){
translate([10-29,322-1.5,20]){color("silver")cylinder(r=8.7/2,h=290-20);}
translate([-54-29,169-1.5,130]){
translate([40+44,180,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,180-54,-114+275])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
}



module moving_zbed_parts_higher(){


//translate([221-0.,240.5,0])rotate([90,0,90])iverntech_railmodule();
translate([-54,169,90-20])rotate([0,0,90]){
//begin 3d printed stuff
//translate([50,80-30,180+20+159])rotate([0,180,180])color("")bearing_mount_smz();
translate([50,40+10,10])mirror([0,1,0])motormount_smz();
translate([74.5+5,315-305,172-180])rotate([0,0,0])nema17();
//end 3d printed stuff
}
translate([10-39-35,102+107+35+5,75-10]){
color("silver")cylinder(r=8/2,h=375);
}
/*
translate([-45,1.5,0]){
translate([10+509-509-29,102-1.5+142-76,20-4]){color("silver")cylinder(r=8.7/2,h=436);}
translate([-54-29,169-1.5+142-76,130]){
translate([40+44,-40,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,-90-4,-114+437])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
*/
/*
translate([-45,-0.-0.5,0]){
translate([10-29,322-1.5,20]){color("silver")cylinder(r=8.7/2,h=436);}
translate([-54-29,169-1.5,130]){
translate([40+44,180,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,180-54,-114+437])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
*/
}







module bearing_mount_smz(){
translate([5+5,13,-18])basic_bearingholder();
difference(){union(){
translate([0,32,-18])cube([5,22-5,30]);
//translate([-17,32+19,-18])cube([22,5,20]);
}
translate([0,32+9,-5+10])rotate([0,90,0]){cylinder(r=5.7/2,h=20);translate([0,0,5-2+2])cylinder(r=9.7/2,h=2);}
translate([-10,32+9,-5])rotate([0,-90,-90]){cylinder(r=5.7/2,h=200);translate([0,0,13+2])cylinder(r=9.7/2,h=2);}
}
}

module basic_bearingholder(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8);
translate([0-5,19,0])cube([14+5,20-3,8]);
}
translate([20,27,1+4])cylinder(r=22.4/2,h=7.1/2);
//translate([20,27,-0.1])cylinder(r=14/2,h=2);
translate([20,27,-0.1])cylinder(r=8.7/2,h=200);
}
}


module motormount_smz(){
difference(){union(){
translate([0+4+5,0,0.5])color("")motormountthin();
//translate([21+4,40,-18])shorternema17();
translate([0,32,-18])color("")cube([5+5,22,8]);
translate([0,32,-18])color("")cube([5,22,30]);
//translate([-17,32+19,-18])color("")cube([22,5,20]);
}
translate([0,32+9,-5+10])rotate([0,90,0]){cylinder(r=5.7/2,h=20);translate([0,0,5-2])cylinder(r=9.7/2,h=2);}
translate([-10,32+9,-5])rotate([0,-90,-90]){cylinder(r=5.7/2,h=200);translate([0,0,13])cylinder(r=9.7/2,h=2);}
}
}



module motormountthin_microswiss(){
 mmx = 42;
 mmy = 42;
 mmz = 3;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 3.7/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx+10,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  cylinder(r=motrad, h=9);
  cylinder(r=8.2/2, h=109);
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  }
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-5])
  cylinder(r=m3rad, h=50);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-5])cylinder(r=m3rad, h=50, $fn=30);
  translate([mmposx+mmx/2+15.5-1.5+1.4,mmposy+mmy/2+15.5,mmposz-5]){ 
   cylinder(r=m3rad, h=90, $fn=30);
  //translate([0,-2.25,0])cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5+1.4,mmposy+mmy/2-15.5,mmposz-5]){
  cylinder(r=m3rad, h=90);
  //translate([0,-2.25,0])  cube([8,4.5,90]);
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
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
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



module clamp_m8_smoothrodholder_for_bed(){
difference(){
translate([-8,17,0])cube([20,20,4]);
translate([1,10-1+17,0-100])cylinder(r=3.8/2,h=180);
}
difference(){
translate([20+6,27+8,12])rotate([90,0,0])cylinder(r=10/2,h=16);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=25);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
difference(){
union(){
translate([20,27,0])cylinder(r=18/2,h=17);
translate([20,27,0])cylinder(r=26/2,h=4);
/*
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
*/
}
//translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3/2,h=25);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();
}

module zendstop_clamp(){
/*
difference(){
translate([20+6,27+8,12])rotate([90,0,0])cylinder(r=10/2,h=16);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=25, $fn=30);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
*/
translate([0,0,5])difference(){
union(){
translate([-2-4-10,28-2,0])cube([24+8,10,7]);
translate([-2-4-2+18+2,28+4,0])cube([15,4,3+7+48]);
}
translate([-3,0,0]){
translate([10,47,2])rotate([90,0,0])cylinder(r=2.8/2,h=50,$fn=30);
//translate([10-8+23,47,2+11-8])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
for(z=[-1:14]){
translate([10-8+23,47,2+11-8+31+z])rotate([90,0,0])cylinder(r=3.8/2,h=50,$fn=30);
}
translate([10-20,47,2])rotate([90,0,0])cylinder(r=2.8/2,h=50,$fn=30);
}
}
/*
difference(){
union(){
translate([20,27,5])cylinder(r=18/2,h=17-5);
//translate([20,27,0])cylinder(r=26/2,h=4);
}
//translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3/2,h=25);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
*/
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();


}






























module clamp_bottom_simple_m8_smoothrodholder_for_z(){
difference(){
translate([20+6,27+8,12])rotate([90,0,0])cylinder(r=10/2,h=16);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=25);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
difference(){
union(){
translate([20,27,0])cylinder(r=18/2,h=17);
translate([20,27,0])cylinder(r=28/2,h=4);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);
translate([20,10-1,0-100])cylinder(r=5.7/2,h=180);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3/2,h=25);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();
}

























//this is where I need to modify
module zbed_smz_wider(){
 translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_riser();
 translate([35+370+120,134-49,105])color("")extrusion_riser();
 translate([0,100,0]){
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-18,105])color("")extrusion_riser();
 translate([35+370+120,134-18,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider(0,0);
 }
}


module zbed_smz_components_wider_threadedrod(shim,modshim){
if (modshim == 0){
 /* the bed levelers */
 translate([0,0+50,7]){
 //translate([25-30-6,7.5+7,16.5+17+68])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 //translate([25-30-6,7.5+7,16.5+17+218])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 }
 /*
 */
 //translate([25-30-6+12,7.5+7+50,16.5+17+7+70])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 //translate([25-30-6+12,7.5+7+50,16.5+17+218+7])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 color(""){
 //right here
 /*
 translate([30,0,298])rotate([0,180,0]){
 translate([0+30-60+61,0+0,shim-5+modshim+85-85-0.5+83+2.5])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 translate([0+30-60+61,0,214.5+shim+modshim+83-85+83+2.5-66])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 }
 */
 //translate([25,7.5+50,27-2.5+67])rotate([0,-90,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([25,7.5+50,26.5+218+35.5-2.5])rotate([0,-90,0])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed();
 translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed_wider();
 //translate([25+10,7+15.5+50,55+187.8])rotate([180,0,0])color("silver") left_zbed_connector_bar_metal();
 //translate([25+10-5-1.5,7+15.5+50-20+5-7,55+187.8+80-35])rotate([180,0,0])color("silver")cylinder(r=8.7/2,h=205,$fn=30);
 }
}
}


module zbed_smz_components_wider_extrusion(shim,modshim){
if (modshim == 0){
 /* the bed levelers */
 translate([0,0+50,7]){
 //translate([25-30-6,7.5+7,16.5+17+68])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 //translate([25-30-6,7.5+7,16.5+17+218])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 }
 /*
 */
 //translate([25-30-6+12,7.5+7+50,16.5+17+7+70])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 //translate([25-30-6+12,7.5+7+50,16.5+17+218+7])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 color(""){
 //right here
 translate([30,0,298])rotate([0,180,0]){
 translate([0+30-60+61,0+0,shim-5+modshim+85-85-0.5+83+2.5])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 translate([0+30-60+61,0,214.5+shim+modshim+83-85+83+2.5-66])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 }
 //translate([25,7.5+50,27-2.5+67])rotate([0,-90,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([25,7.5+50,26.5+218+35.5-2.5])rotate([0,-90,0])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed();
 translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed_wider();
 //translate([25+10,7+15.5+50,55+187.8])rotate([180,0,0])color("silver") left_zbed_connector_bar_metal();
 //translate([25+10-5-1.5,7+15.5+50-20+5-7,55+187.8+80-35])rotate([180,0,0])color("silver")cylinder(r=8.7/2,h=205,$fn=30);
 //translate([25+10-5-1.5-31,7+15.5+50-20+5-7+14,55+187.8+80-35-0])rotate([180,0,0])tslot20(200);
 }
}
}











module zbed_smz_components_wider(shim,modshim){
if (modshim == 0){
 /* the bed levelers */
 translate([0,0+50,7]){
 translate([25-30-6,7.5+7,16.5+17+68])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 translate([25-30-6,7.5+7,16.5+17+218])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 }
 /*
 */
 translate([25-30-6+12,7.5+7+50,16.5+17+7+70])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 translate([25-30-6+12,7.5+7+50,16.5+17+218+7])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 color(""){
 //right here
 translate([30,0,298])rotate([0,180,0]){
 translate([0+30-60+61,0+0,shim-5+modshim+85-85-0.5+83+2.5])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 translate([0+30-60+61,0,214.5+shim+modshim+83-85+83+2.5-66])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 }
 translate([25,7.5+50,27-2.5+67])rotate([0,-90,0])bed_leveler_better_lm8uu_for_metalversion();
 translate([25,7.5+50,26.5+218+35.5-2.5])rotate([0,-90,0])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed();
 translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed_wider();
 translate([25+10,7+15.5+50,55+187.8])rotate([180,0,0])color("silver") left_zbed_connector_bar_metal();
 }
}
}





module slidedeck_adjust_wheel_larger(){
//for leveling bed works with bed level
difference(){
cylinder(r=10,h=3);
//cylinder(r=10,h=5);
translate([0,0,0]){cylinder(r=2.8/2,h=80);}
//translate([0,0,2])cylinder(r=6.0/2,h=3.5,$fn=6);}
}
}


module slidedeck_adjust_wheel(){
//for leveling bed works with bed level
difference(){
//cylinder(r=10,h=5);
cylinder(r=5,h=5);
translate([0,0,0]){cylinder(r=2.8/2,h=80);}
//translate([0,0,2])cylinder(r=6.0/2,h=3.5,$fn=6);}
}
}

module lm8uu_smz_glider_wider(){
 translate([-19+35,40,42])difference(){
  union(){
  color("pink")translate([20-4-6,-35+51-5+5,-20+10])cube([10,18+5+10-13,20]);
  //translate([20-4-6-2,-35+51-5-7-2,-20])cube([10+2,13+2,40]);
  translate([20-10,-35+60,-10+6])cube([10,63-60,8]);
  translate([-10,50,-4.7])cube([30,20,10]);
  for(i=[0:4]){
  translate([15.,50+i,-9-3])cylinder(r=10/2,h=19+5);
  translate([-5.,50+i,-9-3])cylinder(r=10/2,h=19+5);
  }
  difference(){
   translate([20-10,-35+50+7,-10+0])cube([10,18-4.5,20]);
  }
  translate([20-10-10-28+14,-35+30+5+45,-0])rotate([0,90,0])cylinder(r=25/2,h=48-14);
  }

  translate([20-4-6-30,-35+51-5+5-19.5,-20-0])cube([30,40,70]);

  translate([0-28,45,0]){
   translate([0,0,0])rotate([0,90,-0])cylinder(r=8.7/2,h=60);
   //translate([43-1.5,-27.5-4-3,0-20-5])rotate([0,0,-0])cylinder(r=8.7/2,h=60);
   rotate([0,90,0])cylinder(r=15.4/2,h=60);
   translate([0,0,-4.75])cube([50,50,10+0.1]);
  }
  translate([15.-20,55,-15])cylinder(r=3/2,h=30,$fn=30);
  translate([15.-0,55,-15])cylinder(r=3/2,h=30, $fn=30);
  translate([0,16.5,0]){
  translate([10-5-60+100-52,-25-0+50+20-3-32-0.5,12.5-6-7])rotate([0,90,0]){translate([0,0,0])cylinder(r=2.8/2,h=240, $fn=30);}
  translate([10-5-60+100-52+17+10+4,-25-0+50+20-3-32-0.5,12.5-6-7])rotate([0,-90,0]){translate([0,0,0])cylinder(r=9/2,h=10, $fn=30);}
 }
  //translate([10-5-60+100-32,-25-0+50+20-3,12.5-6-7])rotate([90,0,0]){translate([0,0,0])cylinder(r=2.8/2,h=240);}
  //translate([10-5-5-60,-25+50,-12.5])rotate([0,90,0]){cylinder(r=4.7/2,h=240);}
 }
}


module bed_leveler_better_lm8uu_for_metalversion(){
difference(){
color("silver")union(){
cube([35,15,6]);
cube([25+10+25+4-27,15,6]);
//translate([25-7.5,7.5,0])cylinder(r=15/2,h=11+5);
translate([35/2,7.5,0])cylinder(r=15/2,h=11+5);
}
translate([5,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5,7.5,-1])cylinder(r=3.8/2,h=20);
translate([5+25,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([35/2,7.5,6+5])cylinder(r=10/2,h=11);
translate([35/2,7.5,-1+0])cylinder(r=2.8/2,h=300);
translate([35/2,7.5,-0.1])cylinder(r=9.5/2,h=4);
/*
translate([5+53,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+52,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+51,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+50,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+49,7.5,-1-50])cylinder(r=3.8/2,h=200);
*/
}
//for display
translate([35/2,7.5,-1+0])color("silver")cylinder(r=2.8/2,h=40);
}

module zbedslot_516_smz_zbed_wider_lid(){

translate([-14,3,25])difference(){
union(){
cylinder(r=31/2,h=4);
//cylinder(r=31/2,h=8);
}
translate([0,0,-3])cylinder(r=10/2,h=40);
translate([-21+5,2-45.5,-25])cube([30,35,50]);
//translate([0,0,5])cylinder(r1=23/2,r2=22.5/2,h=19);
//translate([0,0,5])cylinder(r1=23/2,r2=23/2,h=3.1);
//translate([0,0,5])cylinder(r1=15/2,r2=15/2,h=19);
//translate([0,0,5])cylinder(r1=23/2,r2=23/2,h=4);
//translate([0,0,5+10])cylinder(r=22.5/2,h=19);
   translate([16.5,-2-7.5,0]){
   translate([-1-40+36-0-1,0+30-20,1.5-20])rotate([0,0,0])cylinder(r=3.8/2,h=160,$fn=30);
   translate([-1-40+36-0-1-16-5.5,0+30-20,1.5-20])rotate([0,0,0])cylinder(r=3.8/2,h=160,$fn=30);
   //translate([-1-40+36-0-1,0+30-20,1.5-1.5+4])rotate([0,0,0])cylinder(r=8/2,h=30,$fn=30);
   }



}
}

module zbedslot_516_smz_zbed_wider(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;
  //bed
  bl = 275;
  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;
  translate([-12,-14.5,200])  rotate([0,0,90])
  {
  difference(){
  translate([18,2,33])rotate([0,180,0])pololu_screw_nobacklash();
  translate([-21,2-18,-25])cube([30,35,50]);
  } 
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   translate([-1+3,0,0])cube([28-3-6,15,8]);
   //translate([-1-25+20,0,0-5])cube([28-3+22-20,15,13]);
   //translate([15,13,0]) rotate([0,0,-30])cube([9,10,8]);
   //translate([19,-7,0]) rotate([0,0,30])cube([10,10,8]);
   translate([0,-5-2.5,0])
   translate([-1-40+40+3-17+17,5,0])cube([28-4-3+40-40-3+17-17,30-10,8]);
   //translate([-1-40-3+40-10,-7.5,-4])cube([28-4-3+40-40-9+2,30,8+4]);
   }
   //translate([43-1.5,-27.5-4-3,0-20-5])rotate([0,0,-0])cylinder(r=8.7/2,h=60);
   //translate([-1-40+36,0+30,1.5])rotate([90,0,0])cylinder(r=8.7/2,h=60,$fn=30);
   translate([16.5-18+17,-2,0]){
   for(i=[0:3]){
   translate([-1-40+36-0-1+i,0+30-20,1.5-20])rotate([0,0,0])cylinder(r=3.2/2,h=160,$fn=30);
   translate([-1-40+36-0-1+i,0+30-20,1.5-1.5+4])rotate([0,0,0])cylinder(r=8/2,h=30,$fn=30);
   }
   }
   translate([31,7.5,-22])cylinder(r=31/2,h=30);
   /*
   translate([0,-0.5,0]){
   translate([45*0.25-0.75-6+9-2.5-44+40,13/2+9-5+2+4,-20]){
   cylinder(r=3.8/2,h=100);}//translate([0,0,2])cylinder(r=9.7/2,h=5);
   translate([45*0.25-0.75-6+9-2.5-44+40,13/2-5+2-3,-20]){cylinder(r=3.8/2,h=100);} //translate([0,0,2])cylinder(r=9.7/2,h=5);
   }
   */
  }
  }
}

module zbedslot_516_smz_zbed_wider_cap(){
difference(){
cylinder(r=(31+8)/2,h=14);
translate([0,0,5])cylinder(r=31.4/2,h=30);
translate([0,0,-5])cylinder(r=8.4/2,h=60);
translate([-25,0,10])rotate([0,90,0])cylinder(r=2.8/2,h=60,$fn=30);
}
}




module pololu_screw_nobacklash(){
difference(){
union(){
cylinder(r=31/2,h=23);
//cylinder(r=31/2,h=8);
}
//translate([0,0,5])cylinder(r1=23/2,r2=22.5/2,h=19);
translate([0,0,5])cylinder(r1=23/2,r2=23/2,h=3.1);
translate([0,0,5])cylinder(r1=15/2,r2=15/2,h=19);
//translate([0,0,5])cylinder(r1=23/2,r2=23/2,h=4);
//translate([0,0,5+10])cylinder(r=22.5/2,h=19);
translate([0,0,-0.2])cylinder(r=11.5/2,h=25);
translate([0,0,-0.2])cylinder(r=8.7/2,h=205);
translate([0,-8,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([0,8,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([-8,0,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([8,0,-0.2])cylinder(r=2.8/2,h=6,$fn=30);
translate([0,-11,5])cylinder(r=2.8/2,h=35,$fn=30);
translate([0,11,5])cylinder(r=2.8/2,h=35,$fn=30);
}
}

module left_zbed_connector_bar_metal(){
  difference(){
  union(){
  translate([0,-2,-77.])cube([5,15+4,350]);
  //translate([0,-6,9.5])cube([5,18,20]);
  //translate([0,-6,156-10.5])cube([5,18,20]);
  }
  //translate([-35,7.5,17.5+1.4])rotate([0,90,0])cylinder(r=2.8/2,h=70);
  translate([0+0,0+2.5,5.8-35]){
  for(i=[-2:1]){
  translate([-35,7.5+i,9.5+156/2-8])rotate([0,90,0])cylinder(r=3.8/2,h=180);
  translate([-35,7.5+i,9.5+156/2+8])rotate([0,90,0])cylinder(r=3.8/2,h=180);
  }
  }
  translate([-35-2,7.5,9.5+6.75+50+101.5])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50-185])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50-185+54])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([0,0,2.5]){
  for(i=[-2:2]){
   translate([-35-2,7.5+i,9.5+6.75-23.5])rotate([0,90,0])cylinder(r=3.8/2,h=170);
   translate([-35-2,7.5+i,9.5+6.75-23.5-25])rotate([0,90,0])cylinder(r=3.8/2,h=170);
  }
  translate([0,0,218-66]){
  for(i=[-2:2]){
   translate([-35-2,7.5+i,9.5+6.75-23.5])rotate([0,90,0])cylinder(r=3.8/2,h=170);
   translate([-35-2,7.5+i,9.5+6.75-23.5-25])rotate([0,90,0])cylinder(r=3.8/2,h=170);
  }
 }
 }
 }
}


module laser_zbed(zz){

//translate([0,0,zz-144])import("laser_zbed_144.stl");


translate([30,30,zz])
difference(){
//translate([-8,0,0])color("lightgray")cube([397,350,3]);
translate([-8+6.5-0.25,0,0])color("lightgray")cube([383.5,350,3]);
translate([227,100,-0.1])cube([100+6,100-10,5]);
translate([45-8,285-65,-0.1])cube([180+100+20+8,160,5]);
translate([45-5,65-65-0.1,-0.1])cube([84,100,5]);

lzd = 3.8;

translate([5,10,-40]){
for(i=[0]){
translate([i*25,0,0])cylinder(r=lzd/2,h=200);
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80,-40]){
for(i=[0:14]){
if(i==1){
for(j=[-7:30]){
translate([i*25,-30+j+10,0])cylinder(r=lzd/2,h=200);
translate([5*25,-30+j+10,0])cylinder(r=lzd/2,h=200);
translate([5*25,-30+j+10-3,0])cylinder(r=lzd/2,h=200);
}
}else{
translate([i*25,-30,0])cylinder(r=lzd/2,h=200);
}
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80+25,-40]){
for(i=[0:8]){
if(i==7){
translate([i*25,15,0])cylinder(r=(lzd+1)/2,h=200);
}else{
translate([i*25,15,0])cylinder(r=lzd/2,h=200);
}
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80+25+50,-40]){
for(i=[1:8]){
if(i==7){
translate([i*25,15,0])cylinder(r=(lzd+1)/2,h=200);
}else{
translate([i*25,15,0])cylinder(r=lzd/2,h=200);
}
}

for(i=[-0.5,0,0.5]){
translate([15*25-5-370,16.5-97.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+120.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+120.5+i+12,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i+54,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i+54+30,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+16+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5-5.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5+16-5.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5-97.5-2.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5+120.5-2.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
}
//translate([15*25-5-1,16.5-97.5-14.5+25,0])cylinder(r=(lzd+1.5)/2,h=200);
//translate([15*25-5-1,16.5+16-6.,0])cylinder(r=(lzd+1.5)/2,h=200);
//translate([15*25-5-1,16.5+16-6.-16,0])cylinder(r=(lzd+1.5)/2,h=200);

}
translate([5,80+193,-40]){
for(i=[0]){
//translate([i*25+10,-30,0])cylinder(r=lzd/2,h=200);
translate([i*25+25-10,60-0,0])cylinder(r=lzd/2,h=200);
translate([i*25+25-10,60-50,0])cylinder(r=lzd/2,h=200);
}
translate([15*25-30+10,60,0])cylinder(r=lzd/2,h=200);
translate([15*25-30+10,60-50,0])cylinder(r=lzd/2,h=200);
//translate([15*25-5,0-50,0])cylinder(r=lzd/2,h=200);
//translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5-15.9,80+193-56.5,-40]){
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
translate([15*25-5-35,-10,0])cylinder(r=lzd/2,h=200);
translate([15*25-5-125,-10,0])cylinder(r=lzd/2,h=200);
}
translate([14*25-7,130-4,0])cylinder(r=lzd/2,h=200);
translate([14*25-7,130-17,0])cylinder(r=lzd/2,h=200);
translate([14*25,130+40,0])cylinder(r=lzd/2,h=200);

translate([14*25-3,130-17-30,0])cylinder(r=(lzd)/2,h=200);
translate([14*25-3,130-17-80,0])cylinder(r=lzd/2,h=200);
translate([14*25-3,130-17-105,0])cylinder(r=(lzd)/2,h=200);
translate([14*25-3-30,130-17-105,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-30-80,130-17-105,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-80,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-35,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-12,0])cylinder(r=lzd/2,h=200);


translate([-30,-30,0]){
translate([46+5,70-14+10,-200])cylinder(r=2.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=2.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=2.8/2,h=500);
translate([219,-0,282])rotate([0,180,0]){
translate([46+5,70-14+10,144-5-25])cylinder(r=2.8/2,h=500);
translate([46+5,70-14+80,144-5-25])cylinder(r=2.8/2,h=500);
translate([46+5+25,70-14+86,144-5-25])cylinder(r=2.8/2,h=500);
}
}
translate([8-30,357,282])rotate([0,180,180]){
translate([46+5,70-14+10,-200])cylinder(r=3.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=3.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=3.8/2,h=500);
}
translate([219-50+263-30,357,0])rotate([0,0,180]){
translate([46+5,70-14+10,-200])cylinder(r=3.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=3.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=3.8/2,h=500);
}
}

/*
*/
}




module multichannel_laser_zbed_wider_deeper(zz){
translate([30-79,30,zz+3])
translate([-8+6.5-0.25+100,0+50,4])color("red")cube([400,200,3]);
translate([30-79,30,zz+3])
difference(){
//translate([-8,0,0])color("lightgray")cube([397,350,3]);
translate([-8+6.5-0.25,0+20-45,0])color("lightgray")cube([383.5+158+42,350-20+60,3]);
//translate([227,100,-0.1])cube([100+6,100-10,5]);
translate([45-8,285-65+60,-0.1])cube([180+100+20+8+158+42,160,5]);
translate([45-8,285-65-340+9,-0.1])cube([180+100+20+8+158+42,160,5]);
//translate([45-5,65-65-0.1,-0.1])cube([84,100,5]);
lzd = 3.2;
for(i=[-3:3]){
translate([5,74.5+i-3.5+67,-40])cylinder(r=(lzd+1)/2,h=200);
translate([5,74.5+218+i-3.5,-40])cylinder(r=(lzd+1)/2,h=200);
translate([369+158+42,0,0]){
translate([5,74.5+i-3.5+67,-40])cylinder(r=(lzd+1)/2,h=200);
translate([5,74.5+218+i-3.5,-40])cylinder(r=(lzd+1)/2,h=200);
}
}
}
}

























