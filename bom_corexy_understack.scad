
module laser(){
 translate([-28-10+20,28,-41+20-7])cylinder(r=2/2,h=185,$fn=30);
}
module lasermodule(){
 translate([-28-10+20,28,-41+20-7])cylinder(r=10/2,h=32,$fn=30);
}


module corexy_lasermount(){
 //translate([0,0,6+10])color("red")laser();
 translate([0+14,0,6+10])color("green")laser();
 //translate([0+28,0,6+10])color("blue")laser();
 //translate([0+28+14,0,6+10])color("orange")laser();

 translate([0,0,6+10])color("red")lasermodule();
 translate([0+14,0,6+10])color("green")lasermodule();
 translate([0+28,0,6+10])color("blue")lasermodule();
 translate([0+28+14,0,6+10])color("orange")lasermodule();

 translate([0,0,6+10])difference(){
 union(){
 translate([-28-10,23,-41+20])cube([81,10,5]);
 translate([-28-10+10,23-20,-41+20])cube([61,50,5]);
 }
 translate([-28+10,23+5,-71])cylinder(r=10/2,h=130,$fn=30);
 translate([-28+24,23+5,-71])cylinder(r=10/2,h=130,$fn=30);
 translate([-28+24+14,23+5,-71])cylinder(r=10/2,h=130,$fn=30);
 translate([-28+24+28,23+5,-71])cylinder(r=10/2,h=130,$fn=30);
 /*
 translate([-28+8+10,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 //translate([-28+44,23+5,-71])#cylinder(r=3.8/2,h=130,$fn=30);
 //translate([-28+54,23+5,-71])#cylinder(r=3.8/2,h=130,$fn=30);
 */
 translate([-28-5,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+66,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);



 }
}

module corexy_lasermount_base(){
 corexy_lasermount();
 difference(){
 union(){
 translate([-28-10,23,-41])cube([80,10,5]);
 translate([-28-10,23,-41])cube([11,10,36]);
 translate([-28-10+70,23,-41])cube([11,10,36]);
 }
 translate([-28+8,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+8+10,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+44,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+54,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28-5,23+5,-71])cylinder(r=2.8/2,h=130,$fn=30);
 translate([-28+66,23+5,-71])cylinder(r=2.8/2,h=130,$fn=30);
 }
}

module corexy_shuttle_platform(){
 //corexy_lasermount();
 difference(){
 union(){
 translate([-28-10,23,-41])cube([80,10,5]);
 translate([-28-10,23,-41])cube([11,10,36]);
 translate([-28-10+70,23,-41])cube([11,10,36]);
 }
 translate([-28+8,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+8+10,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+44,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28+54,23+5,-71])cylinder(r=3.8/2,h=130,$fn=30);
 translate([-28-5,23+5,-71])cylinder(r=2.8/2,h=130,$fn=30);
 translate([-28+66,23+5,-71])cylinder(r=2.8/2,h=130,$fn=30);
 }
}






module XYMotorMount_corexystack(px,py){
 //y =100;
 //px = 20;
 x =px;
 y = py;
 xx = px;

 //little belt
 translate([220-212,120.5+44-11-20+y,65])rotate([0,-0.6,0.4])color("black")cube([(225+(x*2)),2,5]);
 translate([220-212+0,120.5+44-11-4+y,65-12])rotate([0,2.8,0.4])color("black")cube([(225+(x*2)),2,5]);


