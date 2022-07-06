//multichannel_syringe1ml_clamp_extrusion_connect();


module multichannel_syringe1ml_clamp_extrusion_connect(){
difference(){
union(){
translate([-183-13/2-5,170-13/2,30]){
translate([69,2-15,-9.5])rotate([0,0,0])cube([18+8,23+20,9.48]);
}
}
translate([-120,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+15,220-60,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5,220-60+23,0])cylinder(r=2.8/2,h=100);
translate([-120+7.5-4,220-60+23+7,0])cylinder(r=4.7/2,h=100);
translate([-120+7.5-4,220-60+23+7,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,26.5-2])cylinder(r=10.5/2,h=5.5);
translate([-120+7.5-4,220-60+23-28.5-1,0])cylinder(r=4.7/2,h=100);
}
}
