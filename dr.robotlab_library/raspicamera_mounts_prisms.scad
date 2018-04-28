///////////////////////////////////////////////////////////////////////
//
// Internal support for the official Raspberry Camera
// Mounts to a box with two screw, you still need to cut a hole in it ;)
//
///////////////////////////////////////////////////////////////////////
//
// CC-BY-NC 2013 jeremie.francois@gmail.com
// http://www.thingiverse.com/thing:213207
// http://www.tridimake.com
//

include <raspi_camera_case.scad>

//raspicamera_assy();

//raspiholder();
//pcb_scaffold();


module raspicamera_assy(){
//HERE IS THE BEAUTIFUL RASPICAMERA (raspicamera) ASSEMBLY
color("green")translate([0,0,-15])backpart();
color("red")adafruit_pantilt_connectionblock();
color("orange")translate([0,0,0])raspiholder();
color("pink")cover_rails();
translate([96.6,-10,21.3])rotate([180,0,180])standoffkey_prismmountmod_bigger_rails();
}





//translate([0,0,-12])prismholder();

//prismholdercap();
//translate([0,0,0])lampmount();

/*
translate([0,28,2])prismholder();
translate([0,0,30])rotate([0,180,0]){
prismholdercap();
translate([0,0,22])lampmount();
}
*/

/*ranslate([0,28+5,2])cameraprismholder();
translate([0,0,30+6+7])rotate([0,180,0]){
cameraprismholdercap();
translate([0,0,22+7+6])lensmount();
}
*/




/*
translate([10-0.5,-10+1,60])rotate([0,180,0]){
cameraprismholdercap();
translate([0,0,22+7+6])lensmount();
}
*/







//translate([0,0,25])rotate([0,90,0])tslot20(200);



//#lampmount_m5();
//#translate([0,0,-2])prismholder();


//translate([18,-3,18])m5_shaftconnect_noprism();

//mauk_slider_assy();
//new_gliderbracket_modular();
//newgliderbracket_cool_breadboard_raspimount();
//new_gliderbracket_topbreadboard_raspimount();
//seq_assy5();

//mirror([0,0,0])collimatinglens_mount();
//mirror([1,0,0])collimatinglens_mount();


//prismlamp_assy();


//translate([0,50,0])mirror([1,0,0])collimatinglens_mount_basic();
//mirror([1,0,0])collimatinglens_mount_screw();
//awesomecamera_assy();
//circuitmount();




module pcb_scaffold(){

translate([-30,0,0])difference(){
union(){
color("blue")cube([29,48,3]);
color("blue")cube([29+36,48,1.5]);
}
translate([29-10.5,7,-0.5])color("blue")cube([4,35,4]);
translate([29-10.5-11.5,7,-0.5])color("blue")cube([4,35,4]);
translate([29-10.5-11.5/2,7,-0.5])color("blue")cube([4,35,1.5]);
}

/*
translate([20,0,0])color("silver")cube([3,22,3]);
translate([25,0,0])color("silver")cube([3,22,3]);
difference(){
union(){
color("green")cube([16,18,3]);
translate([7,0,0])color("orange")cube([3,18,6]);
}
translate([0,9,0])#color("green")cube([7,11,3]);
}
*/
}




module pantiltplatebreadboard(){

difference(){translate([0,0,7+8-3])union(){
//translate([28,-5,4])color("blue")cube([10,40,6]);
//translate([28,-5,4-10-8])color("blue")cube([10,40,16+8]);

difference(){union(){
translate([-27,-0.5,4])#cube([20,20,5]);
translate([-27+53,-0.5,4])#cube([20,20,5]);
}
#translate([-21.5,9.5,3])cylinder(r=5.5/2,h=10);
#translate([-21.5+60,9.5,3])cylinder(r=5.5/2,h=10);
}

translate([-8,0,0])difference(){
translate([-7,-5,4])cube([48,40-6,6+5]);
translate([1,-2,0]){#cylinder(r=3/2,h=20);
translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);
#translate([0,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
#translate([32,0,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
#translate([32,27.50,0]){cylinder(r=3/2,h=20);translate([-0,-0,4])cylinder(r=7.5/2,h=5,$fn=6);}
}
}}

/*
for ( i = [1 : 2] ){
#translate([-10-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}
for ( i = [1 : 2] ){

#translate([30-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}


for ( i = [0 : 2] ){
//#translate([0-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}

for ( i = [0 : 2] ){
//#translate([10-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([10-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}

for ( i = [0 : 2] ){
//#translate([20-1,(i*10),0])cylinder(r=3.7/2,h=100);
#translate([20-1,(i*10),0]){cylinder(r=3.7/2,h=100);translate([0,0,27-3.5])#cylinder(r=3.7,h=20);}
}
*/
}
}



