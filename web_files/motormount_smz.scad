//motormount_smz();

module motormount_smz(){
difference(){union(){
translate([0+4+5,0,0.5])color("")motormountthin();
translate([0,32,-18])color("")cube([5+5,22,8]);
translate([0,32,-18])color("")cube([5,22,30]);
for(i=[-15.15:-5]){
translate([0-5,32+9,-5+10-5+i])rotate([0,90,0]){cylinder(r=5.7/2,h=10,$fn=30);}
}
}
translate([0,32+9,-5+10])rotate([0,90,0]){cylinder(r=5.7/2,h=20,$fn=30);}
translate([-10,32+9,-5])rotate([0,-90,-90]){cylinder(r=5.7/2,h=200);translate([0,0,13])cylinder(r=9.7/2,h=2);}
}
}



module motormountthin(){
 mmx = 42;
 mmy = 42;
 mmz = 5+3;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 3.7/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy+1,mmposz])
  cube([mmx,mmy-2,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  cylinder(r=motrad, h=9,$fn=30);
  cylinder(r=8.2/2, h=109);
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  }
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-5])  cylinder(r=m3rad, h=50, $fn=30);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-5+4.9])  cylinder(r=10/2, h=3, $fn=30);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-5])  cylinder(r=m3rad, h=50, $fn=30);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-5+4.9])  cylinder(r=10/2, h=3, $fn=30);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5]){  cylinder(r=m3rad, h=90, $fn=30);  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5+4.9]){ for(i=[-7:0]){ translate([0-i,0,0])cylinder(r=10/2, h=3, $fn=30);}  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5+4.9]){  for(i=[-7:0]){ translate([0-i,0,0])cylinder(r=10/2, h=3, $fn=30); }}
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5]){
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5]){
  cylinder(r=m3rad, h=90, $fn=30);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
 }
}


