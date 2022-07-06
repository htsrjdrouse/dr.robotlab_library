//iverntech_pump_slider_plate();



module iverntech_pump_slider_plate(){
translate([0,0,1])difference(){
union(){
translate([-110+55.5+3,-81.5+1.5+40-24+10,16])cube([22+5-3.5,11,7+5.8]);
//translate([-110+55.5+3,-81.5+1.5+40-25,16])cube([22+5-3.5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40,16])cube([22+5,28.5,7]);
translate([-110+55.5,-81.5+1.5+40+6.6+3.5-14.5,16])cube([22+5,6.5,35]);
//translate([-110+55.5,-81.5+1.5+40+6.6+3.5,16])cube([22+5,6.5,30]);
}
translate([-110+59+5.3-1.6,-81.5+1.5+20+11,36-3.4-17])rotate([0,0,0]){cylinder(r=2.8/2,h=20);}//cylinder(r=6.8/2,h=9,$fn=6);}
translate([-110+59+5.3+4.5-1,-81.5+1.5+146,36-3.4+10.25+2])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59+5.3+4.5-1-4.5,-81.5+1.5+146,36-3.4+10.25+2-6])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59+5.3+4.5-1+4.5,-81.5+1.5+146,36-3.4+10.25+2-6])rotate([90,90,0])cylinder(r=3.7/2,h=200);
//translate([-110+59+5.3+9,-81.5+1.5+146,36-3.4])rotate([90,90,0])cylinder(r=3.7/2,h=200);
translate([-110+59,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59+20,-81.5+1.5+46+20,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
translate([-110+59,-81.5+1.5+46+20,16-8]){cylinder(r=3.7/2,h=12+1);translate([0,0,12])cylinder(r=8/2,h=3.5);}
}
}
