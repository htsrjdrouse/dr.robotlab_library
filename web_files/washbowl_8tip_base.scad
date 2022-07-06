module washbowl_8tip_base(){
 difference(){
  union(){
  translate([-1.5-2,0-2,0])cube([35+4+2,90+3,18]);
  translate([-13,7,0])cube([13,13,18]);
  translate([-13,7+66,0])cube([13,13,18]);
  }
  translate([-6-1.5,14,5])cylinder(r=3.8/2,h=30);
  translate([-6-1.5,14+66,5])cylinder(r=3.8/2,h=30);
  translate([18,9+4-4,6])cube([10,73,20]);
  translate([18+2.5,9+4-4,6+1])rotate([-8,0,0])cube([5,73/2,20]);
  translate([18+2.5,9+4-4+73/2,6-4])rotate([8,0,0])cube([5,73/2,20]);
  translate([18-12.5,9+4-4,3])cube([9,10,20]);
  translate([18-12.5,9+4-4+63,3])cube([9,10,20]);
  translate([18-12.5+2,9+4-4,3])cube([7,73,20]);
  translate([35/2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35/2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,90-3.5,3-20])cylinder(r=3.7/2,h=40);
  translate([35-2,90/2,3-20])cylinder(r=3.7/2,h=40);
  translate([2,90/2,3-20])cylinder(r=3.7/2,h=40);
  translate([35/2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35/2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,90-3.5,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-2,90/2,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([2,90/2,3-25-10])cylinder(r=6.7/2,h=40,$fn=6);
  translate([35-12,90/2,-1])cylinder(r=6.8/2,h=20);
  translate([35-25,90/2-40+10,10])rotate([90,90,0])cylinder(r=6.8/2,h=40);
  translate([35-25,90/2-40+10+80+18,10])rotate([90,90,0])cylinder(r=6.8/2,h=40);
 }
}
