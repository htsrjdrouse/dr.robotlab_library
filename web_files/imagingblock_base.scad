module imagingblock_base(){
 //translate([-40,42,18-4])rotate([90,0,90])color("LemonChiffon")import("arducam_case.stl");
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("grey")union(){
 //translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 //translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20,-3,-3])cube([40+8,((77*1.2)+8),40]);
 //translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 translate([-3-20+8,-3+7,-3+4])cube([40-8,((77*1.2))-6,40]);
 translate([-3-20+10+28,-3+7+12-6,-3+4-3.5])cube([40-8+7-32,((77*1.2))-6-18,40]);
 translate([-3-20+10+28,-3+7+12,-3+4-1])cube([40-8+7-21,((77*1.2))-6-24,40]);
 translate([-3-20+8-10,-3+7+7-3,-3+4+8])cube([70-8-5,((77*1.2))-6-14+3,18+13]);
 translate([-3-20+8-10+41,-3+7+7-2,-3+4+8-9.5])cube([9.5,13,18+13]);

 translate([20-22-60+78,1+7-2+4,23+8-12])rotate([0,90,0])cylinder(r=14/2,h=50,$fn=30);
 translate([20-22-60+78,1+7-2+4,23+8-13])rotate([0,90,0])cylinder(r=14/2,h=50,$fn=30);

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

