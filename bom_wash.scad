

module imagingblock(){
 translate([-40,42,18-4])rotate([90,0,90])color("grey")import("arducam_case.stl"); 
 //color("lightblue")cube([22,(79*2),27]);
 difference(){
 color("coral")union(){
 translate([-3-33,-3+20,-3])cube([40+8,(15),24]);
 translate([-3-33,-3+65,-3])cube([40+8,(15),24]);
 translate([-3-20,-3,-3])cube([40+8,((77*1.2)+8),40]);
 translate([-51+19,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=(13.5+16)/2,h=40,$fn=30);
 }
 //cube([22,(79*2),27]);
 for(i=[0:7]){
 translate([11,14+i*9,23])cylinder(r=5.5/2,h=50,$fn=30);
 }
 translate([-51,24,13])rotate([0,90,0])cylinder(r=5.5/2,h=30,$fn=30);
 translate([-51,24+45/2+0.4,22])rotate([0,90,0])cylinder(r=13.5/2,h=40,$fn=30);
 translate([-51,24+45,13])rotate([0,90,0])cylinder(r=5.5/2,h=30,$fn=30);


 }
}





module plugblock(){
 color("lightblue")cube([22,(79*2),27]);
 difference(){
 union(){
 translate([-3,-3,-3])cube([20+8,((77*2)+8),24]);
 }
 cube([22,(79*2),27]);
}
}






module thermoblock(){
 actual_thermoblock();
 difference(){
 union(){
 translate([-3,-3,-3])cube([20+8,77+8,24]);
 //translate([-9,-3,-3])cube([40,15,7]);
 //translate([-9,82-15,-3])cube([40,15,7]);
 }
 cube([22,79,27]);
 translate([11,7+2.5,-5])cylinder(r=4/2,h=50,$fn=30);
 translate([11,38+1.5,-5])cylinder(r=4/2,h=50,$fn=30);
 translate([24,3,1])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
 translate([24,74,1])rotate([0,90,0])cylinder(r=2.8/2,h=50,$fn=30);
 
 translate([-24,3,1])rotate([0,90,0])cylinder(r=2.8/2,h=22,$fn=30);
 translate([-24,74,1])rotate([0,90,0])cylinder(r=2.8/2,h=22,$fn=30);
 for(i=[-3:3]){
 translate([11-i,20+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 translate([11-i,55+1.5,-5])cylinder(r=5/2,h=50,$fn=30);
 }
 }
}


module actual_thermoblock(){
 color("silver")difference(){
  cube([22,79,27]);
  translate([11,8,23])
  for(i=[0:7]){
   translate([0,i*9,0])cylinder(r=3/2,h=40,$fn=30);
  }
 }
}


module multichannel_tipremoval(){
translate([-148,85,-150])difference(){
union(){
translate([-75.5-5+22-5-34+12,-40,0])cube([29+36-12,90,5]);
translate([-75.5-5+22-5-34+12+10,-40+2,-1])color("white")cube([29+36-12-20,90-4,2]);
translate([-75.5-5+45-7,-40-10,0])cube([20,90+20,5+5]);
translate([-75.5-5+45-7-20-10,-40-10-10+20,0])cube([30,90,5+5]);
}
//translate([-30-30+6,-20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
//translate([-30-30+6,20,-20])
//translate([-44-(a*10),-40+5,-1])cylinder(r=6/2,h=50);
translate([-33,-66,-20])rotate([0,0,90]){
//actually c-to-c spacing on prusa is 8.723 not 9mm
translate([0,-31+65-12,0])
for(j=[0:7]){
for(k=[0:3]){
 //The is for the Rainin LTS tip without the filter
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([7,25/2-8,-0.1])cylinder(r=7.8/2,h=40);
 //The is for the Rainin LTS tip with this is too tight
 //translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.5,25/2-8,-0.1])cylinder(r=6.5/2,h=40);
 translate([19+7+(j*9)+5+2,2.5-10+33-(k*1),2])translate([6.8,25/2-8,-0.1])cylinder(r=7/2,h=40);
}}
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,14])cylinder(r=5.7/2,h=240);
translate([19+7,2.5-10,2])translate([7.5-10,25/2-8,24])cylinder(r=10/2,h=240);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,14])cylinder(r=5.7/2,h=40);
translate([19+7+37,2.5-10,2])translate([7.5,25/2-8,24])cylinder(r=10/2,h=40);
translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,14])cylinder(r=5.7/2,h=240);
translate([19+7+75,2.5-10,2])translate([7.5+10,25/2-8,24])cylinder(r=10/2,h=240);
}
}
}





module washbowl_8tip_base(){
 difference(){
  union(){
  translate([-1.5-2,0-2,0])cube([35+4+2,90+3,18]);
  translate([-13,7,0])cube([13,13,18]);
  translate([-13,7+66,0])cube([13,13,18]);
  }
  translate([-6-1.5,14,5])cylinder(r=3.8/2,h=30);
  translate([-6-1.5,14+66,5])cylinder(r=3.8/2,h=30);
  /*
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=13);
   //translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
  */
  //translate([18,9+4,3])cube([8,70,6]);
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


module washbowl_8tip(){
 difference(){
  union(){
translate([-3,-3,0])cube([35+6,90+6,5]);
translate([55,32,10])rotate([0,180,-90])difference(){
translate([0,-21,5])cube([25,20+13+30,5]);
translate([0,3+30,0])for(i=[0:15]){
translate([6,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
translate([19,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
}
}
  }
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=10);
   translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
  translate([18,9,-0.1])cube([8,70,6]);
  translate([35/2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35/2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35/2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35/2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,90-3.5,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,90-3.5,2])cylinder(r=6.5/2,h=3.1);
  translate([35-2,90/2,-0.1])cylinder(r=3.7/2,h=10);
  translate([35-2,90/2,2])cylinder(r=6.5/2,h=3.1);
  translate([2,90/2,-0.1])cylinder(r=3.7/2,h=10);
  translate([2,90/2,2])cylinder(r=6.5/2,h=3.1);
 }
}


module washbowl_8tip_drypad(){
 difference(){
  union(){ 
  translate([-4,0,0])cube([35+4,90,5]);
/*
translate([55,32,10])rotate([0,180,-90])difference(){
translate([0,-21,5])cube([25,20+13+30,5]);
translate([0,3+30,0])for(i=[0:15]){
translate([6,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
translate([19,-13,5-3]){translate([0,i,-2])cylinder(r=4.7/2,h=10+6);}
}
}
*/
  }
 
 /*
  for(i=[0:7]){
   translate([11,(i*9)+13,-0.1])cylinder(r=5/2,h=10);
   translate([11,(i*9)+11.5,4])rotate([0,25,0])cube([10,3,5]);
  }
 */
  translate([18-4-9-3,9,-0.1])cube([5,70,6]);
  translate([18-4-3,9,-0.1])cube([5,70,6]);
  translate([18+5-3,9,-0.1])cube([5,70,6]);
  translate([31,14,-50])cylinder(r=4.7/2,h=200);
  translate([31,14,5-2.9])cylinder(r=10/2,h=3);
  translate([31,14+66,-50])cylinder(r=4.7/2,h=200);
  translate([31,14+66,5-2.9])cylinder(r=11/2,h=3);
 }
}





