
module peristaltic_pump_mnts(){
translate([-54,330,110])rotate([0,0,-90]){
translate([-100,-45,46])rotate([0,90,0])tslot20(525);
translate([120,0,0]){
peristaltic_pump();
translate([60,0,0])peristaltic_pump();
translate([120,0,0])peristaltic_pump();
}
}
}

module peristaltic_pump(){

difference(){union(){
color("black")translate([-20,-20,38])cube([40,40,5]);
color("black")translate([-24,-20,38-11])cube([15,4,11]);
color("black")translate([10,-20,38-11])cube([15,4,11]);
color("silver")cylinder(r=28/2,h=38,$fn=30);
color("black")translate([0,0,38+5])cylinder(r=32/2,h=18,$fn=30);
color("black")translate([-15,-20,38+5])cube([30,20,12]);
translate([-15+8,-20,38+5+5])rotate([90,0,0])color("white")cylinder(r=5/2,h=20,$fn=30);
translate([-15+22,-20,38+5+5])rotate([90,0,0])color("white")cylinder(r=5/2,h=20,$fn=30);
}
translate([-17,-10,38-6])rotate([90,0,0])cylinder(r=3.7/2,h=20,$fn=30);
translate([-17+36,-10,38-6])rotate([90,0,0])cylinder(r=3.7/2,h=20,$fn=30);

}
}
module wastestation_tubing(){

translate([-160+20-84+70,-117+272-73+120,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=70,$fn=30);
translate([-160+20-84+70,-117+272-73+120,160-65])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=70,$fn=30);
translate([-160+20-84+70,-117+272-73+124,160-65])rotate([90,0,0])color("lightblue")cylinder(r=5.5,h=230,$fn=30);
translate([-160+20-84+66,-117+272-73+124-230,160-65])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=440,$fn=30);
translate([-160+20-84+66+435,-117+272-73+124-230,160-65])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=140,$fn=30);
translate([-160+20-84+70-400,-117+272-73+120+14,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=70+400,$fn=30);
translate([-160+20-84+70-405,-117+272-73+120+14,158])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=70+100,$fn=30);
translate([-160+20-84+70-405,-117+272-73+120+14,158+166])rotate([90,0,0])color("lightblue")cylinder(r=5.5,h=70+150,$fn=30);
translate([-160+20-84+70-405,-117+272-73+120+14-217,158+166-40])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=45,$fn=30);

}

module washstation_tubing(){

translate([-160+20-84+70,-117+272-73,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=70,$fn=30);

translate([-160+20-84+70,-117+272-75,160])rotate([-90,0,0])color("lightblue")cylinder(r=5.5,h=58,$fn=30);
translate([-160+20-84+110,-117+272-73+13,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=30,$fn=30);
translate([-160+20-84+110,-117+272-73+13,160])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=30,$fn=30);
translate([-160+20-84+108,-117+272-73+13,190])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=100,$fn=30);
translate([-160+20-84+108+100,-117+272-73+13,190-5])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=48,$fn=30);
translate([-160+20-84+108+100,-117+272-73+13,228])rotate([90,0,0])color("lightblue")cylinder(r=5.5,h=110,$fn=30);
translate([-160+20-84+108+100,-117+272-73+13-110,228])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=280,$fn=30);

}

module pressurecompensation_tubing(){
translate([-160+16,-117,450])color("lightblue")cylinder(r=5.5,h=45,$fn=30);
translate([-160+20,-117,450+45])rotate([0,-90,0])color("lightblue")cylinder(r=5.5,h=80,$fn=30);
translate([-160+20-80,-117,450+45])rotate([-90,0,0])color("lightblue")cylinder(r=5.5,h=272,$fn=30);
translate([-160+20-80,-117+272,160])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=340,$fn=30);
translate([-160+20-84,-117+272,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=140,$fn=30);
translate([-160+20-84+70,-117+272-13,160])rotate([0,90,0])color("lightblue")cylinder(r=5.5,h=70,$fn=30);
translate([-160+20-84+70,-117+272-13,160])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=200,$fn=30);
translate([-160+20-84+70,-117+272-13,360])rotate([0,-90,0])color("lightblue")cylinder(r=5.5,h=195,$fn=30);
translate([-160+20-84+70-195,-117+272-10,360])rotate([90,0,0])color("lightblue")cylinder(r=5.5,h=143,$fn=30);
translate([-160+20-84+70-195,-117+272-13-140,230])rotate([0,0,0])color("lightblue")cylinder(r=5.5,h=134,$fn=30);

}


