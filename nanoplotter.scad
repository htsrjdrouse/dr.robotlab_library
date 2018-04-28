include <waste_simple_hinge.scad>
include <dr.robotlab_repstrap.scad>
//include <bearing-bar-clamp.scad>


module pantilt_extrusion_connect(){
difference(){
translate([-8,-24-10,-24])cube([8,40,28]);
translate([-8-10,-13,-18]){translate([18-3.5,0,0])rotate([0,90,0])cylinder(r=9.5/2,h=40);rotate([0,90,0])cylinder(r=4.7/2,h=40);}
translate([-8-10,-13,-3]){translate([18-3.5,0,0])rotate([0,90,0])cylinder(r=9.5/2,h=40);rotate([0,90,0])cylinder(r=4.7/2,h=40);}
translate([-8-10,1,-0]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=40);}
translate([-8-10,1,-20]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=400);}
translate([-8-10,1-30,-0]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=40);}
translate([-8-10,1-30,-20]){translate([9.9,0,0])rotate([0,90,0])cylinder(r=3.7,h=3.6);rotate([0,90,0])cylinder(r=3.7/2,h=400);}
}
}

/*
module connector(w=2.5) {
  translate([1.5, w, 5])
  difference() {
    rotate([90])
      scale([1.7,1])
      cylinder(r=5, h=w);
    rotate([90])
      translate([4,0])
      cylinder(r=1.6, h=w, $fn=7);
    translate([-11.5, -3, -5])
    cube([10,4,10]);
  }
}

module connectors() {
  connector();
  translate([0, 5]) connector();
  translate([0, 10]) connector();
}

*/


module htsrclip2(){
translate([5, 15]) rotate([90]) difference() {
  union(){
  color("blue")cube([10, 10, 15]);
  //translate([0,4.5])
  //#translate([0,10,3])cube([3, 10, 10]);  
  translate([0,-9,3])cube([3, 10, 10]);
  translate([0,-9+10,3+10])cube([3, 10-1, 10]);
  translate([0,-9+10,3+10-20])cube([3, 10-1, 10]); 
  }
 translate([-20,-4.5,8])rotate([90,0,90])cylinder(r=3.7/2,h=200);
  translate([-20,-4.5+10,8+10])rotate([90,0,90])cylinder(r=3.7/2,h=200);
  translate([-20+23,-4.5+10,8+10])rotate([90,0,90])cylinder(r=5.7/2,h=200);
  translate([-20,-4.5+10,8+10-20-1.5])rotate([90,0,90])cylinder(r=3.7/2,h=200);
  translate([-20+23,-4.5+10,8+10-20-1.5])rotate([90,0,90])cylinder(r=5.7/2,h=200);
 //translate([-20,15.5,8])rotate([90,0,90])#cylinder(r=4.7/2,h=200);
}
module base() {
  color("red")cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}





module nanoplotterclip2(){
translate([5, 15]) rotate([90]) difference() {
  union(){
  color("blue")cube([10, 10, 15]);
  //translate([0,4.5])
  //#translate([0,10,3])cube([3, 10, 10]);  
  translate([0,-9,3])cube([3, 10, 10]);
  translate([0,-9+10,3+10])cube([3, 10-1, 10]);
  translate([0,-9+10,3+10-20])cube([3, 10-1, 10]); 
  }
 translate([-20,-4.5,8])rotate([90,0,90])cylinder(r=3.7/2,h=200);
 translate([-20,-4.5+10,8+10])rotate([90,0,90])cylinder(r=3.7/2,h=200);
  #translate([-20+23,-4.5+10,8+10])rotate([90,0,90])cylinder(r=5.7/2,h=200);
  translate([-20,-4.5+10,8+10-20])rotate([90,0,90])cylinder(r=3.7/2,h=200);
  #translate([-20+23,-4.5+10,8+10-20])rotate([90,0,90])cylinder(r=5.7/2,h=200);
 //translate([-20,15.5,8])rotate([90,0,90])#cylinder(r=4.7/2,h=200);
}
module base() {
  color("red")cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}




module clip(){
translate([5, 15]) rotate([90]) difference() {
  union(){
  color("blue")cube([10, 10, 15]);
  //translate([0,4.5])
  translate([0,10,3])cube([3, 10, 10]);  
  translate([0,-9,3])cube([3, 10, 10]);
  }
 translate([-20,-4.5,8])rotate([90,0,90])cylinder(r=4.7/2,h=200);
 translate([-20,15.5,8])rotate([90,0,90])#cylinder(r=4.7/2,h=200);
}
module base() {
  color("red")cube([10,2.5,3]);
  translate([8,0])
    cube([2,2.5,5]);
}
translate([15, 1.5]) {
  base();
  translate([0,5]) base();
  translate([0,10]) base();
  connectors();
}
}



module nanoplotter_breadboard4_head(){
difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,35.5-10])cube([7,95,40]);
}
//translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){#cylinder(r=9.9/2,h=7.8);}
//translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
}

