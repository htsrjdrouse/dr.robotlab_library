
module cavro_250ul_syringe(){
color("silver")cylinder(r=6.25/2,h=10.25,$fn=20);
translate([0,0,-8])color("silver")cylinder(r=11.5/2,h=8,$fn=20);
translate([0,0,-8-36])color("lightblue")cylinder(r=8/2,h=36,$fn=20);
translate([0,0,-8-36-2.5])color("silver")cylinder(r=2/2,h=36+2.5,$fn=20);
translate([0,0,-8-36-2.5-7.5])color("silver")cylinder(r=6.1/2,h=3,$fn=20);
translate([0,0,-8-36-2.5-7.5+3])color("silver")cylinder(r2=5/2,r1=6/2,h=1.5,$fn=20);
translate([0,0,-8-36-2.5-7.5+3+1.5])color("silver")cylinder(r1=5/2,r2=6/2,h=1.5,$fn=20);
translate([0,0,-8-36-2.5-7.5+3+3])color("silver")cylinder(r=6.1/2,h=3,$fn=20);
}