module waterbottle(){
translate([50,0,0]){
translate([-400,0,-80])color("lightblue")cylinder(r=100,h=300,$fn=30);
translate([-400,0,-30])color("lightblue")cylinder(r=50,h=300,$fn=30);
translate([-400,0,270])color("black")cylinder(r=50,h=5,$fn=30);
translate([-400,0,275])color("white")cylinder(r=6/2,h=25,$fn=30);
}
}

module wastebottle(){
translate([-160,0,0]){
translate([-400,0,-80])color("lightblue")cylinder(r=100,h=300,$fn=30);
translate([-400,0,-30])color("lightblue")cylinder(r=50,h=300,$fn=30);
translate([-400,0,270])color("black")cylinder(r=50,h=5,$fn=30);
translate([-400,0,275])color("white")cylinder(r=6/2,h=25,$fn=30);
}
}






module syringes_to_valves(){
//syringe 1
translate([-114,365,295])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=150,$fn=30);
translate([-114,365+150,295])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=130,$fn=30);
translate([-114,365+150,295+130])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=490,$fn=30);
translate([-114+490,365+150,295+60])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=70,$fn=30);
translate([-114+490,365+151,295+60])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=34,$fn=30);
translate([-114+490,365+150-32,295+60])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);

//syringe 2
translate([-114,365,295-14])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=155,$fn=30);
translate([-114,365+155,295-14])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=33,$fn=30);
translate([-115,365+155,295-14+33])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=490,$fn=30);
translate([-114+490,365+155,295-14+33-30])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=31,$fn=30);
translate([-114+490,365+156,295-14+33-30])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=38,$fn=30);
translate([-114+490,365+150-32,295-14+33-30])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);


//syringe 3
translate([-114,365,295-28])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=150,$fn=30);
translate([-114,365+150,295-28-54])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=55,$fn=30);
translate([-115,365+150,295-28-54])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=490,$fn=30);
translate([-114+490,365+151,295-14+33-30-70])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=33,$fn=30);
translate([-114+490,365+150-32,295-14+33-30-70])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);

//syringe 4
translate([-114,365,295-42])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=145,$fn=30);
translate([-114,365+145,295-28-68])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=55,$fn=30);
translate([-115,365+145,295-28-54-12])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=490,$fn=30);
translate([-114+490,365+145,295-28-68-56])rotate([-0,0,0])color("lightblue")cylinder(r=3/2,h=59,$fn=30);
translate([-114+490,365+146,295-14+33-30-70-70])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=28,$fn=30);
translate([-114+490,365+150-32,295-14+33-30-140])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);

//syringe 5
translate([-114,365,295-42-14])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=140,$fn=30);
translate([-115,365+140,295-42-14])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=190,$fn=30);
translate([-115+190,365+140,295-42-14])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=115,$fn=30);
translate([-115+190,365+140,295-42-14+115])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=100,$fn=30);
translate([-115+190+100,365+141,295-42-14+115])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=24,$fn=30);
translate([-115+190+100,365+141-24,295-42-14+115])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);

//syringe 6
translate([-114,365,295-42-14-14])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=135,$fn=30);
translate([-115,365+135,295-42-14-14])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=190,$fn=30);
translate([-115+190,365+135,295-42-14-14])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=115-70+14,$fn=30);
translate([-115+190,365+135,295-42-14+115-70])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=100,$fn=30);
translate([-115+190+100,365+136,295-42-14+115-70])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=19,$fn=30);
translate([-115+190+100,365+141-24,295-42-14+115-70])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=5,$fn=30);

