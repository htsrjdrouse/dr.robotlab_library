/* basic box for smoothie board V1,only the bottom, the top is open and the sides are available */
use <myLibs.scad>

// width and length of board
w= 50.8;
l= 96.0;
board_thickness= 1.65;

// hole postions relative to edges and hole diameter and standoff height and diameter
standoff_ht= 3;
standoff_id= 3-0.5;
standoff_od= standoff_id+(2.1*2);
hole_dia= 3.6;

holesepl= 88.88;
holesepw= 42.96;
// [ [x1, y1], [x2, y2],..., ] offsets from edges
holes= [ [-holesepw/2, -holesepl/2], [holesepw/2, holesepl/2], [-holesepw/2, holesepl/2], [holesepw/2, -holesepl/2] ];

rounded= 10; // radius of rounded corners
base_thickness= 2; // base thickness
wall_thickness= 2.1; // wall thickness

ht= standoff_ht+base_thickness;

module base() {
	union() {
		difference() {
			rounded_base(w+rounded, l+rounded, rounded, ht);
			translate([0, 0, base_thickness]) rounded_base(w+rounded-wall_thickness, l+rounded-wall_thickness, rounded, ht);
		}

		for(p= holes) {
			translate([p[0],p[1],base_thickness]) cylinder(r=standoff_od/2, h=standoff_ht);
		}
	}
}

module tab() {
	w= 40;
	l= 14;
	h= 5;
	difference() {
		translate([0, 0, h/2])  cube([w, l, h], center=true);
		translate([-10, 0, -1])  hole(4, 20);
		translate([10, 0, -1])  hole(4, 20);
	}
}

module azteegx5_case() {
	// difference() { // for screw holes
	// 	base();
	// 	for(p= holes) #translate([p[0], p[1], -20/2]) hole(standoff_id, 20);
	// }
	// for pins
	union() {
		base();
		for(p= holes) #translate([p[0], p[1], ht-0.1]) cylinder(r1= hole_dia/2+0.5, r2=(hole_dia-0.5)/2, h=board_thickness*2, $fn=64);
		// tabs
		//translate([0, l/2+11, 0]) tab();
		//translate([0, -l/2-11, 0]) tab();
	}
}

//azteegx5_case();

//% translate([-w/2, -l/2, standoff_ht+base_thickness]) cube(size=[w, l, board_thickness], center=false);
