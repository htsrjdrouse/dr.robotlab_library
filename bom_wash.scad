include<arducam-raspi.scad>


module thermoblock_breadboard_slider(){

translate([39,-5,0])rotate([0,90,0])difference(){
union(){
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([0,0-25-15,35.5-10+6])cube([7,93+0,17.5]);
//translate([-4,-3,-15])
//#translate([-3,0-25-15+30,35.5-10+6])cube([7,63+0,17.5]);
}
//translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
//translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
}

/*
translate([30,-4,-30+83+15])rotate([0,-90,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([30,-13,-30+83+15])rotate([0,-90,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([30,-4,-30-15])rotate([0,-90,0])cylinder(r=3.8/2,h=100,$fn=30);
translate([30,-13,-30-15])rotate([0,-90,0])cylinder(r=3.8/2,h=100,$fn=30);
*/
/*
translate([0-2,-7.5+2.8-4+0.3,16+13-6+4.5-8]){
for(i=[-0:9]){
 for(j=[-1:3]){
 translate([-3.1-80,-11.725-15+5+5+j,-17.5+2-36+3+i*9 ])rotate([90,0,90]){translate([0,0,82.06])cylinder(r=8/2,h=3.5);cylinder(r=3.7/2,h=500);}
 }
}
}
*/
//translate([0-20,26-5-30+1,-27+24])rotate([0,90,0])cylinder(r=3.8/2,h=200,$fn=30);
//translate([0-20,26-5-30+1,-27+54])rotate([0,90,0])cylinder(r=3.8/2,h=200,$fn=30);
for(i=[-20:58]){
translate([0-10,26-5-30,-27+i+5])rotate([0,90,0])cylinder(r=5/2,h=20);
translate([0-10+12,26-5-30,-27+i+5])rotate([0,90,0])cylinder(r=12/2,h=20);
}
/*
*/
}
}










module thermoblockcombo(){
thermoblock();
translate([40,0,0])thermoblock();
}
module imagingblock(){
 translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("coral")union(){
 translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20,-3,-3])cube([40+8,((77*1.2)+8),40]);
 translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=5.5/2,h=30,$fn=30);
 translate([-51,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=13.5/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=5.5/2,h=30,$fn=30);
 }
}

module imagingblock_base(){
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("coral")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20,-3,-3])cube([40+8,((77*1.2)+8),40]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 translate([-3-20+8-10,-3+7+7,-3+4+8])cube([70-8-5,((77*1.2))-6-14,18+13]);
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([0,0,-27]){
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 }
 translate([20,1,23])cylinder(r=2.9/2,h=50,$fn=30);
 translate([20,1+93,23])cylinder(r=2.9/2,h=50,$fn=30);
 translate([-39,0,0]){
 translate([20,1,23])cylinder(r=2.9/2,h=50,$fn=30);
 translate([20,1+93,23])cylinder(r=2.9/2,h=50,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=13.5/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 }
}




module imagingblock_lid(){
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("yellow")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20-5,-3,-3+40])cube([40+8+10,((77*1.2)+8),5]);
 translate([-3-20-5-50-35,-3+35,-3+40])cube([40+8+10+50+35,30,4]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 translate([11-80-35,38,23])cylinder(r=4.7/2,h=50,$fn=30);
 translate([11-80-35,37+18,23])cylinder(r=4.7/2,h=50,$fn=30);


 //translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 //translate([-3-20+8-10,-3+7+7,-3+4+8])cube([70-8-5,((77*1.2))-6-14,18+13]);
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([0,0,-27]){
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=2.9/2,h=250,$fn=30);
 }
 translate([20,1,23])cylinder(r=3.9/2,h=50,$fn=30);
 translate([20,1+93,23])cylinder(r=3.9/2,h=50,$fn=30);
 translate([-39,0,0]){
 translate([20,1,23])cylinder(r=3.9/2,h=50,$fn=30);
 translate([20,1+93,23])cylinder(r=3.9/2,h=50,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=13.5/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 }
}























