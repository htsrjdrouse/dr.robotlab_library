//////////////////////////////////////////////////////////////////////////////////////////////
// Snap-on clamp
//
// Copyright (C) 2013  Lochner, Juergen
// http://www.thingiverse.com/Ablapo/designs
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
/////////////////////////////////////////////////////////////////////////////////////////////////


/*
clamp();
translate([30,0,0])
clamp();
*/

module clamp(){
rod_dia=8;					// rod diameter, if you change rod_dia then uncomment the ir approximation! or calculate the nonlinear equation!
gap_set=rod_dia/2; 			// mounting gap, if you change gap_set then uncomment the ir approximation! or calculate the nonlinear equation!

fix_dia=3.5;					// M3 holes
z_dim = 15;					// height
wall =4;						// wall thickness
pi=3.14159;					// pi

bcut=0.5;						// T cut thickness
bslot=0.5;					// T cut slot thickness

bfaktor=0.3;					// T cutting length
bangle=5;						// T cutting angle 

pr=1.5;						// clearence factor (1 = zero clearence)

/////////////////////////////////////////////////////////////////////////////////////
// you need to solve a non linear equation [ir=x] f(x): rod_radius = x(1-asin(gap/(2*x))/pi)
// or use approximation:
// ir = (2*pi*rod_dia/2+gap_set) / 2/pi;			// inside radius, approximation!
// gap=-2*ir*sin( ((1+rod_dia/2/ir)*180));			// gap recalculate for aproximation
gap=gap_set;												// remove this, if you are using the approximation

ir=4.65801;												// rod_dia=8, gap=4, numerical solution from f(x): 4=x(1-asin(4/(2*x))/pi)  
//ir=5.82251;												// rod_dia=10, gap=5, numerical solution from f(x): 5=x(1-asin(5/(2*x))/pi)  

angle=asin(gap/2/ir)  ;									// half opening angle of fixture
tp_angle=(360-angle*2)/(360/45);						// distribute T cuts at 45° angles


module t_cut(){
	union(){
		translate([ir+wall/2 +bcut/2,0,0]) rotate([0,0,90+bangle])translate([ir*bfaktor/2,bcut/2,0])cube([ir*bfaktor,bcut ,z_dim+1],center=true); 
		translate([ir+wall/2 +bcut/2,0,0]) rotate([0,0,90-bangle])translate([-ir*bfaktor/2+0.01,bcut/2,0])cube([ir*bfaktor,bcut ,z_dim+1],center=true); 
		translate([(ir+wall/2)/2,0,0]) cube([ir+wall/2,bslot,z_dim+1],center=true); 
	}
}


difference(){
	union(){
		difference(){
			cylinder( h=z_dim,r= ir+wall, center=true, $fn=44);

		rotate([0,0,-angle/pr])translate([-((ir+wall)+fix_dia*1.8)/2,-(ir+wall/2)/4+0.0,0]) cube([(ir+wall)+fix_dia*1.8,((ir+wall/2))/2,z_dim+1],center=true);
	rotate([0,0, angle/pr])translate([-((ir+wall)+fix_dia*1.8)/2,(ir+wall/2)/4-0.0,0]) cube([(ir+wall)+fix_dia*1.8,((ir+wall/2))/2,z_dim+1],center=true);
}
		rotate([0,0,-angle/pr])translate([-((ir+wall)+fix_dia*1.8)/2-ir/2-wall/4,(ir+wall/2)/4+0.01,0]) cube([ wall/2+fix_dia*1.8,((ir+wall/2))/2,z_dim],center=true);
		rotate([0,0, angle/pr])translate([-((ir+wall)+fix_dia*1.8)/2-ir/2-wall/4,-(ir+wall/2)/4-0.01,0]) cube([wall/2+fix_dia*1.8,((ir+wall/2))/2,z_dim],center=true);

	}

	// center rod cut 
	cylinder( h=z_dim+1,r= ir, center=true, $fn=24);																// inner cut
	translate([0,0,-z_dim/2-0.1+(ir+wall/6)/2])rotate([0,0,1])cylinder( h=ir+wall/6,r1= ir+wall/6,r2=(ir+wall/6)/2, center=true, $fn=24);   // cone inner cut bottom
	translate([0,0, z_dim/2+0.1-(ir+wall/6)/2])rotate([0,0,1])cylinder( h=ir+wall/6,r2= ir+wall/6,r1=(ir+wall/6)/2, center=true, $fn=24);  	// cone inner cut top

	// bolt cuts
	translate([-ir-fix_dia*2.3,0,0])rotate([0,0,-angle])translate([0,8,0])rotate([90,0,0])	cylinder (h=16,r=fix_dia/2,center=true,$fn=12);
	translate([-ir-fix_dia*2.3,0,0])rotate([0,0,angle])translate([0,-8,0])rotate([90,0,0])	cylinder (h=16,r=fix_dia/2,center=true,$fn=12);


	// cut T
	rotate([0,0,+tp_angle*1]) t_cut();
	rotate([0,0,-tp_angle*1]) t_cut();
	rotate([0,0,+tp_angle*3]) t_cut();
	rotate([0,0,-tp_angle*3]) t_cut();

	// cut mounting path
	translate([(-ir-wall-z_dim)/2,0,0])cube([(ir+wall)+z_dim+1,gap,z_dim+1],center=true);
	


}

}


