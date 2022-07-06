//zcarriage_bearing();



module zcarriage_bearing(){
difference(){
union(){
translate([-10+1.5-11.8+10+4,0.25+20-52+0.7,-10+28+5])color("")cube([30-10+8-8-4,62-50,21.36-7+9+13]);
translate([-10+1.5-11.8+10+4,0.25+20-52+0.7,-10+28+5])color("")cube([30-10+8-8-4,62,21.36-7+9]);
translate([-10+1.5+18.2,0.25+24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
translate([-10+1.5+18.2,0.25-24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
}
translate([-10+1.5-11.8+15.5+8.5+2,20+20-48,-10+28+8-32+59])rotate([90,0,0])cylinder(r=4.8/2,h=250,$fn=30);
translate([-10+1.5-11.8+15.5+8.5+2,20+20-48,-10+28+8-32+59])rotate([90,0,0])cylinder(r=8.5/2,h=23.1-4,$fn=30);
translate([-10+1.5+18.2+2+60,0.25+24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.20+2+60,0.25-24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,,$fn=30);
}
}
