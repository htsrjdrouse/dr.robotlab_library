include <MG995_Servo_Linear_Actuator/files/caller.scad>
include <utl.NEMA.scad>

//stepper_linear_m8nut_endstopflag(6);
//nema17motormount_assy();

color("lime")translate([-150-15-3,53+0.25-0.35,-30+2])rotate([0,0,90])stepper_linear_m8nut_handheld();
plunger_shuttle();
//threadrod_bearing();
//import("Float_LM8UU_bearing_mount_for_Anet_a8/files/floatbearing.stl");
//rodholder_nema17_support();
nema17motormount_assy();
translate([-60-50,130-84-80,80-16])rotate([0,180,-90])servo_linear_assy();
pipettor_handle_linact_support_top();
//rodholder_nema17_support();
translate([-90-50,0+37.5-6+9,9.5+11-6])rotate([0,90,0])color("silver")cylinder(r=8.7/2,h=130,$fn=30);
translate([-90-50,0+38-45.5+6-9.5,9.5+11-6])rotate([0,90,0])color("silver")cylinder(r=(8.7)/2,h=130,$fn=30);
translate([-50,0,9.5])rotate([0,90,0])tslot20(100);
translate([50-10-40,-10,-32])rotate([0,180,0])tslot_stepper_linearactuator_tslotshuttle_handmultichannel();
translate([-38,-4-20,58])rotate([0,90,0])hand_pipettor_connector_plate();
translate([30,34,-15.5])rotate([90,0,0])multichannel_aligner();
/*
*/





module stepper_linear_m8nut_endstopflag(thick){
translate([0,-20-9,0])difference(){
difference(){union(){
translate([-38.25+14-13.9+20,-70+30.-5+4,22.5+3.8-1.0])cube([44.5-20,11,thick]);
translate([-38.25+14-13.9+20-20,-70+30.-5-5+7,22.5+3.8-1.0])cube([44.5-20+20-23,5+10+5-7,thick]);
#translate([-38.25+14-13.9+20-20-4,-70+30.-5-5-4,22.5+3.8-1.0])cube([44.5-20+20-23,5+10+5+4,thick+5]);
}
translate([-90,-40-4,29])rotate([0,90,0])#cylinder(r=3.7/2,h=73,$fn=30);
translate([-90,-40+7,29])rotate([0,90,0])#cylinder(r=3.7/2,h=73,$fn=30);
}
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34,22.5+3.8-50])#cylinder(r=3.7/2,h=120,$fn=30);
translate([-38.25+14-13.9+13.7+11.9-i,-70+34,22.5+3.8-1])#cylinder(r=8/2,h=3,$fn=30);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34,22.5+3.8-50])cylinder(r=3.7/2,h=120,$fn=30);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34,22.5+3.8-1])#cylinder(r=8/2,h=3,$fn=30);
}
}
}










module multichannel_aligner(){
difference(){
union(){
translate([0,0,0])cube([20,40,4]);
cube([20,18,9]);
translate([-0,0,29])cube([20,18,9]);
translate([-2.5+3,20,0])cube([34.5+10,20,4]);
translate([-2.5+9,20-17,0])rotate([0,0,30])#cube([33,10,4]);
translate([-2.5+9+10,20-17,0])rotate([0,0,30])#cube([33,10,4]);
translate([-2.5+9,20-17,35])rotate([0,0,30])cube([33,10,4]);
translate([-2.5+9+10,20-17,35])rotate([0,0,30])cube([33,10,4]);
translate([-2.5+3,20,35])cube([34.5+10,20,4]);
translate([0,0,35])cube([20,40,4]);
translate([-0,-5,0])cube([20,5,39]);
}
translate([-2.5+2.5,20+20-17,-10])#cube([35+15,20,4+50]);
translate([10,10,-2])cylinder(r=5.7/2,h=50,$fn=30);
translate([10,10,-0.1])cylinder(r=10/2,h=5,$fn=30);
translate([10,10,-0.1+34.5])cylinder(r=10/2,h=5,$fn=30);
}
}



