difference(){
import("base.stl");
#translate([-10,-37.5-17,5])cube([80,110,20]);
translate([-40,20,5])cube([80,30,20]);
translate([-40,-45,5])cube([80,30,20]);
translate([-40,-55,5])cube([80,30,20]);
translate([-40,-55,5])cube([80,30,20]);
translate([-100,-135,-5])cube([145,270,120]);
translate([0,-19+10,0]){
translate([68,-55,5])cylinder(r=5.5/2,h=100,$fn=30);
translate([52,-55,5])cylinder(r=5.5/2,h=100,$fn=30);
}
translate([0,20-10,0]){
translate([68,-55+110,5])cylinder(r=5.5/2,h=100,$fn=30);
translate([52,-55+110,5])cylinder(r=5.5/2,h=100,$fn=30);
}
}