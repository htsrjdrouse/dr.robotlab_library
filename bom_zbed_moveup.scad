
//right here base zbed modules
module zbed_assy_wider(z){
moving_zbed_parts();
translate([-80,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([-80+611,315-122,172-156])rotate([0,0,0])tslot20(272);
translate([480,0,0])mirror([1,0,0])moving_zbed_parts();
translate([0,0,z]){
zbed_smz_wider();
translate([0,0,z-70])multichannel_laser_zbed_wider_deeper(98);
}
}



module zbed_smz_wider(){
 translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_riser();
 translate([35+370+120,134-49,105])color("")extrusion_riser();
 translate([0,100,0]){
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-18,105])color("")extrusion_riser();
 translate([35+370+120,134-18,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider(0,0);
 }
}


//zbed_smz();
//zbed_smz_components_wider(0,0);


//this is where I need to modify
module zbed_smz(){
 translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35,134,105])color("")extrusion_riser();
 translate([35+370,134,105])color("")extrusion_riser();
 translate([0,100,0]){
 translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35,134,105])color("")extrusion_riser();
 translate([35+370,134,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 zbed_smz_components_wider(0,0);
 translate([0,-340+1,293.5])rotate([180,0,0])zbed_smz_components_wider(0,10);
 }
 //color("")translate([25,130+120,118+10-23])rotate([0,-90,0])z_encoder_clamp_wiper();
 //color("")translate([25+380,130+120+25,118+10-23+3])rotate([0,-90,180])z_encoder_clamp_wiper();
}








module zbed_assy(z){
translate([0,0,z]){
zbed_smz();
laser_zbed(144);
//translate([0,0,-10])laser_zbed(144);
//translate([25,130+120,118+10])rotate([0,-90,0])z_encoder_clamp_wiper();
}
}


module moving_zbed_parts(){
translate([-54,169,90-20])rotate([0,0,90]){
//begin 3d printed stuff
translate([50,80-30,180+20])rotate([0,180,180])color("")bearing_mount_smz();
translate([50-0,40+10,10])mirror([0,1,0])motormount_smz();
translate([74.5,315-305,172-180])rotate([0,0,0])nema17();
//end 3d printed stuff
}
translate([10-39-35,102+107+35,75]){color("silver")cylinder(r=8/2,h=208);}
translate([-45,1.5,0]){
translate([10+509-509-29,102-1.5+142-76,20]){color("silver")cylinder(r=8.7/2,h=290-20);}
translate([-54-29,169-1.5+142-76,130]){
translate([40+44,-40,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,-90-4,-114+275])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
translate([-45,-0.-0.5,0]){
translate([10-29,322-1.5,20]){color("silver")cylinder(r=8.7/2,h=290-20);}
translate([-54-29,169-1.5,130]){
translate([40+44,180,-114])rotate([0,0,180])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
translate([84,180-54,-114+275])rotate([0,180,0])color("")clamp_bottom_simple_m8_smoothrodholder_for_z();
}
}
}

module bearing_mount_smz(){
translate([5,13,-18])basic_bearingholder();
difference(){union(){
translate([0,32,-18])cube([5,22,30]);
translate([-17,32+19,-18])cube([22,5,20]);
}
translate([0,32+9,-5+10])rotate([0,90,0]){cylinder(r=5.7/2,h=20);translate([0,0,5-2+2])cylinder(r=9.7/2,h=2);}
translate([-10,32+9,-5])rotate([0,-90,-90]){cylinder(r=5.7/2,h=200);translate([0,0,13+2])cylinder(r=9.7/2,h=2);}
}
}

module basic_bearingholder(){
difference(){
union(){
translate([20,27,0])cylinder(r=28/2,h=8);
translate([0,19,0])cube([14,20,8]);
}
translate([20,27,1+4])cylinder(r=22.4/2,h=7.1/2);
//translate([20,27,-0.1])cylinder(r=14/2,h=2);
translate([20,27,-0.1])cylinder(r=8.7/2,h=200);
}
}


module motormount_smz(){
difference(){union(){
translate([0+4,0,0])color("")motormountthin();
translate([0,32,-18])color("")cube([5,22,30]);
translate([-17,32+19,-18])color("")cube([22,5,20]);
translate([21+4,40,-18])shorternema17();
}
translate([0,32+9,-5+10])rotate([0,90,0]){cylinder(r=5.7/2,h=20);translate([0,0,5-2])cylinder(r=9.7/2,h=2);}
translate([-10,32+9,-5])rotate([0,-90,-90]){cylinder(r=5.7/2,h=200);translate([0,0,13])cylinder(r=9.7/2,h=2);}
}
}


module motormountthin(){
 mmx = 42;
 mmy = 42;
 mmz = 5;
 mmposx = 0;
 mmposy = 19;
 mmposz = -18.5;
 m6rad = 6.5/2;
 m3rad = 3.7/2;
 motrad = 11.5;
 //motrad = 4;
 difference(){
  translate([mmposx,mmposy,mmposz])
  cube([mmx,mmy,mmz]);
  translate([mmposx+mmx/2,mmposy+mmy/2,mmposz]){
  cylinder(r=motrad, h=9);
  cylinder(r=8.2/2, h=109);
  translate([0,0,-100])
  cylinder(r=4.3, h=400);
  }
  //m3 motor screws
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2-15.5,mmposz-5])
  cylinder(r=m3rad, h=50);
  translate([mmposx+mmx/2-15.5,mmposy+mmy/2+15.5,mmposz-5])
  cylinder(r=m3rad, h=50);
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2+15.5,mmposz-5]){
  cylinder(r=m3rad, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
  translate([mmposx+mmx/2+15.5-1.5,mmposy+mmy/2-15.5,mmposz-5]){
  cylinder(r=m3rad, h=90);
  translate([0,-2.25,0])
  cube([8,4.5,90]);
  }
 }
}

