extrusion_lid_coupler();
module extrusion_lid_coupler(){
//translate([0,0,20])rotate([90,0,0])tslot20(250);
//rotate([90,0,0])tslot20_2060(250);
translate([25.5,-100,25]){
difference(){union(){
translate([0,2.5,0])cube([18,45,5]);
translate([0,13+1.5,0])cube([18,21,18]);
}        
translate([9,9,0])cylinder(r=5.7/2,h=30);
translate([9,50-9,0])cylinder(r=5.7/2,h=30);
translate([-6,25,10])rotate([90,0,90])cylinder(r=5.7/2,h=10);
for (a=[0,1,2,3,4,5,6,7,8]){
translate([4,25,10+(a)])rotate([90,0,90])cylinder(r=12/2,h=16);
}
translate([-4,13,20])rotate([0,30,0])cube([28,24,18]); 
}   
}}  