module plunger_shuttle(){
translate([-100,89,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
translate([0,0,0]){
//#translate([-100-17.5,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
//translate([-100+10,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
translate([-100,89+51.5,4.5])rotate([0,0,90])import("Float_LM8UU_bearing_mount_for_Anet_a8/LM8UU_holder_stub.stl");
}
difference(){
translate([-100-4,89-90,4.5-2])cube([30,32,9]);
color("silver")translate([-55-10+0-5-100,5+10,4.5-10])rotate([0,90,0])cylinder(r=23/2,h=260,$fn=30);
//translate([-80,15,-10])#cylinder(r=2.8/2,h=40,$fn=30);
translate([-80-18,15,-10])#cylinder(r=2.8/2,h=40,$fn=30);
translate([-3,0,0]){
translate([-80,3,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80,27,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,27,-10])#cylinder(r=3.8/2,h=40,$fn=30);
translate([-80-18,3,-10])#cylinder(r=3.8/2,h=40,$fn=30);
}
}
}



module stepper_linear_m8nut_handheld(){
mirror([0,0,0]){
translate([0,-20-9,0])difference(){
union(){
//translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=18/2,h=23+3-15);
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=22/2,h=10);
translate([-38.25+14-13.9-14+2-0.5+2-8,-70+30-5-10-10,22.5+3])cube([21+16,20+10,20-12.5-3+0.5]);
//translate([-38.25+14-13.9,-70+30.-5,22.5+3.8-1.0])cube([44.5,10,3.7+1.25]);
}
translate([0.35+0.75,-8-2,0])rotate([0,0,0]){
//translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])#rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([0.4,0,0]){
#translate([-38.25+14-13.9+6.5+4.5-0.25,-70+30-10+8+5-16+1.5+5.5,22.5+8-8-10])rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-24-0.25,-70+30-10+8+5-16+1.5+5.5,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-0.25,-70+30-10+8+5-16+1.5+5.5+18,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
#translate([-38.25+14-13.9+6.5+4.5-24-0.25,-70+30-10+8+5-16+1.5+5.5+18,22.5+8-8-10])#rotate([-0,0,0])cylinder(r=2.8/2,h=36,$fn=35);
}
/*
*/

//translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-10])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
//translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
//#translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
//#translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
//#translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=4.5/2,h=11,$fn=35);
//#translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
}
translate([-38.25+14-13.9-14+8+1.2-0.2,-70+30-5-10-17,22.5+13.5])cube([10,40,5]);
//cylinder(r=7.4,h=sl+4,$fn=6);
//translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+2-2.5-33,22.5])rotate([-90,0,0])cylinder(r=12/2,h=28,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5+5-16,22.5-8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9,-70+30-10+8+5-10,22.5-8])rotate([-90,0,0])cylinder(r=8.5/2,h=4,$fn=35);
#translate([-38.25+14-13.9,-70+30-10+8+5-10-20,22.5+8])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-10-20,22.5])rotate([-90,0,0])cylinder(r=8.5/2,h=4+20,$fn=35);
#translate([-38.25+14-13.9,-70+30-10+8+5-16-13,22.5+8])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9-8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
translate([-38.25+14-13.9+8,-70+30-10+8+5-16,22.5])rotate([-90,0,0])cylinder(r=3.8/2,h=36,$fn=35);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-90,0,0])cylinder(r=2.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9-17,-70+30-10+8+5+13,2.5])rotate([-0,40,0])cylinder(r=3.7/2,h=128,$fn=32);
//translate([-38.25+14-13.9,-70+30-10+8+5,22.5])rotate([-90,0,0])cylinder(r=13.8/2,h=28,$fn=6);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=(7.8)/2,h=241);
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34-4,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}
}




module threadrod_bearing(){

difference(){
translate([-55-3,5,4.5])rotate([0,90,0])cube([20,20,5+3]);
translate([-55-10+0,5+10,4.5-10])rotate([0,90,0])#cylinder(r=5.7/2,h=40,$fn=30);
translate([-55-10+0+9.5-4,5+10,4.5-10])rotate([0,90,0])#cylinder(r=10/2,h=4,$fn=30); 
}
}

module pipettor_handle_linact_support_top(){
translate([30-50,-3.35,-16])rotate([0,-90,0])pipettor_handle_linact_support();
translate([-20,9.3+0.1-0.0,41.5-54])rotate([90,0,-90])difference(){
m8_clamp();
}
translate([-20,9.3+0.1+10.7,41.5])rotate([90,180,-90])difference(){
m8_clamp();
}
}


module nema17motormount_assy(){
translate([-50,0,0]){
translate([-90.5,9.3+0.1,41.5])rotate([-90,0,-90])difference(){
m8_clamp();
translate([10,31,4])cylinder(r=8/2,h=100);
}
translate([-90.5,9.3+10.8,41.5-54])rotate([90,0,90])difference(){
m8_clamp();
translate([10,31-8.5,4])cylinder(r=8/2,h=100);
}
translate([-10,0,-11]){
translate([-50-30+20-2,0+37.5-45.5/2-40,9.5+11-5+11])rotate([0,90,0])motormount();
}

/*
translate([-10,0,-11]){
translate([-50-30,0+37.5-45.5/2,9.5+11-15])rotate([0,90,0])nema17();
}
*/


//color("silver")translate([-55-10+0-5,5+10-0.25,4.5-10])rotate([0,90,0])cylinder(r=(8.7)/2,h=60,$fn=30);

}
}