module clamp_bottom_simple_m8_smoothrodholder_for_z(){
difference(){
translate([20+6,27+8,12])rotate([90,0,0])cylinder(r=10/2,h=16);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=2.8/2,h=25);
translate([20+2.5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
}
difference(){
union(){
translate([20,27,0])cylinder(r=18/2,h=17);
translate([20,27,0])cylinder(r=28/2,h=4);
translate([20,10-1,0])cylinder(r=14/2,h=4);
translate([20,45,0])cylinder(r=14/2,h=4);
translate([21.5,8,0])rotate([0,0,-23])cube([5,14,4]);
translate([13.0,8,0])rotate([0,0,23])cube([5,14,4]);
translate([27,33,0])rotate([0,0,23])cube([5,14,4]);
translate([7.5,33,0])rotate([0,0,-23])cube([5,14,4]);
}
translate([-50,27.2,7.5])rotate([90,0,90])cylinder(r=3/2,h=80);
translate([20,10-1,0-100])cylinder(r=5.7/2,h=180);
translate([20,10-1,4.1])cylinder(r=8.9/2,h=38);
translate([20,45,0-100])cylinder(r=5.7/2,h=180);
translate([20,45,4.1])cylinder(r=8.9/2,h=38);
//translate([20,27,1+5])cylinder(r=22.4/2,h=7);
translate([20,27,-0.1])cylinder(r=8.1/2,h=50);
translate([20+7,27+10,12])rotate([90,0,0])cylinder(r=3/2,h=25);
//translate([20,27,5])rotate([0,0,45])cylinder(r=9/2,h=50,$fn=4);
translate([20+5,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+10,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20+15,27,-0.2])rotate([0,0,45])cylinder(r=11/2,h=50,$fn=4);
translate([20,27,0])cylinder(r=5.7/2,h=2);
translate([28,-27,-20])cube([50,150,100]);
translate([-38,-27,-20])cube([50,150,100]);
}
//translate([0,17.5,-6.5])rotate([90,0,0])m4locknut();
}

//this is where I need to modify
module zbed_smz_wider(){
 translate([15-65,120-50,141.5])rotate([0,90,0])tslot20(582);
 translate([15-65,120+100+35-54,141.5])rotate([0,90,0])tslot20(582);
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-49,105])color("")extrusion_riser();
 translate([35+370+120,134-49,105])color("")extrusion_riser();
 translate([0,100,0]){
 //translate([15,120,141.5])rotate([0,90,0])tslot20(400);
 translate([35-65-14,134-18,105])color("")extrusion_riser();
 translate([35+370+120,134-18,105])color("")extrusion_riser();
 }
 translate([50,60,140])rotate([-90,90,0]){
 translate([0,0+29,0])zbed_smz_components_wider(0,0);
 translate([0,-340+1-29-42,0])mirror([0,1,0])zbed_smz_components_wider(0,0);
 }
}