module adafruit_pantilt_connectionblock(){
translate([-29.7/2,-20,-22]){

difference(){
color("green")cube([29.7,29.25,13]);
translate([14.8,6.5,-20]){cylinder(r=4.7/2,h=60);translate([0,0,25])rotate([0,0,90])cylinder(r=8.3/2,h=3.5,$fn=6);translate([-8.3/2,-8,25])#cube([8.3,8.3,3.5]);}
translate([14.8,23,-20]){#cylinder(r=4.7/2,h=60);translate([0,0,25])rotate([0,0,90])#cylinder(r=8.3/2,h=3.5,$fn=6);translate([-8.3/2,-0.5,25])#cube([8.3,8.3,3.5]);}

}
}
}



module circuitmount(){
translate([0,0,17])cube([15,5,33]);
difference(){
translate([0,0,0])cube([3,53,50]);
translate([0,8,5])cube([3,40,15]);
translate([0,8,30])#cube([3,40,15]);
}


}



module collimatinglens_mount_basic(){

difference(){
union(){
//translate([18,-3,18])m5_shaftconnect_noprism();
color("silver")translate([26,21,23])cube([9,23,10]);

translate([0.5,0,0]){
#color("green")translate([-15,0,10])translate([42,21,25.5])rotate([-90,0,0])cylinder(r=15/2,h=3);
#color("blue")translate([-15,3,10])translate([42,21,25.5])rotate([-90,0,0])cylinder(r=15/2,h=20);
}

/*
translate([0,30,0])difference(){
translate([18,-3,-8])m5_shaftconnect_noprism();
translate([-10,6,0])rotate([0,90,0])cylinder(r=3.7/2,h=50);
}
*/

translate([0,0,0])difference(){union(){
color("purple")translate([26,28,20])cube([9,10,8]);
color("purple")translate([26,33,20])rotate([0,90,0])#cylinder(r=10/2,h=9);
}
#translate([-10,33,20])rotate([0,90,0])cylinder(r=3.7/2,h=50);
}


}
translate([-14.5,0,10]){
translate([42,24,25.5])rotate([-90,0,0])#cylinder(r=10/2,h=35);
translate([42,10,25.5])rotate([-90,0,0])cylinder(r=9.3/2,h=40);
}
}
}

module collimatinglens_mount_basic_holder(){

difference(){
union(){
translate([0,30,0])difference(){
translate([18,-3,-8])m5_shaftconnect_noprism();
translate([-10,6,0])rotate([0,90,0])cylinder(r=3.7/2,h=50);
translate([17.5,6,0])rotate([0,90,0])#cylinder(r=6.6/2,h=5,$fn=6);

}
}
}
}


module collimatinglens_mount_screw(){

difference(){
union(){
translate([18,-3,18])m5_shaftconnect_noprism();
translate([-15,0,10])translate([42,21,25.5])rotate([-90,0,0])cylinder(r=15/2,h=3);
}
translate([-15,0,10]){
translate([42,-13,25.5])rotate([-90,0,0])cylinder(r=10/2,h=35);
translate([42,10,25.5])rotate([-90,0,0])cylinder(r=9.3/2,h=40);
}
}
}



module horizontal_assy(){
translate([-40,30,-25])coupler_m5();

difference(){
translate([0,0,0])horizontal_rodholder();
translate([0,0,20])#cube([20,12,30]);
}

translate([0,30,0])difference(){
translate([0,0,0])horizontal_rodholder();
translate([0,13,20])#cube([20,12,30]);
}

}





module coupler_m5(){
difference(){
union(){
translate([40,-15,0]){
cube([20,36,20]);
//translate([-15,15,0])cube([50,5,20]);
}
}
#translate([50,17,10])rotate([90,90,0])cylinder(r=8.2/2,h=3.6,$fn=6);
#translate([46,17,22])rotate([90,90,0])cube([12,8.2,3.6]);


#translate([50,35,10])rotate([90,90,0])cylinder(r=4.7/2,h=100);


//#translate([50,35,10])rotate([90,90,0])cylinder(r=4.7/2,h=10,$fn=6);
//translate([-68,5,10])rotate([90,90,0])#cylinder(r=4.7/2,h=100);

translate([50,-5,10])rotate([0,0,0]){
//#cylinder(r=9.5/2,h=50,$fn=6);
#translate([0,0,-20])cylinder(r=5.7/2,h=50);
#translate([-15,14,0])rotate([0,90,0])cylinder(r=5.7/2,h=50);
}
}
}



module horizontal_rodholder(){
difference(){
union(){
//translate([0,0,25])rotate([-90,0,0])tslot20(100);
translate([0,0,1])cube([5,25,28]);
translate([0,0,22])#cube([13,25,17]);
}
translate([7,37,33])rotate([90,0,0])#cylinder(r=5.7/2,h=60);
translate([-27,5,10])rotate([0,90,0])#cylinder(r=4.7/2,h=60);
translate([-27,20,10])rotate([0,90,0])#cylinder(r=4.7/2,h=60);
}

}



//collimatinglens_mount();

module collimatinglens_mount(){

difference(){
union(){
translate([18,-3,18])m5_shaftconnect_noprism();
translate([-15,0,10])translate([42,21,25.5])rotate([-90,0,0])cylinder(r=15/2,h=3);
}
translate([-15,0,10]){
translate([42,-13,25.5])rotate([-90,0,0])cylinder(r=10/2,h=35);
translate([42,10,25.5])rotate([-90,0,0])cylinder(r=9.3/2,h=40);
}
}
}


module prismlamp_assy(){
translate([80,-12,-30])rotate([0,180,0]){
prismholdercap();
translate([0,0,20])lampmount();
translate([18,-3,18])m5_shaftconnect();
}
}


module m5_shaftconnect_noprism(){
difference(){
union(){
#translate([0,-10,-1])cube([15,30,17]);
//translate([0,0,16])cube([15,25,12]);
translate([0,10,-13])rotate([60,0,0])cube([15,20,18]);
}
translate([7,12,-5])rotate([60,0,0]){
translate([0,0,10])cylinder(r=9.5/2,h=40,$fn=6);
#translate([0,0,-40])cylinder(r=5.7/2,h=50);
}
}
}



module m5_shaftconnect(){
difference(){
union(){
cube([20,20,10]);
translate([0,8,-7])rotate([30,0,0])cube([20,15,9]);
}
translate([12,12,2])rotate([30,0,0]){
#cylinder(r=9.5/2,h=50,$fn=6);
#translate([0,0,-50])cylinder(r=5.7/2,h=50);
}
}
}

module lampmount_m5(){
difference(){
union(){
translate([40,-15,0]){cube([20,20,20]);
translate([-15,15,0])cube([50,5,20]);
}
}
translate([32,5,10])rotate([90,90,0])cylinder(r=4.7/2,h=10);
translate([68,5,10])rotate([90,90,0])#cylinder(r=4.7/2,h=100);

translate([50,-5,10])rotate([0,0,0]){
#cylinder(r=9.5/2,h=50,$fn=6);
#translate([0,0,-50])cylinder(r=5.7/2,h=50);
}
}
}


//translate([54,-32,0-6.7])cover_rails();
//standoffkey_prismmountmod_bigger_rails();
//translate([0,0,-4.0])#smallerspherelock();
//translate([0,15,-4])#smallerspherelock();
/*
translate([0,10,0]){spherelock();translate([4.0,8,0.0])cube([10,10,4]);}
translate([22,10,0]){spherelock();translate([4.0,8,0.0])cube([10,10,7]);}

translate([0,10,0])spherelock();
*/
module toppart_cablelock(){
translate([10,25,-5.])spherelock();
translate([43,0,175])rotate([0,90,0])tslot20innerbracket();

difference(){
translate([-4,0.2,-5])cube([25,25,10]);
spherelock();
translate([9,13.3,-20])cylinder(r=6,h=50);
translate([9,13.3,-20])cylinder(r=6,h=50);
}
}

module smallerspherelock(){
difference(){
m4locknut_smallersphere();
translate([-5,13,7.1])rotate([0,90,0])#cylinder(r=2.2/2,h=100);
//translate([-5,13,8.5])rotate([0,90,0])#cylinder(r=1.8/2,h=100);
//translate([-5,13,8])rotate([0,90,0])#cylinder(r=1.8/2,h=100);
}
}


module m4locknut_smallersphere(){
 //rotate([90,90,90])
 difference(){
  translate([9,13,10])sphere(r=6.0);
  //#roundedBox([20, 13, 13+10+5+5], 1, true);
  translate([9,13.5,7]){
  translate([0,0,3.3])hexagon(7.30,3.95);
  translate([0,0,-9.8+6.5+1.2])cylinder(r=4.3/2,h=90);
  translate([-4.05,0,1.5])cube([8.1,12,3.75]);
  }
 }
}






module spherelock(){
difference(){
m4locknut_sphere();
translate([-5,13,9])rotate([0,90,0])cylinder(r=2.2/2,h=100);
translate([-5,13,8.5])rotate([0,90,0])cylinder(r=3/2,h=100);
translate([-5,13,8])rotate([0,90,0])cylinder(r=3/2,h=100);
translate([-5,13,7.5])rotate([0,90,0])cylinder(r=3/2,h=100);
translate([-5,13,7.])rotate([0,90,0])cylinder(r=3/2,h=100);
}
}


module m4locknut_sphere(){
 //rotate([90,90,90])
 difference(){
  translate([9,13,10])sphere(r=10);
  //#roundedBox([20, 13, 13+10+5+5], 1, true);
  translate([9.5,13.5,10]){
  translate([0,0,3.3])hexagon(7.30,3.95);
  translate([0,0,-9.8+4])cylinder(r=4.3/2,h=90);
  translate([-4.05,0,1.5])cube([8.1,12,3.75]);
  }
 }
}



module cover_rails(){
 difference(){
 union(){
 translate([-15.6,-18.8-5,6.7])cube([31,31+5,5+3.5]);
 difference()union(){

 translate([-7,-15,10]){
  difference(){translate([-8.9+2-.3,2-.3+4,0])#cylinder(r=3.8,h=11);translate([-20+1.4,0,0])cube([10,10,30]);}
  difference(){translate([20.8,2-.3+4,0])cylinder(r=3.8,h=11);translate([24-1.5,0,0])cube([10,10,30]);}
  translate([7,-7-.3+5,0])cylinder(r=3.8,h=11);
  
 }

 translate([-15.6-10,-4.8,6.7])cube([10,10,4]);
 translate([-15.6-10,-4.8-18,6.7])cube([10,10,4]);
 translate([-15.6-10,-4.8-9,6.7])cube([10,10,4]);
 translate([-15.6-10-9,-4.8-18,6.7])cube([10,10,4]);
 translate([-15.6-10-9,-4.8-18+9,6.7])cube([10,10,4]);
 translate([-15.6-10-9,-4.8-18+18,6.7])cube([10,10,4]);

 translate([15.6-1,-4.8,6.7])cube([10,10,4]);
 translate([15.6-1,-4.8-18,6.7])cube([10,10,4]);
 translate([15.6-1,-4.8-9,6.7])cube([10,10,4]);
 translate([15.6-1+9,-4.8-18,6.7])cube([10,10,4]);
 translate([15.6-1,-4.8-9-9,6.7])cube([10,10,4]);
 translate([15.6-1+9,-4.8-18+9,6.7])cube([10,10,4]);
 translate([15.6-1+9,-4.8-18+18,6.7])cube([10,10,4]);

 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 }
 cylinder(r=3.7,h=20);
 translate([-4.5,-4.5,0])cube([9,9,20]);

 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([20,0-9,-10])cylinder(r=3.7/2,h=30);
 translate([20,0-18,-10])cylinder(r=3.7/2,h=30);
 translate([20+9,0-18,-10])cylinder(r=3.7/2,h=30);
 translate([20+9,0-18+9,-10])cylinder(r=3.7/2,h=30);
 translate([20+9,0-18+18,-10])cylinder(r=3.7/2,h=30);

 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0-9,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0-18,-10])cylinder(r=3.7/2,h=30);
 translate([-20-9,0-18,-10])cylinder(r=3.7/2,h=30);
 translate([-20-9,0-18+9,-10])cylinder(r=3.7/2,h=30);
 translate([-20-9,0-18+18,-10])cylinder(r=3.7/2,h=30);

 }
}





module standoffkey_prismmountmod_bigger_rails(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){

translate([-10+1-10,-10+1-9,0])cube([31.65+18+0.95,36.15+15+0.95,5]);
translate([-6,-18+25,5])#cube([5,18,1+2.85]);
translate([-4+19,-18+25,5])#cube([5,18,1+2.85]);
}
translate([-1,7.5,0])cube([16,16,20]);
#translate([-4.5,7.5+5.2,0])cube([23,5.5,8]);
#translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=11.1/2,h=50);

translate([-8.9+2-.3,2-.3+4,0])#cylinder(r=4,h=20);
translate([20.8,2-.3+4,0])#cylinder(r=4,h=20);
translate([6.6,-7-.3+5,0])#cylinder(r=4,h=20);

 translate([7,15,0]){
 translate([20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3-10])rotate([0,0,90])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7-10])rotate([0,0,-90])#cylinder(r=3.7/2,h=30);
 }

}
 //translate([97,10-5+70,-6.7-6])difference(){union(){
 translate([97,10,-6.7])difference(){union(){
 translate([-15.6-10+0.1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 translate([-15.6-10+0.1+30+0.5,-4.8-26,6.7])rotate([0,0,90])#cube([10-2,10,5]);
 translate([-15.6-10+0.1+30+0.5-10,-4.8+24,6.7])rotate([0,0,-90])#cube([10-2,10,5]);

 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3])rotate([0,0,90])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7])rotate([0,0,-90])#cylinder(r=3.7/2,h=30);
 }
}