module imagingblock_imagingside(){
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")arducam_case_rtPCR();
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("pink")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20-5,-3,-3])cube([5,((77*1.2)+8),40]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 /*
 for(i=[0:0]){
 translate([-51+24,24+45/2+0.4+i+0.2,22-4.5])rotate([0,-90,0])cylinder(r=20/2,h=6,$fn=30);
 }
 */
 translate([-51+24.4,24+45/2+0.4+0+0.2-25-11.,22+14])rotate([0,-180,-40])cube([6+1+12,6,16+15]);
 translate([-51+24-10.5,24+45/2+0.4+0+0.2-25,22+14])rotate([0,-180,-0])cube([4+12+12,6,16+15]);
 translate([-51+24+5,24+45/2+0.4+0+0.2-25+43.5+13,22+14])rotate([0,-180,40])cube([6+1+13,6,16+15]);
 translate([-51+24-10.5,24+45/2+0.4+0+0.2-25+43.5,22+14])rotate([0,-180,0])cube([4+12+12,6,16+15]);
 //translate([-51+24,24+45/2+0.4+0+0.2-25+43.5,22+14])rotate([0,-180,0])cube([6+1+8,6,16+15]);
 translate([-51+24,24+45/2+0.4+0+0.2-25+43.5-40-3.5-8,22+14+1])rotate([0,-180,0])cube([6+1+7.5,49.5+17,3]);
 translate([-51+24,24+45/2+0.4+0+0.2-25+43.5-40-3.5-8+8,22+14+1])rotate([0,-180,0])cube([6+1+7.5+12+12,49.5+17-17,3]);
 translate([-51+24,24+45/2+0.4+0+0.2-25+43.5-40-3.5-8,22+14+1-32])rotate([0,-180,0])cube([6+1+7.5,49.5+17,3]);
 translate([-51+24,24+45/2+0.4+0+0.2-25+43.5-40-3.5-8+8,22+14+1-32])rotate([0,-180,0])cube([6+1+7.5+12+12,49.5+17-17,3]);
}
 translate([-3-20-5+5,-3,-3])cube([5,((77*1.2)+8),40]);
 //translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 //translate([-3-20+8-10,-3+7+7,-3+4+8])cube([70-8-5,((77*1.2))-6-14,18+13]);
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([0,0,-27]){
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51-20,24+1,13])rotate([0,90,0])cylinder(r=3.8/2,h=140,$fn=30);
 translate([-51-20,24+1,13+18])rotate([0,90,0])cylinder(r=3.8/2,h=140,$fn=30);
 for(i=[-4:4]){
 //translate([-51,24+45/2+0.4+i+0.2,22-4.5])rotate([0,90,0])cylinder(r=30/2,h=40,$fn=30);
 translate([-51+22,24+45/2+0.4+i+0.2-5.5-9.5-7.5,22-4.5-13])cube([25+6,25+4.5+14.5,29.5]);
 }
 translate([-51-20,24+45-0.4,13])rotate([0,90,0])cylinder(r=3.8/2,h=140,$fn=30);
 translate([-51-20,24+45-0.4,13+18])rotate([0,90,0])cylinder(r=3.8/2,h=140,$fn=30);
 }
}


module imagingblock_lightingside_diffuser(){
 difference(){
 union(){
 translate([-3-20-5-2,-3+15-2,-3+14])cube([5-2,((77*1.2)+8)-30+2,40-18]);
 translate([-3-20-5-2,-3+15-2-5,-3+14])cube([5-2,((77*1.2)+8)-30+2+10,40-18-6]);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24,13+17.5])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24+45,13+17.5])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 }
}

module imagingblock_lightingside(){
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("lime")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20-5,-3,-3])cube([5,((77*1.2)+8),40]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 //translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 //translate([-3-20+8-10,-3+7+7,-3+4+8])cube([70-8-5,((77*1.2))-6-14,18+13]);
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([0,0,-27]){
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24,13+17.5])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 for(i=[-34:34]){
 translate([-51,24+45/2+0.4+i,22])rotate([0,90,0])cylinder(r=8/2,h=40,$fn=30);
 }
 translate([-51,24+45,13+17.5])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=3.8/2,h=40,$fn=30);
 }
}


module imagingblock_lightingholder_led(){

for(i=[0:17]){
translate([0,i*4.7,0]){
translate([-20,8,21])rotate([0,90,0])cylinder(r=4.2/2,h=7,$fn=30);
translate([-20,8,21-1.3])rotate([0,90,0])cylinder(r=0.5/2,h=30,$fn=30);
translate([-20,8,21-1.3+3])rotate([0,90,0])cylinder(r=0.5/2,h=30,$fn=30);
}
}
}

