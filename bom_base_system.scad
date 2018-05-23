include <modparts.scad>
use<writescad/write.scad>

bcl = [155/255,155/255,155/255];
cl = [155/255,155/255,155/255];

xx = 200-248+246-250;
xp = -1;
sph = 267;
z = -5;

translate([0,0,65]){
gantry();
xshuttle_assy(x=20,y=-30);
xymotor_assy();


///conveyer_connector_tslots();
//translate([195,565,90-16.5])rotate([90,0,0])tslot_show_conveyor();
//outside_frame(bcl,cl);
y_encoder_support(60);
}


module tslot_show_conveyor(){
tslot20(315);
//translate([0,100,170])rotate([90,0,0])cylinder(r=5.7/2,h=200);
translate([0,56,0])tslot20(315);
translate([0,56*2,0])tslot20(315);
translate([0,56*3,0])tslot20(315);
}




