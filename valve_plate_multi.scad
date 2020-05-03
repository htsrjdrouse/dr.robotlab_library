
//translate([23,550,8.5])rotate([90,0,0])tslot20(400);

//smallsyringe_valvesupportmodule_plate_4valve_B();
smallsyringe_valvesupportmodule_plate_4valve_A();

module smallsyringe_valvesupportmodule_plate_4valve_A(){
difference(){
smallsyringe_valvesupportmodule_plate_4valve();
translate([-60,152,0])#cube([250,200,50]);
}
}

module smallsyringe_valvesupportmodule_plate_4valve_B(){
difference(){
smallsyringe_valvesupportmodule_plate_4valve();
translate([-60,152+195,0])#cube([250,200,50]);
}
}





module smallsyringe_valvesupportmodule_plate_4valve(){
//projection(cut=false){
difference(){union(){
for(i=[0:3]){
color("")translate([52,190+(i*72),63])rotate([-90,90,0])smallsyringe_valvesupportmodule_plate_pre4();
color("")translate([52-60.5,190+85+(i*72),33.7])cube([35,5,5]);
}
color("")translate([52-60.5+35,190+25,33.7])cube([20,270,5]);
}
translate([38,240,0])#cylinder(r=5.7/2,h=300,$fn=30);
translate([38,240+50,0])#cylinder(r=5.7/2,h=300,$fn=30);
translate([38,240+100,0])#cylinder(r=5.7/2,h=300,$fn=30);
translate([38,240+150,0])#cylinder(r=5.7/2,h=300,$fn=30);
translate([38,240+200,0])#cylinder(r=5.7/2,h=300,$fn=30);
}
//}
}



module smallsyringe_valvesupportmodule_plate_pre4(){
translate([45,15.5,0])difference(){
union(){
translate([0,0,-70])difference(){union(){
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+8])cube([5,20+15-20,53+8-8]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5])cube([5,20+15,15-1]);
//translate([-20-1.6+0.9,-32.5+5+17.5,83+5+39+8.5])#cube([5,20,22]);
translate([-20-1.6+0.9,-32.5+5+17.5+20,83+5+39+15.5+1])cube([5,20+15,15-1]);}

translate([0,0,-70])translate([-20-1.6+0.9-0.1,-32.5+5+17.5-0.1,83+130])cube([5.5,20,53+7]);
for(i=[0:5]){
translate([-30,0+16,90+10-i])rotate([90,0,90]){#cylinder(r=4/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+16,90+40-i])rotate([90,0,90]){#cylinder(r=4/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
}
translate([-30,0,90+12])rotate([90,0,90])cylinder(r=5.6/2,h=20,$fn=30);
translate([-30,0,90+38])rotate([90,0,90])cylinder(r=5.6/2,h=20,$fn=30);
translate([-30,0+20-5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=2.8/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,96.9+1.7])rotate([90,0,90]){cylinder(r=2.8/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20-5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=2.8/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
translate([-30,0+20+5+15,147.7-0.5])rotate([90,0,90]){cylinder(r=2.8/2,h=20,$fn=30);}//translate([0,0,13])cylinder(r=6.8/2,h=3,$fn=6);}
}
}
translate([18.5+6,0,0])cylinder(r=9.5/2,h=200);
translate([0+18.5+6,0,0])difference(){union(){translate([0,0,33])cylinder(h = 2.5, d1 = 10, d2 = 16.5, center = false);translate([0,0,32+3])cylinder(r=16.5/2,h=25);}cylinder(r=9.5/2,h=200);}
}
}







//(C) Nathan Zadoks 2011
//CC-BY-SA or GPLv2, pick your poison.
module tslot(
	size=10,	//size of each side
	length=10,	//length. descriptive enough, no?
	thickness=3,	//thickness of the 'sheet'
	gap=0,		//gap, thickness of the lower part of the 'T'
	center=false,	//somewhat vague. todo.
	nut=false,	//set to true to make a fitting T-slot nut
){
	start=thickness/sqrt(2);
	if(nut){
		linear_extrude(height=10)
		intersection(){
			polygon([[size/2-gap/2,0],[size/2-gap/2,thickness],[thickness+start,thickness],[size/2,size/2-2],[size-thickness-start,thickness],[size/2+gap/2,thickness],[size/2+gap/2,0]]);
			square([size,size/2-(gap+thickness)/2]);
		}
	}	
	else{
		color([0.5,0.5,0.5])
		linear_extrude(height=length,center=center)
		translate([15,15])
		difference(){
			union(){
				for(d=[0:3]) rotate([0,0,d*90]) polygon(points=[
					[0,0],
					[0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
					[size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
				]);
				square(gap+thickness,center=true);
			}
			circle(r=gap/2,center=true);
		}
	}
}
module tslot20(length,nut){
	tslot(size=20,gap=5.26,thickness=1.5,length=length,nut=nut);
}
module tslot30(length,nut){
	tslot(size=30,gap=8.13,thickness=2.55,length=length,nut=nut);
}
module tslot30_3060(length,nut){
	union(){
		tslot30(length,nut);
		translate([30,0,0])
		tslot30(length,nut);
	}
}