//syringe 7
translate([-114,365,295-42-14-14-14])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=135,$fn=30);
translate([-115,365+135,295-42-14-14-14])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=290,$fn=30);
translate([-115+190+100,365+136,295-42-14+115-143])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=19,$fn=30);
translate([-115+190+100,365+141-24,295-42-14+115-144])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=8,$fn=30);

//syringe 8
translate([-114,365,295-42-14-14-14-14])rotate([-90,0,0])color("lightblue")cylinder(r=3/2,h=135,$fn=30);
translate([-115,365+135,295-42-14-14-14-14])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=190,$fn=30);
translate([-115+190,365+135,295-42-14-14-14-14-55])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=115-70+11,$fn=30);
translate([-115+188,365+135,295-42-14-14-14-14-55])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=103,$fn=30);
translate([-115+190+100,365+136,295-42-14+115-143-69])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=19,$fn=30);
translate([-115+190+100,365+141-24,295-42-14+115-144-69])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=8,$fn=30);
}












module pressurecomp_to_valves(){
translate([-160,-117,450])color("lightblue")cylinder(r=5.5,h=35,$fn=30);
translate([-160,-117,480])rotate([-90,0,0])color("lightblue")cylinder(r=5.5,h=100,$fn=30);
translate([-160,-117+100,450])color("lightblue")cylinder(r=5.5,h=35,$fn=30);
translate([-160,-117+100,450])rotate([-90,0,0])color("lightblue")cylinder(r=5.5,h=526,$fn=30);

translate([-160,-117+620,450])rotate([-90,0,-90])color("lightblue")cylinder(r=5.5,h=400,$fn=30);
translate([-160+400,-117+620,420])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=25,$fn=30);
translate([-160+380,-117+620,420])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=40,$fn=30);
translate([-160+380,-117+620,400])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=20,$fn=30);
translate([-160+420,-117+620,400])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=20,$fn=30);
translate([-160+402,-117+620,400])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=35,$fn=30);
translate([-160+362,-117+620,400])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=35,$fn=30);

//valve 1
translate([-160+436,-117+620,386-16])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=29,$fn=30);
translate([-160+436,-117+620,386-16])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=100,$fn=30);
translate([-160+436+100,-117+621,386-16])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 2
translate([-160+426,-117+620,386-16-70])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=83+16,$fn=30);
translate([-160+426,-117+620,386-16-70])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=110,$fn=30);
translate([-160+426+110,-117+621,386-16-70])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 3
translate([-160+413,-117+620,386-16-140])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=13+16+140,$fn=30);
translate([-160+412,-117+620,386-16-140])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=121,$fn=30);
translate([-160+413+121,-117+621,386-16-140])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 4
translate([-160+404,-117+620,386-16-210])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=13+16+210,$fn=30);
translate([-160+404,-117+620,386-16-210])rotate([0,90,0])color("lightblue")cylinder(r=3/2,h=131,$fn=30);
translate([-160+404+131,-117+621,386-16-210])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 5
translate([-160+395,-117+620,386-16-210])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=13+16+210,$fn=30);
translate([-160+395,-117+620,386-16-210])rotate([0,-90,0])color("lightblue")cylinder(r=3/2,h=60,$fn=30);
translate([-160+395-60,-117+621,386-16-210])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 6
translate([-160+385,-117+620,386-16-140])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=13+16+140,$fn=30);
translate([-160+385,-117+620,386-16-140])rotate([0,-90,0])color("lightblue")cylinder(r=3/2,h=50,$fn=30);
translate([-160+385-50,-117+621,386-16-140])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);


//valve 7
translate([-160+373,-117+620,386-16-70])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=83+16,$fn=30);
translate([-160+373,-117+620,386-16-70])rotate([0,-90,0])color("lightblue")cylinder(r=3/2,h=37,$fn=30);
translate([-160+373-37,-117+621,386-16-70])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);

//valve 8 
translate([-160+364,-117+620,386-16])rotate([0,0,0])color("lightblue")cylinder(r=3/2,h=29,$fn=30);
translate([-160+364,-117+620,386-16])rotate([0,-90,0])color("lightblue")cylinder(r=3/2,h=29,$fn=30);
translate([-160+364-29,-117+621,386-16])rotate([90,0,0])color("lightblue")cylinder(r=3/2,h=10,$fn=30);
}



