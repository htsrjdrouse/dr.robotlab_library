
//power5v();


//amp_powersupply_wallB_plug();


power_connect_panel();


module power5v(){
 difference(){
 cube([50,50,2]);
 translate([8,10,-0.1])cylinder(r=4.7/2,h=30,$fn=30);
 translate([8,10+28,-0.1])cylinder(r=4.7/2,h=30,$fn=30);
 translate([8+18,10+14,-0.1])cylinder(r=24.7/2,h=30,$fn=30);
 translate([8+36,10,-0.1])cylinder(r=4.7/2,h=30,$fn=30);
 }
}

module power12v(){
 difference(){
 cube([165,70,2]);
 translate([35,10,-1])cube([100,50,5]);
 translate([8,10,-0.1])cylinder(r=5.7/2,h=30,$fn=30);
 translate([8,10+50,-0.1])cylinder(r=5.7/2,h=30,$fn=30);
 translate([151,0,0]){
 translate([8,10,-0.1])#cylinder(r=5.7/2,h=30,$fn=30);
 translate([8,10+50,-0.1])cylinder(r=5.7/2,h=30,$fn=30);
 }
 }
}


module amp_powersupply_wallB_plug(){
//URBEST�Inlet Module Plug Fuse Switch Male Power Socket 10A 250V 3 Pin IEC320 C14
translate([320-192-143,15+10,-0.1-29+47-4])rotate([90,0,90])difference(){
union(){
translate([-3,-3,0])cube([(48+6),(28+6),3]);
translate([-3+54/2-4,-3-7,0])cube([(8),(8),3]);
translate([-3+54/2-4,-3+34-2,0])cube([(8),(8),3]);
}
translate([0,-0,-10])cube([(48),(28),35+5]);
translate([(48)/2,(28)/2-(39)/2,-10])cylinder(r=4.2/2,h=35);
translate([(48)/2,(28)/2+(39)/2,-10])cylinder(r=4.2/2,h=35);
}
difference(){
translate([-15,-8+20,0])cube([3,114.31+10+3+3-57,55]);
translate([320-192-143-10,15+10-0,-0.1-29+47-4-0])rotate([90,0,90])cube([(48),(28),35]);
translate([-42-110-4,5+47,30-3.5])translate([150-10+5-20,-5+10-8,-30-0.1+12])rotate([90,0,90])cylinder(r=4.2/2,h=50);
translate([-42-110-4,5+47,30-3.5+39])translate([150-10+5-20,-5+10-8,-30-0.1+12])rotate([90,0,90])cylinder(r=4.2/2,h=50);
translate([-42-110,5,30])translate([150-10+5-20,-5+10-8,-30-0.1+12])rotate([90,0,90])cylinder(r=3.7/2,h=50);
translate([-42-110,5+110.3,30])translate([150-10+5-20,-5+10-8,-30-0.1+12])rotate([90,0,90])cylinder(r=3.7/2,h=50);
translate([-42-110,5+20,30+15])rotate([-90,0,0])
translate([150-10+5-20,-5+10-8,-30-0.1+12])rotate([90,0,90])cylinder(r=3.7/2,h=50);
translate([-42-110,5+20,30+15])rotate([-90,0,0])
translate([150-10+5-20,-5+10-8,-30-0.1+12+100.5])rotate([90,0,90])cylinder(r=3.7/2,h=500);
}
}















module power_connect_panel(){
difference(){
union(){
translate([92+34-53,410-10,-53])rotate([90,0,0])cube([110,43,3]);
translate([92+34-53+32,410-10,-53-4])rotate([90,0,0])cube([40,43+8,3]);
}
#translate([92+34-53+28,410-10+1,-53+7])#rotate([90,0,0])cube([48.5,29,3+5]);
#translate([92+34-53+28+48.5/2,410-10+1,-53+7+29/2+20])#rotate([90,0,0])cylinder(r=3.7/2,h=50,$fn=30);
#translate([92+34-53+28+48.5/2,410-10+1,-53+7+29/2-20])#rotate([90,0,0])cylinder(r=3.7/2,h=50,$fn=30);


translate([92+34-53+6-2,410-10,-53+4])rotate([90,0,0])cylinder(r=3.7/2,h=30);
translate([92+34-53+6-2,410-10,-53+4+35])rotate([90,0,0])cylinder(r=3.7/2,h=30);
//translate([92+34-53+6-2+50,410-10,-53+4])rotate([90,0,0])cylinder(r=3.7/2,h=30);
//translate([92+34-53+6-2+50,410-10,-53+4+35])rotate([90,0,0])cylinder(r=3.7/2,h=30);
translate([92+34-53+6-2+100,410-10,-53+4])rotate([90,0,0])cylinder(r=3.7/2,h=30);
translate([92+34-53+6-2+100,410-10,-53+4+35])rotate([90,0,0])cylinder(r=3.7/2,h=30);
}
}