module zbed_smz_components_wider(shim,modshim){
if (modshim == 0){
 /* the bed levelers */
 translate([0,0+50,7]){
 translate([25-30-6,7.5+7,16.5+17+68])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 translate([25-30-6,7.5+7,16.5+17+218])rotate([0,90,0])color("")slidedeck_adjust_wheel();
 }
 /*
 */
 translate([25-30-6+12,7.5+7+50,16.5+17+7+70])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 translate([25-30-6+12,7.5+7+50,16.5+17+218+7])rotate([0,90,0])color("")slidedeck_adjust_wheel_larger();
 color(""){
 //right here
 translate([30,0,298])rotate([0,180,0]){
 translate([0+30-60+61,0+0,shim-5+modshim+85-85-0.5+83+2.5])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 translate([0+30-60+61,0,214.5+shim+modshim+83-85+83+2.5-66])rotate([180,0,180])color("")lm8uu_smz_glider_wider();
 }
 translate([25,7.5+50,27-2.5+67])rotate([0,-90,0])bed_leveler_better_lm8uu_for_metalversion();
 translate([25,7.5+50,26.5+218+35.5-2.5])rotate([0,-90,0])mirror([1,0,0])bed_leveler_better_lm8uu_for_metalversion();
 //translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed();
 translate([-230+2+486-10-400-46,75.5+7.5,135+28-28+35])rotate([0,90,0])color("")zbedslot_516_smz_zbed_wider();
 translate([25+10,7+15.5+50,55+187.8])rotate([180,0,0])color("silver") left_zbed_connector_bar_metal();
 }
}
}


module slidedeck_adjust_wheel_larger(){
//for leveling bed works with bed level
difference(){
cylinder(r=10,h=3);
//cylinder(r=10,h=5);
translate([0,0,0]){cylinder(r=2.8/2,h=80);}
//translate([0,0,2])cylinder(r=6.0/2,h=3.5,$fn=6);}
}
}


module slidedeck_adjust_wheel(){
//for leveling bed works with bed level
difference(){
//cylinder(r=10,h=5);
cylinder(r=5,h=5);
translate([0,0,0]){cylinder(r=2.8/2,h=80);}
//translate([0,0,2])cylinder(r=6.0/2,h=3.5,$fn=6);}
}
}

module lm8uu_smz_glider_wider(){
 translate([-19+35,40,42])difference(){
  union(){
  translate([20-4-6,-35+51,-20])cube([10,18,40]);
  translate([20-10,-35+60,-10+6])cube([10,63-60,8]);
  translate([-10,50,-4.7])cube([30,20,10]);
  for(i=[0:4]){
  translate([15.,50+i,-9-3])cylinder(r=10/2,h=19+5);
  translate([-5.,50+i,-9-3])cylinder(r=10/2,h=19+5);
  }
  difference(){
   translate([20-10,-35+50+7,-10+0])cube([10,18-4.5,20]);
  }
  translate([20-10-10-28+14,-35+30+5+45,-0])rotate([0,90,0])cylinder(r=25/2,h=48-14);
  }
  translate([0-28,45,0]){
   translate([0,0,0])rotate([0,90,-0])cylinder(r=8.7/2,h=60);
   rotate([0,90,0])cylinder(r=15.4/2,h=60);
   translate([0,0,-4.7])cube([50,50,10+0]);
  }
  translate([15.-20,55,-15])cylinder(r=3/2,h=30);
  translate([15.-0,55,-15])cylinder(r=3/2,h=30);
  translate([10-5-60,-25-0+50,12.5])rotate([0,90,0]){translate([0,0,0])cylinder(r=4.7/2,h=240);}
  translate([10-5-5-60,-25+50,-12.5])rotate([0,90,0]){cylinder(r=4.7/2,h=240);}
 }
}


