module valveconnectpart(){
 difference(){
 translate([0,0,-2-1.4-1.5+1.2-2+2+1])cylinder(r=15,h=10+1.4+1.5-1.2+2-2-1,$fn=30);
 translate([0,0,-17])cylinder(r=8.4/2,h=18);
 translate([0,0,8-4-1])cylinder(r=8.4/2,h=18,$fn=30);
 translate([-3.8,-3.4/2,8-2.5-1.5-1])rotate([0,0,90])cube([3.4,9.5+4.8,5.4]);
 translate([-3.8-8+0.5-1.5,-5.9/2,8-2.5-1.5-1])rotate([0,0,90])cube([5.9,4,5.4]);
 rotate([0,0,-5]){
 translate([0,0,-5])rotate([0,0,40])
 translate([16.3/2,0,-2])cylinder(r=2.3/2,h=118,$fn=30);
 translate([0,0,-5])rotate([0,0,40])
 translate([-16.3/2,0,-2])cylinder(r=2.3/2,h=118,$fn=30);
 }
 rotate([0,0,0]){
 translate([0,0,-5])rotate([0,0,40])translate([0,14/2,-2])cylinder(r=2.3/2,h=118,$fn=30);
 translate([0,0,-5])rotate([0,0,40])translate([0,-14/2,-2])cylinder(r=2.3/2, h=118,$fn=30);
 }
 rotate([0,0,-30]){
 translate([0,0,-5])rotate([0,0,40])translate([0,22/2,-2])cylinder(r=2.3/2,h=118,$fn=30);
 translate([0,0,-5])rotate([0,0,40])translate([0,-22/2,-2])cylinder(r=2.3/2,h=118,$fn=30);
 }
 rotate([0,0,-65]){
 translate([0,0,-5])rotate([0,0,40])translate([0,16/2,-2])cylinder(r=2.3/2,h=118,$fn=30);
 translate([0,0,-5])rotate([0,0,40])translate([0,-16/2,-2])cylinder(r=2.3/2,h=118,$fn=30);
 }
 }
}
