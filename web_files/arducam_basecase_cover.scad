module arducam_basecase_cover(){
sh= 1.7+2;
color("")translate([30-40,-12.5+38-38.5,0])difference(){
union(){
cube([30,34,3]);
translate([10,23,0])cube([10,8,8]);
translate([10,-6+5,0])cube([10,8,8]);
translate([10,23+10,0])cube([10,20,3]);
}
translate([4.5+21/2,12.5+4,-0.5])cylinder(r=3.7/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4+6+5,-0.5])cylinder(r=2.8/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4-19+5,-0.5])cylinder(r=2.8/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4+6+5+20,-0.5])cylinder(r=3.8/2,h=40,$fn=30);
translate([4.5,12.5+4,-0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5,12.5+4+12.5,-0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5+21,12.5+4,-0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5+21,12.5+4+12.5,-0.5])cylinder(r=2/2,h=10,$fn=30);
}
}
