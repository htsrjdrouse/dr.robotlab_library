include <modparts.scad>
use<writescad/write.scad>


xx = 200-248+246-250;
xp = -1;
sph = 267;
z = -5;
/*
translate([-55,410,400])rotate([0,90,0])tslotinnerbracket();
translate([-55,410,400])rotate([0,90,0])tslot20_2060(150);

gantry();
*/
slide_conveyer_caller(z,xx,xp,sph);
//translate([-40,-53,0])color("lightgrey")adafruit_lplate_1259();

//conveyer_totalset();
//conveyer_totalset_just1();


module conveyer_totalset_just1(){
translate([-5,0,0])endstop_for_conveyer();
translate([0,13,5.5])rotate([0,180,0])slide_conveyer_motormount();
translate([75,-25,0])rotate([0,0,90])conveyer_verticallinearpulleybearingbottom();
translate([0,-65,74])rotate([90,0,180])conveyer_stepper_linear_m8nut_coupler_a();
translate([65,0-30,90-1])rotate([90,0,0])conveyer_stepper_linear_m8nut_coupler_b();
translate([-60,-50,0])conveyer_slider_x4();
translate([-60,7,0])adafruit_lplate_1259();
}

module conveyer_totalset(){
translate([-5,0,0])endstop_for_conveyer();
translate([0,13,5.5])rotate([0,180,0])slide_conveyer_motormount();
translate([43,13+40,5.5])rotate([0,180,0])slide_conveyer_motormount();
translate([0,13+75,5.5])rotate([0,180,0])slide_conveyer_motormount();
translate([43,13+40+75,5.5])rotate([0,180,0])slide_conveyer_motormount();
translate([75,-25,0])rotate([0,0,90])conveyer_verticallinearpulleybearingbottom();
translate([115,25,0])rotate([0,0,-90])conveyer_verticallinearpulleybearingbottom();
translate([75+25,-55,0])rotate([0,0,90])conveyer_verticallinearpulleybearingbottom();
translate([115+25,-5,0])rotate([0,0,-90])conveyer_verticallinearpulleybearingbottom();

//mirror([1,0,0])rotate([-90,0,0])conveyer_stepper_linear_m8nut_coupler();
for(i=[0:3]){
translate([20,-80-(i*22),74])rotate([90,0,180])conveyer_stepper_linear_m8nut_coupler_a();
}
translate([55,0-60,90-1])rotate([90,0,0])conveyer_stepper_linear_m8nut_coupler_b();
translate([35,0-60-10,90-1])rotate([90,0,0])conveyer_stepper_linear_m8nut_coupler_b();
translate([55,0-60-40,90-1])rotate([90,0,0])conveyer_stepper_linear_m8nut_coupler_b();
translate([35,0-60-10-40,90-1])rotate([90,0,0])conveyer_stepper_linear_m8nut_coupler_b();

translate([-60,0,0])conveyer_slider_x4();
translate([-60,70,0])conveyer_slider_x4();
translate([-80,0-70,0])conveyer_slider_x4();
translate([-90,70-210,0])conveyer_slider_x4();
}



