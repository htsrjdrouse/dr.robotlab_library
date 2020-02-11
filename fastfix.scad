




//import("BOM_inventory/build5/valvepart_pp.stl");

translate([0,0,8])valve_pp_top();

module valve_pp_top(){
difference(){
union(){
translate([0,0,-2-1.4-1.5+1.2-2+2+1])cylinder(r=13,h=7,$fn=20);
}
translate([0,0,-2-1.4-1.5+1.2-2+2+1])cylinder(r=8.24,h=15,$fn=20);
translate([-30,0,1])rotate([0,90,0])#cylinder(r=3/2,h=59,$fn=20);
translate([0,0,1])rotate([-90,0,0])#cylinder(r=3/2,h=59,$fn=20);
}
}

