include <modparts.scad>
use<writescad/write.scad>


bcl = [155/255,155/255,155/255];
cl = [155/255,155/255,155/255];

/*
gantry();
gantry_nomenclature();
outside_frame(bcl,cl);
outside_frame_nomenclature();
xshuttle_assy(x,y);
xshuttle_assy_nomenclature(x,y);
y_encoder_support(60);
*/


/*
gantry();
*/
//gantry_nomenclature();


gantry();
outside_frame(bcl,cl);
xshuttle_assy(x,y);
y_encoder_support(60);


//conveyer_connector_tslots();
//conveyer_connector_tslots_nomenclature();
//translate([195,565,90-16.5])rotate([90,0,0])tslot_show_conveyor();
xx = 200-248+246-250;
xp = -1;
sph = 267;
z = -5;

//slide_conveyer_caller(z,xx,xp,sph);

module tslot_show_conveyor(){

tslot20(315);
//translate([0,100,170])rotate([90,0,0])cylinder(r=5.7/2,h=200);

translate([0,56,0])tslot20(315);
translate([0,56*2,0])tslot20(315);
translate([0,56*3,0])tslot20(315);
}


//conveyer_connector_tslots();
//conveyer_sliderwheel_assy();
//slide_conveyer(-60,0,0,0,0);
//noconveyer_gantry_assy(20,-30,-45+50+100-50-100+150,-55,0,267,tcl,thcl);

//gantry();

/*
gantry_nomenclature();
zbed_smz_components_nomenclature(0,0);
zbed_smz_components_nomenclature(0,10);
zencoder_assy_nomenclature();
outside_frame_nomenclature();
xshuttle_assy_nomenclature(x,y);
*/


module conveyer_connector_tslots_nomenclature(){

 c1 = "HFS5-2020-56-TPW-Z5-XA28";
translate([170,450,28])rotate([90,90,90])mirror([1,0,0])color("black")write(c1,h=11);
 c2 = "HFS5-2020-160-TPW";
translate([170,560,328])rotate([90,0,90])mirror([1,0,0])color("black")write(c2,h=11);
 c3 = "HFS5-2020-160-TPW";
translate([170,560,40])rotate([90,0,90])mirror([1,0,0])color("black")write(c3,h=11);

c4 = "HFS5-2020-400-TPW-Z5-XA110-XB153.5-XC209.5-XD265.5-XE321.5-XF390";
translate([170,600,-50])rotate([90,90,90])mirror([1,0,0])color("black")write(c4,h=11);

c5 = "HFS5-2020-315-TPW-Z5-XA170";
translate([170,560,100])rotate([90,0,90])mirror([1,0,0])color("black")write(c5,h=11);
c6 = "HFS5-2020-315-TPW";
translate([170,560,155])rotate([90,0,90])mirror([1,0,0])color("black")write(c6,h=11);
c7 = "HFS5-2020-315-TPW";
translate([170,560,155+55])rotate([90,0,90])mirror([1,0,0])color("black")write(c7,h=11);
c8 = "HFS5-2020-315-TPW";
translate([170,560,155+110])rotate([90,0,90])mirror([1,0,0])color("black")write(c8,h=11);

}



module xshuttle_assy_nomenclature(x,y){
 translate([0,y,0]){

 x1 = "HFS5-2020-400-TPW";
 translate([43-25+100,206.5-69,-60+430])rotate([90,0,-0])mirror([0,0,0])color("black")write(x1,h=11);
 x2 = "HFS5-2020-400-TPW";
 translate([43-25+100,206.5-69+150,-60+430])rotate([90,0,-0])mirror([0,0,0])color("black")write(x2,h=11);
 x3 = "HFS5-2040-100-TPW";
 translate([43-25+100-60,206.5-69+75-20,-60+430+50])rotate([0,0,-0])mirror([0,0,0])color("black")write(x3,h=11);

}
}


module zbed_smz_components_nomenclature(shim,modshim){
 /* 
 if (modshim == 10){
 z2 = "HFS5-2020-300-TPW-Z5-XA21.5-XB141-XC239-YA110-YB230";
 translate([-50-40+530,240-50-100,140])rotate([90,0,90])mirror([0,0,0])color("black")write(z2,h=11);
 }
 else if (modshim == 0){
 z3 = "HFS5-2020-300-TPW-Z5-XA31.5-XB141-XC249-YA63-YB183";
 translate([-50-40+130-100,240-50+140,140])rotate([90,0,90])mirror([1,0,0])color("black")write(z3,h=11);
 }
 z4 = "HFS5-2020-348.5-TPW";
 translate([-50-40+430,240-50+80,140])rotate([90,0,0])mirror([1,0,0])color("black")write(z4,h=11);
 z5 = "HFS5-2020-348.5-TPW";
 translate([-50-40+230,240-50+80-160,125])rotate([90,0,0])mirror([0,0,0])color("black")write(z5,h=11);
*/
 z6 = "HFS5-2020-200-TPW";
 translate([-50-40+230,240-50+80-160,180])rotate([90,0,0])mirror([0,0,0])color("black")write(z6,h=11);


}