module standoffkey_prismmountmod_bigger(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){
translate([0+0.5,0+8,0])cube([13.15,13.15,20]);
translate([-10+1-10,-10+1-9,0])#cube([31.65+18,36.15+15,5]);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=11.1/2,h=50);
translate([-8.9+2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([19.1-2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([-6.9-2-.3+12,-7-.3,0])cube([8.6,3.6,160]);


 translate([7,15,0]){
 translate([20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3-10])rotate([0,0,90])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7-10])rotate([0,0,-90])#cylinder(r=3.7/2,h=30);
 }

}
 //translate([97,10-5+70,-6.7-6])difference(){union(){
 translate([97,10,-6.7])difference(){union(){
 translate([-15.6-10+0.1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 translate([-15.6-10+0.1+30+0.5,-4.8-26,6.7])rotate([0,0,90])#cube([10-2,10,5]);
 translate([-15.6-10+0.1+30+0.5-10,-4.8+24,6.7])rotate([0,0,-90])#cube([10-2,10,5]);

 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3])rotate([0,0,90])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7])rotate([0,0,-90])#cylinder(r=3.7/2,h=30);
 }
}






module standoffkey_prismmount_coupler(){
/* the part of male connector ... very important */

//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){
translate([-10+1,-10+1,0])cube([13.15+20-1-1+0.5,13.15+20+3,5]);
//#translate([13.15/2+0.5,13.15/2+8.5,4])cylinder(h = 13, d1 = 26, d2 = 40, center = false);
//#translate([13.15/2+0.5,13.15/2+8.5-5,4])#cylinder(h = 13, d1 = 26, d2 = 50, center = false);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])#cylinder(r=23/2,h=60);
//translate([13.15/2+0.5,13.15/2+8.5-5,-4])#cylinder(r=27/2,h=60);
//#translate([13.15/2+0.5,13.15/2+8.5-3,-4])#cylinder(r=30/2,h=60);
translate([-15.6-10+0.1+30+0.5-10+5+7.0,-4.8+24-4-0.45+17-2,6.7-2])rotate([0,0,-90]){#cylinder(r=8/2,h=12.5-3);}

//translate([20+2.3,14.25,-10]){translate([0,0,18])#cylinder(r=3.7/2,h=10);translate([0,0,15])#cylinder(r=8/2,h=12.5-3);}
//translate([20+2.3-32,14.25,-10]){translate([0,0,18])##cylinder(r=3.7/2,h=30);translate([0,0,15])#cylinder(r=8/2,h=12.5-3);}
//translate([20+2.3-15.4,14.25-12,-10]){translate([0,0,18])##cylinder(r=3.7/2,h=30);translate([0,0,15])#cylinder(r=8/2,h=12.5-3);}

}
 translate([97,10,-6.7])difference(){union(){
 translate([-15.6-10+0.1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 translate([-15.6-10+0.1+30+0.5,-4.8-26,6.7])rotate([0,0,90])cube([10-2,10,5]);
 translate([-15.6-10+0.1+30+0.5-10,-4.8+24,6.7])rotate([0,0,-90])#cube([10-2,10,5]);

 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3])rotate([0,0,90])cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7])rotate([0,0,-90])cylinder(r=3.7/2,h=30);
 }
}