module valve_assy_8set(){

valve_assy_4set();
translate([-200,0,0])valve_assy_4set();

}

module valve_assy_4set(){
translate([0,-10,0]){
for(i=[0:3]){
translate([297,494,601-70*i])rotate([-90,0,-90])valve_assy();
}
translate([307,440,150])tslot20(200);
translate([370,494,-100])rotate([90,0,-90])import("smallsyringe_valvesupportmodule_plate_4valve.stl");
}
}





module multichannel_syringe_assy(){
for(i=[0:7]){
translate([-183+i*14,132,40])rotate([-90,90,0])syringe_1ml();
}
translate([-160,-80,25.5])rotate([-90,0,0])nema17();
translate([-98,0,0.5]){
translate([-62,-60,25])rotate([-90,0,0])color("silver")cylinder(r=8/2,h=200,$fn=30);
translate([-47,-65,3]){
//here is the rail
color("silver")cube([12,300,8]);
//here is the slider
translate([-27/2+12/2,60,2-3+6])color("silver")cube([27,45,9]);
}
translate([-33,-88,25])rotate([-90,0,0])tslot20(350);
import("iverntech_slidermount_motormount.stl");
import("motormount_screws.stl");
translate([-1,50,0])import("oneml_syringe_stepper_linear_m8nut_coupler.stl");
translate([-1,50,0])import("iverntech_pump_slider_plate.stl");
}
translate([0,-38,0]){
translate([0,-10,0])import("multichannel_syringe1ml_clamp_extrusion_connect.stl");
translate([0,-70,0])import("multichannel_syringe1ml_clamp_extrusion_connect.stl");
import("multichannel_syringe1ml_clamp_luerlock.stl");
import("multichannel_syringe1ml_clamp.stl");
translate([0,-70,0])rotate([0,-180,0])import("multichannel_syringe1ml_clamp_top_luerlock.stl");
}
translate([0,-130,0]){
import("multichannel_syringeshuttle_clipbracket.stl");
import("multichannel_plunger_clamp.stl");
}
translate([0,-38,-4]){
import("syringe_1ml_stack_1piece_multichannel_clamp.stl");
import("syringe_1ml_stack_1piece_multichannel.stl");
}
}




module syringe_1ml(){

//translate([0,0,4])rotate([0,0,45])cylinder(r=10,h=15,$fn=4);
//translate([0,0,74])rotate([0,0,45])cylinder(r=10,h=15,$fn=4);
union(){
color("lightblue")translate([0,0,100])cylinder(r=3/2,h=30);
color("white")cylinder(r=9.5/2,h=92);
color("white")cylinder(r2=5.5/2,r1=9.5/2,h=92+7);
color("white")translate([0,0,-12-(71-12)])cylinder(r=4/2,h=92);
color("white")translate([0,0,-12-(71-12)])cylinder(r=(10-0.2)/2,h=1.5);
color("white")translate([0,0,0])cylinder(r=(10.5)/2,h=10.5);
color("white")translate([-12.5,-13/2-1,0])cube([25,13+2,2.4]);

/*
//luerlock
color("white")translate([0,0,98])cylinder(r=12/2,h=3);
color("white")translate([0,0,98+3])cylinder(r=8/2,h=3);

//tubing
color("lightblue")translate([0,0,98+3+3])cylinder(r=3.175/2, h=200);
//sphere(r=3.175/2,$fn=30);
*/
}
}



module multichannel_syringe_module(){
eight_multichannel_assay();
translate([-100,160,0])nextgen_syringe1ml_multichannel_assy();
//translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
multichannel_plunger_clamp();

translate([0,12,0]){
translate([-100,160,0])
//color("gainsboro")
translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
}

}



