include <modparts.scad>
use<writescad/write.scad>

translate([-85,-90,0])raspi2_top_lego();
mirror([0,1,0])raspi2_bottom_lego_female();
//translate([180-6,0,-30+4])rotate([90,0,0])tslot20(300);


