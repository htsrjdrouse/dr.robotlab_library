//motormount_screws();

module motormount_screws(){
 mmx = 42;
 mmy = 42;
 mmz = 8.5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 4.5/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx-1,mmposy,mmposz])
  cube([mmx+1,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  cylinder(r=motrad, h=10);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz-0.1])
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=9);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-0.1])
  translate([0,-2,0])
  cube([8,4.5,90]);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  cylinder(r=m3rad, h=90);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-0.1])
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  translate([-60,32,-14.5])rotate([0,90,0])cylinder(r=2.7/2,h=80);
  translate([-60,32+14,-14.5])rotate([0,90,0])cylinder(r=2.7/2,h=80);
  translate([-60,32,-14.5])rotate([0,90,0])cylinder(r=8/2,h=56);
  translate([-60,32+14,-14.5])rotate([0,90,0])cylinder(r=8/2,h=56);
 }
}