module nextgen_syringe1ml_multichannel_assy(){
/*
*/
color("silver")translate([-70+8,-80+40-50,30-5])rotate([-90,0,0])cylinder(r=8.7/2,h=250);
color("silver")translate([-70+8,-80,30-5])rotate([-90,0,0])cylinder(r=16/2,h=18);
translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
igus_slidermount_encoder_TW_04_12_motormount_assy_m8();
translate([-25-6.5,320,-4.6])rotate([90,0,0])tslot20(400);
}



module iverntech_slider_pump_base(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
//color("pink")
translate([0-7.5,-40,0])cube([10+15+10+6,68+40+23+20,6+3]);
//color("yellow")
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
//color("lime")
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[2,3,4,5]){
//translate([2,10+(a*25),-5]){cylinder(r=3.7/2,h=40);translate([0,0,4])cylinder(r=6.8/2,h=3+4,$fn=6);}
translate([2,10+(a*25),-5]){cylinder(r=2.8/2,h=40);}
}
/*
translate([17.5,-33,0])for(a=[0,4,8,12]){
translate([5,20+(a*10),-0.1]){translate([0,0,2.4-4])cylinder(r=2.7/2,h=16);}//cylinder(r=5.5/2,h=2.5);}
}
*/
translate([17.5,-33,0])for(a=[4,8,12]){
translate([5+4,10+(a*10),-5]){translate([0,0,8.4+1])cylinder(r=4.7/2,h=8);translate([0,0,5])cylinder(r=8/2,h=4.5);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
//translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
/*
for(a=[0,4]){
translate([5,-26+(a*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
}
*/
}
}//end translate
}





module iverntech_pump_slider(){
//color("lightgrey")
bg = 0.5;
//color([bg,bg,bg])
//color("")
//igus_slidermount_encoder_TW_04_12();
iverntech_slider_pump_base();

/*
translate([1,0,0]){
//color("lightgrey")
//color([bg,bg,bg])
//color("")
//translate([-22,-90,4])rotate([90,-90,0])motormount();
//color([bg,bg,bg])
//color("")
//#translate([-110+27,-81.5+1.5,-4])cube([42,8.5,10]);

//This is for display purposes
//translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
//rbg=0.85;color([rbg,rbg,rbg])
//color("")
//translate([-70+8,-80+40,30-5])rotate([-90,0,0])cylinder(r=8.7/2,h=200);
}
*/
}

module igus_slidermount_encoder_TW_04_12(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
//color("pink")
translate([0-7.5,-40,0])cube([10+15+10+6,68+40+23+20,6+3]);
//color("yellow")
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
//color("lime")
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[2,3,4,5]){
translate([2,10+(a*25),-5]){#cylinder(r=3.7/2,h=40);translate([0,0,4])cylinder(r=6.8/2,h=3+4,$fn=6);}
}
translate([17.5,-33,0])for(a=[0,4,8,12]){
translate([5,20+(a*10),-0.1]){translate([0,0,2.4-4])cylinder(r=2.7/2,h=16);}//cylinder(r=5.5/2,h=2.5);}
}
translate([17.5,-33,0])for(a=[4,8,12]){
translate([5+4,10+(a*10),-5]){translate([0,0,8.4+1])cylinder(r=4.7/2,h=8);translate([0,0,5])cylinder(r=8/2,h=4.5);}
}
//translate([15,-27+(0*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,2.6])cylinder(r=6.7/2,h=3.5+12);}
translate([5,-36+(0*10),0]){cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
for(a=[0,4]){
translate([5,-26+(a*10),0]){#cylinder(r=3.7/2,h=10);translate([0,0,2.6])cylinder(r=6.7/2,h=6.5);}
}
}
}//end translate
}






