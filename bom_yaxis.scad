



module iverntech_slider_wider(y){
/*
//slider model
//here is the rail
translate([0,0,0])color("silver")cube([12,300,8]);
//here is the slider
translate([-27/2+12/2,150,2-3+6])color("silver")cube([27,45,9]);
translate([-9,350,-25])rotate([90,0,0])tslot20(400);
*/
translate([-9+23+2-8,350-125,-25+4.5+12.5-12.5])rotate([90,0,0])tslot20(100);
/*
translate([-27/2+12/2+29.5,150-5,2-3+6-25-3-3.2])color("")difference(){
union(){
cube([18,70,4.5+3+3.3]);
translate([-30,20,0])cube([18+30,35,3.3]);
}
translate([9,9+9,6.0])cylinder(r=5.9/2,h=10);
translate([9,9+9,6.0-30-10])cylinder(r=12/2,h=40);
translate([9,9+52-9,6.0])cylinder(r=5.9/2,h=10);
translate([9,9+52-9,6.0-30-10])cylinder(r=12/2,h=40);
translate([9-5,9,-20.5])cylinder(r=5.9/2,h=50);
translate([9-5,9+52/2,-6])cylinder(r=5.9/2,h=10);
translate([9-5,9+52/2,4])cylinder(r=12/2,h=10);
translate([9-5-20,9+52/2,-20.5])cylinder(r=5/2,h=50);
translate([9-5-30,9+52/2,-20.5])cylinder(r=2.8/2,h=50);
translate([9-5,9+52,-20.5])cylinder(r=5.9/2,h=50);
}
*/
translate([-8,0,0])iverntech_slider_tslot_connector();
//for show its the screws
translate([-27/2+12/2-8,150,3+3]){
translate([0,0,9]){
 translate([27/2+23+2,45/2-26,-11])color("black")cylinder(r=5/2,h=20);
 translate([27/2+23+2,45/2-26,8])difference(){
 color("black")cylinder(r=9/2,h=3);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }
 translate([27/2+23+2,45/2+26,-11])color("black")cylinder(r=5/2,h=20);
 translate([27/2+23+2,45/2+26,8])difference(){
  color("black")
 cylinder(r=9/2,h=3);translate([0,0,-0.1])color("black")cylinder(r=5/2,h=3.3,$fn=6);
 }
}}
/*
*/
iverntech_slider_shuttle_bottom();
}



module ivernetech_slider_module_wider(y){
//translate([-9+23+2,350-125,-25+4.5+12.5-12.5])rotate([90,0,0])tslot20(100);
translate([0,-19,0])iverntech_slider_wider(y);
}



module iverntech_connector(){
translate([0,0,-30])rotate([0,0,0])translate([0,6,-5]){
difference(){
union(){
cube([60,18,4]);
translate([0,20-8+8-21,-4+4])cube([60,6,4+4]);
}
translate([10,9,-2])cylinder(r=5/2,h=10);
translate([10,9,-2+6])cylinder(r=11/2,h=10);
translate([10+40,9,-2])cylinder(r=5/2,h=10);
translate([10+40,9,-2+6])cylinder(r=11/2,h=10);
translate([5,9+14-5,-12+14.5])rotate([90,0,0])cylinder(r=2.7/2,h=60);
translate([5+25,9+14-5,-12+14.5])rotate([90,0,0])cylinder(r=2.7/2,h=60);
translate([5+50,9+14-5,-12+14.5])rotate([90,0,0])cylinder(r=2.7/2,h=60);
}
}
//rotate([0,90,0])tslot20(500);
}

module iverntech_slider_shuttle_bottom(){
translate([-27/2+12/2,150,3+3]){
translate([0,0,9])difference(){
 union(){
 translate([0,0,-1])color("")cube([27,45,9]);
 color("")translate([20+10,45/2-9,2])cube([16-5,18,6]);
 color("")translate([20+10-3,45/2-7-30,2])cube([16+5-5,14+60,6]);
 }
 translate([27/2+23,45/2,-5])cylinder(r=5.7/2,h=20, $fn=30);
 translate([27/2+23,45/2,2-0.1])cylinder(r=10/2,h=3, $fn=30);
 translate([27/2+23+2-8,45/2-26,-5])cylinder(r=5.7/2,h=20, $fn=30);
 translate([27/2+23+2-8,45/2+26,-5])cylinder(r=5.7/2,h=20, $fn=30);
 translate([27/2-10,45/2-10,-5])cylinder(r=3.7/2,h=20, $fn=30);
 translate([27/2+10,45/2-10,-5])cylinder(r=3.7/2,h=20, $fn=30);
 translate([27/2-10,45/2+10,-5])cylinder(r=3.7/2,h=20, $fn=30);
 translate([27/2+10,45/2+10,-5])cylinder(r=3.7/2,h=20, $fn=30);
 /*
 #translate([27/2+4,45/2,-5])cylinder(r=2.8/2,h=20, $fn=30);
 #translate([27/2-8,45/2,-5])cylinder(r=2.8/2,h=20, $fn=30);
 #translate([27/2+4,45/2,-1])cylinder(r=7/2,h=4,$fn=30);
 #translate([27/2-8,45/2,-1])cylinder(r=7/2,h=4,$fn=30);
 */
 translate([27/2-10,45/2-10,5])cylinder(r=6.5/2,h=3, $fn=30);
 translate([27/2+10,45/2-10,5])cylinder(r=6.5/2,h=3, $fn=30);
 translate([27/2-10,45/2+10,5])cylinder(r=6.5/2,h=3, $fn=30);
 translate([27/2+10,45/2+10,5])cylinder(r=6.5/2,h=3, $fn=30);
}
}
}
