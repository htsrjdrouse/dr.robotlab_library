//translate([-40+2,-25+18.8,3])import("/Users/richard/Documents/009Reprapcatcube010715/igus_sliders/TS_04_09_50_3.stl");

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




module slider_wall_mod(){
translate([-90,0,-0.5])difference(){
translate([0-7.5-10-32+56+3,-40+20+10+3-8+22+3,0])cube([10+15+10+10+32-48,10,6+3-5+14]);
translate([13,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
translate([13+19,-36+(0*10)+48+3,0]){cylinder(r=2.8/2,h=1000);}
}
difference(){
union(){
translate([25-47.5,17.32+1.38-14-87,-13.5+13]){
translate([-2,-35+25,0])cube([4.64+2,13.62+1+22+58.5+35-25,10]);
translate([-2-35,-35+25,0])cube([4.64+2,13.62+1+22+55+37-25,10]);
translate([-2-35,4-40+25-4,0])#cube([4.64+2+35,10,10]);
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









