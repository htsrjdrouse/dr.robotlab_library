//multichannel_plunger_clamp();



module multichannel_plunger_clamp(){
difference(){
translate([-183-13/2-5,170-13/2,30]){
union(){
translate([0,2+7.25-2,2])rotate([0,0,0])cube([120,13/2+7,4]);
translate([0+41.2,2+7.25-7-3-5,2])rotate([0,0,0])cube([25,10+5,4]);
}
}
translate([-183-13/2-5,170-13/2,30]){
translate([64.7-5-36.15,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
translate([64.7-5-36.15+17.5,14.4-3-0.87-50+8-0.08-5,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=3.7/2, h=200);
for(i=[0:7]){
translate([64.7-5-36.15+17.5-50.75+(i*14),14.4-3-0.87-50+8-0.08+9.75,-55.75])translate([17.25,5.8,-10])translate([-9+15-2,30,23])rotate([0,0,0])cylinder(r=2.7/2, h=200);
}
}
}
}
