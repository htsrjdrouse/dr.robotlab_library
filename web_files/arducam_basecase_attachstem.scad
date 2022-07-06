//arducam_basecase_attachstem();

module arducam_basecase_attachstem(){
color("")translate([30-40,-12.5+38-38.5,0])difference(){
union(){
translate([10,23+20,-10])cube([10,10,10]);
translate([10,23+20+6,-30])cube([10,4,30]);
}
translate([4.5+21/2,12.5+4,-0.5])cylinder(r=3.7/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4-19+5,-0.5])cylinder(r=2.8/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4+6+5,-0.5])cylinder(r=2.8/2,h=40,$fn=30);
translate([4.5+21/2,12.5+4+6+5+20,-17.5])cylinder(r=2.8/2,h=40,$fn=30);
for(i=[-2:2]){
translate([4.5+21/2,12.5+4+6+5+20+10,-17.5-5+i])rotate([90,0,0])cylinder(r=3.8/2,h=40,$fn=30);
}
translate([4.5,12.5+4,-0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5,12.5+4+12.5,-0.5])cylinder(r=2/2,h=10,$fn=30);
translate([4.5+21,12.5+4,-0.5])cylinder(r=2/2,h=10,$fn=30);
}
}
