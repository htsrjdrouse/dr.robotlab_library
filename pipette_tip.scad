//include <bom_multichannel.scad>
include <tslot.inc.scad>

//translate([90-0,-50+15,20+10])rotate([90,0,90])camera_view();

/*
difference(){
color("silver")translate([43,-40,0])cube([20,80,60]);
translate([43+2,-40+2,2])cube([20-4,80-4,60]);
t3ranslate([43+2+16-2,-40+4,2+26])cube([5,80-8,10]);
}
*/

//pipette_p200(5);

/*
difference(){
color("silver")translate([-0,-50,0])cube([50,100,3+14]);
translate([30,-31.5,5-4])
for(i=[0:7]){
translate([0,i*9,0])
cylinder(r=5.5/2,h=120,$fn=30);
}
}

ins = [0.8,0.2,0.4,0.1,0.9,1.4,0.6];
translate([-10,0,5-4-12])
for(i=[0:7]){
for(j=[0:0]){
if(j==0){
translate([55-2-13,-31.5+i*9,120-10-6])rotate([0,180,0])p1000_model_eppendorf();
}
translate([40-j*9,-31.5+i*9,0])pipette_p300_lts_model();
//translate([40-4.5,-31.5+i*9-4.25,0])color("lightgreen")cube([8.5,8.5,20]);
difference(){
//translate([40-j*9,-31.5+i*9,6])color("purple",0.3)rotate([0,0,45])cylinder(r=4.25+2.1,h=20+10,$fn=4);
//#translate([40+3,-31.5+i*9+2,6])rotate([0,0,45])cylinder(r=4.25,h=22,$fn=4);
//translate([40+3,-31.5+i*9-2,6])rotate([0,0,45])cylinder(r=4.25,h=22,$fn=4);
}
//translate([40,-31.5+i*9,6+7+2])color("pink",ins[i])rotate([0,0,45])cylinder(r1=0.8,r2=1.5,h=10-3+4+4,$fn=30);
//translate([40,-31.5+i*9,6+7-3])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=0.8,r2=0.8,h=13-3-6,$fn=30);


//translate([40,-31.5+i*9,6+7])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=0.8,r2=2.5,h=10-3+25,$fn=30);

//translate([40,-31.5+i*9,6+7])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=0.8,r2=2.5,h=10-3+25,$fn=30);
//translate([40,-31.5+i*9,6+7-3])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=1.8,r2=2.2,h=13-3-6,$fn=30);
//translate([40,-31.5+i*9,6+7])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=0.8,r2=1.5,h=10-3,$fn=30);
translate([40,-31.5+i*9,6+7])color("plum",0.7)rotate([0,0,45])cylinder(r1=0.8,r2=1.5,h=10-3+8,$fn=30);
translate([40,-31.5+i*9,6+7+4+13])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=1.2,r2=2.4,h=10-3+4+10,$fn=30);
//translate([40,-31.5+i*9,6+7+4+13])color("lightblue",0.7)rotate([0,0,45])cylinder(r1=1.2,r2=2.2,h=10-3+4,$fn=30);
}
}
//translate([3+9,0,7])import("96_microwell_plate.STL.stl");
*/

/*
translate([26+1+13-6,-277.6,-230+6])rotate([0,0,90]){
import("BOM_inventory/build5/washbowl_8tip_base.stl");
translate([230,0,220])rotate([0,0,-90])import("BOM_inventory/build5/washbowl_8tip.stl");
}
*/


module pcrtube(){
difference(){
union(){
translate([0,0,0.25+12])cylinder(r2=6/2,r1=6/2,h=9.5,$fn=30);
translate([0,0,0.25])cylinder(r2=6/2,r1=3/2,h=12,$fn=30);
sphere(r=2.9/2,$fn=30);
}
translate([0,0,0.25+12])cylinder(r=5/2,h=10,$fn=30);
translate([0,0,0.25])cylinder(r2=5/2,r1=2.5/2,h=12.5,$fn=30);
}
}

module pcrtube_stump(){
difference(){
union(){
translate([0,0,0.25+12])cylinder(r2=6.3/2,r1=6.3/2,h=9.5,$fn=30);
translate([0,0,0.25])cylinder(r2=6.3/2,r1=3.3/2,h=12,$fn=30);
sphere(r=(2.9+0.3)/2,$fn=30);
}
//translate([0,0,0.25+12])cylinder(r=5/2,h=10,$fn=30);
//translate([0,0,0.25])cylinder(r2=5/2,r1=2.5/2,h=12.5,$fn=30);
}
}







module pipette_sample_collection(){
translate([40-j*9,-31.5+i*9,0])pipette_p300_lts_model();
translate([40-j*9,-31.5+i*9,6])color("purple",0.3)rotate([0,0,45])cylinder(r=4.25+2.1,h=20+10,$fn=4);
}