module rodholder_nema17_support(){
cube([20,18,4]);
}

module hand_pipettor_connector_plate(){
difference(){
translate([-5,0,0])color("aqua")cube([25,37+15,5]);
translate([5,8,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5,8+22-4,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5+10,8+20-3,-20])cylinder(r=3.7/2,h=50,$fn=30);
translate([5+10,8+20-3+20,-20])cylinder(r=3.7/2,h=50,$fn=30);
}
}








module pipettor_handle_linact_support(){
difference(){
union(){
cube([63,36.5,13]);
translate([55,-20,0])cube([23,36.5+15,13]);
}
//translate([-1,(36.5-20.5)/2,-1])cube([54,20.5,13+3]);
//translate([-1,(36.5-20.5)/2,-1])cube([37,20.5,13+3]);
translate([59,4.3,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3+20,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3+20,-0])cylinder(r=8/2,h=4,$fn=30);

translate([59+10,4.3-17,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59+10,4.3-17,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59+10,4.3-17+22-4,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59+10,4.3-17+22-4,-0])cylinder(r=8/2,h=4,$fn=30);
/*
*/
translate([-1,(36.5-20.5)/2,-1])cube([24,20.5,13+3]);
translate([-1+30-0.4-1-1,(36.5-20.5)/2+10+0.3,-1])
translate([0,0,0])cylinder(r=(22)/2,h=16);
translate([-1+30-0.4-1,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(22+i*0.25)/2,h=16);
}
translate([-1+30-0.4-1+8,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(24-i/2)/2,h=16);
}
translate([-1+30-0.4-1+7+4+6,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:3]){
translate([i,0,0])cylinder(r=(18-i*2)/2,h=16);
}
for(i=[0:9]){
translate([3+4+i,-30,13/2])rotate([-90,0,0])cylinder(r=3,h=100,$fn=30);
}
}
}





module pipettor_handle(){
difference(){
cube([63,36.5,13]);
//translate([-1,(36.5-20.5)/2,-1])cube([54,20.5,13+3]);
//translate([-1,(36.5-20.5)/2,-1])cube([37,20.5,13+3]);
translate([59,4.3,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3-2,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59+2,4.3-2,-0])cylinder(r=8/2,h=4,$fn=30);
translate([59,4.3+20,-20])cylinder(r=3.7/2,h=100,$fn=30);
translate([59,4.3+20,-0])cylinder(r=8/2,h=4,$fn=30);
translate([-1,(36.5-20.5)/2,-1])cube([24,20.5,13+3]);
translate([-1+30-0.4-1-1,(36.5-20.5)/2+10+0.3,-1])
translate([0,0,0])cylinder(r=(22)/2,h=16);
translate([-1+30-0.4-1,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(22+i*0.25)/2,h=16);
}
translate([-1+30-0.4-1+8,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:8]){
translate([i,0,0])cylinder(r=(24-i/2)/2,h=16);
}
translate([-1+30-0.4-1+7+4+6,(36.5-20.5)/2+10+0.3,-1])
for(i=[0:3]){
translate([i,0,0])cylinder(r=(18-i*2)/2,h=16);
}
for(i=[0:9]){
translate([3+4+i,-30,13/2])rotate([-90,0,0])cylinder(r=3,h=100,$fn=30);
}
}
}


module tslot_stepper_linearactuator_tslotshuttle_handmultichannel(){
translate([2,-5,-13])difference(){
union(){
//translate([0,0,-3.5])cube([16,60,4+3.5]);
translate([0-15.5,17.4,0-3.4])cube([16+15.5+4,25,4+5+3.5]);
translate([0,-0.5,0]){
translate([0-15.5,17.4-2.5-1,0-3.4-18])cube([16+15.5+4-8,6,4+5+3.5+18]);
translate([0-15.5,17.4-2.5-1+26.3,0-3.4-18])cube([16+15.5+4-8,6,4+5+3.5+18]);
}
translate([0-15.5,17.4,0-3.4+7.5])cube([16+15.5+4+20,25,4+5+3.5-7.5]);
}
translate([-1,80,-13.5])rotate([90,0,0])cylinder(r=5.7/2,h=100,$fn=30);

translate([0.35+0.75+40+6-83-2-0.1,75-1-5.35,-25-2.5])rotate([0,0,90]){
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8-2.5])rotate([-0,0,0])cylinder(r=4.5/2,h=11.8,$fn=35);
translate([-38.25+14-13.9+6.5-15,-70+30-10+8+5-16+1.5+13,22.5+8-8])rotate([-0,0,0])cylinder(r=2.5/2,h=36,$fn=35);
}
/*
translate([8,30-6,-1])cylinder(r=3.7/2,h=20);
translate([8,30-6,0-3.6])cylinder(r=6.5/2,h=3.6);
translate([8,30+6,-1])cylinder(r=3.7/2,h=20);
translate([8,30+6,0-3.6])cylinder(r=6.5/2,h=3.6);
*/
//translate([8,30-22,-1])cylinder(r=5.9/2,h=20);
//translate([8,30+22,-1])cylinder(r=5.9/2,h=20);
//translate([8,30-22,-1])cylinder(r=5.9/2,h=20);

