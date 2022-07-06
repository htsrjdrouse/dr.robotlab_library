module washbowl_8tip_drypad(){
 difference(){
  union(){ 
  translate([-4-10,-5,0])cube([35+4+10,100,5]);
  color("white")translate([-4-10,-5,2])cube([35+4+10-10,100,5]);
  }
  translate([-5,0,0]){
  translate([18-4-9-3,9,-0.1])cube([5,70,6]);
  translate([18-4-3,9,-0.1])cube([5,70,6]);
  translate([18+5-3,9,-0.1])cube([5,70,6]);
  }
  translate([31,14,-50])cylinder(r=4.7/2,h=200);
  translate([31,14,5-2.9])cylinder(r=10/2,h=3);
  translate([31,14+66,-50])cylinder(r=4.7/2,h=200);
  translate([31,14+66,5-2.9])cylinder(r=11/2,h=3);
 }
}
