//beltclamp();


module beltclamp(){
translate([-25,0,0])
difference(){
color("pink")translate([-20,2-2,0])cube([10,22+4,9]);
translate([-20+5,2+5,-3])cylinder(r=4.1/2,h=30,$fn=30);
translate([-20+5,2+12+5,-3])cylinder(r=4.1/2,h=30,$fn=30);
translate([-20+5,2+5,5])cylinder(r=9.5/2,h=30,$fn=30);
translate([-20+5,2+12+5,5])cylinder(r=9.5/2,h=30,$fn=30);
}
}
