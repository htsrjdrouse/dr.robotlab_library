//zbed_smz_components_wider_threadedrod(0,0);


module zbed_smz_components_wider_threadedrod(shim,modshim){
if (modshim == 0){
 color(""){
 //right here
 translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed_wider();
 }
}
}


module zbedslot_516_smz_zbed_wider(){
  //CornerscadB dimensions
  cbx = 45;
  cby = 19;
  cbz = 5;
  //bed
  bl = 275;
  //tslot dimensions
  tx = 200;
  ctx = 380;
  ty = 20;
  translate([-12,-14.5,200])  rotate([0,0,90])
  {
  difference(){
  translate([18,2,33])rotate([0,180,0])pololu_screw_nobacklash();
  translate([-21+1,2-18,-25])cube([30,35,50]);
  }
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   translate([-1+3,0,0])cube([28-3-6,15,8]);
   translate([0,-5-2.5,0])
   translate([-1-40+40+3-17+17-5,5,0])cube([28-4-3+40-40-3+17-17+5,30-10,8]);
   }
   translate([16.5-18+17,-2,0]){
   for(i=[-7:6]){
   translate([-1-40+36-0-1+i,0+30-20,1.5-20])rotate([0,0,0])cylinder(r=3.2/2,h=160,$fn=30);
   translate([-1-40+36-0-1+i,0+30-20,1.5-1.5+4])rotate([0,0,0])cylinder(r=8/2,h=30,$fn=30);
   }
   }
   translate([31,7.5,-22])cylinder(r=31/2,h=30);
  }
  }
}


module pololu_screw_nobacklash(){
difference(){
union(){
cylinder(r=31/2,h=23);
}
translate([0,0,5])cylinder(r1=23/2,r2=23/2,h=3.1);
translate([0,0,5])cylinder(r1=15/2,r2=15/2,h=19);
translate([0,0,-0.2])cylinder(r=11.5/2,h=25);
translate([0,0,-0.2])cylinder(r=8.7/2,h=205);
translate([0,-8,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([0,8,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([-8,0,-0.2])cylinder(r=2.8/2,h=15,$fn=30);
translate([8,0,-0.2])cylinder(r=2.8/2,h=6,$fn=30);
translate([0,-11,5])cylinder(r=2.8/2,h=35,$fn=30);
translate([0,11,5])cylinder(r=2.8/2,h=35,$fn=30);
}
}



