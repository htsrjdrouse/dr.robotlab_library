include <modparts.scad>
use<writescad/write.scad>

//translate([105,45,0])bom_controlpanel();
//electrics_panels_to_print();

//atx_power_connect_assy();

syringe_pcb_holder_placeholder();
/*
syringe_pcb_holder_cover();
syringe_pcb_holder_back();
syringe_pcb_holder();
 translate([-0,-30,0])syringe_pcb_holder();
 translate([60,-30,0])syringe_pcb_holder_cover();
*/
//conveyer_panel_pcb_holder();
//translate([69.2,13,-52])rotate([90,0,0])
//bom_controlpanel();





/*
gantry();
pcb_panels();
 outside_frame(tcl,thcl);
// labbot3d_electronics_configuration();
electronics_setup();
*/

//electronics_stl();
// labbot3d_electronics_configuration();
//noconveyer_gantry_assy(20,-30,-45+50+100-50-100+150,-55,0,267,tcl,thcl);
//translate([170,560,155])rotate([90,0,90])mirror([1,0,0])
//p1 = "kill_button_leds_panelmount";
//translate([100,-40,-40])color("black")rotate([90,0,0])write(p1,h=8);

/*
p2 = "syringe_pcb_holder";
translate([300,-40,-40])color("black")rotate([90,0,0])write(p2,h=8);

p3 = "BANANA JACKS";
translate([500,80,-28])rotate([0,0,90])color("black")rotate([90,0,0])write(p3,h=8);
*/
//p4 = "pcv_sensor_usb_connect";
//translate([500,225,-28])rotate([0,0,90])color("black")rotate([90,0,0])write(p4,h=8);

/*
p5 = "atx_power_sockets";
translate([330,250+200,-28])rotate([0,0,180])color("black")rotate([90,0,0])write(p5,h=8);

p6 = "conveyer_panel_pcb_holder";
translate([170,250+200,-28])rotate([0,0,180])color("black")rotate([90,0,0])write(p6,h=8);

p7 = "usbs_socket_alu_support";
translate([170-200,210,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p7,h=8);

p8 = "don't know";
translate([170-200,330,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p8,h=8);

p9 = "fan";
translate([170-200,40,-28])rotate([0,0,270])color("black")rotate([90,0,0])write(p9,h=8);
*/
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

module electrics_panels_to_print(){

bananajackpanel();
translate([0,-50,0])liquidlevel_pumps_pcb();

translate([-80,0,0])
translate([185,20,0])syringe_pcb_holder();
translate([105,-10,0])syringe_pcb_holder_cover();
translate([105,-38,0])syringe_pcb_holder_placeholder();
translate([0,46,0])syringe_pcb_holder_back();

translate([140,-151,0])rotate([0,0,90])conveyer_panel_pcb_holder();
translate([-78,-116,-400+3])rotate([90,0,0])atx_power_connect_assy();

//translate([0,-145,0])liquidlevel_pumps_pcb();
translate([105,45,0])bom_controlpanel();
translate([145,-230,0])rotate([0,0,90])usbs_socket_alu_support_lid_usbs_cover();

translate([-95,-105,0])usbs_socket_alu_support_lid_usbs_simplier();
/*

*/
}



module electronics_setup(){
translate([320,150,-3])rotate([0,180,90])BOM_washdrypcv_kill();
translate([176-0,190+130-6,5])rotate([0,180,90])BOM_conveyer_pcb();
translate([176-0+100-88,190+35,-4])rotate([0,180,-90])BOM_amplifier_brd();
translate([200,300,-5])BOM_conveyer_solenoids();
translate([105,220,0])rotate([0,180,90])azteeg_controller();
translate([390,340,0])rotate([0,180,90])BOM_atxpowerconnect();
translate([69.2,14,-52])rotate([90,0,0])BOM_controlpanel();
translate([440-7,200-0.8+162,-63])rotate([90,0,-90]){
translate([40,17,-2])BOM_liquidlevel_pumps();
}
}



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
translate([5.386,34.422,-5.1])cylinder(r=3.7/2,h=90);
translate([74.037,34.422,-5.1])cylinder(r=3.7/2,h=90);
translate([58.584,4.277,-5.1])cylinder(r=3.7/2,h=90);
}
}