module lensmount(){

translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
translate([-2.5-6,-18.5,0])cube([25+7+5+12.5,25+4+4.5+18.5,10]);
translate([-2.5-6,7+2,0])cube([49.5,10,10]);
translate([7+3.5,-2.5-16,0])cube([10,52,10]);
}


translate([0,-14,0]){
translate([12.5+5.5/2,2,-55])rotate([0,0,90])cylinder(r=3.7/2,h=100);
translate([12.5+5.5/2,2,-50]){rotate([0,0,90])cylinder(r=3.7/2,h=100);translate([0,0,55]){rotate([0,0,90])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3,-1.3-0.3-5,0])cube([6.2,8.2,2.85]);}}
}


translate([-4.75,0.75,0]){
translate([1-1,12+2,-2-50])rotate([0,0,90])cylinder(r=3.7/2,h=100);
translate([1-1,12+2,-2+5]){rotate([0,0,0])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-7,-2.8-0.3,0])cube([8.2,6.2,2.85]);}
}

translate([3.2,0.75,0]){
translate([24+7+1,12+2,-50])rotate([0,0,90])cylinder(r=3.7/2,h=100);
translate([24+7+1,12+2,-2+5]){rotate([0,0,0])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-1.7,-2.8-0.3,0])cube([8.2,6.2,2.85]);}
}


