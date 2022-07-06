//syringe_1ml_stack_1piece_multichannel_clamp();


module syringe_1ml_stack_1piece_multichannel_clamp(){
difference(){union(){
//clamp part
translate([-0.3-14,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6+3])cube([5,6.5,35-15-4-3]);
translate([-0.3-14-(8*14)-3.5,0+146-2,-0.8])
translate([-110+54.5+6-14,-81.5+1.5+40+6.6+3.5-14.5,16+15+6+3])cube([5,6.5,35-15-4-3]);
for(i=[0:7]){
translate([0-42.5-(i*14),-4+230-80-2,0])iverntech_pump_slider_plate_connect_multichannel();
}
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
for(i=[0:7]){
translate([-14,0,0]){
translate([-77.5-(i*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(i*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
translate([-77.5-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
translate([-77.5-(8*14)-0.5,100-0.5,50-4])rotate([90,90,0])cylinder(r=3.8/2,h=100);
translate([-77.5-(8*14)-0.5,130,50-4])rotate([90,90,0])cylinder(r=2.8/2,h=100);
}
}
}


module iverntech_pump_slider_plate_connect_multichannel(){
translate([-0.3,0,-0.8])difference(){
union(){
translate([-110+54.5+6,-81.5+1.5+40+6.6+3.5-14.5,16+15+6+3])cube([22+5-12,6.5,35-15-4-3]);
}
translate([-110+59+5.3+4.5-1,-81.5+1.5+146,36-3.4+10.25+2])rotate([90,90,0])cylinder(r=3.7/2,h=200);
//translate([-110+59+5.3+4.5-1-4.5,-81.5+1.5+146,36-3.4+10.25+2-6])rotate([90,90,0])cylinder(r=2.8/2,h=200);
translate([-110+59+5.3+4.5-1+4.5+3,-81.5+1.5+146,36-3.4+10.25+2+2])rotate([90,90,0])cylinder(r=2.8/2,h=200);
for(i=[0:8]){
//translate([-110+59+5.3+4.5-1,-81.5+1.5+146-4-1.5,36-3.4+10.25+2+i])rotate([90,90,0])cylinder(r=10.5/2,h=100);
translate([-110+59+5.3+4.5-1,-81.5+1.5+146-4-1.5-103.4,36-3.4+10.25+2+i])rotate([90,90,0])cylinder(r=10.5/2,h=1.5);
translate([-110+59+5.3+4.5-1,-81.5+1.5+146-4-1.5-7,36-3.4+10.25+2+i])rotate([90,90,0])cylinder(r=4.5/2,h=100);
}
}
}