module BOM_washdrypcv_kill(){
translate([-10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_washdrypcv_kill",h=8);

difference(){
cube([99.3,95.7,3]);
translate([28.235,90.424,-30])cylinder(r=3.7/2,h=50);
translate([72.286,92.913,-30])cylinder(r=3.7/2,h=50);
translate([5.587,4,-30])cylinder(r=3.7/2,h=50);
translate([91.698,4,-30])cylinder(r=3.7/2,h=50);
}
}

module BOM_conveyer_pcb(){
translate([10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_conveyer_pcb",h=8);
difference(){
cube([121,96.2,3]);
translate([25.334,93.131,-20.1])cylinder(r=3.7/2,h=60);
translate([114.619,92.881,-20.1])cylinder(r=3.7/2,h=60);
translate([7.577,6.348,-20.1])cylinder(r=3.7/2,h=60);
translate([114.369,6.348,-20.1])cylinder(r=3.7/2,h=60);
}
}


module BOM_atxpowerconnect(){
translate([0,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_atxpowerconnect",h=8);
difference(){
cube([99,99.4,3]);
translate([5.25,95,-20])cylinder(r=4/2,h=80);
translate([58.512,46.738,-20])cylinder(r=4/2,h=80);
translate([94.155,3.484,-20])cylinder(r=4/2,h=80);
}
}

module BOM_amplifier_brd(){
translate([70,40,6])color("black")rotate([0,0,180])mirror([0,0,0])write("BOM_amplifier_brd",h=8);
color("pink")difference(){
cube([65.3,94.1,3]);
translate([4.5,31.88,-0.1])cylinder(r=3.5/2,h=20);
translate([57.577,31.88,-0.1])cylinder(r=3.5/2,h=20);
translate([8.422,87.643,-0.1])cylinder(r=3.5/2,h=20);
translate([59.533,87.643,-0.1])cylinder(r=3.5/2,h=20);
}
}

module BOM_controlpanel(){
translate([0,40,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_controlpanel",h=8);
difference(){
cube([61.9,39.3,3]);
translate([5.772,33.154,-50.1])cylinder(r=3.5/2,h=200);
translate([56.627,33.256,-50.1])cylinder(r=3.5/2,h=200);
translate([5.772,5.117,-50.1])cylinder(r=3.5/2,h=200);
translate([57.957,6.038,-50.1])cylinder(r=3.5/2,h=200);
translate([15.186,20.875,-50.1])rotate([0,0,45])cylinder(r=9/2,h=200);
translate([34.627,21.591,-50.1])rotate([0,0,45])cylinder(r=5.5/2,h=200);
translate([52.329,21.591,-50.1])rotate([0,0,45])cylinder(r=5.5/2,h=200);
}
}

module BOM_liquidlevel_pumps(){
translate([100,30,-0])color("black")rotate([0,180,0])mirror([0,0,0])write("BOM_liquidlevel_pumps",h=8);
translate([81.7-4,0,0])rotate([0,180,0])translate([0,3,0])difference(){
cube([81.7,23.1,3]);
translate([4.2,10.721,-50.1])cylinder(r=3.5/2,h=200);
translate([12.8,11.8,-50.1])cube([10.4,2.7,200]);
translate([12.8,1.1,-50.1])cube([10.4,2.7,52]);
translate([77.892,10.721,-50.1])cylinder(r=3.5/2,h=200);
translate([54.1,11.8,-50.1])cube([15.5,2.7,200]);
translate([54.1,1.1,-50.1])cube([15.5,2.7,52]);
}
}

module BOM_conveyer_panel(){
translate([100,30,-0])color("black")rotate([0,180,0])mirror([0,0,0])write("BOM_conveyer_panel",h=8);
rotate([0,180,0])difference(){
cube([99.3,43.4,3]);
translate([23.158,9.088,-50.1])cylinder(r=4.2/2,h=200);
translate([94.245,4.060,-50.1])cylinder(r=3.5/2,h=200);
translate([5.346,36.9,-50.1])cylinder(r=3.5/2,h=200);
translate([96.802,39.532,-50.1])cylinder(r=3.5/2,h=200);
translate([9.4-0.5,9.15-0.5,-50.1])cube([9.5+1,20.5+1,200]);
translate([32.25-0.5,9.15-0.5,-50.1])cube([9.5+1,20.5+1,200]);
translate([57.7-0.5,9.15-0.5,-50.1])cube([9.5+1,20.5+1,200]);
translate([80.6-0.5,9.15-0.5,-50.1])cube([9.5+1,20.5+1,200]);
}
}
