include<tslot.inc.scad>
include<xgantry_modular_fix.scad>
include<utl.NEMA.scad>
include<bom_yaxis.scad>
include<panels.scad>
include<bom_camera.scad>
include<bom_zbed.scad>
include<bom_wash.scad>
include<bom_multichannel_syringe.scad>
include<stopcock_valve.scad>
include<arducam-raspi.scad>
include<bom_corexy_understack.scad>
include<gripper_platecrane/microwell_gripper.scad>
include<labautobox.scad>

//terminalblock_outside();
//terminalblock_inside();


//microfluidics_set();
terminalfrontpanel();

//labautobox();
//labautobox_shelf_c();
//labautobox_shelf_support();

//multichannel_syringe_to_labautobox_connect();
//endstop_multichannel_syringe();

module atx_24pin_power_socket(){
atx_24pin_socket();
translate([-20,10,0])atx_power_socket();
translate([-15,28,0])#cube([66.5,10,3]);
translate([-15,0,0])#cube([66.5,10,3]);
translate([-15,-22,0])#cube([13.2,22,3]);
translate([28,-22,0])#cube([23.2,22,3]);
translate([-15,-26,0])#cube([66.5,10,3]);
translate([48,-26,0])#cube([4,22+42,3]);
}
module atx_24pin_socket(){
difference(){
import("BackPanel09.stl");
translate([-80,-34,-10])cube([300,43,30]);
translate([-80,-34,-10])cube([65,80,30]);
}
}
 //translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingholder();


module atx_power_socket(){
difference(){
import("BackPanel09.stl");
translate([-80,-8,-10])cube([300,40,30]);
translate([-80,-34,-10])cube([98,80,30]);
}
}
 //translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingholder();
 //translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingholder_led();
 //translate([82+50,97-60+53,190])rotate([0,0,90])imagingblock_lightingside();
 //translate([82+50,97-60+53,190])rotate([0,0,90])color("blue")imagingblock_lightingside_diffuser();

//washbowl_8tip_drypad();
//washbowl_8tip_drypad_top();

 //translate([82+50,97-60,190])rotate([0,0,90])imagingblock_base();
/*
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock_lid();
*/
// translate([82+50,97-60,190-3.3])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("grey")arducam_case_rtPCR();
 //translate([82+50,97-60+15,190-3.3])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("grey")arducam_case_rtPCR_filter();
 //translate([82+50-5,97-60+6+13,190-3.3+6+2])rotate([0,0,90])translate([-40,42,18-4])rotate([90,0,90])color("yellow")cylinder(r=26/2,h=5,$fn=30);
// translate([82+50,97-60+31,190])rotate([0,0,90])imagingblock_imagingside();


//actual_thermoblock_metalmount();
//translate([25-47+25,0,0])mirror([1,0,0])actual_thermoblock_metalmount();


//translate([8,13,0])rearm_microfluidics_mount();
//translate([8,13,-10])microfluidics_power_mount();
//translate([-30,-50,0])import("/Users/richard/Downloads/Bottom.stl");
module rearm_microfluidics_mount(){
difference(){
union(){
translate([0,-20,0])color("pink")cube([108,70+25,3]);
translate([0,-20,0])color("pink")cube([108,10,14]);
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
}

translate([0+25,-20+20,-2])color("pink")cube([108-50,70+20-40,6]);
dia = 2.9;
translate([25,2.5+6,8])rotate([90,0,0])cylinder(r=dia/2,h=40,$fn=30);
translate([25+50,2.5+6,8])rotate([90,0,0])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8,2.5+6,-4])#cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4,-4])#cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4+57,-4])#cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+16,2.5+6-4.4+57,-4])#cylinder(r=dia/2,h=40,$fn=30);


