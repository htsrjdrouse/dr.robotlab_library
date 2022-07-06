//ycarriage_bearing_single();


module ycarriage_bearing_single(){
difference(){
union(){
translate([-10+1.5-11.8+10,0.25+20-52+0.7+10,-10+28+5])color("")cube([30-10,62-20+2,21.36-7]);
translate([-10+1.5+18.2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=21.36,$fn=30);
translate([-10+1.5+18.2-20-0.5-0.9,0.25,-10-1+40])color("black")rotate([0,-90,0])cylinder(r=22/2,h=10,$fn=30);
}
translate([-10+1.5+18.2+2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=125,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48-8+2,-10+28+8-32-50])cylinder(r=5.5/2,h=250,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48+18+8-2,-10+28+8-32-50])cylinder(r=5.5/2,h=250,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48+18,-10+28+8-32-50-8])cylinder(r=9.5/2,h=50,$fn=30);
translate([0,0,87+8]){
translate([-10+1.5-11.8+15.5+5,20+20-48+18+8-2,-10+28+8-32-50-8])cylinder(r=9.5/2,h=50,$fn=30);
translate([-10+1.5-11.8+15.5+5,20+20-48-8+2,-10+28+8-32-50-8])cylinder(r=9.5/2,h=50,$fn=30);
}

}
}