module bed_leveler_better_lm8uu_for_metalversion(){
difference(){
color("silver")union(){
cube([35,15,6]);
cube([25+10+25+4-27,15,6]);
//translate([25-7.5,7.5,0])cylinder(r=15/2,h=11+5);
translate([35/2,7.5,0])cylinder(r=15/2,h=11+5);
}
translate([5,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5,7.5,-1])cylinder(r=3.8/2,h=20);
translate([5+25,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([35/2,7.5,6+5])cylinder(r=10/2,h=11);
translate([35/2,7.5,-1+0])cylinder(r=2.8/2,h=300);
translate([35/2,7.5,-0.1])cylinder(r=9.5/2,h=4);
/*
translate([5+53,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+52,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+51,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+50,7.5,-1-50])cylinder(r=3.8/2,h=200);
translate([5+49,7.5,-1-50])cylinder(r=3.8/2,h=200);
*/
}
//for display
translate([35/2,7.5,-1+0])color("silver")cylinder(r=2.8/2,h=40);
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
  translate([18,2,33])rotate([0,180,0])pololu_screw_nobacklash();
  
  //translate([-20-15,-4.5,23])
  translate([-24+7+4,-23/2+6,25])
  difference(){
   union(){
   translate([-1,0,0])cube([28-3,15,8]);
   //translate([-1-25+20,0,0-5])cube([28-3+22-20,15,13]);
   translate([15,13,0]) rotate([0,0,-30])cube([9,10,8]);
   translate([19,-7,0]) rotate([0,0,30])cube([10,10,8]);
   translate([0,-5-2.5,0])
   translate([-1-40+40,0,0])cube([28-4-3+40-40,30,8]);
   }
   translate([31,7.5,-22])cylinder(r=31/2,h=30);
   translate([0,-0.5,0]){
   translate([45*0.25-0.75-6+9-2.5-44+40,13/2+9-5+2+4,-20]){
   cylinder(r=3.8/2,h=100);}//translate([0,0,2])cylinder(r=9.7/2,h=5);
   translate([45*0.25-0.75-6+9-2.5-44+40,13/2-5+2-3,-20]){cylinder(r=3.8/2,h=100);} //translate([0,0,2])cylinder(r=9.7/2,h=5);
   }
  }
  }
}

module pololu_screw_nobacklash(){
difference(){
cylinder(r=31/2,h=23);
translate([0,0,5])cylinder(r1=23/2,r2=22.5/2,h=19);
translate([0,0,5+10])cylinder(r=22.5/2,h=19);
translate([0,0,-0.2])cylinder(r=11.5/2,h=25);
translate([0,0,-0.2])cylinder(r=8.7/2,h=205);
translate([0,-8,-0.2])cylinder(r=3.5/2,h=25);
translate([0,8,-0.2])cylinder(r=3.5/2,h=25);
translate([-8,0,-0.2])cylinder(r=3.5/2,h=25);
translate([8,0,-0.2])cylinder(r=3.5/2,h=25);
}
}

module left_zbed_connector_bar_metal(){
  difference(){
  union(){
  translate([0,-2,-77.])cube([5,15+4,350]);
  //translate([0,-6,9.5])cube([5,18,20]);
  //translate([0,-6,156-10.5])cube([5,18,20]);
  }
  //translate([-35,7.5,17.5+1.4])rotate([0,90,0])cylinder(r=2.8/2,h=70);
  translate([0+0,0+2.5,5.8-35]){
  for(i=[-2:1]){
  translate([-35,7.5+i,9.5+156/2-8])rotate([0,90,0])cylinder(r=3.8/2,h=180);
  translate([-35,7.5+i,9.5+156/2+8])rotate([0,90,0])cylinder(r=3.8/2,h=180);
  }
  }
  translate([-35-2,7.5,9.5+6.75+50+101.5])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50-185])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([-35-2,7.5,9.5+6.75+50+101.5+50-185+54])rotate([0,90,0])cylinder(r=3.8/2,h=70);
  translate([0,0,2.5]){
  for(i=[-2:2]){
   translate([-35-2,7.5+i,9.5+6.75-23.5])rotate([0,90,0])cylinder(r=3.8/2,h=170);
   translate([-35-2,7.5+i,9.5+6.75-23.5-25])rotate([0,90,0])cylinder(r=3.8/2,h=170);
  }
  translate([0,0,218-66]){
  for(i=[-2:2]){
   translate([-35-2,7.5+i,9.5+6.75-23.5])rotate([0,90,0])cylinder(r=3.8/2,h=170);
   translate([-35-2,7.5+i,9.5+6.75-23.5-25])rotate([0,90,0])cylinder(r=3.8/2,h=170);
  }
 }
 }
 }
}


