/*
*/
//import("FB17R34INKLQ0U0.stl");
//import("FVTAQF6INKLQ0TC.stl");
//import("FZQ584FINKLQ0T4.stl");
//translate([0,-250,0])import("valveconnectpart.stl");

//translate([0,30,0])rotate([0,90,0])#valveconnectpart_pinchvalve();




//translate([0,30,0])rotate([0,90,0])valveconnectpart_outside();

color("pink")translate([-1.47,-54.17,100-13.2])pinch_valve_tube();

module pinch_valve_tube(){
difference(){union(){
cube([10-2,3.426,6]);
translate([10-2.5,3.426,3.02])rotate([90,0,0])cylinder(r=6/2,h=3.426,$fn=30);
}
#translate([3.5,-10,3])rotate([-90,0,0])cylinder(r=3.3/2,h=30,$fn=30);
#translate([0+4,-10,3])rotate([-90,0,0])cylinder(r=3.3/2,h=30,$fn=30);
#translate([0+4.5,-10,3])rotate([-90,0,0])cylinder(r=3.3/2,h=30,$fn=30);
#translate([0+5,-10,3])rotate([-90,0,0])cylinder(r=3.3/2,h=30,$fn=30);
}
}



module valveconnectpart_outside(){
difference(){
translate([0,0,-2-1.4-1.5+1.2-2+2+1])rotate([0,0,45/2])cylinder(r=15+6.5+1.5,h=10+1.4+1.5-1.2+2-2-1,$fn=8);
translate([0,0,-2-1.4-1.5+1.2-2+2+1-1])cylinder(r=15+0.3,h=10+1.4+1.5-1.2+2-2-1+5);
#translate([-5.16+3,-50-3.08+134-66.1,61.68-128.5+71.5])rotate([0,90,0])cube([3.85,6.6,5.4]);
translate([-5.16+5.5,-50-3.08+134-66.5+3.8,61.68-128.5+71.5-50])rotate([0,0,0])#cylinder(r=3/2,h=100,$fn=30);
translate([0,0,0])rotate([0,0,90]){
#translate([-5.16+3,-50-3.08+134-66.1,61.68-128.5+71.5])rotate([0,90,0])cube([3.85,6.6,5.4]);
translate([-5.16+5.5,-50-3.08+134-66.5+3.8,61.68-128.5+71.5-50])rotate([0,0,0])#cylinder(r=3/2,h=100,$fn=30);
}
translate([0,-0,0])rotate([0,0,180]){
#translate([-5.16+3,-50-3.08+134-66.1,61.68-128.5+71.5])rotate([0,90,0])cube([3.85,6.6,5.4]);
translate([-5.16+5.5,-50-3.08+134-66.5+3.8,61.68-128.5+71.5-50])rotate([0,0,0])#cylinder(r=3/2,h=100,$fn=30);
}
}
}






module valveconnectpart_pinchvalve(){
difference(){
translate([0,0,-2-1.4-1.5+1.2-2+2+1])cylinder(r=15,h=10+1.4+1.5-1.2+2-2-1);
translate([0+18,0-18+15,-2-1.4-1.5+1.2-2+2+1-1])cylinder(r=7,h=11+1.4+1.5-1.2+2-2-1+2);
translate([0,0,-17])cylinder(r=9.5/2,h=18);
translate([0,0,8-2.5])cylinder(r=9.5/2,h=18);
rotate([0,0,-5]){
translate([0,0,-5])rotate([0,0,40])
translate([16.3/2,0,-2])cylinder(r=2.3/2,h=118);
translate([0,0,-5])rotate([0,0,40])
translate([-16.3/2,0,-2])cylinder(r=2.3/2,h=118);
}
rotate([0,0,0]){
translate([0,0,-5])rotate([0,0,40])translate([0,14/2,-2])cylinder(r=2.3/2,h=118);
translate([0,0,-5])rotate([0,0,40])translate([0,-14/2,-2])cylinder(r=2.3/2,h=118);
}
rotate([0,0,-30]){
translate([0,0,-5])rotate([0,0,40])translate([0,22/2,-2])cylinder(r=2.3/2,h=118);
translate([0,0,-5])rotate([0,0,40])translate([0,-22/2,-2])cylinder(r=2.3/2,h=118);
}
rotate([0,0,-65]){
translate([0,0,-5])rotate([0,0,40])translate([0,16/2,-2])cylinder(r=2.3/2,h=118);
translate([0,0,-5])rotate([0,0,40])translate([0,-16/2,-2])cylinder(r=2.3/2,h=118);
}
}
}










