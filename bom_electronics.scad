include <modparts.scad>
use<writescad/write.scad>

//pcb_panels();
 outside_frame(tcl,thcl);
// labbot3d_electronics_configuration();


translate([320,150,-3])rotate([0,180,90])BOM_washdrypcv_kill();
translate([176-0,190+130-6,5])rotate([0,180,90])BOM_conveyer_pcb();
translate([176-0+100-88,190+35,-4])rotate([0,180,-90])BOM_amplifier_brd();
translate([200,300,-5])BOM_conveyer_solenoids();
translate([105,220,0])rotate([0,180,90])azteeg_controller();
translate([390,340,0])rotate([0,180,90])BOM_atxpowerconnect();

//electronics_stl();
// labbot3d_electronics_configuration();
//noconveyer_gantry_assy(20,-30,-45+50+100-50-100+150,-55,0,267,tcl,thcl);
//translate([170,560,155])rotate([90,0,90])mirror([1,0,0])
p1 = "kill_button_leds_panelmount";
translate([100,-40,-40])color("black")rotate([90,0,0])write(p1,h=8);

p2 = "syringe_pcb_holder";
translate([300,-40,-40])color("black")rotate([90,0,0])write(p2,h=8);

p3 = "BANANA JACKS";
translate([500,80,-28])rotate([0,0,90])color("black")rotate([90,0,0])write(p3,h=8);

p4 = "pcv_sensor_usb_connect";
translate([500,225,-28])rotate([0,0,90])color("black")rotate([90,0,0])write(p4,h=8);
p5 = "atx_power_sockets";
translate([330,250+200,-28])rotate([0,0,180])color("black")rotate([90,0,0])write(p5,h=8);

p6 = "conveyer_pcb_holder";
translate([170,250+200,-28])rotate([0,0,180])color("black")rotate([90,0,0])write(p6,h=8);

p7 = "usbs_socket_alu_support";
translate([170-200,210,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p7,h=8);

p8 = "don't know";
translate([170-200,330,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p8,h=8);

p9 = "fan";
translate([170-200,40,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p9,h=8);

/*
translate([320,150,-3])rotate([0,180,90])color("blue")BOM_washdrypcv_kill();
translate([176-0,190+130-6,-3])rotate([0,180,90])color("blue")BOM_conveyer_pcb();
translate([176-0+100-88,190+35,-4])rotate([0,180,-90])color("blue")BOM_amplifier_brd();
translate([200,300,-15])color("blue")BOM_conveyer_solenoids();
*/
//translate([0,0,-6.3])atzeeg_mount_to_plate();
//translate([305,0,0])rotate([0,180,0])azteeg_controller();
//translate([305,0,0])rotate([0,180,0])azteeg_controller();

//BOM_washdrypcv_kill();

//BOM_amplifier_brd_holder();
//BOM_conveyer_pcb();

module electronics_stl(){
 //pcb_panels();
 translate([-100,50,55])rotate([0,0,-90])coverpanel_screw();
 translate([0,60,3])kill_button_leds_panelmount();
 translate([0,-70,0])syringe_pcb_holder_back();
 translate([-0,-30,0])syringe_pcb_holder();
 translate([60,-30,0])syringe_pcb_holder_cover();
translate([-50,-7,0])rotate([0,0,90])conveyer_pcb_holder_front();
translate([-50,-150,0])rotate([0,0,90])conveyer_pcb_holder_backsupport();
//translate([28,21,5])

/*
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
*/

}

module BOM_conveyer_solenoids(){
translate([-20,20,-5])color("black")rotate([0,0,0])mirror([0,1,0])write("BOM_conveyer_solenoids",h=8);

difference(){
cube([83,39.5,3]);
translate([5.386,34.422,-5.1])#cylinder(r=3.7/2,h=90);
translate([74.037,34.422,-5.1])#cylinder(r=3.7/2,h=90);
translate([58.584,4.277,-5.1])#cylinder(r=3.7/2,h=90);
}
}


module BOM_washdrypcv_kill(){
translate([-10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_washdrypcv_kill",h=8);

difference(){
cube([99.3,95.7,3]);
translate([28.235,90.424,-30])#cylinder(r=3.7/2,h=50);
translate([72.286,92.913,-30])#cylinder(r=3.7/2,h=50);
translate([5.587,4,-30])#cylinder(r=3.7/2,h=50);
translate([91.698,4,-30])#cylinder(r=3.7/2,h=50);
}
}

module BOM_conveyer_pcb(){
translate([10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_conveyer_pcb",h=8);
difference(){
cube([121,96.2,3]);
translate([25.334,93.131,-20.1])#cylinder(r=3.7/2,h=60);
translate([114.619,92.881,-20.1])#cylinder(r=3.7/2,h=60);
translate([7.577,6.348,-20.1])#cylinder(r=3.7/2,h=60);
translate([114.369,6.348,-20.1])#cylinder(r=3.7/2,h=60);
}
}


module BOM_atxpowerconnect(){
translate([0,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_atxpowerconnect",h=8);
difference(){
cube([99,99.4,3]);
translate([5.25,95,-20])#cylinder(r=4/2,h=80);
translate([58.512,46.738,-20])#cylinder(r=4/2,h=80);
translate([94.155,3.484,-20])#cylinder(r=4/2,h=80);


}
}

module BOM_amplifier_brd(){
translate([70,40,6])color("black")rotate([0,0,180])mirror([0,0,0])write("BOM_amplifier_brd",h=8);
difference(){
cube([65.3,94.1,3]);
translate([4.5,31.88,-0.1])#cylinder(r=3.5/2,h=20);
translate([57.577,31.88,-0.1])#cylinder(r=3.5/2,h=20);
translate([8.422,87.643,-0.1])#cylinder(r=3.5/2,h=20);
translate([59.533,87.643,-0.1])#cylinder(r=3.5/2,h=20);
}
}