 translate([20-75,-100,20+47])rotate([0,90,0])tslot20(592);
 translate([20-75+26,-100+25,20+47])rotate([-90,90,0])tslot20(150);
 translate([20-75+26,-100+25+340,20+47])rotate([-90,90,0])tslot20(150);
 translate([20-75+26+560,-100+25,20+47])rotate([-90,90,0])tslot20(150);
 translate([20-75+26+560,-100+25+340,20+47])rotate([-90,90,0])tslot20(150);
 translate([0,510,0]){
 translate([20-75,-100,20+47])rotate([0,90,0])tslot20(592);
 translate([356,-97,43])tslot20innerbracket();
 translate([356-230,-97+25,43])rotate([0,0,180])tslot20innerbracket();
 }
 translate([356,-97,43])tslot20innerbracket();
 translate([356-230,-97+25,43])rotate([0,0,180])tslot20innerbracket();
 translate([356-410,-97+25+113,242])rotate([0,90,180])tslot20innerbracket();
 translate([356-410,-97+25+113+290,242])rotate([0,90,180])tslot20innerbracket();
 translate([356-410+590,-97+25+113-25,242])rotate([0,90,0])tslot20innerbracket();
 translate([356-410+590,-97+25+113-25+290,242])rotate([0,90,0])tslot20innerbracket();
 translate([207,209,76])import("2-XYMotorMount.stl");
 translate([207+475,209+500-340,71+200])rotate([90,0,0])import("1-LeftIdlerCorner.stl");
 translate([253,209+150+13,71+220])rotate([90,0,0])import("1-RightIdlerCorner.stl");

