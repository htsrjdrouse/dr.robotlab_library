include <Pulley_T-MXL-XL-HTD-GT2_N-tooth.scad>
include <uploads_15_36_4c_92_a6_timing_belts.scad>
include <hardware.scad>
include <../xgantry_modular_fix.scad>

/*
*/




/*
translate([0,0,-2])difference(){
translate([5,-30,-35])rotate([90,0,180])multichannel_cameramount_tipholder();
#translate([0+19.5,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
#translate([0+19.5+36,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
}
*/
//right_gripper_pusher();

//left_gripper_pusher();

//gripper_paddles();
//gripper_track_pipette();

//gripper_track();
//gripper_pusher();

//gripper_pulley_motormount();

//translate([31.5,45,-13])rotate([0,0,16])color("lime")gripper_pulley_display_prep();
//gripper_assembly_paddles();
//gripper_assembly_arms();
//gripperarm();

//f3_bracket();

//steppermotor_board_holder();

module gripperarm_with_tips(){
translate([93,0,12])rotate([0,90,90])tslot20(100);
/*
translate([4.4,0+6,-2+10])rotate([0,0,90])difference(){
translate([5,-30,-35])rotate([90,0,180])multichannel_cameramount_tipholder();
translate([0+19.5,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
translate([0+19.5+36,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
}
*/
gripper_assembly_arms();
}

