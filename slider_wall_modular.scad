//translate([-40+2,-25+18.8,3])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TS_04_09_50_3.stl");

//stepper_linear_m8nut_endstopflag(6);




difference(){
translate([49.7,31,25])slider_wall_mod();
 translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([35,0,0]){
  translate([-6.5,-20,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,17,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
  translate([-6.5,36,20]){translate([0,0,4.5])cylinder(r=3.7/2,h=30);translate([0,0,-20])cylinder(r=2.7/2,h=40);}
}
}
/*
*/

module stepper_linear_m8nut_endstopflag(thick){
translate([0,-20-9,0])difference(){
difference(){union(){
translate([-38.25+14-13.9+20,-70+30.-5+4,22.5+3.8-1.0])cube([44.5-20,11,thick]);
translate([-38.25+14-13.9+20-20,-70+30.-5-5+7,22.5+3.8-1.0])#cube([44.5-20+20-23,5+10+5-7,thick]);
translate([-38.25+14-13.9+20-20-4,-70+30.-5-5-4+7,22.5+3.8-1.0])cube([44.5-20+20-23,5+10+5+4-7,thick+5]);
}
translate([-90,-40+4,29])rotate([0,90,0])#cylinder(r=3.6/2,h=73,$fn=30);
}
for(i=[0:0]){
translate([-38.25+14-13.9+13.7+11.9-i,-70+34,22.5+3.8-50])cylinder(r=3.7/2,h=120);
translate([-38.25+14-13.9+13.7+13+11.9-i,-70+34,22.5+3.8-50])cylinder(r=3.7/2,h=120);
}
}
}





module slider_wall_mod(){
translate([-90,0+10,-0.5])difference(){
union(){
translate([0-7.5-10-32+56+3,-40+20+10+3-8+22+3,0])#cube([10+15+10+10+32-48,10,6+3-5+14]);
translate([0-7.5-10-32+56+3+14+5,-40+20+10+3-8+22+3-10,0])#cube([10+15+10+10+32-48-15,10,6+3-5+14-8]);
}
translate([13,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
translate([13+19,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
}
difference(){
union(){
translate([25-47.5,17.32+1.38-14-87,-13.5+13]){
translate([-2,-35+25,0])cube([4.64+2,13.62+1+22+58.5+35-25,10]);
translate([-2-35,-35+25,0])cube([4.64+2,13.62+1+22+55+37-25,10]);
translate([-2-35,4-40+25-4,0])cube([4.64+2+35,10,10]);
translate([-2-35,85,0])cube([4.64+2+30,10,10]);
}
}
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+21+(20*5)-(20*5),-13.5+13-20])#cylinder(r=1.4/2,h=200,$fn=30);
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+21+(20*5),-13.5+13-20])#cylinder(r=1.4/2,h=200,$fn=30);
translate([25-47.5-16.5-0.20+0.5,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20+1,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
translate([25-47.5-16.5-0.20,17.32+1.38-14-117-0.65+120+20,-13.5+13-20+18])rotate([90,0,0])cylinder(r=12/2,h=40);
}
}









