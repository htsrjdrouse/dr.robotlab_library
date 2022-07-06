module plate_topleft_aligner(){
translate([28+5.5-101,64-35.5+7-6+190,0])mirror([0,1,0])
difference(){
 union(){
 translate([0,1,0])cube([10,55,3]);
 translate([0,1+22,0])cube([10,11,3+5]);
 translate([-4.8+20,1,0])cube([10,11,3+5]);
 translate([0,1,0])cube([25,11,3]);
 translate([5.3,5,0])cylinder(r=8/2,h=6);
 translate([5.3,5+45,0])cylinder(r=8/2,h=6);
 }
 translate([5.3,5,-25])cylinder(r=4.7/2,h=50);
 translate([5.3,5+45,-25])cylinder(r=4.7/2,h=50);
 translate([5.3+15,5+10,5-1.5])rotate([90,0,0])cylinder(r=2.8/2,h=50);
 translate([5.3+15-30,5+10+15,5-1.5])rotate([0,90,0])cylinder(r=2.8/2,h=50);
}
}
