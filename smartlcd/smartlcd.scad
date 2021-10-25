// CC BY-NC-SA
// (C) Ricky White Jan 2015.
//
// This file requires the files of the origional project to be unzipped into the same directory as this file.
//	Case_for_the_Full_Graphic_Smart_LCD_Controller.zip
// This is so the origional STL files can be used and modified by mods_for_display_case.scad
//
///////////////////////////////////////////////////////////////////////

// parameters
//---------------------------------------------------------------------
// The push button switch appears to be different heights on different boards.  on mine it measures 6mm from the bottom of the PCB to the top of the switch not pressed.
// This parameter will adjust both the putton size and the switch support in the front of the case
switch_height_from_board_base = 6;	// needed for my recent display board sources from aliexpress.



// Constants
orig_switch_height_from_board_base = 4;


// modification code
// Spplies SD card cutout and other modifications
//---------------------------------------------------------------------
module card_access_wall( height=15.7)
{
	$fa=0.01;

	translate([100,55,0])
	{
		// wall
		difference()
		{
			difference()
			{
				translate([50,0,0]) cylinder(height, d=100);
				translate([52,0,0]) cylinder(height, d=100);
				translate([8,-50,0])cube([100,200,40]);
			}
			translate([-7,-50,0]) cube([10,1000,30]);
		}

	translate([1.5,-20,0]) cube([2.5,40,height]);
	}



}


module card_access_cutout()
{
	$fa=0.01;

	translate([100,55,-1])
	{
		// wall
		translate([52,0,0]) cylinder(20, d=100);
		translate([52,0,1.86]) cylinder(3.5, d=103);
	}
}

module card_access_cutout_front()
{
	$fa=0.01;

	translate([100,55,-1])
	{
		// wall
		translate([52,0,0]) cylinder(20, d=100);
	}
}


// curved part of interlocking lip of case
module case_lip(oversize=3)
{
	$fa=0.01;
	translate([100,55,0.70]) translate([52,0,0.8])
	{
		difference()
		{
			difference()
			{
				cylinder(3.5, d=103+oversize);
				cylinder(3.5, d=103);
			}
			union()
			{
				translate([-46,-60,-1.20]) cube([100,120,5]);
				translate([-43.7,-60,0]) cube([100,120,10]);
			}
		}
	}
}

// ALlows shortening of the button guild for switched larger than the origional
module mask_button_guide()
{
	delta=switch_height_from_board_base - orig_switch_height_from_board_base;
	translate([45,4,6.4-delta])
	{
		cube([11,22,40]);
	}
}

module case_front()
{
	difference()
	{
		union()
		{
			difference()
			{
				translate([-142,-55,-11])	import("Case_for_the_Full_Graphic_Smart_LCD_Controller6b8d711566f4440f03e314ffa0c05256-Top_Case_FGD.stl", convexity=10);
				card_access_cutout_front();
			}
			translate([0,0,-0.4]) card_access_wall(16);
		}
		// slot
		translate([100,40,12.7])	cube([10,30,3]);
		// slot for lip of rear case
		translate([1,0,12.7]) case_lip(10);

		// shorteN switch post for taller switches
		mask_button_guide();
	}

}


module case_rear()
{
	difference()
	{
		union()
		{
			difference()
			{
				rotate([0,180,0]) translate([-276,-55,-24])
				{
				import("Case_for_the_Full_Graphic_Smart_LCD_Controller6970ce52c4a6201186ce8303b1a55a79-Bottom_Case_FGD.stl", convexity=10);
				}
				card_access_cutout();

			}
			translate([0,0,4.37]) card_access_wall(6.3);
		}
		translate([107,10,-0.2]) cube([10,100,4.5]);
	}


	difference()
	{
		case_lip();
		// Slot
		translate([90,40,1])	cube([20,30,4]);
	}
}



// Imports the origional button and scales it
// I print tyhe button narrow end down so it gets a nice finish from the glass bed of my printer.
// My prusa i3 deravitive printer is fine with the overhang required to do this.  yours may differ.
module button()
{
	delta=switch_height_from_board_base - orig_switch_height_from_board_base;
	orig_height = 10;		// height of origional button in STL
	new_height = orig_height-delta;	// new switch types will always be fatter than the origional (assumption)

	z_scale = new_height / orig_height;
	scale([1*0.9,1*0.9,z_scale])	rotate([-90,0,0]) 
	{
		import("Case_for_the_Full_Graphic_Smart_LCD_Controllerf9869a9a4c4234bc72a3bfbe97b37588-Kill_Button_FGD.stl", convexity=10);
	}
}



// Render
//----------------------------------------------------------------------------
translate([-60+25,70+5+2,50])rotate([90,90,0])import("../PerfectHinge40mm.stl");

translate([0,0,-2])color("lime")rotate([0,0,0])lcd_connectblock();
translate([50.5,43+1.2,-0.40])color("pink")import("../tft35_lcd/CaseUpper.stl");
module lcd_connectblock(){
//connect block
translate([35,0,9.5+10])difference(){
union(){
translate([-60,30,-10-8])rotate([0,0,0])cube([15,45,12+8]);
translate([-60,30,-10-8])rotate([0,0,0])cube([25,45,8]);
}
#translate([-60+7.7,35.5,-25+10])rotate([0,0,0])cylinder(r=2.8/2,h=30,$fn=30);
#translate([-60+7.7,35.5+29,-25+10])rotate([0,0,0])cylinder(r=2.8/2,h=30,$fn=30);
translate([-60+7.7,35.5,-25+19])rotate([0,0,0])cylinder(r=9.8/2,h=30,$fn=30);
translate([-60+7.7,35.5+29,-25+19])rotate([0,0,0])cylinder(r=9.8/2,h=30,$fn=30);
translate([0,5+2,23]){
#translate([-60+7.7-50,35.5,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
#translate([-60+7.7-50,35.5+29,-25])rotate([0,90,0])cylinder(r=2.8/2,h=300,$fn=30);
}
}
}
/*
translate([35,0,9.5])difference(){
translate([-60,30,-10])rotate([0,0,0])cube([25,45,8]);
translate([-60+7.7,35.5,-25])rotate([0,0,0])#cylinder(r=2.8/2,h=30,$fn=30);
translate([-60+7.7,35.5+29,-25])rotate([0,0,0])#cylinder(r=2.8/2,h=30,$fn=30);
}
*/
case_front();
/*
*/
//rotate([180,0,0]) translate([0,10,-11]) case_rear();
//translate([100,0,10]) button();
