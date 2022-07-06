//iverntech_slidermount_motormount

module iverntech_slidermount_motormount(){
bg = 0.5;
difference(){
iverntech_pump_slider();
translate([-54,-75.5,-50])cylinder(r=3.7/2,h=100);
translate([-54-14,-75.5,-50])cylinder(r=3.7/2,h=100);
translate([-54,-75.5,-50])cylinder(r=8.5/2,h=48);
translate([-54-14,-75.5,-50])cylinder(r=8.5/2,h=48);
}
}

module iverntech_pump_slider(){
bg = 0.5;
iverntech_slider_pump_base();
}

module iverntech_slider_pump_base(){
//guide TS-04-09-50
//carriage TW-04-09
translate([2,-30,0]){
translate([-45,-33-10,-6])difference(){
union(){
translate([0-7.5,-40,0])cube([10+15+10+6,68+40+23+20,6+3]);
translate([0-7.5,-40-1.0,0])cube([10+15+13,10,6+3]);
translate([0-7.5-5-5.5-22,-40-1.3-20+20.3+31-5,0])cube([12+22,53-42.8+10,6+3]);
}
translate([0-7.5+18,-40+18,3+3.4])cube([10+15+10+6-18+2,68+40+23+20-18+2,6]);
translate([5+20,20+(-5.5*10)-1.5,-10]){cylinder(r=3.7/2,h=40);translate([0,0,5+11])cylinder(r=6.7/2,h=3.5);}//cylinder(r=5.4/2,h=3+4,$fn=6);}
translate([0,-33,0])for(a=[2,3,4,5]){
translate([2,10+(a*25),-5]){cylinder(r=2.8/2,h=40);}
}
translate([17.5,-33,0])for(a=[4,8,12]){
translate([5+4,10+(a*10),-5]){translate([0,0,8.4+1])cylinder(r=4.7/2,h=8);translate([0,0,5])cylinder(r=8/2,h=4.5);}
}
}
}//end translate
}