translate([12.5+5.5/2,30-5+4.5,-50]){rotate([0,0,90])cylinder(r=3.7/2,h=100);translate([0,0,55]){rotate([0,0,90])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3,-1.3-0.3,0])cube([6.2,8.2,2.85]);}}


//#translate([12.5+5.5/2,2,-5])rotate([0,0,90])cylinder(r=3.7/2,h=100);
translate([12.5+3,12.5+2,-3])cylinder(r=10/2,h=20);
translate([12.5+3-12-0,12.5-8-2-3-8,-3])cube([25,32,20]);
translate([12.5+3-12-7,12.5-8-2-3-8,-3])cube([40-2,15,20]);
translate([12.5+3-12-7,12.5-8-2-3-8+28,-3])cube([40,5,20]);
translate([12.5+3-12-7,12.5-8-2-3-8-7+2,-3])#cube([14,22-2,20]);
translate([12.5+3-12-7+24,12.5-8-2-3-8-7+2,-3])cube([14,20,20]);
//translate([12.5+5.5/2,30-5+4.5,5]){rotate([90,90,0])#cylinder(r=6.8/2,h=2.8,$fn=6);translate([-3,-2.8,0])#cube([6.2,2.8,10]);translate([0,6,0])rotate([90,90,0])#cylinder(r=3.7/2,h=20);}
//translate([12.5+5.5/2,2,5]){rotate([90,90,0])#cylinder(r=6.8/2,h=2.8,$fn=6);translate([-3,-2.8,0])#cube([6.2,2.8,10]);translate([0,6,0])rotate([90,90,0])#cylinder(r=3.7/2,h=20);}

}
}