module multichannel_syringe_module_iverntech(){

translate([-150+3,100,3.0]){
//here is the rail
color("silver")cube([12,200,8]);
//here is the slider
translate([-27/2+12/2,20,2-3+6])color("silver")cube([27,45,9]);
}
eight_multichannel_assay();
translate([-100,180,0]){
translate([-22.85,1-123.7,2.5])mirror([0,1,0])oneml_syringe_stepper_linear_m8nut_coupler();
translate([0,-4,0])iverntech_pump_slider_plate();
}
translate([0-15+14,92,6.8]){
syringe_1ml_stack_1piece_multichannel();
syringe_1ml_stack_1piece_multichannel_clamp();
}
/*
*/
translate([-1,12-7,7]){
translate([-100,160,0])
translate([-25.75,123,-30])rotate([90,-90,0])multichannel_syringeshuttle_clipbracket();
}
translate([-1,-2,6.8])multichannel_plunger_clamp();
//translate([0,30,0])multichannel_syringe1ml_clamp_top_luerlock();

translate([-100,160,0])nextgen_syringe1ml_multichannel_assy();
}



module eight_multichannel_assay(){
translate([0,20,0]){
translate([0,70,-0.1])syringe_1ml_stack();
translate([0,70,-0.1])multichannel_syringe1ml_clamp();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
translate([0,70,-0.1])multichannel_syringe1ml_clamp_luerlock();
translate([0,70+60,-0.1])multichannel_syringe1ml_clamp_extrusion_connect();
translate([0,30-20,0])multichannel_syringe1ml_clamp_top_luerlock();
}
}














module iverntech_slidermount_motormount(){
//color("lightgrey")
bg = 0.5;
//color([bg,bg,bg])
//color("")
difference(){
iverntech_pump_slider();
translate([-54,-75.5,-50])#cylinder(r=3.7/2,h=100);
translate([-54-14,-75.5,-50])#cylinder(r=3.7/2,h=100);
translate([-54,-75.5,-50])cylinder(r=8.5/2,h=48);
translate([-54-14,-75.5,-50])cylinder(r=8.5/2,h=48);
}
translate([1,0,0]){
//color("lightgrey")
//color([bg,bg,bg])
//color("")
//translate([-22,-90,4])rotate([90,-90,0])motormount_screws();
//color([bg,bg,bg])
//color("")
//translate([-110+27,-81.5+1.5,-4])cube([42,8.5,10]);

//This is for display purposes
//translate([-70+8,-80,30-5])rotate([-90,0,0])nema17();
//rbg=0.85;color([rbg,rbg,rbg])
//color("")
//translate([-70+8,-80+40,30-5])rotate([-90,0,0])cylinder(r=8.7/2,h=200);
}
}

module motormount_screws(){
 mmx = 42;
 mmy = 42;
 mmz = 8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx-1,mmposy,mmposz])
  cube([mmx+1,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  cylinder(r=motrad, h=10);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  translate([0,-2,0])
  cube([8,4.5,90]);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  translate([-60,32,-14.5])rotate([0,90,0])#cylinder(r=2.7/2,h=80);
  translate([-60,32+14,-14.5])rotate([0,90,0])#cylinder(r=2.7/2,h=80);
  translate([-60,32,-14.5])rotate([0,90,0])#cylinder(r=8/2,h=56);
  translate([-60,32+14,-14.5])rotate([0,90,0])#cylinder(r=8/2,h=56);
 }
}

module oneml_syringe_stepper_linear_m8nut_coupler(){
translate([0,-20-9,0])difference(){
union(){
translate([-38.25+14-13.9,-70+30-5,22.5])rotate([-90,0,0])cylinder(r=17.5/2,h=23+3);
translate([-38.25+14-13.9,-70+30.-5,22.5+3.8])cube([31,11+5,3.7+1.25]);
}
//cylinder(r=7.4,h=sl+4,$fn=6);
//translate([-38.25+14-13.9,-70+30,22.5])rotate([-90,0,0])cylinder(r=11.4/2,h=41,$fn=6);
translate([-38.25+14-13.9,-70+30-10+8,22.5])rotate([-90,0,0])cylinder(r=7.25,h=28,$fn=6);
translate([-38.25+14-13.9,-70+30-30,22.5])rotate([-90,0,0])cylinder(r=8.7/2,h=241);
translate([-38.25+14-13.9+13.7,-70+34-4.8,22.5+3.8-30])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13,-70+34-4.8,22.5+3.8-30])cylinder(r=3.7/2,h=120);
}
}