module pipette_p20_sleeve(){
difference(){
union(){
translate([0,0,0])color("lightpink",0.9)cylinder(r1=(5.5)/2,r2=(2.5)/2,h=15, $fn=30);
translate([0,0,10-7])color("peru",0.9)cylinder(r1=(6)/2,r2=(5)/2,h=5, $fn=30);
}
translate([0,0,-0.1])color("lightgreen",0.9)cylinder(r1=(5.3)/2,r2=(2.2)/2,h=15.2, $fn=30);
}
}

module pipette_p1000_sleeve(){
difference(){
union(){
translate([0,0,-2])color("orange",0.9)cylinder(r1=(7.5)/2,r2=(3.5)/2,h=16.5, $fn=30);
translate([0,0,10-2])color("peru",0.9)cylinder(r1=(6.5)/2,r2=(5)/2,h=5, $fn=30);
}
translate([0,0,-2.1])color("orange",0.9)cylinder(r1=(7.5-1)/2,r2=(3.5-1)/2,h=16.5+0.2, $fn=30);
//translate([0,0,-0.1])color("lightgreen",0.9)cylinder(r1=(5.3)/2,r2=(2.)/2,h=8, $fn=30);
}
}




module pipette_p20_cap_assy(){
pipette_p20_model();
translate([0,0,11-4])pipette_p20_sleeve();
//color("bisque")translate([0,0,30+74])rotate([0,180,0])import("pcrtube.stl");
//color("bisque")translate([0,0,30+74-74])rotate([0,180,0])import("pcrtube.stl");
//pcrtube();
}

module pipette_p1000_cap_assy(){
translate([0,0,11-4-14])pipette_p1000_sleeve();
color("bisque")translate([0,0,30+74])rotate([0,180,0])import("pcrtube.stl");
//color("bisque")translate([0,0,30+74-74-4])rotate([0,180,0])import("pcrtube.stl");
//pcrtube();
}

module pipette_p20_model(){
difference(){union(){
translate([0,0,5])color("lightblue",0.9)cylinder(r1=(5)/2,r2=(1.5)/2,h=21, $fn=30);
translate([0,0,0])color("lightblue",0.9)cylinder(r1=(6)/2,r2=(5.5)/2,h=5, $fn=30);
}
translate([0,0,-0.1])color("lightgreen",0.9)cylinder(r1=(5.8)/2,r2=(0.75)/2,h=26.5, $fn=30);
}
}

module pipette_p300_lts_model(){
aa = 0;
difference(){
union(){
color("lightblue",0.9)translate([0,0,49.5+10])cylinder(r=(7-aa)/2,h=1, $fn=30);
color("lightgreen",0.9)cylinder(r1=(0.5-aa)/2,r2=(7-aa)/2,h=49.5, $fn=30);
color("lightgreen",0.9)translate([0,0,49.5])cylinder(r=7/2,h=10, $fn=30);
}
translate([0,0,50])cylinder(r=5.5/2,h=10, $fn=30);
//translate([0,0,1+17])cylinder(r1=(2.5)/2,r2=(5.5)/2,h=49.5-17, $fn=30);
translate([0,0,1])cylinder(r1=(0.5)/2,r2=(5.5)/2,h=49.5, $fn=30);
translate([0,0,1-40+2.5])cylinder(r1=0.5/2,r2=5.5/2,h=49.5, $fn=30);

//translate([-10,-30,0])cube([30,30,80-29]);
}
//#color("white",1.5)translate([0,0,49.5+4])cylinder(r=5.5/2,h=3, $fn=30);
color("white",2.5)translate([0,0,49.5-17])cylinder(r1=3.8/2,r2=4.8/2,h=8, $fn=30);

//color("white",0.5)translate([0,0,49.5-17-22-8])cylinder(r1=4.8/2,r2=4.8/2,h=26, $fn=30);
//color("white",0.5)translate([0,0,49.5-17-16])cylinder(r1=2/2,r2=3.2/2,h=8+4, $fn=30);

color("lightblue",0.8)translate([0,0,49.5-17])cylinder(r1=3.8/2,r2=4.8/2,h=8, $fn=30);

ff = 3-3;
color("lightblue",0.8)translate([0,0,49.5-17-22+22])cylinder(r1=(3.8-ff)/2,r2=(4.8-ff+0.8-0.8)/2,h=8+8-8, $fn=30);

//ff = 3;
//color("lightblue",0.8)translate([0,0,49.5-17-22])cylinder(r1=(3.8-ff)/2,r2=(4.8-ff+0.8)/2,h=8+8, $fn=30);

/*
ff = 3.5;
difference(){
color("red",0.8)translate([0,0,49.5-17-22-6])cylinder(r1=(3.8-ff)/2,r2=(4.8-ff+0.8+1.5)/2,h=8+8+10, $fn=30);
translate([0,0,49.5-17-22-6-17])cylinder(r1=(3.8-ff)/2,r2=(4.8-ff+0.8+1.5)/2,h=8+8+10, $fn=30);
}
*/

/*
ff = 1.5;
color("lightblue",0.8)translate([0,0,49.5-17-22+21])cylinder(r1=(3.8-ff)/2,r2=(4.8-ff+0.8+1.5)/2,h=8+8+10-10, $fn=30);
*/

/*
difference(){
color("blue",0.8)translate([0,0,1])cylinder(r1=(0.5)/2,r2=(7)/2,h=49.5, $fn=30);
translate([0,0,1-40])cylinder(r1=0.5/2,r2=5.5/2,h=49.5, $fn=30);
translate([0,-20,0])cube([30,30,80]);
}
*/
}








