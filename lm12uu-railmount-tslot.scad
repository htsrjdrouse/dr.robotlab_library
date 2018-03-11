//include <dr.robotlab_repstrap.scad>
//brace();
//translate([0,60,0])rotate([90,0,0])tslot20(200);

module brace(){

rodsupwid = 6;
rodsuphi = 10; //last 5mm
rodsuplen = 30;
rodconv = 4;
rodshim = 5; // This is used to offset from the middle of the horizontal screws

slantsupx = 5;
slantsupy = 10;
slantsupz = 5;


mountwid = 80;
mountlen = 30;
mounthi = 5;

vsuphi = 30;
vsupwid = 5;
vsuplen = 25;

hsupwid = 25;
hsuphi = 5;

extrsidrailwid = 15+1;

m4diam = 4.5/2;
m6diam = 4.7/2;
m12diam = 12.5/2;
m22diam = 23/2;
m4cap = 4.5;

//vertical mount

union(){
//vertical support
difference(){
 translate([4,0,vsuphi-1])#cube([vsupwid-3.9,mountlen,vsuphi-vsuphi+0.1]);

 
 //one center vertical support screws
 rotate([0,90,0])
 translate([-vsuphi+hsuphi+extrsidrailwid-m6diam/2,mountlen/2,0])
 cylinder(r=m6diam,h=26);
 
 
 /*
 //two vertical support screws 
 rotate([0,90,0])
 translate([-vsuphi+hsuphi+extrsidrailwid-m6diam/2,mountlen-m6diam*2,0])
 cylinder(r=m6diam,h=26);
 rotate([0,90,0])
 translate([-vsuphi+hsuphi+extrsidrailwid-m6diam/2,m6diam*2,0])
 cylinder(r=m6diam,h=26);
 */

}



//horizontal support


 //base
 difference(){
 union(){
 translate([vsupwid,0-10,vsuphi-hsuphi])cube([hsupwid-5,mountlen+10,hsuphi]);


 //begin slant supports perpendicular short side
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2+rodsupwid/1.5,mountlen -(mountlen/2)-slantsupy/2-10,vsuphi-1.5])
rotate([0,-45,0])
cube([slantsupx,slantsupy+6.5,slantsupz+3]);
//here is transition supports
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2+rodsupwid/2+slantsupx/4,mountlen -(mountlen/2)-slantsupy/2+slantsupy-3.5,vsuphi-0.25])
rotate([90,0,0])cylinder(r=4,slantsupy+6.5);
 //end slant supports perpendicular short side

//begin slant supports perpendicular long side
//Sorry this part isn't parametric
//rotate([180,180,0])
rotate([180,180,0])
translate([-22,-25,0])
{
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2+rodsupwid/1.5,mountlen -(mountlen/2)-slantsupy/2-1,vsuphi-1.5])rotate([0,-45,0])#cube([slantsupx+0,slantsupy+6,slantsupz+4]);
//here is transition supports
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2+rodsupwid/2+slantsupx/4,mountlen -(mountlen/2)-slantsupy/2+slantsupy+5+9,vsuphi-0.25])
rotate([90,0,0])
cylinder(r=4,slantsupy+28);
}
//end slant supports perpendicular long side



}

 //m6 horizontal screws
 //one center screw
 translate([vsupwid+extrsidrailwid-m6diam/2-4.5,mountlen * 0.75,vsuphi-hsuphi])
 cylinder(r=m6diam,h=26);

 translate([vsupwid+extrsidrailwid-m6diam/2-4.5,mountlen * 0.75-28,vsuphi-hsuphi])
 cylinder(r=m6diam,h=26);

/*
 //two side screws 
 translate([vsupwid+extrsidrailwid-m6diam/2,m6diam*2,vsuphi-hsuphi])
 cylinder(r=m6diam,h=26);
 translate([vsupwid+extrsidrailwid-m6diam/2,mountlen-m6diam*2,vsuphi-hsuphi])
 cylinder(r=m6diam,h=26);
*/



//second part of m4 screw hold
 translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2,mountlen -(mountlen/1.5),vsuphi-hsuphi/2])
 cylinder(r=m4diam,h=mounthi+20);
 translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2,mountlen -(mountlen/1.5),vsuphi-hsuphi])
 cylinder(r=m4cap,h=hsuphi/2+1);

 }


}
 


//m6 vertical screws

//rod support
difference(){
//translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodshim,mountlen -(mountlen/2 + rodsuplen/2),vsuphi])
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodshim,0,vsuphi])
#cube([rodsupwid,rodsuplen-13.5,rodsuphi]);

//here's the groove
rotate([90,0,0])
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2,vsuphi+hsuphi+rodsuphi-rodconv/2,-mountlen])
cylinder(r=rodconv,h=60);

//first part of m4 screw hold
translate([vsupwid+extrsidrailwid-m6diam/2-rodsupwid-rodconv/2,mountlen -(mountlen/1.5),vsuphi])
cylinder(r=m4diam,h=rodsuphi);

}


}