translate([0-2,-7.5+2.8,16+13-6]){
translate([-3.1,-34+22.27-15,-17.5+35 ])rotate([90,0,90]){cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
translate([-3.1,-11.725-15,-17.5+1 ])rotate([90,0,90]){translate([0,0,0])cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
translate([-3.1,-11.725-15,-17.5+0.5 ])rotate([90,0,90]){translate([0,0,0])cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
translate([-3.1,-11.725-15,-17.5+0 ])rotate([90,0,90]){translate([0,0,0])cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
translate([-3.1,-11.725-15,-17.5+1.5 ])rotate([90,0,90]){translate([0,0,0])cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
translate([-3.1,-11.725-15,-17.5+2 ])rotate([90,0,90]){translate([0,0,0])cylinder(r=8/2,h=3);cylinder(r=3.5/2,h=500);}
}
for(i=[0:67]){
translate([0-10,26-5-30,-20+i])rotate([0,90,0])cylinder(r=5/2,h=20);
translate([0-10+12,26-5-30,-20+i])rotate([0,90,0])cylinder(r=12/2,h=20);
}
}
}
















module nanoplotter_breadboard3(){
difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,35.5-10])cube([7,95,40]);
}
translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
}
translate([-3.1,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
for(i=[0:67]){
translate([0-10,26-5-30,-20+i])rotate([0,90,0])cylinder(r=5/2,h=20);
}
}
}



module nanoplotter_breadboard2(){

difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
translate([-3,0-25,35.5-10])cube([7,95,40]);
}
translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
}
translate([-3.1,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}




for (x = [-2,0,1,4,5]) {
for (z = [2,3,4,5]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [-1,6]) {
for (z = [2,3,4]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){#cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}


for (x = [2,3]) {
for (z = [2,3,4,5]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

/*
for (x = [5]) {
for (z = [5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
*/
//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}

}





module nanoplotter_breadboard(){

difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
color("green")translate([-3,0-25,35.5])cube([7,95,30]);
}
color("blue")#translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
color("blue")translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
}
#translate([-3.1,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
for (x = [-2,0,1,4,5]) {
for (z = [3,4,5]) {
    #translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

for (x = [-1,6]) {
for (z = [3,4]) {
    #translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}


for (x = [2,3]) {
for (z = [3,4,5]) {
    translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

/*
for (x = [5]) {
for (z = [5,7]) {
    translate([0,26-(z*10),30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}
*/
//translate([-30,30+1,6.5-3.06+2-10])rotate([0,90,0]){translate([-10,-15,30]){rotate([0,0,90])cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}

}



module nanoplotter_breadboard_pantilt(){

difference(){
union(){
//translate([-3,-1+5,0])cube([25-13,35-10,10]);
//color("red")translate([-3,-1+5-42,-22.5])cube([25-13,30,10]);
translate([4,16.5,-7])rotate([90,0,0]){
translate([-4,-3,-15])
union(){
color("green")translate([-3,0-25-2,35.5-20])cube([7,95+10,70]);

}
}
/*
color("blue")#translate([-3.1+7.3,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=9.9/2,h=10.53);}
color("blue")translate([-3.1+7.3,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=9.9/2,h=7.8);}
*/
}


/*
#translate([-3.1,-11.725-15,-17.5-17.5+7.05 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
translate([-3.1,-34+22.27-15,-17.5+56.55 ])rotate([90,0,90]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=500);}
*/

for (x = [-3,-2,-1,0,1,1,2,3,4,5,6]) {
for (z = [1,2,3,4,5,6,7]) {
    #translate([0,26-(z*10)-5,30-(x*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
}

}

}