translate([8+22,30-15+8,-1-6])cylinder(r=2.8/2,h=50);
translate([8+22,30-15+8+13,-1-6])cylinder(r=2.8/2,h=50);
/*
translate([8,30+15,-1-6])cylinder(r=5.9/2,h=50);
translate([8,30-15,4-3.5])cylinder(r=10/2,h=20);
translate([8,30+15,4-3.5])cylinder(r=10/2,h=20);
*/
}
}



//(C) Nathan Zadoks 2011
//CC-BY-SA or GPLv2, pick your poison.
module tslot(
	size=10,	//size of each side
	length=10,	//length. descriptive enough, no?
	thickness=3,	//thickness of the 'sheet'
	gap=0,		//gap, thickness of the lower part of the 'T'
	center=false,	//somewhat vague. todo.
	nut=false,	//set to true to make a fitting T-slot nut
){
	start=thickness/sqrt(2);
	if(nut){
		linear_extrude(height=10)
		intersection(){
			polygon([[size/2-gap/2,0],[size/2-gap/2,thickness],[thickness+start,thickness],[size/2,size/2-2],[size-thickness-start,thickness],[size/2+gap/2,thickness],[size/2+gap/2,0]]);
			square([size,size/2-(gap+thickness)/2]);
		}
	}	
	else{
		color([0.5,0.5,0.5])
		linear_extrude(height=length,center=center)
		translate([15,15])
		difference(){
			union(){
				for(d=[0:3]) rotate([0,0,d*90]) polygon(points=[
					[0,0],
					[0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
					[size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
				]);
				square(gap+thickness,center=true);
			}
			circle(r=gap/2,center=true);
		}
	}
}
module tslot20(length,nut){
	tslot(size=20,gap=5.26,thickness=1.5,length=length,nut=nut);
}
module tslot30(length,nut){
	tslot(size=30,gap=8.13,thickness=2.55,length=length,nut=nut);
}
module tslot30_3060(length,nut){
	union(){
		tslot30(length,nut);
		translate([30,0,0])
		tslot30(length,nut);
	}
}


module motormount(){
 mmx = 42;
 mmy = 42;
 mmz = 4.5;//8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  union(){
  translate([mmposx,mmposy,mmposz])cube([mmx,mmy,mmz]);
  //translate([mmposx-6,mmposy-13,mmposz])#cube([13,13,4]);
  }
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])cylinder(r=motrad, h=10);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])translate([0,0,-100])cylinder(r=4.3, h=400);
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])translate([0,-2,0])cube([8,4.5,90]);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])translate([0,-2.25,0])cube([8,4.5,90]);
 }
}



module m8_clamp(){
//translate([5,75,-30])rotate([90,0,0])tslot20(200);
/*
difference(){translate([-33,1.7,0])rotate([0,0,0])cube([50,53.7,2]);
translate([20,27,1])cylinder(r=8.7/2,h=20);
translate([20,27,0])cylinder(r=5.7/2,h=2);
}
*/
//translate([20+10,27+11,12])rotate([90,0,0])cylinder(r=10/2,h=22);
difference(){
translate([20+6,27+9,12])rotate([90,0,0])#cylinder(r=10/2,h=19);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=45,$fn=30);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3.8/2,h=4,$fn=30);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
difference(){
union(){
translate([20,27,0])cylinder(r=19.6/2,h=17);
translate([20,27,0])cylinder(r=28/2,h=4);

/*
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
*/
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80,$fn=30);
translate([20,10-1,0-100])cylinder(r=5.7/2,h=180);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])#cylinder(r=3/2,h=25,$fn=30);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
}


module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];
linear_extrude(height=z)
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}
}





