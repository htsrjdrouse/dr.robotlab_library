 include <dr.robotlab_repstrap.scad>



//translate([0,-30,0])rotate([0,0,90])gesim_mauk_tipmount_thread_breadboard_left();

//gesim_mauk_tipmount_thread_breadboard_right();

//import("reinforced_breadboard.stl");





//General Settings
$fs=0.10;
tol = 0.5;
r_screw = 1.5+tol;

//Dimensions of PQ-12 Motor, in mm
l_motor = 36.5;
w_motor = 15;
h_motor = 13;

//Offset location
h_offset = 8.5;
r_offset = 1.5-tol;

//Back mount location
cutout_mount = 10;
h_mount = 21.5;
y_mount=7.5;
z_mount = 16;
l_mount = 10.5 + l_motor;
l_screw = 7;

//Cable location
l_cable=5;
t_cable=2.5;

//Plate parameters for coupling
h_plate = 0;

//Case parameters
t_case = 3;

module rectangle(x,y,z) {
	#cube(size=[x,y,z], center = false);
}

module plate() {
	difference(){
		cube([l_motor,t_case,h_plate]);
		yhole(l_motor/4,-tol,h_plate/2,r_screw, t_case+tol*2);
		yhole(3*l_motor/4,-tol,h_plate/2,r_screw, t_case+tol*2);
	}
}

module xhole(x,y,z,rad,height) {
	translate([x,y,z]) {
		rotate(a=90, v=[0,1,0]){cylinder(r=rad, h=height, center=false);}
	}
}

module yhole(x,y,z,rad,height) {
	translate([x,y,z]) {
		rotate(a=-90, v=[1,0,0]){cylinder(r=rad, h=height, center=false);}
	}
}


module case() {
union()
{
	difference()
	{
		union()
		{
			translate([-t_case,-t_case,-t_case]){
				rectangle(l_motor+2*t_case, w_motor+t_case, h_motor+t_case);	
			}
		
			//This connects the mount to the motor housing
			translate([l_motor,-t_case,cutout_mount]) {
				rectangle(l_mount-l_motor+l_screw,w_motor+t_case,h_motor-cutout_mount);
			}
			
			//add plate to couple across
			translate([0,-t_case,-h_plate-t_case]) {
				plate();
			}

			//This is the back coupling
			difference()
			{
				translate([l_mount,-t_case,cutout_mount]) {
					rectangle(l_screw,w_motor+t_case,h_mount-cutout_mount);
				}
				xhole(0,y_mount,z_mount,r_screw,2*l_mount);
			}
		}

		//remove the motor's space, with tolerances
		translate([-tol,-tol,-tol]){
			rectangle(l_motor+2*tol, w_motor+2*tol, h_motor+2*tol);
		}

		//remove the cable's space
		translate([l_cable-t_cable/2,0,-t_case]){
			rectangle(t_cable, w_motor, t_case);
		}
	}

	//add cylinder bump
	yhole(0,0,h_offset,r_offset,w_motor);

}
//end case
}
//translate([13.3,-25,43])rotate([-90,90,-0])gesim_tipmount_formed_noigus();

//translate([0,-30,0])rotate([0,0,90])gesim_mauk_tipmount_thread_breadboard_left();

//gesim_mauk_tipmount_thread_breadboard_right();

//import("reinforced_breadboard.stl");


//#translate([-5,-6-30,12])rotate([90,0,-90])gesim_mauk_tipmount_thread_breadboard();

/*
difference(){
import("breadboard.stl");
#translate([0,26-(1*10),30-(1*10)]){rotate([0,90,0]){cylinder(r=6.8/2,h=10, $fn=6);translate([0,0,-10])cylinder(r=3.4/2,h=100);}}
}
*/

/*
translate([-10,-33,13]){
difference(){
union(){
cube([18,5,39]);
translate([0,12,20])rotate([0,90,0])cylinder(r=18/2,h=18);
translate([0,0,20+8.5])rotate([0,90,0])cube([17,10,18]);
}
translate([0,0,2.5]){
#translate([10,12,17.5])rotate([0,90,0])cylinder(r=13.4/2,h=20);
#translate([0,12,15+2.5])rotate([0,90,0]){cylinder(r=10.3/2,h=4);translate([0,0,-10])cylinder(r=6.2/2,h=50);}
#translate([9,10,2])rotate([90,0,0]){cylinder(r=6/2,h=4);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
#translate([9,10,32])rotate([90,0,0]){cylinder(r=6/2,h=4);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
}
}
}
*/
/*
translate([-40,-28,43])rotate([90,90,0]){
//translate([(30-9.3-0.3)/2,5+0.25-0.1,-5.])#cube([9.3-0.2,50.4+0.5-0.3,5.4]);
difference(){
translate([(30-20)/2,5+0.25-0.1,-8.])#cube([20,29.5-0.3,5.4]);
translate([(30-20)/2+2.5,5+0.25-0.1+8,-10.]){
#cylinder(r=3/2,h=20);
translate([15,0,0])#cylinder(r=3/2,h=20);
translate([0,13.25,0])#cylinder(r=3/2,h=20);
translate([15,13.25,0])#cylinder(r=3/2,h=20);
}
}
}
*/

