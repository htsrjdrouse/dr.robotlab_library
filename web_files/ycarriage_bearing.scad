
//ycarriage_bearing();


module ycarriage_bearing(){
difference(){
union(){
translate([-10+1.5-11.8+10,0.25+20-52+0.7,-10+28+5])color("")cube([30-10+8,62,21.36-7+9-4.865]);
translate([-10+1.5+18.2,0.25+24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
translate([-10+1.5+18.2,0.25-24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
translate([-10+1.5+18.20-20-0.5-0.9,0.25-24,-10-1+40])color("black")rotate([0,-90,0])cylinder(r=22/2,h=10,$fn=30);
translate([-10+1.5+18.2-20-0.5-0.9,0.25+24,-10-1+40])color("black")rotate([0,-90,0])cylinder(r=22/2,h=10,$fn=30);
}

translate([0,0,55]){
color("red")translate([-10+1.5-11.8+15.5-20-6-0.45,20+20-55+100-100+5-0.3,-10+28+8-32+0.5+2-5])rotate([0,90,0])cube([20+0.5,20.6,300]);
translate([-10+1.5-11.8+15.5+5,20+20-48-8-2+2,-10+28+8-32-50-8-19+135-55])cylinder(r=9.5/2,h=50,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48-8-2+34-2,-10+28+8-32-50-8-19+135-55])cylinder(r=9.5/2,h=50,$fn=30);
}

translate([-10+1.5-11.8+10+10-2+5+5,0.25+20-52+0.7-0.1,-10+28+5+9])color("")cube([30-13+10,62-46+2.5-5+2,21.36-12+0.2]);
translate([-10+1.5-11.8+9+20+0.5,0.25+20-52+0.7+5.5-0.5,-10+28+5+9])color("")cylinder(r=22.8/2,h=10-0.5,$fn=30);

translate([-10+1.5-11.8+10+10-2+7,0.25+20-52+0.7+44+3,-10+28+5+9])color("")cube([30-13+30,62-46+2.5,21.36-12+0.2]);
translate([-10+1.5-11.8+9+20+0.5,0.25+20-52+0.7+5.5+51.5+0.5,-10+28+5+9])color("")cylinder(r=22.8/2,h=10-0.5,$fn=30);

translate([-10+1.5-11.8+9+20+0.5,0.25+20-52+0.7+5.5-0.5,-10+28+5+9-10-100])color("")cylinder(r=5.8/2,h=240,$fn=30);
translate([-10+1.5-11.8+9+20+0.5,0.25+20-52+0.7+5.5+51.5+0.5,-10+28+5+9-100])color("")cylinder(r=5.8/2,h=240,$fn=30);
translate([-10+1.5+18.2+2-6,0.25+24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5+18.20+2-6,0.25-24,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
}
}