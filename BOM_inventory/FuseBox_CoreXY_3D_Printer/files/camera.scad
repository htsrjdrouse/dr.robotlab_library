

module miuzei_lenscap(h){
/*
translate([-21,0,-5])difference(){cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=8);
}
translate([13,0,-5])difference(){translate([-7,0,0])cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=26);
}
*/
translate([0,4,-10])
difference(){
union(){
translate([0,0,-6-h+16])cylinder(r=20/2,h=h);
translate([-21,-4,5])difference(){cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=8);
}
translate([13,-4,5])difference(){translate([-7,0,0])cube([8+7,8,5]);
translate([4,4,-1])cylinder(r=3.7/2,h=26);
}
}
//translate([0,0,5])cylinder(r2=14/2,r1=11.7/2,h=5);
translate([0,0,1+0.1+4])cylinder(r2=15.5/2,r1=11.7/2,h=5);
//translate([0,0,8])cylinder(r=15/2,h=2);
translate([0,0,-0.1-10])cylinder(r=11.7/2,h=h+1+10);
}
}








module miuzei_raspicam_base(){
//translate([-7,-25+8,0])rotate([0,0,-90])smd_justclip();
translate([-10,-32,0])difference(){
union(){
translate([0,15,0])cube([20,5,2.5]);
}
translate([5,9,0])cube([10,5,6]);
}
translate([-21,0,0])difference(){
union(){
cube([8,13,5]);
translate([-5,0,0])cube([10,30,5]);
}
translate([4,4,-1])cylinder(r=2.8/2,h=26);
translate([-1,17,-21])cylinder(r=2.8/2,h=38,$fn=30);
translate([-1,17+8,-21])cylinder(r=2.8/2,h=38,$fn=30);
}
translate([13,0,0])difference(){
union(){
cube([8,13,5]);
translate([-4,12,0])cube([10,30-12,5]);
}
translate([4,4,-1])cylinder(r=2.8/2,h=26);
translate([2,17,-21])cylinder(r=2.8/2,h=38,$fn=30);
translate([2,17+8,-21])cylinder(r=2.8/2,h=38,$fn=30);
}
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
/*
*/
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