 translate([207+14.5,209-42.5,76])rotate([0,0,90])import("2-XYMotorMount.stl");
 translate([x,y,0]){
 translate([24.5-x,165,75.5])rotate([90,0,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([24.5-x,165-23,75.5])rotate([90,0,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([108-x,-272.5,71-385])rotate([-90,90,90])import("1-RightXEnd.stl");
 translate([430-x,0,0]){

 translate([24.5,165,75.5])rotate([90,0,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([24.5,165-23,75.5])rotate([90,0,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([220.5,206.8,-69])rotate([90,-90,90])import("1-LeftXEnd.stl");
}


 translate([20-x,120.5,65])rotate([0,90,0])color("silver")cylinder(r=8/2,h=435,$fn=30);
 translate([20-x,120.5+44,65])rotate([0,90,0])color("silver")cylinder(r=8/2,h=435,$fn=30);


 translate([220+x,120.5,65])rotate([0,90,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([220+26+x,120.5,65])rotate([0,90,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([220+x,120.5+44,65])rotate([0,90,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);
 translate([220+26+x,120.5+44,65])rotate([0,90,0])color("silver")cylinder(r=17.7/2,h=23,$fn=30);


 translate([242.5+x,115,90])import("plunger_shuttle.stl");

 //translate([242.5+x,115,90])corexy_lasermount_base();
 translate([242.5+x,115,90])corexy_shuttle_platform();


 translate([220+35+x,120.5+44-14,65])rotate([0,0,0])color("black")cube([220-(2*x),2,5]);
 translate([220+35+x,120.5+44-14-17,42])rotate([0,-3.2,0])color("black")cube([220-(2*x),2,5]);

 }
 translate([220+35+220,120.5+44-14+y,65])rotate([0,2,-89.5])color("black")cube([212+y,2,5]);
 translate([220+35+222,120.5+44-14-213,55])rotate([0,0,0])color("black")cube([14,2,5]);
 translate([220+35+220+14-16,120.5+44+230+2,55])rotate([0,0,-87.85])color("black")cube([459,2,5]);
 translate([220+35+220+14-16,120.5+44+230+10,52])rotate([0,0,-180])color("black")cube([493,2,5]);
 translate([220+35+220+14-16+18,120.5+44+230+10,42])rotate([0,0,-180])color("black")cube([493,2,5]);
 translate([220+35+220+14-16-476,120.5+44+230+2,40])rotate([0,-2,-92.2])color("black")cube([459,2,5]);
 translate([220+35+222-496,120.5+44-14-213,55])rotate([0,0,0])color("black")cube([14,2,5]);
 translate([220+35+220-466,120.5+44-14+y,53])rotate([0,-0.5,-93.5])color("black")cube([212+y,2,5]);


 translate([220+35+220+14-16-493,120.5+44+230+10,52])rotate([0,-3.2,-84+(y*0.027)])color("black")cube([269-y,2,5]);
 translate([220+35+220+14-16+13,120.5+44+230+10,43])rotate([0,-3.2,-92-(y*0.027)])color("black")cube([269-y,2,5]);
 //translate([220+35+220+14-16-466,120.5+44+230+10-268+y,64])rotate([0,0,-1.5])color("black")cube([220+(2*x),2,5]);


 

translate([-13,400,51.5])difference(){
 color("black")cylinder(r=9/2,h=5);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }
translate([-13+482,400,53])difference(){
 color("black")cylinder(r=9/2,h=5);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }

translate([-13+16,400,51.5-10])difference(){
 color("black")cylinder(r=9/2,h=5);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }
translate([-13+16+481,400,51.5-8])difference(){
 color("black")cylinder(r=9/2,h=5);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }

translate([-13-20,-53-20,43-50])nema17();
translate([-13+497-20,-53-20,43-50])nema17();

translate([-13,400-453,51.5])difference(){
 color("silver")cylinder(r=14/2,h=10);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }
translate([-13+497,400-453,51.5])difference(){
 color("silver")cylinder(r=14/2,h=10);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }




 translate([350,600-55-31,45])rotate([-90,0,0])stronger_bar_clamp();
 translate([360+420,600-55-31,45])rotate([-90,0,0])stronger_bar_clamp();
 translate([350,600-55-31-510,45])rotate([-90,0,0])stronger_bar_clamp();
 translate([360+420,600-55-31-510,45])rotate([-90,0,0])stronger_bar_clamp();
 translate([360+95,600-55-31-510-100,75.5])color("silver")rotate([-90,0,0])cylinder(r=8/2,h=530);
 translate([360+95-430,600-55-31-510-100,75.5])color("silver")rotate([-90,0,0])cylinder(r=8/2,h=530);

}


module stronger_bar_clamp(){
//translate([-400,-21.5,-70-4])rotate([0,90,0])tslot20(200);
difference(){
union(){
translate([-345-3,-16.5,-100+2])rotate([90,0,0])cube([46,18,4]);
translate([-325,-16.5-14,-100+2])rotate([0,0,0])cylinder(r=20.5/2,h=18,$fn=30);
translate([-325,-16.5-14+6,-100+2])rotate([0,0,45])cylinder(r=18.5/2,h=18,$fn=4);
}
translate([-325,-16.5-12,-100+2])rotate([90,0,0])cube([30,18,3]);
translate([-325,-16.5-14,-100-50])rotate([0,0,0])cylinder(r=8.3/2,h=200,$fn=30);
translate([-319,-16.5+34,-100+11])rotate([90,0,0])cylinder(r=2.7/2,h=200,$fn=30);
translate([-319,-16.5-13,-100+11])rotate([90,0,0])cylinder(r=3.7/2,h=200,$fn=30);
translate([-319,-16.5-18.5-2,-100+11])rotate([90,0,0])cylinder(r=8.7/2,h=5,$fn=30);
translate([-319+10,-16.5+43,-100+11])rotate([90,0,0])cylinder(r=5.7/2,h=200,$fn=30);
translate([-319-22,-16.5+43,-100+11])rotate([90,0,0])cylinder(r=5.7/2,h=200,$fn=30);
}
}





module plunger_shuttle(){
translate([-132-38,-18+40+50-72,12])rotate([0,180,0]){
translate([8+10,0,0])mirror([0,0,0])beltattach_grab();
translate([8,0,0])mirror([0,0,0])beltattach_grab_diag();
}
translate([-132-2.9,-18+40,12])rotate([0,180,0]){
translate([8+10,0,0])mirror([0,1,0])beltattach_grab();
translate([8,0,0])mirror([0,1,0])beltattach_grab_diag();
}
translate([8+10-2.9,0,0])beltattach_grab();
translate([8-2.9,0,0])beltattach_grab_diag();
translate([-24-6,21.5,0])mirror([0,1,0])beltattach_grab();
//translate([-24-6+10-159,21.5-39,0])rotate([0,0,180])mirror([0,0,0])beltattach_grab_diag();
translate([-24-6+10-159,21.5,0])rotate([0,0,180])mirror([0,0,0])beltattach_grab_diag();
difference(){union(){
//translate([-107+42-4,89-90,4.5-2])cube([9,22+1.5,9+5.35]);
translate([-107-4-3,89-90,4.5-2])cube([45,22+1.5,8]);
translate([-107+30-3.0-2.9,89-90,4.5-2])cube([24,22+1.5,8]);
translate([-107+30-3.0-2.9+20,89-90-20,4.5-2])cube([4,22+1.5+40-43,8+5.5]);
translate([-107+30-3.0-2.9+20,89-90-20+43,4.5-2])cube([4,22+1.5+40-43,8+5.5]);

translate([-10+0.1,0,0]){
translate([-100-0.1,89,4.5])rotate([0,0,90])difference(){
import("LM8UU_holder_stub.stl");
translate([-120,-53.5,-10])cube([30,30,40]);
}
translate([-100+52-8.2-16-2.9,89,4.5])rotate([0,0,90])difference(){
translate([-0,2,0])import("LM8UU_holder_stub.stl");
translate([-120,-53.5+55,-10])cube([30,10,40]);
}
}
translate([-10-0.1,0,0]){
translate([-100+28-2.9,89+51.5-8.2,4.5])rotate([0,0,90])difference(){
translate([0,2,0])import("LM8UU_holder_stub.stl");
translate([-120,-53.5+55,-10])cube([30,10,40]);
}
translate([-100+0.1,89+51.5-8.2-0,4.5])rotate([0,0,90])difference(){
import("LM8UU_holder_stub.stl");
translate([-120,-53.5,-10])cube([30,30,40]);
}
}
}
translate([-300,-11,14])rotate([0,90,0])cylinder(r=10.7/2,h=500,$fn=30);
translate([-300,-11+43,14])rotate([0,90,0])cylinder(r=10.7/2,h=500,$fn=30);
translate([-27,-3,-100])rotate([0,0,90]){
//translate([7,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41-5,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41-5+10,-2])cylinder(r=2.8/2,h=200,$fn=30);
//translate([7+14,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
}
translate([-27-123,-3,-100])rotate([0,0,90])mirror([0,1,0]){
//translate([7,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7,41+10,-2])cylinder(r=2.8/2,h=200,$fn=30);
//translate([7+7-7,41+22,-2])cylinder(r=2.8/2,h=200,$fn=30);
//translate([7+7+7,41+22,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7+20-10,41+22,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7+27,41+22+11,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7+27,41+22-11,-2])cylinder(r=2.8/2,h=200,$fn=30);

translate([7+7+20-10-20.65,41+22,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7+27-55,41+22+11,-2])cylinder(r=2.8/2,h=200,$fn=30);
translate([7+7+27-55,41+22-11,-2])cylinder(r=2.8/2,h=200,$fn=30);
//translate([7+14,34,-2])cylinder(r=2.8/2,h=200,$fn=30);
}
//color("silver")translate([-55-10+0-5-100,5+10,4.5-10])rotate([0,90,0])cylinder(r=23/2,h=260,$fn=30);
//translate([-80,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
//translate([-80,15-10,-10])cylinder(r=2.8/2,h=40,$fn=30);
//translate([-80-16,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
//translate([-80-16,15-10,-10])cylinder(r=2.8/2,h=40,$fn=30);
//translate([-80-18,15,-10])cylinder(r=2.8/2,h=40,$fn=30);
/*
translate([-3,0,0]){
translate([-80,3,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80,27,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,27,-10])cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,3,-10])cylinder(r=3.8/2,h=40,$fn=30);
}
*/
}
}




















