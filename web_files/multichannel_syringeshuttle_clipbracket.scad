//multichannel_syringeshuttle_clipbracket();

module multichannel_syringeshuttle_clipbracket(){
translate([46.25,-57,300-4])rotate([180,0,90])difference(){
union(){
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3,10+11+10-3-15]);
translate([64.7-5,14.4-3-3,155.75-10])cube([25,15+3+3-9.75-4,10+11+10-3]);
}
translate([65.2+0.75,14.4+7.5,155.75+20-1.5-4])cube([14-1.5,14,24]);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([0,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9,0,-100])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
translate([64.7-5,14.4-3-0.87,155.75])translate([17.25,5.8,-10])translate([-9+15-2-17.5,30,23])rotate([90,0,0])cylinder(r=2.7/2, h=200);
}
}
