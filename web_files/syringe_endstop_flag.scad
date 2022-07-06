//syringe_endstop_flag();

module syringe_endstop_flag(){
difference(){
union(){
translate([-15-10,50-0.5,10])color("pink")cube([45,10,3]);
translate([-15-10+30,50-0.5+4,10])color("pink")cube([15,6,10]);
}
translate([-20.+0.5,57-0.25,-10])cylinder(r=3.7/2,h=30,$fn=30);
translate([-20.5+10.,57-0.25,-10])cylinder(r=3.7/2,h=30,$fn=30);
translate([-20.5+13.25+20-2.3,55+12,17])rotate([90,0,0])cylinder(r=2.7/2,h=30,$fn=30);
}
}