module piezo_model(){
aa = 0;
difference(){
union(){
color("grey",0.9)translate([0,0,49.5+10])cylinder(r=(7-aa)/2,h=1, $fn=30);
color("grey",0.9)cylinder(r1=(0.5-aa)/2,r2=(7-aa)/2,h=49.5, $fn=30);
color("grey",0.9)translate([0,0,49.5])cylinder(r=7/2,h=10, $fn=30);
}
translate([0,0,50])cylinder(r=5.5/2,h=10, $fn=30);
translate([0,0,1])cylinder(r1=(0.5)/2,r2=(5.5)/2,h=49.5, $fn=30);
translate([0,0,1-40+2.5])cylinder(r1=0.5/2,r2=5.5/2,h=49.5, $fn=30);

}
}


























module p1000_model_eppendorf(){
//color("lightblue")
//translate([0,0,-190])cylinder(r=2/2,h=180);
rotate([0,0,0]){
difference(){
union(){
color("lightblue")
cylinder(r=8.5/2,h=17, $fn=30);
translate([0,0,3])color("black")cylinder(r=8.6/2,h=1, $fn=30);
}
translate([0,0,-0.1])cylinder(r=(8.5-1.5)/2,h=5.12, $fn=30);
translate([0,0,2])cylinder(r=(8.5-1)/2,h=2, $fn=30);
translate([0,0,5])cylinder(r=(8.5-2)/2,h=2, $fn=30);
translate([0,0,6.9])cylinder(r=(8.5-1.5)/2,h=4.11+6.6, $fn=30);
}
color("lightblue")translate([0,0,11])
difference(){
cylinder(r1=7.5/2,r2=7.5/2,h=16.5, $fn=30);
translate([0,0,-0.1])cylinder(r1=(7.5-1)/2,r2=(7.5-1)/2,h=16.85+2, $fn=30);
}
color("lightblue")translate([0,0,11+16.5])
difference(){
cylinder(r1=7.25/2,r2=7/2,h=4, $fn=30);
translate([0,0,-0.1])cylinder(r1=(7.25-1)/2,r2=(7-1)/2,h=4.15, $fn=30);
}
translate([0,0,11+16.5+4])
difference(){
union(){
color("lightblue")cylinder(r1=7/2,r2=4/2,h=15, $fn=30);
color("lightblue")translate([0,0,15-2-12.5])cylinder(r2=7/2,r1=7/2,h=5, $fn=30);
translate([0,0,15-2-7.5])difference(){
union(){
color("lightblue")cylinder(r2=4.5/2,r1=7/2,h=9.5, $fn=30);
color("lightblue")translate([0,0,9])cylinder(r2=2.5/2,r1=4.5/2,h=9.5, $fn=30);
//gasket part
//color("blue")translate([0,0,10])cylinder(r2=3.5/2,r1=5/2,h=5, $fn=30);
}
//need to put this back 
//translate([0,0,7.5-3])cylinder(r=7/2,h=0.6);
}
}
translate([0,0,-0.1])cylinder(r1=(7-1)/2,r2=(4-1)/2,h=15+.2);
}
/*
//this is for show
color("")translate([0,0,11+16.5+4])
difference(){
union(){
translate([0,0,15-2-7.5])difference(){
cylinder(r2=4.5/2,r1=7/2,h=9.5);
translate([0,0,7.5-3])cylinder(r=7/2,h=0.6);
}
}
translate([0,0,-0.1])cylinder(r1=(7-1)/2,r2=(4-1)/2,h=15+.2);
}
//end for show
*/
//translate([0,0,11+16.5+4+15-10])cylinder(r1=7/2,r2=6/2,h=8);
}
}








module miuzei_cover(){
difference(){
translate([0,0,0])roundedRect([26,24,2],3.5);

translate([0,-1,0]){
translate([10.5,-1.5-1.5,-1])cylinder(r=2.8/2,h=10);
translate([0,12.5,-1]){
translate([10.5,-1.5,0])cylinder(r=2.8/2,h=10);
}
translate([-21,0,-1]){
translate([10.5,-1.5-1.5,0])cylinder(r=2.8/2,h=10);
translate([0,12.5,0])translate([10.5,-1.5,0])cylinder(r=2.8/2,h=10);
}
}
}
}


module camera_view(){
translate([30,1,8])miuzei_cover();
translate([30,0,0])import("BOM_inventory/build2/stls/miuzei_raspicam_base.stl");
translate([30,4,-10])color("black")cylinder(r=12/2,h=18);
translate([30,4,-3])color("black")cylinder(r=16/2,h=8);
}


