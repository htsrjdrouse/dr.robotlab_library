

module arducam_case_rtPCR(){
sh= 1.7+2;
difference(){
union(){
translate([20,-3-sh-1,0])cube([12,34,6]);
//translate([-22+6,-3-sh-1+20-2,0])cube([12+9-13,14-1.5,4]);
//translate([-22+6,-3-sh-1+20-2,0])cube([12+9-13,14-1.5,4]);
//translate([-22+2+3-2,-3-sh-1+25,0])cube([12+9-10-0+5-5-1,7-1.5,4]);
translate([20-42,-3-sh-1,0])cube([12,34,6]);
translate([20-42,-3-sh-1+24+3,0])cube([12+42,10-3,6]);
translate([20-42,-3-sh-1-6,0])cube([12+42-41,10,6]);
translate([20-42+41,-3-sh-1-6,0])cube([12+42-41,10,6]);
translate([20-42+9,-3-sh-1+8,0])cube([4,28/2,6+7.5]);
translate([20-42+9+32,-3-sh-1+8,0])cube([4,28/2,6+7.5]);

translate([-22+2+3-2+37.5,-3-sh-1+25-20,0])cube([12+9-10-0+5-5-1,7-1.5,4]);
}
//translate([26-43+3-1.5+40.5,7.5-3-sh+21-2+0.20-20,-2-25])cylinder(r=3.3/2,h=50,$fn=30);
for(i=[-3:22]){
translate([26.5,7.5-3-sh+i,-2])cylinder(r=3.7/2,h=20,$fn=30);
translate([26-43,7.5-3-sh+i,-2])cylinder(r=3.7/2,h=20,$fn=30);
}
//translate([26.5-6,7.5-3-sh-5,-2])cylinder(r=2.2/2,h=20,$fn=30);
//translate([26.5-5-32,7.5-3-sh-5,-2])cylinder(r=2.2/2,h=20,$fn=30);
translate([26.5-6,7.5-3-sh+6,1])cylinder(r=2.2/2,h=20,$fn=30);
translate([26.5-5-32,7.5-3-sh+6,1])cylinder(r=2.2/2,h=20,$fn=30);
/*
*/
}
color("")translate([30-40,-12.5+38-38.5,0])difference(){
translate([4.5,16.5,0]){
difference(){union(){cylinder(r=5/2,h=5,$fn=30);translate([-1,0,0])rotate([0,0,45])cylinder(r=5/2,h=5,$fn=4);}cylinder(r=2/2,h=10,$fn=30);}
}
}
color("")translate([30-40+21,-12.5+38-38.5,0])difference(){
translate([4.5,16.5,0]){
difference(){union(){cylinder(r=5/2,h=5,$fn=30);translate([1,0,0])rotate([0,0,45])cylinder(r=5/2,h=5,$fn=4);}cylinder(r=2/2,h=10,$fn=30);}
}
}
translate([0,12.5,0])color("")translate([30-40,-12.5+38-38.5,0])difference(){
translate([4.5,16.5,0]){
difference(){union(){cylinder(r=5/2,h=5,$fn=30);translate([-1,0,0])rotate([0,0,45])cylinder(r=5/2,h=5,$fn=4);translate([-1,1,0])rotate([0,0,45])cylinder(r=6/2,h=5,$fn=4);}cylinder(r=2/2,h=10,$fn=30);}
}
}
translate([21,12.5,0])color("")translate([30-40,-12.5+38-38.5,0])difference(){
translate([4.5,16.5,0]){
difference(){union(){cylinder(r=5/2,h=5,$fn=30);translate([1,0,0])rotate([0,0,45])cylinder(r=5/2,h=5,$fn=4);translate([1,1,0])rotate([0,0,45])cylinder(r=6/2,h=4,$fn=4);}cylinder(r=2/2,h=10,$fn=30);}
}
}
color("")translate([30-40,-12.5+38-38.5,0])difference(){
union(){
cube([30,34,6]);
}
//translate([3.5,3.5,0])cube([30-7,3.5,6]);
translate([2,2.5,1.5])cube([30-4,34-5,6]);
translate([4.5,12.5+4,0.5])cylinder(r=2/2,h=10,$fn=30);
//translate([4.5+21/2,12.5+4,-0.5])cylinder(r=3.7/2,h=10,$fn=30);
translate([4.5,12.5+4+12.5,0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5+21,12.5+4,0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5+21,12.5+4+12.5,0.5])cylinder(r=2/2,h=10,$fn=30);
//translate([26.5-43/2,7.5-3-sh+4,-2])cylinder(r=3.7/2,h=20,$fn=30);
}
}



