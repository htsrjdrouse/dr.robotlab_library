module smallsyringe_valvesupportmodule_plate(){
translate([45,15.5,0])difference(){
union(){
translate([0,0,-70])difference(){union(){
translate([-20-1.6+0.9,-32.5+5+17.5,83])cube([5,20+15,53+7]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5])cube([5,20+15,15]);
translate([-20-1.6+0.9,-32.5+5+17.5,83+5+39+8.5])cube([5,20,22]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5+39+15.5])cube([5,20+15,15]);}

translate([0,0,-70])translate([-20-1.6+0.9-0.1,-32.5+5+17.5-0.1,83+130])cube([5.5,20,53+7]);
translate([-30,0+16,90+10])rotate([90,0,90]){cylinder(r=3.7/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+16,90+40])rotate([90,0,90]){cylinder(r=3.7/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0,90+12])rotate([90,0,90])cylinder(r=5.6/2,h=20,$fn=30);
translate([-30,0,90+38])rotate([90,0,90])cylinder(r=5.6/2,h=20,$fn=30);
translate([-30,0+20-5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=3/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=3/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20-5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=3/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=3/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
}
}
translate([18.5+6,0,0])cylinder(r=9.5/2,h=200);
translate([0+18.5+6,0,0])difference(){union(){translate([0,0,33])cylinder(h = 2.5, d1 = 10, d2 = 16.5, center = false);translate([0,0,32+3])cylinder(r=16.5/2,h=25);}cylinder(r=9.5/2,h=200);}
}
}
