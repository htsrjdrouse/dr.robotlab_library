multichannel_drypad_longer();

module multichannel_drypad_longer(){
translate([-148,85,-150])difference(){
union(){
translate([-75.5-5+22-5-34+12-20,-40,0])cube([29+36-12+20,90,5]);
translate([-75.5-5+45-7,-40-10,0])cube([20,90+20,5+5]);
translate([-75.5-5+45-7-20-10-20,-40-10-10+20,0])cube([30+20,90,5+5]);
}
/*
translate([-30,33,-10]){
cylinder(r=3.7/2,h=30);translate([0,0,10])
cylinder(r=6.7/2,h=3.2);
}
translate([-30,33-66,-10]){
cylinder(r=3.7/2,h=30);
translate([0,0,10])cylinder(r=6.7/2,h=3.2);
}
*/
/*
translate([-30,0,0])for(a=[0:1]){
translate([-44-(a*10),-40+5,-1])cube([5,71+10,13]);
}
*/
//translate([-30-30+6,-20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
//translate([-30-30+6,20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
translate([-33,-66,-20])rotate([0,0,90]){
//actually c-to-c spacing on prusa is 8.723 not 9mm
translate([0,-31+65-12+20,0])
for(j=[0:7]){
for(k=[0:3]){
 //The is for the Rainin LTS tip without the filter
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([7,25/2-8,-0.1])cylinder(r=7.8/2,h=40);
 //The is for the Rainin LTS tip with this is too tight
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.5,25/2-8,-0.1])cylinder(r=6.5/2,h=40);
 #translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.8,25/2-8,-0.1])cylinder(r=7/2,h=40);
}
}

/*
translate([19+7,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,-0.1])cylinder(r=3.7/2,h=40);
*/
//translate([19+7,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,14])cylinder(r=5.7/2,h=240);
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,24])cylinder(r=10/2,h=240);
//translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,14])cylinder(r=5.7/2,h=40);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,24])cylinder(r=10/2,h=40);
//translate([19+7+75,2.5-10,2])translate([7.5,25/2-8,18])cylinder(r=6.9/2,h=3.2);
#translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,14])cylinder(r=5.7/2,h=240);
#translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,24])cylinder(r=10/2,h=240);
}
}
}