module imagingblock_lightingholder(){
 //translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("peru")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 //translate([-3-20-5,-3,-3])cube([5,((77*1.2)+8),40]);
 translate([11-32,14+0*9-2,23-5-8-2])cube([9.9,70,25+4]);
 translate([11-32,14+0*9-2-10,23-5-8-2+7])cube([9.9,70+22,12]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 //translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 //translate([-3-20+8-10,-3+7+7,-3+4+8])cube([70-8-5,((77*1.2))-6-14,18+13]);
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([0,0,-27]){
 translate([20-22-60,1+7-2,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 translate([20-22-60,1+7+80,23+8])rotate([0,90,0])cylinder(r=3.9/2,h=250,$fn=30);
 }
 //cube([22,(79*2),27]);
 /*
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 */
 translate([11-32-3,14+0*9-2-10+3,23-5-8-2+7.5+1])cube([9.9,70+14+2,11-2]);
 translate([-51,24,13])rotate([0,90,0])cylinder(r=4.8/2,h=40,$fn=30);
 translate([-51,24,13+17.5])rotate([0,90,0])cylinder(r=4.8/2,h=40,$fn=30);
 /*
 for(i=[-25:25]){
 translate([-51,24+45/2+0.4+i,22])rotate([0,90,0])cylinder(r=12/2,h=40,$fn=30);
 }
 */
 //translate([-5-13,24+45,13+17.5-9])rotate([90,0,0])cylinder(r=4.8/2,h=80,$fn=30);
 translate([-51,24+45,13+17.5])rotate([0,90,0])cylinder(r=4.8/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=4.8/2,h=40,$fn=30);

 for(i=[0:17]){
 translate([0,i*4.7,0]){
 translate([-20,8,21-1.3])rotate([0,90,0])cylinder(r=1/2,h=30,$fn=30);
 translate([-20,8,21-1.3+3])rotate([0,90,0])cylinder(r=1/2,h=30,$fn=30);
 }
 }
 }
}


























module plugblock(){
 color("lightblue")cube([22,(79*2),27]);
 difference(){
 union(){
 translate([-3,-3,-3])cube([20+8,((77*2)+8),24]);
 }
 cube([22,(79*2),27]);
}
}

module thermoblock_tslotconnect(){
 //actual_thermoblock();
 difference(){
 union(){
 //translate([-3,-3,-3])cube([20+8,77+8,24]);
 translate([-9+40,-3-20,-3])cube([10,15+68-40,7]);
 //translate([-9,-3+20,-3])cube([4+25,40,4]);
 translate([-9-50,-3-20,-3])cube([10,15+68-40,7]);
 translate([-9-50,-3-27,-3])cube([100,15+68-65,7]);
 }
 //cube([22,79,27]);
 translate([-14,3+22,1+12])rotate([0,90,0])cylinder(r=4.8/2,h=22,$fn=30);
 translate([-14,3+22+30,1+12])rotate([0,90,0])cylinder(r=4.8/2,h=22,$fn=30);
 //translate([11,7+2.5+13,-10])cylinder(r=4.7/2,h=50,$fn=30);
 //translate([11,7+2.5+14+13,-10])cylinder(r=4.7/2,h=50,$fn=30);
 translate([11-20,7+2.5-31,-10])cylinder(r=4.7/2,h=50,$fn=30);
 translate([11-60,7+2.5-31,-10])cylinder(r=4.7/2,h=50,$fn=30);
 translate([11+17,7+2.5-31,-10])cylinder(r=4.7/2,h=50,$fn=30);
 //translate([11,38+1.5,-5])cylinder(r=4/2,h=50,$fn=30);
 translate([-14-50,3,1])rotate([0,90,0])cylinder(r=3.8/2,h=122,$fn=30);
 translate([-14,74,1])rotate([0,90,0])cylinder(r=3.8/2,h=122,$fn=30);
 /*
 for(i=[-3:3]){
 translate([11-i,20+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 translate([11-i,55+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 } 
 */
 }
}




module thermoblock_lid(){
 difference(){
 translate([-3-3.5,-3-3,-3+26])cube([20+8+4,77+8+2,3]);
 for(i=[0:7]){
 translate([-3-3.5+13.5,-3-3+10+9*i,-3+26-10])#cylinder(r=4.7/2,h=30,$fn=30);
 }
 }
}


module thermoblock_plate(){
difference(){
union(){
translate([10,5,7]){
thermoblock_breadboard_slider();
translate([0,103,0])thermoblock_breadboard_slider();
}
translate([-1,-2,0])cube([93,115-26,7]);
}
translate([25,-15+25,0])cube([92-50,115-50,10]);
/*
   #translate([7-3+9,12-40+16+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9,12-40+16+103+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+18,12-40+16+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+18,12-40+16+103+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+55,12-40+16+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+55,12-40+16+103+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+70,12-40+16+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+70,12-40+16+103+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+38,12-40+16+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
   #translate([7-3+9+38,12-40+16+103+3,-9])rotate([0,0,0])cylinder(r=2.9/2,h=159.1,$fn=30);
*/
}
}

module thermoblock(){
 //actual_thermoblock();
 difference(){
 union(){
 translate([-3-2,-3-1,-3])cube([20+8+4,77+8+2,26-5.2]);
 translate([-3-2-13,-3-1+20-7,-3])cube([60,44+14,5]);
 translate([-3,-3-15,-3])cube([20+8,77+8-10+40,5]);
 //translate([-9,-3,-3])cube([40,15,7]);
 //translate([-9,82-15,-3])cube([40,15,7]);
 }
 translate([-0.5,-0.25+2,0-8])cube([22+4-3,79+2-2-2,37]);
 #translate([-3-2-13+5,-3-1+20+22,-3])cylinder(r=3.8/2,h=40,$fn=30);
 #translate([-3-2-13+60-5,-3-1+20+22,-3])cylinder(r=3.8/2,h=40,$fn=30);
 #translate([-3-2-13+5,-3-1+20+22-20,-3])cylinder(r=3.8/2,h=40,$fn=30);
 #translate([-3-2-13+5,-3-1+20+22+20,-3])cylinder(r=3.8/2,h=40,$fn=30);
 #translate([-3-2-13-5+60,-3-1+20+22-20,-3])cylinder(r=3.8/2,h=40,$fn=30);
 #translate([-3-2-13-5+60,-3-1+20+22+20,-3])cylinder(r=3.8/2,h=40,$fn=30);
 /*
 translate([11,7+2.5,-5])cylinder(r=4/2,h=50,$fn=30);
 translate([11,38+1.5,-5])cylinder(r=4/2,h=50,$fn=30);
 translate([24,3,1])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
 translate([24,74,1])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
 translate([-24,3,1])rotate([0,90,0])cylinder(r=2.8/2,h=22,$fn=30);
 translate([-24,74,1])rotate([0,90,0])cylinder(r=2.8/2,h=22,$fn=30);
 for(i=[-3:3]){
 translate([11-i,20+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 translate([11-i,55+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 }
 */
   translate([7-3,12-40+16,-9])rotate([0,0,0])cylinder(r=3.7/2,h=159.1,$fn=30);
   translate([7-3,12-40+16+103,-9])rotate([0,0,0])cylinder(r=3.7/2,h=159.1,$fn=30);

   translate([0,-1,0]){
   translate([7,12+3,9])rotate([0,90,0])#cylinder(r=5.7/2,h=59.1,$fn=30);
   translate([7,12+4,9])rotate([0,90,0])#cylinder(r=5.7/2,h=59.1,$fn=30);
   translate([7,12+5,9])rotate([0,90,0])#cylinder(r=5.7/2,h=59.1,$fn=30);
   translate([12,75-10+2-3,9])rotate([0,90,0])cylinder(r=5.7/2,h=59.1,$fn=30);
   translate([12,75-10+2-4,9])rotate([0,90,0])cylinder(r=5.7/2,h=59.1,$fn=30);
   translate([12,75-10+2-5,9])rotate([0,90,0])cylinder(r=5.7/2,h=59.1,$fn=30);
   for(i=[-2:2]){
   translate([12,75/2+2+i,9])rotate([0,90,0])cylinder(r=5.7/2,h=59.1,$fn=30);
   }
   translate([9+7,15+200,9])rotate([90,0,0])cylinder(r=10/2,h=259.1,$fn=30);
   //translate([7,115,7])rotate([90,0,0])cylinder(r=9/2,h=59.1,$fn=30);
   }
 }
}


module actual_thermoblock(){
 color("silver")difference(){
  cube([19.2,75,19.2]);
  union(){
  translate([11,6,23])
  for(i=[0:7]){
   //translate([0,i*9,-15])cylinder(r=3/2,h=19.1,$fn=30);
   //translate([0,i*9,-15])cylinder(r=1/2,h=19.1,$fn=30);
   translate([0,i*9,-15])cylinder(r=2/2,h=19.1,$fn=30);
  }
   translate([10,10,7])rotate([0,90,0])cylinder(r=3.7/2,h=59.1,$fn=30);
   translate([10,75-10,7])rotate([0,90,0])cylinder(r=3.7/2,h=59.1,$fn=30);
   translate([10,75/2,7])rotate([0,90,0])cylinder(r=3.7/2,h=59.1,$fn=30);
   translate([7,15,7])rotate([90,0,0])cylinder(r=9/2,h=59.1,$fn=30);
   translate([7,115,7])rotate([90,0,0])cylinder(r=9/2,h=59.1,$fn=30);
  }
 }
}


module multichannel_tipremoval(){
translate([-148,85,-150])difference(){
union(){
translate([-75.5-5+22-5-34+12,-40,0])cube([29+36-12,90,5]);
translate([-75.5-5+22-5-34+12+10,-40+2,-1])color("white")cube([29+36-12-20,90-4,2]);
translate([-75.5-5+45-7,-40-10,0])cube([20,90+20,5+5]);
translate([-75.5-5+45-7-20-10,-40-10-10+20,0])cube([30,90,5+5]);
}
//translate([-30-30+6,-20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
//translate([-30-30+6,20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
translate([-33,-66,-20])rotate([0,0,90]){
//actually c-to-c spacing on prusa is 8.723 not 9mm
translate([0,-31+65-12,0])
for(j=[0:7]){
for(k=[0:3]){
 //The is for the Rainin LTS tip without the filter
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([7,25/2-8,-0.1])cylinder(r=7.8/2,h=40);
 //The is for the Rainin LTS tip with this is too tight
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.5,25/2-8,-0.1])cylinder(r=6.5/2,h=40);
 translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.8,25/2-8,-0.1])cylinder(r=7/2,h=40);
}}
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,14])cylinder(r=5.7/2,h=240);
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,24])cylinder(r=10/2,h=240);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,14])cylinder(r=5.7/2,h=40);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,24])cylinder(r=10/2,h=40);
translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,14])cylinder(r=5.7/2,h=240);
translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,24])cylinder(r=10/2,h=240);
}
}
}