module gripperarm_with_paddles(){
translate([93,0,12])rotate([0,90,90])tslot20(100);
translate([4.4,0+6,-2+10])rotate([0,0,90])difference(){
translate([5,-30,-35])rotate([90,0,180])multichannel_cameramount_tipholder();
translate([0+19.5,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
translate([0+19.5+36,0+50-50+23-3,-50.2+46+8-8])rotate([90,0,0])cylinder(r=2.8/2,h=15,$fn=30);
}
/*
*/
gripper_assembly_paddles();
}







module steppermotor_board_holder(){

difference(){
union(){
cube([50,70,4]);
translate([-15,25,0])#cube([20,20,4]);
translate([45,25,0])#cube([20,20,4]);
translate([(50-34.5)/2,(70-54.5)/2,0]){
#cylinder(r=8/2,h=10,$fn=30);
#translate([34.5,54.5,0])cylinder(r=8/2,h=10,$fn=30);
#translate([34.5,0,0])cylinder(r=8/2,h=10,$fn=30);
#translate([0,54.5,0])cylinder(r=8/2,h=10,$fn=30);
}
}
translate([15,25,-1])cube([20,20,14]);
translate([-15+8,35,-5])#cylinder(r=4.7/2,h=30,$fn=30);
translate([45+12,35,0])#cylinder(r=4.7/2,h=30,$fn=30);
translate([(50-34.5)/2,(70-54.5)/2,-2]){
#cylinder(r=2/2,h=30,$fn=30);
#translate([34.5,54.5,0])cylinder(r=2/2,h=30,$fn=30);
#translate([34.5,0,0])cylinder(r=2/2,h=30,$fn=30);
#translate([0,54.5,0])cylinder(r=2/2,h=30,$fn=30);
}
}
}



module f3_bracket(){

difference(){
union(){
cube([25,35,4]);
translate([0,-2.7,0])cube([25,4,9+2]);
translate([0,35-4+2.7,0])cube([25,4,9+2]);
}
translate([25/2-8,50,8])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([25/2+8,50,8])rotate([90,0,0])cylinder(r=2.8/2,h=130,$fn=30);
translate([4.5,35/2,-5])cylinder(r=2.8/2,h=30,$fn=30);
translate([4.5,35/2+8,-5])cylinder(r=1.8/2,h=30,$fn=30);
translate([4.5,35/2-8,-5])cylinder(r=1.8/2,h=30,$fn=30);
translate([25-4.5,35/2,-5])cylinder(r=2.8/2,h=30,$fn=30);
translate([25-4.5,35/2+8,-5])cylinder(r=1.8/2,h=30,$fn=30);
translate([25-4.5,35/2-8,-5])cylinder(r=1.8/2,h=30,$fn=30);
translate([25/2,35/2+8,-5])cylinder(r=2.8/2,h=30,$fn=30);
translate([25/2,35/2-8,-5])cylinder(r=2.8/2,h=30,$fn=30);
}
}


module gripper_assembly_arms(){

gripper_assembly();
gripper_screws();
translate([0,83,0])gripper_screws();
gripper_nuts();
translate([0,83,0])gripper_nuts();
gripperarm();
translate([0,83,0])gripperarm();
}

module gripper_assembly_paddles(){
gripper_assembly();

translate([0,-2,0]){
gripper_screws();
gripper_paddles();
}
translate([0,2,0]){
translate([0,83,0])gripper_screws();
translate([0,83+6,0])mirror([0,1,0])gripper_paddles();
}
}

module gripper_paddles(){
translate([0,0,11]){
difference(){
union(){
color("grey")translate([3.5+56,3,-10.8+21])rotate([0,0,0])cylinder(r=8/2,h=12,$fn=30);
color("grey")translate([3.5,3,-10.8+21])rotate([0,0,0])cylinder(r=8/2,h=12,$fn=30);
}

translate([3.5+56+2,3+3+1,-10.8+21+5])rotate([0,0,45])cylinder(r=8/2,h=12,$fn=4);
translate([3.5+56-2,3+3+1,-10.8+21+5])rotate([0,0,45])cylinder(r=8/2,h=12,$fn=4);
translate([3.5+2,3+3+1,-10.8+21+5])rotate([0,0,45])cylinder(r=8/2,h=12,$fn=4);
translate([3.5-2,3+3+1,-10.8+21+5])rotate([0,0,45])cylinder(r=8/2,h=12,$fn=4);

color("grey")translate([3.5+56,3,-10.8+21])rotate([0,0,0])cylinder(r=2.8/2,h=4,$fn=30);
color("grey")translate([3.5,3,-10.8+21])rotate([0,0,0])cylinder(r=2.8/2,h=4,$fn=30);
}
}
}
module gripper_nuts(){
translate([0,0,11]){
color("silver")translate([3.5+56,3,-10.8+21])rotate([0,0,0])cylinder(r=5.7/2,h=4,$fn=6);
color("silver")translate([3.5,3,-10.8+21])rotate([0,0,0])cylinder(r=5.7/2,h=4,$fn=6);
color("silver")translate([3.5,3,-10.8+15])rotate([0,0,0])cylinder(r=5.7/2,h=4,$fn=6);
color("silver")translate([3.5+56,3,-10.8+15])rotate([0,0,0])cylinder(r=5.7/2,h=4,$fn=6);
}
}
module gripper_screws(){
translate([0,0,11]){
color("silver")translate([3.5,3,-10.8])rotate([0,0,0])cylinder(r=3.8/2,h=25,$fn=30);
color("silver")translate([3.5+56,3,-10.8])rotate([0,0,0])cylinder(r=3.8/2,h=25,$fn=30);
color("silver")translate([3.5,3,-10.8-3])rotate([0,0,0])cylinder(r=8.2/2,h=3,$fn=30);
color("silver")translate([3.5+56,3,-10.8-3])rotate([0,0,0])cylinder(r=8.2/2,h=3,$fn=30);
}
}

module gripperarm(){

translate([0,0,12.5])difference(){
translate([-55,-1,6.5])cube([103+20,8,6]);
translate([3.5,3,-10.8])rotate([0,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([3.5,3,-10.8+20])rotate([0,0,0])cylinder(r=6.8/2,h=4,$fn=6);
translate([3.5+56,3,-10.8])rotate([0,0,0])cylinder(r=3.8/2,h=50,$fn=30);
translate([3.5+56,3,-10.8+20])rotate([0,0,0])cylinder(r=6.8/2,h=50,$fn=6);
}
}

module gripper_pulley_display_prep(){
difference(){
gripper_pulley_display();
translate([0,30,3.8])rotate([90,0,0])cylinder(r=2.8/2,h=50,$fn=30);
}
}


module right_gripper_pusher(){
translate([0.1,0,0])difference(){
color("lightblue")gripper_pusher_longer();
translate([40+3,33,-50])cylinder(r=2/2,h=100,$fn=30);
translate([40+3-10,33,-50])cylinder(r=2/2,h=100,$fn=30);
}
}

module left_gripper_pusher(){
translate([-0.1,0,0])difference(){
translate([63,88.5+0.5,6.5])rotate([0,180,0])mirror([0,1,0])color("red")gripper_pusher_longer();
translate([40+3,58,-50])cylinder(r=2.8/2,h=100,$fn=30);
translate([40+3-10,58,-50])cylinder(r=2.8/2,h=100,$fn=30);
}

}
module gripper_assembly(){
translate([0,-2,0])right_gripper_pusher();
translate([0,2,0])left_gripper_pusher();
translate([0.2,5,0])color("blue")rotate([0,0,90])gripper_track();
translate([65-2.2,81,0])color("blue")rotate([0,0,-90])gripper_track();

translate([0,0,3]){
translate([31.5,45,-13])rotate([0,0,16])color("lime")gripper_pulley_display_prep();
translate([31.5,45,-20]){
nema17();
gripper_pulley_motormount();
}
}
}


module gripper_pulley_motormount(){
difference(){union(){
translate([40,-21,20-1.5])rotate([0,0,90])motormountthin();
translate([20+15,-31,0])cube([19,58,4]);
translate([20,-31,0])cube([19-2.4,58,8.5]);
translate([-38+1.7,-31,0])cube([19-2.4,58,8.5]);
}

translate([26.3,-40,0])rotate([0,0,90]){
translate([-2+25,-12.5+10-8-10,-58.5+5.5])cylinder(r=4.8/2,h=150,$fn=30);
translate([-2+55,-12.5+10-8-10,-58.5+5.5])cylinder(r=4.8/2,h=150,$fn=30);
}
translate([26.3,-40,0])rotate([0,0,90]){
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
}

translate([-26.3-5,-40,0])rotate([0,0,90]){
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=3.8/2,h=150,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=8.3/2,h=58.5,$fn=30);
}


}
}


module gripper_track(){
difference(){
translate([7,-12.5,-0.4-4-4])cube([75-14,12.9+5,6.5+0.8+8+8]);
//translate([-2,-12.5,-0.3])cube([75+4,12.9,6.5+0.6]);
translate([-2,-12.55,-0.3])cube([75+4,12.8,6.5+0.6]);
translate([-2+15,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+30,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+55,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+55+1,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
translate([-2+10+55-8,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);

translate([-44,0,0]){
translate([-2+10+55+1,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
translate([-2+10+55-8,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
}
}
}

module gripper_track_pipette(){
difference(){
translate([7,-12.5,-0.4-4-4])cube([75-14,12.9+5,6.5+0.8+8+8]);
//translate([-2,-12.5,-0.3])cube([75+4,12.9,6.5+0.6]);
translate([-2,-12.55,-0.3])cube([75+4,12.8,6.5+0.6]);
translate([-2+15,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+30,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+55,-12.5+10,15-5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+15,-12.5+10,-58.5+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+30,-12.5+10,-58+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([61/2+7+18,-12.5+10+20,-4-0.5])rotate([90,0,0])#cylinder(r=3.8/2,h=30,$fn=30);
translate([61/2+7+18,-12.5+10+20-19,-4-0.5])rotate([90,0,0])cylinder(r=6.5/2,h=30,$fn=30);
translate([61/2+7-18,-12.5+10+20,-4-0.5])rotate([90,0,0])#cylinder(r=3.8/2,h=50,$fn=30);
translate([61/2+7-18,-12.5+10+20-19,-4-0.5])rotate([90,0,0])cylinder(r=6.5/2,h=50,$fn=30);
translate([-2+10+55,-12.5+10,-58+5.5])cylinder(r=2.8/2,h=50,$fn=30);
translate([-2+10+55+1,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
translate([-2+10+55-8,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);

translate([-44,0,0]){
translate([-2+10+55+1,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
translate([-2+10+55-8,-12.5+10+80,-58+5.5+56])rotate([90,0,0])cylinder(r=2.8/2,h=500,$fn=30);
}
}
}




module gripper_pusher(){
difference(){
translate([24,53.5,3.25])rotate([0,0,-90])test_belt(14.5);
for(i=[0:5]){
translate([24,53.5-1.25-(i*2.5),3.25-10])rotate([0,0,45])cylinder(r=1.35/2,h=300,$fn=4);
}
}
difference(){
union(){
cube([63,35,6.5]);
difference(){
translate([0,35,0])cube([25-1,18.5,6.5]);
for(i=[0:5]){
translate([24,53.5-1.25-(i*2.5),3.25-10])rotate([0,0,45])cylinder(r=1.35/2,h=300,$fn=4);
}
}
translate([0,35,0])cube([25,18.5-14,6.5]);
}
translate([(63-48.5)/2,-1,-1])cube([48.5,20,16.5]);
translate([(63-38)/2,-1+8,-1])cube([38,20,16.5]);
translate([3.5,3,-40])cylinder(r=2.8/2,h=80,$fn=30);
translate([3.5+56,3,-40])cylinder(r=2.8/2,h=80,$fn=30);
}
}

module gripper_pusher_longer(){
ll = 2.5;
difference(){
translate([24,53.5+ll,3.25])rotate([0,0,-90])test_belt(14.5+ll);
for(i=[-1:5]){
translate([24,53.5-1.25-(i*2.5),3.25-10])rotate([0,0,45])cylinder(r=1.35/2,h=300,$fn=4);
}
}
difference(){
union(){
cube([63,35,6.5]);
difference(){
translate([0,35+2.5,0])cube([25-1,18.5,6.5]);
for(i=[-1:5]){
translate([24,53.5-1.25-(i*2.5),3.25-10])rotate([0,0,45])cylinder(r=1.35/2,h=300,$fn=4);
}
}
translate([0,35,0])cube([25,18.5-14,6.5]);
}
translate([(63-48.5)/2,-1,-1])cube([48.5,20,16.5]);
translate([(63-38)/2,-1+8,-1])cube([38,20,16.5]);
translate([3.5,3,-40])cylinder(r=2.8/2,h=80,$fn=30);
translate([3.5+56,3,-40])cylinder(r=2.8/2,h=80,$fn=30);
}
}


