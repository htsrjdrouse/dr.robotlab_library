

p1000_model_eppendorf();

module p1000_model_eppendorf(){
//color("lightblue")
//translate([0,0,-190])cylinder(r=2/2,h=180,$fn=30);
rotate([0,0,0]){
difference(){
union(){
color("lightblue")
cylinder(r=8.5/2,h=17,$fn=30);
//translate([0,0,3])color("black")cylinder(r=8.6/2,h=1,$fn=30);
}
translate([0,0,-0.1])cylinder(r=(8.5-1.5)/2,h=5.12,$fn=30);
translate([0,0,2])cylinder(r=(8.5-1)/2,h=2,$fn=30);
translate([0,0,5])cylinder(r=(8.5-2)/2,h=2,$fn=30);
translate([0,0,6.9])cylinder(r=(8.5-1.5)/2,h=4.11+6.6,$fn=30);
}
color("lightblue")translate([0,0,11])
difference(){
cylinder(r1=7.5/2,r2=7.5/2,h=16.5,$fn=30);
translate([0,0,-0.1])cylinder(r1=(7.5-1)/2,r2=(7.5-1)/2,h=16.85+2,$fn=30);
}
color("lightblue")translate([0,0,11+16.5])
difference(){
cylinder(r1=7.25/2,r2=7/2,h=4,$fn=30);
translate([0,0,-0.1])cylinder(r1=(7.25-1)/2,r2=(7-1)/2,h=4.15,$fn=30);
}
color("lightblue")translate([0,0,11+16.5+4])
difference(){
union(){
cylinder(r1=7/2,r2=4/2,h=15,$fn=30);
translate([0,0,15-2-12.5])cylinder(r2=7/2,r1=7/2,h=5,$fn=30);
translate([0,0,15-2-7.5])difference(){
cylinder(r2=4.5/2,r1=7/2,h=9.5,$fn=30);
//need to put this back 
//translate([0,0,7.5-3])cylinder(r=7/2,h=0.6,$fn=30);
}
}
translate([0,0,-0.1])cylinder(r1=(7-1)/2,r2=(4-1)/2,h=15+.2,$fn=30);
}
/*
//this is for show
color("")translate([0,0,11+16.5+4])
difference(){
union(){
translate([0,0,15-2-7.5])difference(){
cylinder(r2=4.5/2,r1=7/2,h=9.5,$fn=30);
translate([0,0,7.5-3])cylinder(r=7/2,h=0.6,$fn=30);
}
}
translate([0,0,-0.1])cylinder(r1=(7-1)/2,r2=(4-1)/2,h=15+.2,$fn=30);
}
//end for show
*/
//translate([0,0,11+16.5+4+15-10])cylinder(r1=7/2,r2=6/2,h=8,$fn=30);
}
}







