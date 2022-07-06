//microswiss_xcarriage_bearing();


module microswiss_xcarriage_bearing(){
difference(){
union(){
translate([-10+1.5-11.8+10,0.25+20-52+0.7-10,-10+28+5])color("")cube([30-10+8-8,62+10,21.36-7+9-2.75-6]);
translate([-10+1.5-11.8+10,0.25+20-52+0.7+55,-10+28+5])color("")cube([30-10+8-8+10,38-2,21.36-7+9-2.75-6+4]);
translate([-10+1.5-11.8+10-5.5,0.25+20-52+0.7+5-45-4,-10+28+5])color("")cube([30-10+8-8+10-4.5,38-2+4,21.36-7+9-2.75-6+4+14.5+15]);
translate([-10+1.5+18.2,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
translate([-10+1.5+18.2,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
}
translate([12+30-100+48-2,25-80,20])rotate([0,0,0])cylinder(r=25/2,h=100);
translate([12+30-100+48-2+60,25-80-16,65])rotate([0,-90,0])cylinder(r=2.8/2,h=100,$fn=30);
translate([12+30-100+48-2+60,25-80+16,65])rotate([0,-90,0])cylinder(r=2.8/2,h=100,$fn=30);
translate([-10+1.5-11.8+15.5+5+12,20+20-48+18+42,-10+28+8-32-50+10])cylinder(r=4.8/2,h=95,$fn=30);
translate([-10+1.5-11.8+15.5+5+12,20+20-48+18+42-20,-10+28+8-32-50+10])cylinder(r=4.8/2,h=95,$fn=30);
translate([-10+1.5-11.8+15.5+5+12,20+20-48+18+42,-10+28+8-32-50+10-10])cylinder(r=10/2,h=95,$fn=30);
translate([-10+1.5-11.8+15.5+5+12,20+20-48+18+42-20,-10+28+8-32-50+10-10])cylinder(r=10/2,h=95,$fn=30);
translate([0,0,0]){
translate([-10+1.5-11.8+15.5+5,20+20-48,-10+28+8-32-50])cylinder(r=4.8/2,h=95,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48+18,-10+28+8-32-50])cylinder(r=4.8/2,h=95,$fn=30);
}
translate([-10+1.5+18.2+2+60,0.25+20,-10-1+64.5])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.2+2+60,0.25-20,-10-1+64.5])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.2+2+60,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.8/2,h=125,$fn=30);
translate([-10+1.5+18.2+2+3+5,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10.2/2,h=25,$fn=30);
translate([-10+1.5+18.20+2+60,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.8/2,h=125,,$fn=30);
translate([-10+1.5+18.20+2+3+5,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10.2/2,h=25,,$fn=30);
}
}
