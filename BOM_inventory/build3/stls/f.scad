
//import("50x50mm_Grass.stl");

rotate([90,0,0]){

ll =5; 
/*
cube([2,25-13,75-52]);
translate([7,0,0])cube([0.5,25-13,75-52]);
translate([7+16,0,0])cube([2,25-13,75-52]);
*/
cube([2,25-15,75-52-10]);
translate([7+16-16-2,0,0])cube([0.5,25-15,75-52-10]);

/*
ad = 1;
for(y=[0:16]){
for(i=[0:16]){
translate([2,1+(i*ad),1+(y*ad)-0.5])rotate([90,0,90])color("red")cylinder(r=0.5/2,h=ll);
}
}
*/

//dd = 0.65;
dd = 0.75;
//for(y=[0:16]){
translate([0,0,-3])for(y=[0:8]){
//for(i=[0,2,4,6,8,10,12,14]){
for(i=[0,2,4,6,8,10]){
translate([2,1+(i*dd)-0.7,1+(y*dd)+5])rotate([90,0,90])color("blue")cylinder(r=0.7/2,h=ll+18-2-18);
//translate([2,1+(i*dd)-0.7+dd,1+(y*dd)+5+dd/2])rotate([90,0,90])color("red")cylinder(r=0.7/2,h=ll+18, $fn=20);
translate([2,1+(i*dd)-0.7+dd,1+(y*dd)+5+dd/2])rotate([90,0,90])color("red")cylinder(r=0.7/2,h=ll+18-2-18);
}
}

}