module washbowl_8tip_base(){
 difference(){
  union(){
  translate([-1.5-2,0-2,0])cube([35+4+2,90+3,18]);
  translate([-13,7,0])cube([13,13,18]);
  translate([-13,7+66,0])cube([13,13,18]);
  }
  translate([-6-1.5,14,5])cylinder(r=3.8/2,h=30);
  translate([-6-1.5,14+66,5])cylinder(r=3.8/2,h=30);
  /*
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=13);
   //translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
  */
  //translate([18,9+4,3])cube([8,70,6]);
  translate([18,9+4-4,6])cube([10,73,20]);
  translate([18+2.5,9+4-4,6+1])rotate([-8,0,0])cube([5,73/2,20]);
  translate([18+2.5,9+4-4+73/2,6-4])rotate([8,0,0])cube([5,73/2,20]);
  translate([18-12.5,9+4-4,3])cube([9,10,20]);
  translate([18-12.5,9+4-4+63,3])cube([9,10,20]);
  translate([18-12.5+2,9+4-4,3])cube([7,73,20]);
  translate([35/2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35/2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,90/2,3-20])cylinder(r=3.7/2,h=40);
  translate([2,90/2,3-20])cylinder(r=3.7/2,h=40);
  translate([35/2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35/2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,90/2,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,90/2,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-12,90/2,-1])cylinder(r=6.8/2,h=20);
  translate([35-25,90/2-40+10,10])rotate([90,90,0])cylinder(r=6.8/2,h=40);
  translate([35-25,90/2-40+10+80+18,10])rotate([90,90,0])cylinder(r=6.8/2,h=40);
 }
}