module cameraprismholder(){

translate([5.75-5.75,-2,4])difference(){
union(){
cube([20.5,20.5,20.5]);
translate([0,0,-4])cube([20.5,20.5,13.5]);
}
translate([-1,13.5/2+12,1])rotate([45,0,0])cube([25.5,25.5,33.5]);
}
translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
cube([25+7,25+4,2.5]);
translate([-2.5,7+2,0])cube([30+7,10,2.5]);
}
translate([1-1,12+2,-4])cylinder(r=3.7/2,h=20);
translate([24+1+7,12+2,-4])#cylinder(r=3.7/2,h=20);
}
}


module cameraprismholdercap(){

translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
translate([-2.5-6,-18.5,0])cube([25+7+3+2+12.5,25+4+3+1.5+15+3.5,22.5+7+6]);
translate([-2.5,7+2,0])cube([30+7,10,22.5+7+6]);
//translate([7+3.5,-2.5,22.5-3+7+6])cube([10,30+7,3]);
}

translate([-1,2,0]){
translate([1,12,-4])cylinder(r=3.7/2,h=20);
translate([1,12,2]){rotate([0,0,0])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3-10,-2.8,0])cube([6.2+10,6.2,2.85]);}
}


translate([1+7,2,0]){
translate([24,12,-4])cylinder(r=3.7/2,h=20);
translate([24,12,2]){rotate([0,0,90])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3,-2.8,0])cube([6.2+20,6.2,2.85]);}
}

translate([4,3,-0.1])cube([25-8+7,25-7+4,22.5-3+7+9]);
translate([(25+7)/2-1,12.5+2,5-10])cylinder(r=20/2,h=100+7);
translate([(25+7)/2,22.5,11.5+3.5]){rotate([-90,90,0])cylinder(r=11,h=20);}
translate([(25+7)/2-15,22.5,11.5+3.5-3])cube([30,20,13]);

translate([12.5+3-12,12.5-8-2,-3])cube([25,26,50]);
//translate([12.5+3-12-3,12.5-8-2,-3])#cube([25+6,8,50]);
translate([12.5+3-12-3-5,12.5-8-2+16,-3])cube([25+6+10,11,50]);
translate([12.5+3-12-7,12.5-8-2-16,-3])#cube([25+14,20,50]);
translate([2,75,8])rotate([90,90,0])#cylinder(r=3.7/2,h=50);
translate([2+30,75,8])rotate([90,90,0])cylinder(r=3.7/2,h=50);
translate([2,75,30])rotate([90,90,0])cylinder(r=3.7/2,h=50);
translate([2+30,75,30])rotate([90,90,0])cylinder(r=3.7/2,h=50);
}
}




module lampmount(){

translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
cube([25,25,10]);
translate([-2.5,7,0])cube([30,10,10]);
translate([7,-2.5,0])cube([10,30,10]);
}
translate([1,12,-2])rotate([0,0,90])#cylinder(r=3.7/2,h=100);
translate([24,12,-2])rotate([0,0,90])#cylinder(r=3.7/2,h=100);
translate([12.5,12.5,-3])cylinder(r=12.5/2,h=20);

translate([12.5,30-5,5]){rotate([90,90,0])#cylinder(r=6.8/2,h=2.8,$fn=6);translate([-3,-2.8,0])cube([6.2,2.8,10]);translate([0,6,0])rotate([90,90,0])#cylinder(r=3.7/2,h=20);}
translate([12.5,2,5]){rotate([90,90,0])#cylinder(r=6.8/2,h=2.8,$fn=6);translate([-3,-2.8,0])cube([6.2,2.8,10]);translate([0,6,0])rotate([90,90,0])#cylinder(r=3.7/2,h=20);}

}
}

