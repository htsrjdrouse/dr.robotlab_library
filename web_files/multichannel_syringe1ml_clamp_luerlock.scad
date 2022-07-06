//multichannel_syringe1ml_clamp_luerlock();

module multichannel_syringe1ml_clamp_luerlock(){
difference(){
union(){
translate([-183-13/2-5,170-13/2+60,30]){
translate([0,2+6.9,0])rotate([0,0,0])cube([120,13.9-7,15]);
translate([69,2-15-1,0])rotate([0,0,0])cube([18+8,23+20+1,5]);
}
}
translate([-120,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+15,220-60+60,0])cylinder(r=3.7/2,h=100);
translate([-120+7.5,220-60+23+60,0])cylinder(r=3.7/2,h=100);
for(i=[0:7]){
translate([-183+(i*14),170,44])rotate([0,90,90])syringe_1ml();
translate([-183+(i*14),170-50,44])rotate([0,90,90])cylinder(r=6/2,h=100);
}
}
}


module syringe_1ml(){
union(){
color("lightblue")translate([0,0,100])cylinder(r=3/2,h=30);
color("white")cylinder(r=9.5/2,h=92);
color("white")cylinder(r2=5.5/2,r1=9.5/2,h=92+7);
color("white")translate([0,0,-12-(71-12)])cylinder(r=4/2,h=92);
color("white")translate([0,0,-12-(71-12)])cylinder(r=(10-0.2)/2,h=1.5);
color("white")translate([0,0,0])cylinder(r=(10.5)/2,h=10.5);
color("white")translate([-12.5,-13/2-1,0])cube([25,13+2,2.4]);
}
}

