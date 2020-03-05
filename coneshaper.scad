/*
dia = 31.75;
hi = 9;
cut = 0;
*/


dia = 31.75;
hi = 14;
cut = 5;


translate([0,0,0])mouse_conenozzle(dia,hi,cut);


module mouse_conenozzle(dia,hi,cut){
//dia = 31;
//hi = 9;
difference(){
union(){
translate([0,0,hi+1])cylinder(r=(dia+6)/2,h=hi-cut,$fn=30);
cylinder(r2=(dia+6)/2,r1=10,h=hi+1,$fn=30);
}
translate([0,0,2])cylinder(r1=(dia*0.4)/2,r2=(dia+0.6-6.125)/2,h=hi-0.9,$fn=30);
translate([0,0,hi+3])cylinder(r=(dia+0.4)/2,h=hi*3,$fn=30);
translate([0,0,hi+1])cylinder(r=(dia+0.4-6.125)/2,h=hi*3,$fn=30);
translate([0,0,-1])cylinder(r=(5.5)/2,h=hi*3,$fn=30);
}
}




