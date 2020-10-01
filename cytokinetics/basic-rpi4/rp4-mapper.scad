/*
difference(){
translate([60,30,0])cube([20,70,3]);
for(i=[0:4]){
translate([68,30+7+i*14,-1])#cylinder(r=4.1/2,h=30,$fn=30);
}
}
import("bottom.stl");
*/

import("top.stl");
translate([18,28,0])#cube([40,60,3]);

