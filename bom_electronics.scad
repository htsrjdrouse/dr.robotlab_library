include <modparts.scad>
use<writescad/write.scad>


electronics_stl();

module electronics_stl(){
a = 1;
 translate([0*40,0,0])electronics_connectormod();
 translate([1*40,28,0])electronics_connectormod();
 translate([2*40,00,0])electronics_connectormod();
 translate([3*40,28,0])electronics_connectormod();

translate([0,-28,0]){
 translate([0*40,-28,0])electronics_connectormod();
 translate([1*40,0,0])electronics_connectormod();
 translate([2*40,-28,0])electronics_connectormod();
 translate([3*40,0,0])electronics_connectormod();
}
translate([0,-83,0]){
 translate([0*40,-28,0])electronics_connectormod();
 translate([1*40,0,0])electronics_connectormod();
 translate([2*40,-28,0])electronics_connectormod();
 translate([3*40,0,0])electronics_connectormod();
}
translate([240,-83,0])amplifier_brd_holder();
translate([433,-103,0])rotate([0,0,90])5stepper_brd_holder();
translate([610,100,7])rotate([0,180,90])atzeeg_mount_to_plate();
}


module BOM_amplifier_brd_holder(){



}


