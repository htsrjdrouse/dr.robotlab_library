pi= 3.14159265359;

module hole(diam, height, clearance= 0.1)
{
        fn= round(diam * pi / 0.5);
        cylinder(h= height, r=diam / 2 / cos(180 / fn) + clearance, $fn=fn);
}

module nutTrap(ffd, faces=6, height=1)
{
	cylinder(h= height, r=ffd / cos(180 / faces) / 2 + 0.05, $fn=faces);
}

// A slot which has rounded ends, but total length is l
module slot(d= 4, l= 8, ht= 1, clearance=0.1) {
	fn= round(d * pi / 0.5);
	rd= d / 2 / cos(180 / fn) + clearance;
	d1= rd*2;
	union() {
		translate([0,0,ht/2]) cube([l-d1, d1, ht], center=true);
		translate([-(l-d1)/2, 0, ht/2]) cylinder(h=ht, r=rd, $fn=fn, center=true);
		translate([(l-d1)/2, 0, ht/2]) cylinder(h=ht, r=rd, $fn=fn, center=true);
	}

}

/**
 * Standard right-angled triangle
 *
 * @param number o_len Lenght of the opposite side
 * @param number a_len Lenght of the adjacent side
 * @param number depth How wide/deep the triangle is in the 3rd dimension
 * @todo a better way ?
 */
module triangle(o_len, a_len, depth)
{
    linear_extrude(height=depth)
    {
        polygon(points=[[0,0],[a_len,0],[0,o_len]], paths=[[0,1,2]]);
    }
}

module rounded_base(w, l, r, h) {
	v1= [w/2-r, l/2-r, 0];
	v2= [-w/2+r, -l/2+r, 0];
	v3= [-w/2+r, l/2-r, 0];
	v4= [w/2-r, -l/2+r, 0];
	hull() {
		translate(v1) cylinder(r= r, h=h);
		translate(v2) cylinder(r= r, h=h);
		translate(v3) cylinder(r= r, h=h);
		translate(v4) cylinder(r= r, h=h);
	}
}
