//endstop_multichannel_syringe();

module endstop_multichannel_syringe(){
difference(){
union(){
translate([40+30-38+13,1.5,-0.0])cube([85-10+38-83-13,30,4]);
translate([40+30-52,1.5,-0.0])cube([28,18,4]);
}
translate([60,-114,0])rotate([0,0,90]){
translate([40.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
translate([60.75+80,4.5,-0.2])cylinder(r=2.9/2,h=30,$fn=20);
}
translate([40.9,25,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9,10,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
translate([40.9-15,10,-0.2])cylinder(r=4.7/2,h=30,$fn=30);
}
}