module iverntech_pump_slider_plate(){
translate([0,0,1])difference(){
union(){
translate([-110+55.5+3,-81.5+1.5+40-24+10,16])cube([22+5-3.5,11,7+5.8]);
//translate([-110+55.5+3,-81.5+1.5+40-25,16])cube([22+5-3.5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40,16])cube([22+5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40+6.6+3.5-14.5,16])cube([22+5,6.5,35]);
//translate([-110+55.5,-81.5+1.5+40+6.6+3.5,16])cube([22+5,6.5,30]);
}
translate([-110+59+5.3-1.6,-81.5+1.5+20+11,36-3.4-17])rotate([0,0,0]){cylinder(r=2.8/2,h=20);}//cylinder(r=6.8/2,h=9,$fn=6);}
translate([-110+59+5.3+4.5-1,-81.5+1.5+146,36-3.4+10.25+2])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59+5.3+4.5-1-4.5,-81.5+1.5+146,36-3.4+10.25+2-6])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59+5.3+4.5-1+4.5,-81.5+1.5+146,36-3.4+10.25+2-6])rotate([90,90,0])cylinder(r=3.7/2,h=200);
//translate([-110+59+5.3+9,-81.5+1.5+146,36-3.4])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46+20,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59,-81.5+1.5+46+20,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
}
}


module multichannel_syringeshuttle_clipbracket(){
translate([46.25,-57,300-4])rotate([180,0,90])difference(){
union(){
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3,10+11+10-3-15]);
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3-9.75-4,10+11+10-3]);
}
translate([65.2+0.75,14.4+7.5,155.75+20-1.5-4])cube([14-1.5,14,24]);

//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,4])translate([0,-3.5,0])cube([12,7,3.2]);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])cylinder(r=6.9/2, h=3.2, $fn=6);
//translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,4])translate([-12,-3.5,0])cube([12,7,3.2]);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2-17.5,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
}
}


