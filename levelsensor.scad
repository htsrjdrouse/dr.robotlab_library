

levelsensor_mount();
//color("lightblue")translate([0,0,-10])cylinder(r=10/2,h=100,$fn=30);
//flashtree rain water level sensor
module levelsensor_mount(){
difference(){
union(){
cylinder(r=(10+10)/2,h=15,$fn=30);
translate([-12,-10,0])cube([20+4,14,10]);
translate([-10,0,0])cube([20,14,12]);
}
translate([-12+7,-21,0])#cube([10,14,15]);
translate([12.5,0,0]){
translate([-20,9,6])rotate([90,0,0])#cylinder(r=2.2/2,h=300,$fn=30);
translate([-20+15,9,6])rotate([90,0,0])#cylinder(r=2.2/2,h=300,$fn=30);
}

translate([-20,9,6])rotate([0,90,0])#cylinder(r=2.8/2,h=300,$fn=30);
for(i=[0:20]){
translate([0,i,-2])cylinder(r=10/2,h=100,$fn=30);
}
}
}




