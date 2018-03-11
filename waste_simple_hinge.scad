t 			= 0.3; // tolerance
mNutsR 		= 3+2; // mounting nuts radius
mNutsTR		= 5+4; // mounting nuts top radius
mNutD		= 9; // mounting nuts distance from each other and from sides
hNutR		= 3.3; // hinge nut radius
w 			= 15+2.5; // base plate width
h 			= 30+10; // base plate height
th 			= 6; // base plate thickness
ch			= h/3; // middle cut height
o 			= 1; // slight offset for render errors
supportO 	= -1+7; // slight overlap between sides for support

module hindgePlate(w=20,h=40,th=6)
{ 
	difference()
	{		
		basePlate(h,w,th);
		translate([0,-1,th/2]) rotate([-90,0,0]) cylinder(r=(hNutR+t)/2,h=h+2,center = false, $fn=20);
	}
}
module basePlate(h=40,w=20,th=6)
{ 
	union()
	{
		cube([w,h,th]);
		translate([0,0,th/2]) rotate([-90,0,0]) cylinder(r=th/2,h=h,center = false, $fn=20);
	}
}

module female()
{
	difference()
	{
		union(){
		hindgePlate(w,h,th);
		translate([0,-23,0])farm();
		}
		translate([-(th+o)/2,ch,-o]) cube([th+o,ch,th+o*2]);
		translate([3,0,0])fholes();
	}
	
	
}

module male()
{
	difference()
	{
		hindgePlate(w,h,th);
		#translate([-(th+o)/2,-o,-o]) cube([th+o,ch+o,th+o*2]);
		#translate([-(th+o)/2,h-ch,-o]) cube([th+o,ch+o,th+o*2]);
		translate([3,0,0])holes();
	}
	
}

module holes()
{
	translate([mNutD,h/2,th/2])
	{
		translate([0,-mNutD,0]) mountingNut();
		//mountingNut();
		translate([0,mNutD,0]) mountingNut();
	}
}

module fholes()
{
	translate([mNutD,h/2,th/2])
	{
		translate([0,-mNutD+22,-0]) mountingNut();
		//mountingNut();
		translate([20,mNutD-20.0,0]) mountingNut();
	}
}

module farm(){
	translate([mNutD,h/2,th/2])
		translate([0,-mNutD+12,-3]) cube([35,17,6]);

}
module mountingNut() {
	translate([0,0,2])cylinder(r=(mNutsTR+t)/2,h=20,center = false, $fn=20);
	#cylinder(r=(mNutsR+t)/2,h=40,center = true, $fn=20);
}

/*
rotate([90,0,0]){
	//just a bit of overlap will create its onw support
	translate([supportO,0,0]) female();
	translate([0,h,0]) rotate([0,0,180]) male();
}
*/