/*
translate([-40,-28,43])rotate([90,90,0])difference(){
cube([30,60+2+6,6]);
//this alley is great
translate([(30-9.3-0.3)/2,5+0.25-0.1,0])cube([9.3-0.2,50.4+0.5-0.3,0.8+0.8]);
translate([(30)/2,15,0])cylinder(r=3/2,h=20);
translate([(30)/2,15+30,0])cylinder(r=3/2,h=20);

translate([5+10,15+3-13+(10*6),0]){cylinder(r=6/2,h=4);translate([0,0,-10])cylinder(r=3.5/2,h=50);}

for (y = [0,1,2,3,4,5]){
translate([5,15+3-13+(10*y),0]){cylinder(r=6/2,h=4);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
translate([5+20,15+3-13+(10*y),0]){cylinder(r=6/2,h=4);translate([0,0,-10])cylinder(r=3.5/2,h=50);}
}
}



translate([-7+8,0,2]){
difference(){
union(){
translate([-30,-30+6-5,-10])case();
#translate([-33,-39+6-1,-37+20+4])cube([57,6-4,16]);
#translate([9+8,-39+6-1,-37+31.5+1])cube([7,6-4,16]);
#translate([9+8-7.5,-39+6-1,-37+31.5-8])cube([7+7.5,6+2,16]);
#translate([9+8-7.5-50,-39+6-1,-37+31.5-8])cube([8,6+2,16]);

}
translate([-26+40,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}
translate([-26+40-50,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}
#translate([9.5+10,-39+5,-37+20+1])cube([15-10,6+10,16]);
#translate([9.5,-39+5,-37+20+1])cube([15,6+10,6]);



#translate([-26,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}
#translate([-26+10,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}
#translate([-26+20,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}
#translate([-26+30,-30+5.6,-4 ])rotate([90,0,0]){cylinder(r=6.2/2,h=5);cylinder(r=3.5/2,h=50);}


}
}
*/


//bar_clamp();
//simple_m8_smoothrodholder_for_z();


/*
difference(){
//threaded_support_5_16();
threaded_support_5_16_breadboard();
translate([-5,10,13])cube([30,40,15]);
}
*/






//translate([-31,26,39])rotate([0,-90,0]){
//camera mount
/*
#translate([0-4,-17.5,0])rotate([0,0,10])#cube([4,2,1.5]);
#translate([0-0.5,-17.5,4])rotate([0,90,0])#cube([4,2,1]);

translate([0-4,15.5,0])rotate([0,0,-10])cube([4,2,1.5]);
#translate([0-0.5,15.5,4])rotate([0,90,0])#cube([4,2,1]);
*/


/*
difference(){
union(){

translate([-38+15,-17,8])rotate([0,90,0])#cube([8,35,38+10]);
cylinder(r=42/2,h=8);
translate([-44+20,0.4,0])cylinder(r=35/2,h=8);
*/
/*
translate([-40,-6.5,-38])rotate([0,90,0])cube([10,15,15]);

}
cylinder(r=33/2,h=12);
translate([5,-22,0])cube([30,45,13]);
#translate([-26.5,11,-10])cylinder(r=8.7/2,h=100);
#translate([-26.5,-9,-10])cylinder(r=8.7/2,h=100);

#translate([-35.5,1,-60])cylinder(r=6.5/2,h=100);
#translate([-28.5,30,-43])rotate([90,0,0])cylinder(r=3.5/2,h=100);

}
}
*/

//ledholder();
/*
difference(){
cube([40,32+10,5]);
translate([8,5,0])cylinder(r=5/2,h=10);
translate([40-8,5,0])cylinder(r=5/2,h=10);

translate([5,5+30,0])cylinder(r=5/2,h=10);
translate([40-5,5+30,0])cylinder(r=5/2,h=10);
translate([0,15,0])#cube([40/3,(35+10)/4,5]);

translate([27,15,0])#cube([40/3,(35+10)/4,5]);
}
*/