cdia = 2.4;
translate([5,0,0]){
translate([5,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([5+87,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([27,0-20+96-3,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([71,0-20+96-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
}



}
}

module microfluidics_power_mount(){
difference(){
union(){
translate([0,-20,0])color("lime")cube([108,70+25,3]);
//translate([0,-20,0])color("pink")cube([108,10,14]);
/*
mdia = 9;
translate([7.8,2.5+6,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+80,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
translate([7.8+16,2.5+6-4.4+57,0])cylinder(r=mdia/2,h=10,$fn=30);
*/
}

translate([0+25,-20+20,-2])color("pink")cube([108-50,70+20-40,6]);
/*
dia = 2.8;
translate([7.8,2.5+6,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+80,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);
translate([7.8+16,2.5+6-4.4+57,-4])cylinder(r=dia/2,h=40,$fn=30);
*/

cdia = 2.7;
translate([5,0,0]){
#translate([4,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
#translate([99-5,0-20+98.5-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([5+87,0-20+4,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([27,0-20+96-3,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
translate([71,0-20+96-5,-38])rotate([0,0,0])cylinder(r=cdia/2,h=140,$fn=30);
}
}



}

module actual_thermoblock_metalmount(){
difference(){
union(){
translate([5,0,0])cube([25-5,100,2]);
translate([5,27,0])cube([10,50,13]);
}
translate([12.5,20,-3]){
translate([-20,20,12])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
translate([-20,15+30,12])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
cylinder(r=5/2,h=50,$fn=30);
translate([0,67,0])cylinder(r=5/2,h=50,$fn=30);
}
}
}
/*
*/
//thermoblock_lid();
//translate([-1.5,-2,0])thermoblock();
//translate([-1.5+55,-2,0])thermoblock();
//translate([-10.5,-5,-7])thermoblock_plate();
//
//heater();
//thermoblock();
//projection(cut=false)
//translate([0,0,2])rotate([0,0,0])actual_thermoblock();
//translate([40,0,0])thermoblock_tslotconnect();
//translate([-40,59,2])rotate([0,90,0])tslot20(150);
//translate([40,59,-3])cube([30,18,4]);
//imagingblock_lid();

//translate([50-10-20+x+121.5,200-14+y-100-10,279])rotate([180,90,0])
//wheel_camera_assay();

/*
*/
tcl = [155/255,155/255,155/255];

thcl = [155/255,155/255,155/255];

//x = 66-225-10+21-11.5;
//x = 66-149-43;
//x = 66-149-43+300-6;
//x = 129;
//x = -32+99+63;
x = -172;
//x = 66-149-43+200-8;
//x = 66-149-43+120-8;
//x = 66-149-43+120-8-100-40;
//y = -120.5;
y = 20.5+30;
//y = 20.5;
//y = -138;
//y = -68-9;
z =  28;
//tz = 28;
tz = -35;
echo("testing");
echo(y);



//multichannel_cameramount_tslot_part();

//show_gripper();

/*
multichannel_syringe_assy();
translate([-126,60,21])rotate([0,0,0])endstop_multichannel_syringe();
translate([-126,-11.4,97])rotate([-90,0,0])syringe_endstop_flag();
*/
/*
translate([0,0,-29.5])xymotor_assy_wider();
outside_frame_wider(tcl,thcl,x,y);
xshuttle_assy_wider(x,y);
*/
//translate([50-10-20+x,200-14+30+y,700-50])rotate([180,0,90])iverntech_railsystem(tz);
//translate([50-10-20+x,200-14+30+y,700-50])rotate([180,0,90])gripper_assembly_paddles();
/*
translate([50-10-20+x,200-14+30+y,700-50])rotate([180,0,90])iverntech_railsystem_rfid(tz);
//syringe_endstop_flag();
//translate([-126,60,21])rotate([0,0,0])endstop_multichannel_syringe();
*/
/*
//translate([50-10-20+x+121.5,200-14+y-100-10,279])rotate([180,90,0])wheel_camera_assay(tz);
XYMotorMount_corexystack(x+5,y-80);
translate([0,0,-24])corexy_beltsetup_wider(x,y);
conduit_tubes(x,y,(tz+40));
microfluidics_set();
//translate([x-81,y-90,tz])rotate([0,0,0])pipette_tips();
gantry_shelves_wider();
//washstation();
//imagingplateslideobjects(z);
processingplateslideobjects(z);
fabricationplateslideobjects(z);
*/
/*
//translate([0,0,z-40])plateobjects_nomastermix_nobox(z);
translate([0,0,z-40])plateobjects(z);
translate([-70,-25+50,z])zbed_multichannel_setup_wider(z);
translate([0,0,-12])zbed_smz_wider_nomove();
*/


/*
translate([x-81,y-90,tz])rotate([0,0,0])piezo_tip();
*/
/*
*/
/*

*/
//translate([0,0,z-40])plateobjects_nomastermix(z);

/*

*/


module processingplateslideobjects(z){
 for(i=[0:3]){
 for(j=[0:6]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 for(i=[4:5]){
 for(j=[4:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}
 translate([42.5+85+220,-25+214,z+144-0])rotate([0,0,90])import("384_well.stl");
 translate([42.5+85+220+88,-25+214,z+144-0])rotate([0,0,90])import("384_well.stl");
 /*
 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }
*/
}

module fabricationplateslideobjects(z){
 for(i=[1:5]){
 for(j=[0:6]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}
 for(i=[0:1]){
 for(j=[0:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 /*
*/
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }
}




module imagingplateslideobjects(z){
 for(i=[1:4]){
 for(j=[0:7]){
 translate([i*(76.5),51-(j*25),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides_nogaskets();
}
}
}

 /*

 for(i=[0:1]){
 for(j=[0:5]){
 translate([i*(76.5),51-(j*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])rotate([0,0,0])avid_slides();
}
}
}

 translate([0,51-(6*33),0]){
 translate([-24+23.5+1,-25+214-85+72-5,160+15])cube([70,28,5]);
 }
 for(i=[0:6]){
 for(j=[0:2]){
 translate([i*9,51-(6*33)+j*9,0]){
 translate([-24+23.5+6,-25+214-85+72,160+15])difference(){
  union(){
  color("lime")cylinder(r=6/2,h=8,$fn=30);
  color("lightblue")cylinder(r=4/2,h=6,$fn=30);
 }
  translate([0,0,6.2])cylinder(r=4/2,h=9,$fn=30);
 }
 }
 }
 }

*/


}












module avid_slides(){
 color("lightblue")cube([75,25,1]);
 for(i=[0:7]){
 difference(){
 union(){
 translate([3+i*9-2,2-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+8-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+16-2,1])color("black")cube([9,9,5]);
 }
 translate([3+i*9,2,-1])cube([5,5,10]);
 translate([3+i*9,2+8,-1])cube([5,5,10]);
 translate([3+i*9,2+16,-1])cube([5,5,10]);
 }
 translate([3+i*9,2,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+8,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+16,1])color("white")cube([5,5,1]);
 }
}


module avid_slides_nogaskets(){
 color("lightblue")cube([75,25,1]);
 for(i=[0:7]){
 /*
 difference(){
 union(){
 translate([3+i*9-2,2-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+8-2,1])color("black")cube([9,9,5]);
 translate([3+i*9-2,2+16-2,1])color("black")cube([9,9,5]);
 }
 translate([3+i*9,2,-1])cube([5,5,10]);
 translate([3+i*9,2+8,-1])cube([5,5,10]);
 translate([3+i*9,2+16,-1])cube([5,5,10]);
 */
 //}
 translate([3+i*9,2,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+8,1])color("white")cube([5,5,1]);
 translate([3+i*9,2+16,1])color("white")cube([5,5,1]);
 }
}









module plateobjects(z){
 for(i=[0:0]){
 translate([i*(85*2),0,0]){
 translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 /*
 translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 */
 }
 /*
 if(i==1){
  translate([i*(85*2),-120,0]){
 translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 }
 }
 */
 }
 /*
 translate([2*(85*2),0,0])translate([-24,-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 translate([2*(85*2)-85,-120,0])translate([1,0,0]){
 translate([42.5+85,-25+214,z+144+40])rotate([0,0,90])import("96_microwell_plate.STL.stl");
 translate([-24+85,-25+214-85,160])rotate([0,0,0])mastermix_model(z);
 }
 translate([82,97-30,190])rotate([0,0,90])thermoblock();
 translate([82+86,97-30,190])rotate([0,0,90])thermoblock();
 translate([82+86,97,190])rotate([0,0,90])plugblock();
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock();
 */
}

module plateobjects_nomastermix(z){
 
 for(i=[0:5]){
 if(i==0){
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model(z,0);
 } else { 
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model(z,-1);
 }
 if (i==2){
 translate([-24+i*(85-8),-25+214-85-120,160]) plugbox_model(z);
 }
 if (i>2){
 translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model(z,-1);
 }
 }
 translate([82,97-5,190])rotate([0,0,90])thermoblock();
 translate([82+86,97-5,190])rotate([0,0,90])thermoblock();
 //translate([82+86,97,190])rotate([0,0,90])plugblock();
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock();




}

module plateobjects_nomastermix_nobox(z){
 translate([-24+0*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 /*
 for(i=[0:5]){
 if(i==0){
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 } else { 
 translate([-24+i*(85-8),-25+214-85,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 }
 if (i==2){
 translate([-24+i*(85-8),-25+214-85-120,160]) plugbox_model(z);
 }
 if (i>2){
 translate([-24+i*(85-8),-25+214-85-120,160])rotate([0,0,0])tipbox_model_nobox(z,-1);
 }
 }
 */
 translate([82,97-5,190])rotate([0,0,90])thermoblock();
 translate([82+86,97-5,190])rotate([0,0,90])thermoblock();
 //translate([82+86,97,190])rotate([0,0,90])plugblock();
 translate([82+50,97-60,190])rotate([0,0,90])imagingblock();


}



module pipette_tips(){
for(i=[0:7]){
translate([261+9*i,193,200])pipette_p300_lts_model();
}
}

module piezo_tip(){
for(i=[0:0]){
translate([261+9*i,193,200])piezo_model();
}
}






module microfluidics_set(){
translate([-75,165,380])rotate([0,-90,0])multichannel_syringe_assy();
waterbottle();
wastebottle();
translate([-100,-174,250])rotate([0,0,-180])nalgene_bottle_assy_electrocaloric();
pressurecompensation_tubing();
//washstation_tubing();
//wastestation_tubing();
valve_assy_8set();
pressurecomp_to_valves();
peristaltic_pump_mnts();
syringes_to_valves();
valves_to_pipettes();
}





module bottle_cap(){
//tubing to pump
//color("lightblue")translate([53,-50,40])cylinder(r=3.2/2,h=15);
/*
for(i=[0:10]){
color("lightblue")translate([53+i,-50+i,60])sphere(3.25);
}
*/
color("black")translate([38,-30,-10])cylinder(r=9.8/2,h=50);
color("white")translate([53,-50,-10])cylinder(r=6.5/2,h=50);
color("white")translate([37,-38-15,-10])cylinder(r=6.5/2,h=50);
//color("white")translate([18,-38-10,-10])cylinder(r=6.5/2,h=50);
difference(){union(){
translate([38,-38,15])color("")cylinder(r=70/2,h=3);
color("lightblue")rotate([90,0,0])import("Cap.STL");
}
translate([38,-30,-10])cylinder(r=9.8/2,h=29);
translate([53,-50,-10])cylinder(r=6.5/2,h=29);
translate([37,-38-15,-10])cylinder(r=6.5/2,h=29);
//translate([18,-38-10,-10])cylinder(r=6.5/2,h=29);
translate([38+23,-28,-10])cylinder(r=3/2,h=29);
translate([38-10,-38-20,-10])cylinder(r=3/2,h=29);
translate([38-22,-38+10,-10])cylinder(r=3/2,h=29);
}
}










module nalgene_bottle_assy_electrocaloric(){
 translate([40+5,-42,80])color("")pressurecompensation_bottle();
 translate([6.5,-6.5,185])nalgene_cap_for_electrocaloric();
 color("lightblue")rotate([90,0,0])import("Bottle.STL");
 translate([6.5,-6.5,185])bottle_cap();
}

module pressurecompensation_bottle(){
difference(){
union(){
cylinder(r=55,10);
translate([-10,38,0])cube([20,25,25]);
translate([-70,-1,0])cube([30,20,30]);
translate([-70,-1-55,0])cube([10,75,30]);
translate([-70,-1-55,0])cube([10,18,40]);
}
translate([0,0,-1])cylinder(r=93/2,40);
translate([-5,30,-3])cube([10,40,29]);
translate([-80,-47,10])rotate([90,0,90]){cylinder(r=5.6/2,h=50);translate([0,0,15.1])cylinder(r=10.2/2,h=5);}
translate([-80,-47,30])rotate([90,0,90]){cylinder(r=5.6/2,h=50);translate([0,0,15.1])cylinder(r=10.2/2,h=5);}
//translate([-80,0,20])rotate([90,0,90])cylinder(r=5.6/2,h=50);
//translate([-65,0,20])rotate([90,0,90])cylinder(r=11.6/2,h=50);
translate([-30,55,15])rotate([90,0,90])cylinder(r=4.6/2,h=50);
}
}






module washstation(){
//translate([150,3-100+55,-1+18+243])stroboscope_mod();
//translate([420+50,-164-100,92])rotate([0,180,90])multichannel_tipremoval();
translate([230,0-5,220])rotate([0,0,-90]){
translate([0,3,-1])washbowl_8tip_base();
translate([0,3,-1+18])washbowl_8tip();
translate([0,3-100,-1+18])washbowl_8tip();
translate([0,3-100,-1])washbowl_8tip_base();
//translate([0-37,3,-1+18])washbowl_8tip_drypad();
}

}


module cable_support_lid(){

difference(){
translate([-40,15-10,200-10])
union(){
cube([5,20,43]);
translate([0,20,15])cube([5,75,10]);
}
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=3.2/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=3.2/2,h=40);
}
}


module cable_support(){
//tslot20(300);
difference(){
union(){
translate([-175,3,200])rotate([0,0,0])tslot20innerbracket();
translate([-15,5,200-8])cube([30-10,20,40]);
translate([0,5,200-8-40+5])cube([5,20,20]);
}
translate([-23,5,200-8])
translate([12,25,20])rotate([90,90,0])cylinder(r=25/2,h=30);
translate([-35,5-1,200-3-10])cube([30-10,30,30]);
translate([-40,15,200-19-17])rotate([0,90,0])cylinder(r=5.7/2,h=300);
translate([-40,15,200-4])rotate([0,90,0])cylinder(r=2.8/2,h=40);
translate([-40,15,200-4+32])rotate([0,90,0])cylinder(r=2.8/2,h=40);
}
}



module cable_support_extrusion(){
difference(){
cube([45,18,4]);
translate([10,9,-1])cylinder(r=5/2,h=20);
translate([35,9,-1])cylinder(r=5/2,h=20);
}
}


//this is where I need to modify
module zbed_smz_wider_nomove(){
translate([0,0,-15]){
translate([0,0,15]){
translate([15-65,120-50-54,141.5+42])rotate([0,90,0])tslot20(582);
translate([15-65+170,120-50-54+25,141.5+42])rotate([-90,0,0])tslot20(270);
translate([15-65+370,120-50-54+25,141.5+42])rotate([-90,0,0])tslot20(270);
translate([75-1-355+817,-55+464+2.5-191-180,6+272-300])rotate([180,-90,0])tslot20innerbracket();
translate([75-1-355+817-590,-55+464+2.5-191-180,6+272-300])rotate([180,-90,0])mirror([0,0,1])tslot20innerbracket();
}
translate([15-65,120+100+35-54-7+110,141.5+42+14])rotate([0,90,0])tslot20(582);
translate([75-1-355+817,-55+464+2.5-191+110,6+272-300+20-5])rotate([180,-90,0])tslot20innerbracket();
translate([75-1-355+817-590,-55+464+2.5-191+110,6+272-300+20-5])rotate([180,-90,0])mirror([0,0,1])tslot20innerbracket();
}
}





module corexy_beltsetup_wider(x,y){
px = 0;
py = -30;
dx = x - px;
dy = y - py;
translate([0,0,-5]){

translate([7+11-66,-72-45,355])color("black")rotate([-0.2,0,0.5])cube([2,500+45,5]);
translate([7-50,-25+457,355-1])color("black")rotate([0,1,-2.5])cube([510+42,3,5]);
translate([7+475+42,-25+442,355+3])color("black")rotate([0,-180-0.5,0.4])cube([510+42,3,5]);
translate([7+415-11+76+42,-25-50-45,355])color("black")rotate([-0.2,0,-0.4])cube([2,490+45,5]);
/*
*/
//x left
translate([20-50+7,-25+180-37+dy+19,350])color("black")rotate([0,0,-1])cube([200-20+dx+24,3,5]);
translate([7+20-50,-25+218-40+dy+19,350])color("black")rotate([-0,0,-180+1+90])cube([2,183+dx+28,5]);

//x right
translate([7+415-2.5+43+42,-25+218+dy-41+19,350])color("black")rotate([-0,0,-180-0.5-90])cube([2,163-dx+12+80,5]);
translate([417-2.5+47+42,-25+181-2+dy-40+19,355])color("black")rotate([0,180,0+0.5])cube([215-dx-28+80,3,5]);

//y front side
translate([7+18-52,-78-45,355])color("black")rotate([0,0,0.5])cube([2,184+dy+25+45,5]);
translate([7+415-17+62+42,-78-45,355])color("black")rotate([0,0,-0.5])cube([2,184+dy+25+45,5]);

//y back side
translate([7+415+55+42,-25+218+210,342])color("black")rotate([0,0,-180-2])cube([2,180+60-dy-12,5]);
translate([7-43,-25+218+183+28,342])color("black")rotate([0,0,-180+2])cube([2,180+65-dy-12,5]);
}
}







module backextruder_clamp(){
difference(){
union(){
translate([0,40-1,0])cube([15,6,20]);
cube([15,55,6]);
translate([11,7.5-0.765/2,-2])cube([4,5.765,5]);
}
translate([7.5,10,-6])cylinder(r=4.7/2,h=12);
translate([7.5,50,22-6])rotate([90,0,0])cylinder(r=4.7/2,h=30);
}
}


module x_encoder_support_wider(){
translate([30-10,30,15])rotate([0,0,90])color("")backextruder_clamp();
translate([30-10,350+190,15])rotate([0,0,90])color("")backextruder_clamp();
translate([-50+5,40,16+25])
//color("")
color("")
cube([18,500,3]);
translate([-50,400+165,16])rotate([90,0,0])tslot20(385+165);
}




module xshuttle_assy_wider(x,y){
translate([0,y,0]){
//translate([20-70,217-23,400-78])rotate([0,0,-90])x_encoder_support_wider();
translate([0,-28,0]){
translate([43-25-55,206.5-15-41.5+28+19,-60+430-28])rotate([-90,90,-90])tslot20(552);
translate([43-25-55+45,206.5-15-41.5+28+39,-60+430-28-4])rotate([-0,0,-90])color("silver")cube([12,450,8]);
}
/*
*/
translate([0,0,-28]){
//translate([-27/2+12/2-48+6,55-y-65,310-6+5])cube([12,400,8]);
translate([0,-60-y+20,0]){
translate([1,0-20,284+28])rotate([90,0,90])iverntech_connector();
translate([1,0+170,284+28])rotate([90,0,90])iverntech_connector();
translate([1,0+350,284+28])rotate([90,0,90])iverntech_connector();
}
translate([-27/2+12/2-48+6+12,55-60-30-60+15-y+20,310-6+5])color("silver")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2-10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2-10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
 translate([27/2+10,45/2+10,-5-20])cylinder(r=3.7/2,h=60);
}
}
translate([-49.5+12,345,300-11])rotate([0,180,180])ivernetech_slider_module_wider();
translate([440.5+42,0,-28])mirror([1,0,0]){
translate([0,-60-y+20,0]){
translate([1,0-20,284+28])rotate([90,0,90])color("")iverntech_connector();
translate([1,0+170,284+28])rotate([90,0,90])color("")iverntech_connector();
translate([1,0+350,284+28])rotate([90,0,90])color("")iverntech_connector();
}
//color("")translate([-27/2+12/2-48+6,-10-y,310-6+5+28])
//cube([12,400,2]);
translate([-27/2+12/2-48+6+12,55-0-65-50-y+20,310-6+5])color("silver")cube([12,450,8]);
translate([-27/2+12/2-42-7.5+12,150+20,310-6+5-6])difference(){
 color("silver")cube([27,45,9]);
 translate([27/2-10,45/2-10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2+10,45/2-10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2-10,45/2+10,-5-30])cylinder(r=3.7/2,h=80);
 translate([27/2+10,45/2+10,-5-30])cylinder(r=3.7/2,h=80);
}
translate([-49.5+12,345,300-11+28])rotate([0,180,180])ivernetech_slider_module_wider();
}
/*
*/
}
}









module slider_assy(x,y){
translate([0,y,0]){
translate([0,-28,0]){
translate([x,0,0]){
//translate([190,52,420])rotate([180,0,90])color([160/255,160/255,160/255])camera_assy();
//translate([190+80,52+70+5.8,420-22-20])rotate([180,0,90])color([220/255,220/255,200/225])rotate([180,0,90])lasermount_assy();
//translate([15-25-150,206.5,-60+400])sandwich_sliderwheel_assy();

slider_front_assy_multichannel();
slider_back_assy();
}
}
}
}



module XY_motor_x2higher_3dprint(){
//bearings stuff
translate([-50,0,400])translate([(62.8/2*0.65),(64.32*0.65),-15]){
  color("silver")translate([0,0,15])cylinder(r=(5.7)/2,h=25);
  color("silver")translate([0,0,30])cylinder(r=(13)/2,h=5);
  translate([0,0,30])color("black")cylinder(r=(13+8)/2,h=5);
  color("silver")translate([0,0,30])cylinder(r=(17)/2,h=1);
  color("silver")translate([0,0,35])cylinder(r=(17)/2,h=1);
}
/*
*/
translate([-50,0,400])scale([0.65,0.66,1])difference(){
union(){
color("silver")cube([63.84,94.32,3.3+5]);
//color("silver")cube([63.84,94.32,3.3+5-3.3]);
}
translate([40,0,-0.2])rotate([0,0,-30])cube([63.84-20,94.32,13.5]);
translate([62.8/2,64.32,-0.1])cylinder(r=35.8/2,h=30);
translate([7.38,40.82,-0.1])cylinder(r=4.92/2,h=30);
translate([7.38,40.82,3.3])cylinder(r=11/2,h=5);
translate([54.88,87.52,-0.1])cylinder(r=4.92/2,h=30);
translate([54.88,87.52,3.3])cylinder(r=11/2,h=5);
translate([7.68,15.2,-0.1])cylinder(r=6.36/2,h=30);
translate([7.68,15.2,3.3])cylinder(r=13.84/2,h=5);
translate([41.04,15.2,-0.1])cylinder(r=6.36/2,h=30);
translate([41.04,15.2,3.3])cylinder(r=13.84/2,h=5);
}
//nema motor for display xy
translate([-32+3-0.6-20,35+2+5.5-0.2-20,400-48])nema17();
}








module xymotor_assy_wider(){
//XY motor assembly
translate([440+54+42,405+30,338.3])rotate([0,0,180])XY_bearings_Right_x1_3dprint();
translate([0-40-14,405+30,338.3])rotate([0,0,0])XY_bearings_Left_x1_3dprint();
translate([10-23+70+0+450+42,25-55-45,-65])rotate([0,180,180])mirror([0,0,1])XY_motor_x2higher_3dprint();
translate([-60-7,25-55-45,-60])rotate([0,0,180])XY_motor_x2higher_3dprint();
}


module tslot20innerbracket(){
 //bottom corner support
   translate([180,2,0])
   rotate([0,90,-270]){
   difference(){
   cube([30,30,20]);
   translate([27,0,-2])
   cube([10,5,25]);
   translate([0,27,-2])
   cube([10,5,25]);
   translate([0,30,25])   
   rotate([180,0,45])
   cube([30,50,30]);
   translate([5,5,5])
   cube([20,20,9.5]);
   translate([-5,20,10])
   rotate([0,90,0])
   cylinder(r=5.7/2,h=50);
    translate([19,15,10])
    rotate([90,0,0])
    cylinder(r=5.7/2,h=50);
   }
    translate([-2,0,7.5])
    cube([5,13,5]);
   }
}





module outside_frame_wider(bcl,cl,x,y){
{
translate([-100+15-70-3,103+380+30,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45,103+380+30,-73])import("files/foot_big.stl");
translate([-100+15-70-3,103-55-50+4,-73+0.7])import("files/foot_big.stl");
translate([-100+15+420+74+45,103-55-50+4,-73])import("files/foot_big.stl");
}

//START ASSEMBLING FROM HERE
left_outside_frame_wider_zbed();
translate([440+42,0,0])mirror([1,0,0])left_outside_frame_wider_zbed();

//cross tslots

translate([-54,-55-45,21])rotate([0,90,0])tslot20(590);
translate([-54,-55-45,21+293])rotate([0,90,0])tslot20(590);
translate([-54,-55+464.5,21])rotate([0,90,0])tslot20(590);
translate([-54,-55+464.5,21+293])rotate([0,90,0])tslot20(590);

 //select this
 translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_a();
 translate([14+(708.8*0.58)-1+60,19+(638.4*0.58)-44-4,13-7-5])color(bcl)rotate([0,0,180])bottom_x1_wider_b();
 translate([15,16.5,-60-3])rotate([90,0,0])color(bcl)front_plate_x1_wider();
 translate([15,16.5+380,-60])rotate([90,0,0])color(bcl)back_plate_x1_wider();
 translate([-4+12.5+420+42,19,-60])rotate([90,0,90])color(bcl)right_plate_x1_wider();
 translate([-4+12.5,19,-60])rotate([90,0,90])color(bcl)left_plate_x1_wider();
}

module left_outside_frame_wider_zbed(){
translate([-29,0,0])y_encoder_support_wider(60);

translate([0,0,0]){
//begin 3d printed stuff
//end 3d printed stuff
//LFTL1
//HFS5-2020-484-TPW-Z5-XA94.5-XB312.5 now change to ...
//HFS5-2020-484-TPW-Z5-XA96-XB314
translate([-50-29,460-26-20+0.5,16-25])rotate([90,0,0]){
tslot20(489.5);
}
}
translate([360,250-260-33-1-85,10])rotate([180,180,-90]){
translate([75-1-45,-55+464,9.5-23.5-60]){
tslot20(564);
}
}
translate([360,250+85,10])rotate([180,180,-90]){
translate([75-0.5,-55+464,9.5-23.5-60]){
tslot20(564);
}
}
//z axis
translate([360,250-130,10])rotate([180,180,-90]){



translate([75-1-180,-55+464,6])tslot20(273);
translate([75-1-180+205,-55+464+2.5,6])rotate([0,180,0])tslot20innerbracket();
translate([75-1-355,-55+464+2.5,6+272])rotate([0,0,0])tslot20innerbracket();
translate([-60,0,0]){
translate([75-1+170,-55+464,6])tslot20(273);
translate([350,0,0]){
translate([75-1-180+205,-55+464+2.5,6])rotate([0,180,0])tslot20innerbracket();
translate([75-1-355,-55+464+2.5,6+272])rotate([0,0,0])tslot20innerbracket();
}
}
//translate([75,-55+464,0-50-125+165])tslot20(500);
}
}


module y_encoder_support_wider(sh){
translate([0,410,330])rotate([180,0,0]){
//LLYENC it has 2 screws commented out below
//This needs to be updated fixed
//HFS5-2020-484-TPW-Z5-XA135.5-XB230-XC353.5
//HFS5-2020-484-TPW-Z5-XA134-XB352-YA230
translate([-50,400+sh-20+45,16])rotate([90,0,0]){
tslot20_2060(444.5+45);
}
}
}

module gantry_shelves_wider(){

translate([0,0-45,0]){

/*
translate([240+75+42,5-55+110,20+150-25-3])tslot20innerbracket();
translate([20-75,-55+110+4,20+150-3])rotate([0,90,0])tslot20(592);
translate([200-75,5+20-55+116,20+150-25])rotate([0,0,180])tslot20innerbracket();
translate([240+75+42,5-55+290,20+150-25-3])tslot20innerbracket();
translate([20-75,-55+290+4,20+150-3])rotate([0,90,0])tslot20(592);
translate([200-75,5+20-55+296,20+150-25])rotate([0,0,180])tslot20innerbracket();
*/
//translate([20-75,-55,20+150])rotate([0,90,0])tslot20(592);
translate([20-75,-55,20+220])rotate([0,90,0])tslot20(592);
color(""){
//translate([240+75+42,5-55,20+150-25])tslot20innerbracket();
translate([240+75+42,5-55,20+220-25])tslot20innerbracket();
translate([200-75,5+20-55,20+220-25])rotate([0,0,180])tslot20innerbracket();
//translate([200-75,5+20-55,20+150-25])rotate([0,0,180])tslot20innerbracket();
translate([420+50,-164-55,90])rotate([0,180,90])multichannel_drypad();

/*
translate([330+50,30-55-22+20,15])difference(){
cylinder(r=60,130);
translate([0,0,3])cylinder(r=55,130);
}
*/
}
/*
*/
}
}
/*
x = 91;
y = 30;
z =  40;
*/
module conduit_tubes(x,y,z){
  //echo(z);
 //translate([-74,198,550-150])rotate([0,90,0])tslot20innerbracket();
 //translate([-74,198+215,550-150])rotate([0,90,0])tslot20innerbracket();
 //conduit
 translate([172,410,260]){
  translate([-5,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=75+x+21);
  translate([-5-210,-10,210])rotate([0,90,0])color("black")cylinder(r=25/2,h=190);
  translate([-5-210+40,-10,210-178])rotate([0,-10,0])color("black")cylinder(r=25/2,h=190);
  //translate([x-21,y+30,z-40]){
  translate([x-21,0,0]){
  translate([105,-12,210])color("black")sphere(r=12.5);
  translate([105,-20,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")sphere(r=12.5);
  translate([105,-30,210])color("black")rotate([90,0,0])cylinder(r=12.5,h=250-y);
  translate([105,-30-210-3+y-30,210+5])color("black")rotate([180,0,-10])cylinder(r=12.5,h=80);
  }
  //one
  translate([105-13.5+8+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-26,75,0])cylinder(r=3/2,h=80);
  //two
  translate([105-13.5+8+9+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,71,0])cylinder(r=3/2,h=72);
  //three
  translate([105-13.5+8+9*2+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-30,69,0])cylinder(r=3/2,h=62);
  translate([105-13.5+8+9*7+18+x-91-15,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //four
  translate([105-13.5+8+9*3+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-34,65,0])cylinder(r=3/2,h=58);
  translate([105-13.5+8+9*7+18+x-91-12,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //five
  translate([105-13.5+8+9*4+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-37,62,0])cylinder(r=3/2,h=52);
  translate([105-13.5+8+9*7+18+x-91-9,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //six
  translate([105-13.5+8+9*5+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-40,57,0])cylinder(r=3/2,h=48);
  translate([105-13.5+8+9*7+18+x-91-6,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //seven
  translate([105-13.5+8+9*6+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-43,50,0])cylinder(r=3/2,h=44);
  translate([105-13.5+8+9*7+18+x-91-3,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  //eight
  translate([105-13.5+8+9*7+x-91,-30-249+2+y-30,63+z-40])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18+x-91,-30-249+32+y-30,(84+z-40)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(123-z));
  /*
  translate([x-91,y-30,z-40]){
  //one
  translate([105-13.5+8,-30-249+2,63])color("lightblue")rotate([-20,42,0])cylinder(r=3/2,h=110-40);
  translate([105-13.5+8,-30-249+2,63])color("lightblue")rotate([-20,42,0])cylinder(r=3/2,h=110+z-40);
  //two
  translate([105-13.5+8+9,-30-249+2,63])color("lightblue")rotate([-20,38,0])cylinder(r=3/2,h=110-40);
  //three
  translate([105-13.5+8+9*2,-30-249+2,63])color("lightblue")rotate([-20,34,0])cylinder(r=3/2,h=110-40);
  //four
  translate([105-13.5+8+9*3,-30-249+2,63])color("lightblue")rotate([-20,30,0])cylinder(r=3/2,h=110-40);
  //five
  translate([105-13.5+8+9*4,-30-249+2,63])color("lightblue")rotate([-20,26,0])cylinder(r=3/2,h=110-40);
  //six
  translate([105-13.5+8+9*5,-30-249+2,63])color("lightblue")rotate([-20,22,0])cylinder(r=3/2,h=110-40);
  //seven
  translate([105-13.5+8+9*6,-30-249+2,63])color("lightblue")rotate([-20,19,0])cylinder(r=3/2,h=90-40);
  //eight
  translate([105-13.5+8+9*7,-30-249+2,63])color("lightblue")rotate([-50,42,0])cylinder(r=3/2,h=42);
  translate([105-13.5+8+9*7+18,-30-249+32,(84)])color("lightblue")rotate([0,0,0])cylinder(r=3/2,h=(33));
 }
 */

 }
 translate([172,410,260])color(""){
 translate([-50,6,240])cable_support_extrusion();
 translate([-30,-55,0])rotate([0,0,-90])cable_support_lid();
 rotate([0,0,90])cable_support();
 }
translate([-54,410,505])rotate([0,90,0])tslot20(200);
translate([140,410,505-105])rotate([0,0,0])tslot20(100);
}