module prismholdercap(){

translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
cube([25,25,22.5]);
translate([-2.5,7,0])cube([30,10,22.5]);
translate([7,-2.5,22.5-3])cube([10,30,3]);
}
translate([-1,0,0]){
translate([1,12,-4])#cylinder(r=3.7/2,h=20);
translate([1,12,2]){rotate([0,0,0])#cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3,-2.8,0])#cube([6.2,6.2,2.85]);}
}

translate([1,0,0]){
translate([24,12,-4])cylinder(r=3.7/2,h=20);
translate([24,12,2]){rotate([0,0,90])cylinder(r=6.7/2,h=2.85,$fn=6);translate([-3,-2.8,0])#cube([6.2,6.2,2.85]);}
}

translate([4,3,-0.1])#cube([25-8,25-7,22.5-3]);
translate([12.5,12.5,5])cylinder(r=12.5/2,h=20);
translate([12.5,12.5,11.5]){rotate([-90,90,0])cylinder(r=7,h=20);}
}
}



module prismholder(){

translate([0,-2,4])difference(){
union(){
cube([13.5,13.5,13.5]);
translate([0,0,-4])cube([13.5,13.5,13.5]);
}
translate([-1,13.5/2+6,1])rotate([45,0,0])cube([15.5,15.5,23.5]);
}
translate([-0-6.5/2-2.5,-11.5/2,-2])
difference(){
union(){
cube([25,25,2.5]);
translate([-2.5,7,0])cube([30,10,2.5]);
}
translate([1-1,12,-4])#cylinder(r=3.7/2,h=20);
translate([24+1,12,-4])#cylinder(r=3.7/2,h=20);
}
}




module backpart(){
 difference(){
 union(){
 translate([-15.6-10,-4.8,6.7])cube([10,10,8]);
 translate([15.6-1,-4.8,6.7])cube([10,10,8]);
 }
 translate([20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])#cylinder(r=3.7/2,h=30);
 }
 translate([-15.6,-18.8-5,6.7])difference(){cube([31,31+5,8]);
  translate([15,19.4,15-4]){
  translate([0.5,7.5,-7])cylinder(r=4.6,h=5);
  translate([0.5,7.5,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-7])cylinder(r=4.6,h=5);
  }

  translate([15.0,18,15-4])rotate([0,0,90]){
  translate([0.5,7.5,-7])cylinder(r=4.6,h=5);
  translate([0.5,7.5,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-20])cylinder(r=4.6/2,h=30);
  translate([0.5,-9.0,-7])cylinder(r=4.6,h=5);
  }


 }
}




