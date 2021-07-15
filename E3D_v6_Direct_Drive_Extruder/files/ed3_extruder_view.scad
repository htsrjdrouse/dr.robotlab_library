//import("Extruder.STL");
//import("Hot_End_Clamp.STL");
//import("Hot_End_Fan_Duct.STL");
//import("Idler.STL");
//import("Turbine_Duct.STL");
//import("Turbine_Mount.STL");
//import("X-CARRIAGE.STL");
//import("fan_guard.STL");
/*
*/



sensormount();


module extruder_assy(){

sensormount();

}

module sensormount(){
difference(){union(){
import("Sensor_Mount.STL");
translate([90-0.5,94.5,20-5])cube([25,4,17]);
}

translate([0,0,8]){
translate([90-0.5+5,94.5+20,20-1])rotate([90,0,0])cylinder(r=3.7/2,h=50,$fn=30);
translate([90-0.5+5+15,94.5+20,20-1])rotate([90,0,0])cylinder(r=3.7/2,h=50,$fn=30);
translate([90-0.5+5,94.5+1.5,20-1])rotate([90,0,0])cylinder(r=7.5/2,h=3,$fn=30);
translate([90-0.5+5+15,94.5+1.5,20-1])rotate([90,0,0])cylinder(r=7.5/2,h=50,$fn=30);
}
}
}