module multichannel_plunger_clamp(){
difference(){
translate([-183-13/2-5,170-13/2,30]){
union(){
translate([0,2+7.25-2,2])rotate([0,0,0])cube([120,13/2+7,4]);
translate([0+41.2,2+7.25-7-3-5,2])rotate([0,0,0])cube([25,10+5,4]);
}
}
translate([-183-13/2-5,170-13/2,30]){
translate([64.7-5-36.15,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
translate([64.7-5-36.15+17.5,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
for(i=[0:7]){
translate([64.7-5-36.15+17.5-50.75+(i*14),14.4-3-0.87-50+8-0.08+9.75,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=2.7/2, h=200);
}
}
}
}

module syringe_1ml_stack_1piece_multichannel_clamp(){
difference(){union(){
/*
*/
//clamp part
translate([-0.3-14,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6+3])cube([5,6.5,35-15-4-3]);
translate([-0.3-14-(8*14)-3.5,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6+3])cube([5,6.5,35-15-4-3]);
//attach part
//translate([-0.3-14-(8.6*13),0+146-2-7.4,-1])translate([-110+54.5+6-14-3-1,-81.5+1.5+40+6.6+3.5-14.5+2.3,16+15+6])cube([5+3+1,6.5-1.5,35-15-4]);
//translate([-85-(9*14),105.5,44])translate([0-4+10.5+10+1,-5+2.5-22.5-4,-8])cube([14+15-10-10-1,10+5+4,4]);
for(i=[0:7]){
//color("")translate([-85-(i*14),105.5,44])rotate([-0,0,-90])syringe_1ml_plungerclip_1piece();
//translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([0-42.5-(i*14),-4+230-80-2,0])iverntech_pump_slider_plate_connect_multichannel();
}
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
for(i=[0:7]){
//translate([18-(i*14),0,-8])cylinder(r=3.7/2,h=40);
/*

translate([-85-(i*14),105.5,44])rotate([-0,0,-90])
for(i=[0:10]){
translate([-5,0,0+i])rotate([90,-0,90])cylinder(r=4/2,h=10);
translate([5,0,0+i])rotate([90,-0,90])cylinder(r=10.2/2,h=1.75);
}
*/
translate([-14,0,0]){
translate([-77.5-(i*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(i*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
}
}



module syringe_1ml_stack_1piece_multichannel(){
difference(){union(){
/*
//clamp part
translate([-0.3-14,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6])cube([5,6.5,35-15-4]);
translate([-0.3-14-(8*14)-3.5,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6])cube([5,6.5,35-15-4]);
*/
//attach part
translate([-0.3-14-(8.6*13),0+146-2-7.4,-1])
translate([-110+54.5+6-14-3-1,-81.5+1.5+40+6.6+3.5-14.5+2.3,16+15+6])cube([5+3+1,6.5-1.5,35-15-4]);
translate([-85-(9*14),105.5,44])
translate([0-4+10.5+10+1,-5+2.5-22.5-4,-8])cube([14+15-10-10-1,10+5+4,4]);
for(i=[0:7]){
color("")translate([-85-(i*14),105.5,44])rotate([-0,0,-90])syringe_1ml_plungerclip_1piece();
//translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
//translate([0-42.5-(i*14),-4+230-80-2,0])iverntech_pump_slider_plate_connect_multichannel();
}
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
for(i=[0:7]){
//translate([18-(i*14),0,-8])cylinder(r=3.7/2,h=40);
/*

translate([-85-(i*14),105.5,44])rotate([-0,0,-90])
for(i=[0:10]){
translate([-5,0,0+i])rotate([90,-0,90])cylinder(r=4/2,h=10);
translate([5,0,0+i])rotate([90,-0,90])cylinder(r=10.2/2,h=1.75);
}
*/
translate([-14,0,0]){
translate([-77.5-(i*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(i*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
}
}


module multichannel_syringe1ml_clamp_extrusion_connect(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
//translate([0,2,0])rotate([0,0,0])cube([120,13,15]);
translate([69,2-15,-9.5])rotate([0,0,0])cube([18+8,23+20,9.48]);
}
}
translate([-120,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+15,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5-4,220-60+23+7,0])cylinder(r=4.7/2,h=100);
translate([-120+7.5-4,220-60+23+7,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,0])cylinder(r=4.7/2,h=100);
}
}


module multichannel_syringe1ml_clamp_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2+60,30]){
translate([0,2+6.9,0])rotate([0,0,0])cube([120,13.9-7,15]);
translate([69,2-15-1,0])rotate([0,0,0])cube([18+8,23+20+1,5]);
}
}
translate([-120,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23+60,0])cylinder(r=3.7/2,h=100);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);

/*
if(i>0){
translate([-77.5-(i*14)-0.5,175.6+60,0])cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=2.8/2,h=150);
}
*/
}
//translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=2.8/2,h=150);
}
}


module multichannel_syringe1ml_clamp(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([0,2,0])rotate([0,0,0])cube([120,13.9,15]);
translate([69,2-15,0])rotate([0,0,0])cube([18+8,23+20,5]);
}
}
translate([-120,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=3.7/2,h=100);
translate([-120,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+15,220-60,32])cylinder(r=9.7/2,h=10);
translate([-120+7.5,220-60+23,32])cylinder(r=9.7/2,h=10);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175.6,0])cylinder(r=2.8/2,h=150);
}else{
translate([-77.5-(i*14),175.6,0])cylinder(r=2.8/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6,0])cylinder(r=2.8/2,h=150);
}
}

module multichannel_syringe1ml_clamp_top_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([0,2+7.25+60-1,10/2+10])rotate([0,0,0])cube([120,13/2+1,15/2+2]);
}
}
for(i=[0:7]){
translate([-183+(i*14),170+60,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50+60,44])rotate([0,90,90])cylinder(r=6/2,h=100);
if(i>0){
translate([-77.5-(i*14)-0.5,175+60.6,0])cylinder(r=3.7/2,h=150);
}else{
translate([-77.5-(i*14),175.6+60,0])cylinder(r=3.7/2,h=150);
}
}
translate([-77.5-(8*14)-1.7,175.6+60,0])cylinder(r=3.7/2,h=150);
}
}












