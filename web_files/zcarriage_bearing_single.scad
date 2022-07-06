//zcarriage_bearing_single();


module zcarriage_bearing_single(){
difference(){
union(){
translate([-10+1.5-11.8+10+4,0.25+20-52+0.7+52.05,-10+28+5])color("")cube([30-10-4,10,21.36-7+15]);
translate([-10+1.5-11.8+10+4,0.25+20-52+0.7+10+12,-10+28+5])color("")cube([30-10-4,62-20+2-10,21.36-7]);
translate([-10+1.5+18.2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
}
translate([-10+1.5+18.2+2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.2+2-8+2,0.25+2,-10-1+40+16])color("pink")rotate([-90,0,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.2+2-8+2,0.25,-10-1+40+16])color("pink")rotate([-90,0,0])cylinder(r=9/2,h=31-4,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48+18,-10+28+8-32-50-8])cylinder(r=9.5/2,h=50,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48,-10+28+8-32-50-8])cylinder(r=9.5/2,h=50,$fn=30);
}
}
