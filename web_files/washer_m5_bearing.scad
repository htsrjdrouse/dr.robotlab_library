//washer_m5_bearing();

module washer_m5_bearing(){
difference(){
union(){
cylinder(r=19/2,h=0.7,$fn=30);
cylinder(r=8/2,h=(0.7+0.4+1),$fn=30);
}
translate([0,0,-4])cylinder(r=5.7/2,h=10.7,$fn=30);
}
}