module laser_zbed(zz){

//translate([0,0,zz-144])import("laser_zbed_144.stl");


translate([30,30,zz])
difference(){
//translate([-8,0,0])color("lightgray")cube([397,350,3]);
translate([-8+6.5-0.25,0,0])color("lightgray")cube([383.5,350,3]);
translate([227,100,-0.1])cube([100+6,100-10,5]);
translate([45-8,285-65,-0.1])cube([180+100+20+8,160,5]);
translate([45-5,65-65-0.1,-0.1])cube([84,100,5]);

lzd = 3.8;

translate([5,10,-40]){
for(i=[0]){
translate([i*25,0,0])cylinder(r=lzd/2,h=200);
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80,-40]){
for(i=[0:14]){
if(i==1){
for(j=[-7:30]){
translate([i*25,-30+j+10,0])cylinder(r=lzd/2,h=200);
translate([5*25,-30+j+10,0])cylinder(r=lzd/2,h=200);
translate([5*25,-30+j+10-3,0])cylinder(r=lzd/2,h=200);
}
}else{
translate([i*25,-30,0])cylinder(r=lzd/2,h=200);
}
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80+25,-40]){
for(i=[0:8]){
if(i==7){
translate([i*25,15,0])cylinder(r=(lzd+1)/2,h=200);
}else{
translate([i*25,15,0])cylinder(r=lzd/2,h=200);
}
}
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5,80+25+50,-40]){
for(i=[1:8]){
if(i==7){
translate([i*25,15,0])cylinder(r=(lzd+1)/2,h=200);
}else{
translate([i*25,15,0])cylinder(r=lzd/2,h=200);
}
}

for(i=[-0.5,0,0.5]){
translate([15*25-5-370,16.5-97.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+120.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+120.5+i+12,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i+54,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i+54+30,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-370,16.5+16+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5-5.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5+16-5.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5-97.5-2.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
translate([15*25-5-1,16.5+120.5-2.5+i,0])cylinder(r=(lzd+1.5)/2,h=200);
}
//translate([15*25-5-1,16.5-97.5-14.5+25,0])cylinder(r=(lzd+1.5)/2,h=200);
//translate([15*25-5-1,16.5+16-6.,0])cylinder(r=(lzd+1.5)/2,h=200);
//translate([15*25-5-1,16.5+16-6.-16,0])cylinder(r=(lzd+1.5)/2,h=200);

}
translate([5,80+193,-40]){
for(i=[0]){
//translate([i*25+10,-30,0])cylinder(r=lzd/2,h=200);
translate([i*25+25-10,60-0,0])cylinder(r=lzd/2,h=200);
translate([i*25+25-10,60-50,0])cylinder(r=lzd/2,h=200);
}
translate([15*25-30+10,60,0])cylinder(r=lzd/2,h=200);
translate([15*25-30+10,60-50,0])cylinder(r=lzd/2,h=200);
//translate([15*25-5,0-50,0])cylinder(r=lzd/2,h=200);
//translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
}
translate([5-15.9,80+193-56.5,-40]){
translate([15*25-5,0,0])cylinder(r=lzd/2,h=200);
translate([15*25-5-35,-10,0])cylinder(r=lzd/2,h=200);
translate([15*25-5-125,-10,0])cylinder(r=lzd/2,h=200);
}
translate([14*25-7,130-4,0])cylinder(r=lzd/2,h=200);
translate([14*25-7,130-17,0])cylinder(r=lzd/2,h=200);
translate([14*25,130+40,0])cylinder(r=lzd/2,h=200);

translate([14*25-3,130-17-30,0])cylinder(r=(lzd)/2,h=200);
translate([14*25-3,130-17-80,0])cylinder(r=lzd/2,h=200);
translate([14*25-3,130-17-105,0])cylinder(r=(lzd)/2,h=200);
translate([14*25-3-30,130-17-105,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-30-80,130-17-105,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-80,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-35,0])cylinder(r=lzd/2,h=200);
translate([14*25-3-141-2,130-17-12,0])cylinder(r=lzd/2,h=200);


translate([-30,-30,0]){
translate([46+5,70-14+10,-200])cylinder(r=2.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=2.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=2.8/2,h=500);
translate([219,-0,282])rotate([0,180,0]){
translate([46+5,70-14+10,144-5-25])cylinder(r=2.8/2,h=500);
translate([46+5,70-14+80,144-5-25])cylinder(r=2.8/2,h=500);
translate([46+5+25,70-14+86,144-5-25])cylinder(r=2.8/2,h=500);
}
}
translate([8-30,357,282])rotate([0,180,180]){
translate([46+5,70-14+10,-200])cylinder(r=3.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=3.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=3.8/2,h=500);
}
translate([219-50+263-30,357,0])rotate([0,0,180]){
translate([46+5,70-14+10,-200])cylinder(r=3.8/2,h=500);
translate([46+5,70-14+80,-200])cylinder(r=3.8/2,h=500);
translate([46+5+25,70-14+86,-200])cylinder(r=3.8/2,h=500);
}
}

/*
*/
}




module multichannel_laser_zbed_wider_deeper(zz){
translate([30-79,30,zz+3])
translate([-8+6.5-0.25+100,0+50,4])color("red")cube([400,200,3]);
translate([30-79,30,zz+3])
difference(){
//translate([-8,0,0])color("lightgray")cube([397,350,3]);
translate([-8+6.5-0.25,0+20-45,0])color("lightgray")cube([383.5+158+42,350-20+60,3]);
//translate([227,100,-0.1])cube([100+6,100-10,5]);
translate([45-8,285-65+60,-0.1])cube([180+100+20+8+158+42,160,5]);
translate([45-8,285-65-340+9,-0.1])cube([180+100+20+8+158+42,160,5]);
//translate([45-5,65-65-0.1,-0.1])cube([84,100,5]);
lzd = 3.2;
for(i=[-3:3]){
translate([5,74.5+i-3.5+67,-40])cylinder(r=(lzd+1)/2,h=200);
translate([5,74.5+218+i-3.5,-40])cylinder(r=(lzd+1)/2,h=200);
translate([369+158+42,0,0]){
translate([5,74.5+i-3.5+67,-40])cylinder(r=(lzd+1)/2,h=200);
translate([5,74.5+218+i-3.5,-40])cylinder(r=(lzd+1)/2,h=200);
}
}
}
}
























