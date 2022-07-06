//carriage_prototype_backwall_assy();


module carriage_prototype_backwall_assy(){
translate([0-30-3.5,0-0.5,2-0.5+16.5-0.5])color("pink")rotate([0,180,0])zcarriage_bearing_top();
translate([0-30-3.5,0+0.5,2-0.5+16.5-0.5-16])color("")rotate([0,0,180])zcarriage_bearing_top_single();
translate([0-30-3.5-10,0-0.5,2-0.5+16.5-0.5])color("peru")rotate([0,180,0])carriage_prototype_backwall_3wheel();
}


module zcarriage_bearing_top(){
difference(){
union(){
translate([-10+1.5-11.8+10,0.25+20-52+0.7,-10+28+5])color("")cube([30-25,62,21.36-7]);
translate([0,4,0]){
translate([-10+1.5+18.2-12-1.4-3,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=8-3,$fn=30);
}
translate([0,-4,0]){
translate([-10+1.5+18.2-12-1.4-3,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=8-3,$fn=30);
}
}
translate([0,4,0]){
translate([-10+1.5+18.2+2,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=25,$fn=30);
}
translate([0,-4,0]){
translate([-10+1.5+18.2+2,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=4.8/2,h=25,$fn=30);
}
}
}


module zcarriage_bearing_top_single(){
difference(){
union(){
translate([-10+1.5+18.2-12-1.4-3+1.4,0.25,-10-1+40])color("")rotate([0,-90,0])cylinder(r=17/2,h=8-3.5,$fn=30);
translate([-10+1.5+18.2-12-1.4-3,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=10/2,h=8-3,$fn=30);
}
translate([-10+1.5+18.2+2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.7/2,h=25,$fn=30);
translate([-10+1.5+18.2+2+3,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=9.7/2,h=14,$fn=30);
}
}



module carriage_prototype_backwall_3wheel(){
difference(){
union(){
translate([-10+1.5-11.8+5,0.25+20-52+0.7,-10+28+5-44.4+15])color("")cube([30-22,62,21.36-7+44.5-15]);
translate([-10+1.5-11.8+5,0.25+20-52+0.7+15+8,-10+28+5-44.4])color("")cube([30-22,62-30-14.5,21.36-7+44.5-40]);
}
translate([0,4,0]){
translate([-10+1.5+18.2+2,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.7/2,h=125,$fn=30);
translate([-10+1.5+18.2+2-9,0.25+20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=9.7/2,h=14,$fn=30);
}
translate([0,-4,0]){
translate([-10+1.5+18.20+2,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.7/2,h=125,,$fn=30);
translate([-10+1.5+18.20+2+2-11,0.25-20,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=9.7/2,h=14,$fn=30);
}
translate([0,0.5,-42]){
translate([-10+1.5+18.2+2,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=5.7/2,h=125,$fn=30);
translate([-10+1.5+18.2+2-9,0.25,-10-1+40])color("pink")rotate([0,-90,0])cylinder(r=9.7/2,h=14,$fn=30);
}
}
}


