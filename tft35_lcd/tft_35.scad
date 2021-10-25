translate([-60+25,70+5+2,50])rotate([90,90,0])import("../PerfectHinge40mm.stl");
translate([50.5,43+1.2,-0.50])color("pink")import("CaseUpper.stl");
translate([0,-60,-2])color("lime")rotate([0,0,0])lcd_connectblock();
module lcd_connectblock(){
//connect block
translate([35,0,9.5+10])difference(){
union(){
translate([-60,30,-10-8])rotate([0,0,0])cube([15,45,12+8]);
translate([-60,30,-10-8+20])rotate([0,0,0])cube([15,45,12+8+12-20]);
translate([-60,30,-10-8])rotate([0,0,0])cube([25,45,8]);
}
translate([0,0,0]){
translate([-60+7.7,35.5,-25+10])#rotate([0,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([-60+7.7,35.5+29,-25+10])#rotate([0,0,0])cylinder(r=3.8/2,h=30,$fn=30);
translate([-60+7.7,35.5,-25+19-8])#rotate([0,0,0])cylinder(r=9.8/2,h=60,$fn=30);
translate([-60+7.7,35.5+29,-25+19-8])#rotate([0,0,0])cylinder(r=9.8/2,h=60,$fn=30);
}
/*
translate([0,5+2,23]){
translate([-60+7.7-50,35.5,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
translate([-60+7.7-50,35.5+29,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
}
*/
translate([0,5+2,23+8.3]){
translate([-60+7.7-50,35.5,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
translate([-60+7.7-50,35.5+29,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
}

}
}