module standoffkey_prismmountmod(){
/* the part of male connector ... very important */
/*
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}
*/
//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){
translate([0+0.5,0+8,0])cube([13.15,13.15,20]);
translate([-10+1,-10+1,0])cube([13.15+20-1-1+0.5,13.15+20+3,5]);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=11.1/2,h=50);
translate([-8.9+2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([19.1-2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([-6.9-2-.3+12,-7-.3,0])cube([8.6,3.6,160]);
}
 //translate([97,10-5+70,-6.7-6])difference(){union(){
 translate([97,10,-6.7])difference(){union(){
 translate([-15.6-10+0.1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 translate([-15.6-10+0.1+30+0.5,-4.8-26,6.7])rotate([0,0,90])#cube([10-2,10,5]);
 translate([-15.6-10+0.1+30+0.5-10,-4.8+24,6.7])rotate([0,0,-90])#cube([10-2,10,5]);

 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-5,-4.8-26+4,6.7-3])rotate([0,0,90])#cylinder(r=3.7/2,h=30);
 translate([-15.6-10+0.1+30+0.5-10+5,-4.8+24-4-0.45,6.7])rotate([0,0,-90])#cylinder(r=3.7/2,h=30);
 }
}






module standoffkey(){
/* the part of male connector ... very important */
translate([90,34-4-35,3-6.7]){
translate([-8.9+2,2,0])cube([3,8.2,7]);
 translate([19.1-2,2,0])cube([3,8,7]);
 translate([-6.9-2+12,-7,0])cube([8,3,7]);
}

//This does 2 functions one for the keys for cover() the other is the lense mount which is commented out. I should make separate modules but too lazy

translate([90,74-4-70-4-1,-6+6])difference(){
//translate([90,70,-6])difference(){
union(){
translate([0+0.5,0+8,0])cube([13.15,13.15,20]);
translate([-10+1,-10+1,0])cube([13.15+20-1-1+0.5,13.15+20+3,5]);
}
translate([13.15/2+0.5,13.15/2+8.5,-4])cylinder(r=11.1/2,h=50);
translate([-8.9+2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([19.1-2-.3,2-.3,0])cube([3.6,8.6,160]);
translate([-6.9-2-.3+12,-7-.3,0])cube([8.6,3.6,160]);
}
 //translate([97,10-5+70,-6.7-6])difference(){union(){
 translate([97,10,-6.7])difference(){union(){
 translate([-15.6-10+0.1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 }
 translate([20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])#cylinder(r=3.7/2,h=30);
 }
}


module cover(){
 difference(){
 union(){
 translate([-15.6,-18.8-5,6.7])cube([31,31+5,5]);
 difference()union(){
 translate([-15.6-10,-4.8,6.7])cube([10,10,5]);
 translate([-15.6-10,-4.8-18,6.7])#cube([10,10,5]);
 translate([-15.6-10,-4.8-9,6.7])#cube([10,10,5]);
 translate([-15.6-10-9,-4.8-18,6.7])#cube([10,10,5]);

 translate([15.6-1,-4.8,6.7])cube([10,10,5]);
 translate([15.6-1,-4.8-18,6.7])#cube([10,10,5]);
 translate([15.6-1,-4.8-9,6.7])#cube([10,10,5]);
 translate([15.6-1+9,-4.8-18,6.7])#cube([10,10,5]);
 }
 translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([-20,0,-10])cylinder(r=3.7/2,h=30);
 }
 #cylinder(r=3.7,h=20);
 translate([-4.5,-4.5,0])#cube([9,9,20]);

 #translate([20,0,-10])cylinder(r=3.7/2,h=30);
 translate([20,0-9,-10])#cylinder(r=3.7/2,h=30);
 translate([20,0-18,-10])#cylinder(r=3.7/2,h=30);
 translate([20+9,0-18,-10])#cylinder(r=3.7/2,h=30);

 translate([-20,0,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0-9,-10])#cylinder(r=3.7/2,h=30);
 translate([-20,0-18,-10])#cylinder(r=3.7/2,h=30);
 translate([-20-9,0-18,-10])#cylinder(r=3.7/2,h=30);

 }
}


module raspiholder(){

tol=0.05;
pcb_tol=0.2;

cam_margin_outside=3;

cam_y= 24 + 0.8;
cam_x= 25.1;
cam_sensor_h=5.4;
box_wall_th= 2.4;
cam_above_h= 1.8;
cam_pcb_th=0.8+0.2;

grip_th=1.6;

screw_spacing=40; // distance from ear to ear_dx (equal to "screw_spacing" in cam_lens.scad)
ear_th=3+3.6;
ear_od=9;
ear_id=3.2;

lens_dy=cam_y/2-9;


module ears_attachment(screw_spacing, th, od, id, oblong_len=0)
{
  // ears
  for(x=[-1,+1]) scale([x,1,1])
    difference()
    {
      hull()
      {
	cylinder(r=od/2,h=th,$fs=1);
	translate([screw_spacing/2,0,0]) cylinder(r=od/2,h=th,$fs=1);
      }
      // ear oblong hole
      if(oblong_len<=0)
	cylinder(r=id/2,h=th+2*tol,$fs=1);
      else
      {
	hull() for(d=[-oblong_len/2,+oblong_len/2]) translate([screw_spacing/2+d,0,-tol]) 
	{
	  cylinder(r=id/2,h=th+2*tol,$fs=1);
	}
      }
    }
}

module ccube(sz) { translate([-sz[0]/2,-sz[1]/2,0]) cube(sz); }

cam_below_h=cam_sensor_h - box_wall_th + 0.8; // leave 0.8 mm between glass and lens
tot_h= cam_below_h+cam_pcb_th+cam_above_h;

module cam_pcb()
{
  hull()
  {
    ccube([cam_x+pcb_tol*2,cam_y+pcb_tol*2,cam_pcb_th+tol]);
    translate([0,0,2])
      ccube([cam_x+pcb_tol*2-2,cam_y+pcb_tol*2-2,tol]);
  }
  cube([cam_x+pcb_tol*2-2,cam_y+pcb_tol*2-2,8],center=true);
}


module show_cam()
{
  %translate([0,0,cam_below_h+cam_pcb_th]) { ccube([8,8,3.3]); cylinder(r=6.6/2,h=5.3); }

  translate([0,-lens_dy,0]) 
  difference()
  {
    union()
    {
      ccube([cam_x+cam_margin_outside*2, cam_y+cam_margin_outside*2, tot_h]);
      translate([0,lens_dy,0]) ears_attachment(screw_spacing=screw_spacing, th=ear_th, od=ear_od, id=ear_id, oblong_len= 1.5);
    }
    translate([0,0,cam_below_h]) cam_pcb();
    translate([0,cam_y-cam_margin_outside,-tol])
      ccube([cam_x+pcb_tol*2 - grip_th*2,cam_y+pcb_tol*2, tot_h+2*tol]);
  }
}

show_cam();

}