module zencoder_assy_nomenclature(){
z1 = "HFS5-2020-400-TPW";
translate([-50-40,360+60-210+55,50])rotate([90,90,90])mirror([1,0,0])color("black")write(z1,h=8);
}


module outside_frame_nomenclature(){
o1 = "HFS5-2020-484-TPW-Z5-XA135.5-XB230-XC353.5";
translate([-50,360,300])rotate([90,0,90])mirror([1,0,0])color("black")write(o1,h=8);

o2 = "HFS5-2020-484-TPW-Z5-XA94.5-XB312.5";
translate([-50,360,0])rotate([90,0,90])mirror([1,0,0])color("black")write(o2,h=8);

o3 = "HFS5-2020-480.5-TPW-Z5-XA470.5";
translate([-50-40,360+60,50])rotate([90,90,90])mirror([1,0,0])color("black")write(o3,h=8);

o4 = "HFS5-2020-480.5-TPW-Z5-XA470.5";
translate([-50-40,360+60-210,50])rotate([90,90,90])mirror([1,0,0])color("black")write(o4,h=8);

o5 = "HFS5-2020-480.5-TPW-Z5-XA470.5";
translate([-50-40+620,360+60-210,250])rotate([90,90,90])mirror([0,0,0])color("black")write(o5,h=8);

o6 = "HFS5-2020-480.5-TPW-Z5-XA96.5-XB195-XC314.5";
translate([-50-40+620-20,360+60-210,300])rotate([90,0,90])mirror([0,0,0])color("black")write(o6,h=8);
translate([100,-00,320])rotate([90,0,0])mirror([0,0,0])color("black")write(o6,h=8);

o7 = "HFS5-2020-484-TPW-Z5-XA169.5-XB387.5";
translate([-50+550,60,0])rotate([90,0,90])mirror([0,0,0])color("black")write(o7,h=11);

}



module gantry_nomenclature(){
zbed_smz_components_nomenclature(0,0);
zbed_smz_components_nomenclature(0,10);
g1 = "HFS5-2020-400-TPW-XA22-XB370-YA190";
translate([380,440,0])rotate([90,0,0])mirror([1,0,0])color("black")write(g1,h=8);
g2 = "HFS5-2020-400-TPW";
translate([100,-00,0])rotate([90,0,0])mirror([0,0,0])color("black")write(g2,h=8);
g3 = "HFS5-2020-400-TPW-Z5-XA22-XB190-XC370";
translate([380,440,325])rotate([90,0,0])mirror([1,0,0])color("black")write(g3,h=8);
g4 = "HFS5-2020-400-TPW-XA10-XB390-YA10-YB390";
translate([-10,340,325])rotate([90,0,90])mirror([1,0,0])color("black")write(g4,h=8);
g5 = "HFS5-2020-360-TPW";
translate([445,140,0])rotate([90,0,90])mirror([0,0,0])color("black")write(g5,h=8);
g6 = "HFS5-2020-360-TPW";
translate([-10,240,0])rotate([90,0,90])mirror([1,0,0])color("black")write(g6,h=8);
g7 = "HFS5-2020-380-TPW-Z5-XA70-YA70";
translate([-10,390,0])rotate([90,90,90])mirror([1,0,0])color("black")write(g7,h=8);
g8 = "HFS5-2020-380-TPW-Z5-XA70-YA70";
translate([450,390,200])rotate([90,90,90])mirror([0,0,0])color("black")write(g8,h=8);
g9 = "HFS5-2020-380-TPW-XA70-YA70";
translate([450,0,200])rotate([90,90,90])mirror([0,0,0])color("black")write(g9,h=8);
g10 = "HFS5-2020-380-TPW-XA70-YA70";
translate([20,0,200])rotate([90,90,0])mirror([0,0,0])color("black")write(g9,h=8);
g11 = "HFS5-2020-400-TPW";
translate([100,-00,320])rotate([90,0,0])mirror([0,0,0])color("black")write(g11,h=8);
g12 = "HFS5-2020-400-TPW-XA10-XB390-YA10-YB390";
translate([445,140,325])rotate([90,0,90])mirror([0,0,0])color("black")write(g12,h=8);
}

