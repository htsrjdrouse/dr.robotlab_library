
//psu_cover_switched_openscader();

psu_clamp();

module psu_clamp(){
difference(){
union(){
cube([20,148,4]);
cube([20,12.5,4+3]);
}
g = 6;
translate([10,g,-0.1])cylinder(r=12/2,h=5,$fn=20);
translate([10,g,-5])cylinder(r=5.8/2,h=30,$fn=20);
#translate([10,g+125+10,-5])cylinder(r=5.8/2,h=30,$fn=20);
translate([10,((145)/2)+25,-5])cylinder(r=5.8/2,h=30,$fn=20);
translate([10,((145)/2)+25,2])#cylinder(r=12/2,h=2,$fn=20);
translate([10,((145)/2)-25,-5])cylinder(r=5.8/2,h=30,$fn=20);
translate([10,((145)/2)-25,2])cylinder(r=12/2,h=2,$fn=20);
}
}

module psu_cover_switched_openscader(){
//#rotate([90,0,0])import("PSU_Fused_Switch_Cover.stl");
difference(){
union(){
translate([-59,-33,0])color("pink")cube([118,74,2]);
translate([-59,-33,0])color("pink")cube([2,74+5,2+53]);
translate([-59+116,-33,0])color("pink")cube([2,74+5,2+53]);
translate([-59,-33,0])color("pink")cube([118,2,2+50]);
}
translate([0,-18,-1])#cube([43,28,20]);
translate([0+6,-18+6.5,-1])#cube([43,15,20]);
translate([40+4,-18+4.8+0.25,-1])rotate([0,0,15])cylinder(r=11/2,$fn=3,h=5);
translate([40+4,-18+4.8+18.12,-1])rotate([0,0,-15])cylinder(r=11/2,$fn=3,h=5);
translate([40+4-19,-18+4.8+18.12+11,-8])rotate([0,0,-15])cylinder(r=3/2,$fn=30,h=30);
translate([40+4-19,-18+4.8+18.12+11-40,-8])rotate([0,0,-15])cylinder(r=3/2,$fn=30,h=30);
/*
for(i=[0:40]){
translate([40+4-19-33,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
translate([40+4-19-33-9,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
translate([40+4-19-33-18,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
translate([40+4-19-33-26,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
translate([40+4-19-33-35,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
translate([40+4-19-33-44,-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);

}
*/

for(i=[0,40]){
for(x=[0:5]){
translate([40+4-19-34.5-(x*8.8),-18+4.8+18.12+11-30-10,-8+5])rotate([0,0,0])cube([3,40,10]);
translate([40+4-19-33-(x*8.8),-18+4.8+18.12+11-i,-8])rotate([0,0,-15])cylinder(r=4/2,$fn=30,h=30);
}
}


#translate([40+4-19-100,-18+4.8+18.12+11+18+5,-8+48+9])rotate([0,90,0])cylinder(r=6/2,$fn=30,h=230);

}
}
//translate([-56.5,20,5])color("pink")cube([113,215,50]);