module washbowl_8tip(){
 difference(){
  union(){
translate([-3,-3,0])cube([35+6,90+6,5]);
translate([55,32,10])rotate([0,180,-90])difference(){
translate([0,-21,5])cube([25,20+13+30,5]);
translate([0,3+30,0])for(i=[0:15]){
translate([6,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
translate([19,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
}
}
  }
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=10);
   translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
  translate([18,9,-0.1])cube([8,70,6]);
  translate([35/2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35/2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35/2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35/2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,90/2,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,90/2,2])cylinder(r=6.5/2,h=3.1);
  translate([2,90/2,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,90/2,2])cylinder(r=6.5/2,h=3.1);
 }
}

module washbowl_8tip_drypad_top(){
 difference(){
  //translate([-4-10,-5,6])cube([35+4+10-9,100,5]);
  union(){
  translate([-4-10,-5,6])cube([35+4+10-1,12,5]);
  translate([-4-10,-5+90,6])cube([35+4+10-1,12,5]);
  }
  translate([31-9,14-14,-50])#cylinder(r=3.8/2,h=200,$fn=30);
  translate([31-9,14-14+92,-50])#cylinder(r=3.8/2,h=200,$fn=30);
  //translate([31-9,14-14+45,-50])#cylinder(r=3.8/2,h=200,$fn=30);
  translate([31-41,14-14,-50])#cylinder(r=3.8/2,h=200,$fn=30);
  translate([31-41,14-14+92,-50])#cylinder(r=3.8/2,h=200,$fn=30);
  //translate([31-41,14-14+45,-50])#cylinder(r=3.8/2,h=200,$fn=30);

  translate([0,0,3.1]){
  translate([31-9,14-14,5])#cylinder(r=8/2,h=3,$fn=30);
  translate([31-9,14-14+92,5])#cylinder(r=8/2,h=3,$fn=30);
  //translate([31-9,14-14+45,5])#cylinder(r=8/2,h=3,$fn=30);
  translate([31-41,14-14,5])#cylinder(r=8/2,h=3,$fn=30);
  translate([31-41,14-14+92,5])#cylinder(r=8/2,h=3,$fn=30);
  //translate([31-41,14-14+45,5])#cylinder(r=8/2,h=3,$fn=30);
  }

 }
}
module washbowl_8tip_drypad(){
 difference(){
  union(){ 
  translate([-4-10,-5,0])cube([35+4+10,100,5]);
/*
translate([55,32,10])rotate([0,180,-90])difference(){
translate([0,-21,5])cube([25,20+13+30,5]);
translate([0,3+30,0])for(i=[0:15]){
translate([6,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
translate([19,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
}
}
*/
  }
 
 /*
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=10);
   translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
 */
  translate([31-9,14-14,-50])#cylinder(r=2.8/2,h=200,$fn=30);
  translate([31-9,14-14+92,-50])#cylinder(r=2.8/2,h=200,$fn=30);
  //translate([31-9,14-14+45,-50])#cylinder(r=2.8/2,h=200,$fn=30);
  translate([31-41,14-14,-50])#cylinder(r=2.8/2,h=200,$fn=30);
  translate([31-41,14-14+92,-50])#cylinder(r=2.8/2,h=200,$fn=30);
  //translate([31-41,14-14+45,-50])#cylinder(r=2.8/2,h=200,$fn=30);


  translate([-5,0,0]){
  translate([18-4-9-3,9,-0.1])cube([5,70,6]);
  translate([18-4-3,9,-0.1])cube([5,70,6]);
  translate([18+5-3,9,-0.1])cube([5,70,6]);
  }

  translate([31,14,-50])cylinder(r=4.7/2,h=200);
  translate([31,14,5-2.9])cylinder(r=10/2,h=3);
  translate([31,14+66,-50])cylinder(r=4.7/2,h=200);
  translate([31,14+66,5-2.9])cylinder(r=11/2,h=3);
 }
}





