 module valvemountplate_screwattach_smallersyringe_vertical_attach(){
 translate([41,12,0]){
 translate([33+10,28,34])rotate([-90,180,90])mirror([0,0,0])difference(){
  union(){
 translate([-3+19+5,18+0.1+2.5-4,12+13])cube([19.5-5,16+4,7+6+38.5-13]);
 translate([-3+19+5-3,18+0.1+2.5-4-10,12+13+27])cube([19.5-5+3,16+4+20,7+6+38.5-13-27]);
 translate([-3+19+5,18+0.1+2.5-4-10,12+13+0])cube([19.5-5,16+4+20,7+6+38.5-13-27-3]);
 }
 translate([30-5.5,10+1.5,40])cylinder(r=2.8/2,h=50,$fn=30);
 translate([30-5.5,10+1.5+30,40])cylinder(r=2.8/2,h=50);
 translate([4,0,-40]){
 translate([30-5.5,10+1.5,40]){cylinder(r=3/2,h=50,$fn=30);}
 translate([30-5.5,10+1.5+30,40]){cylinder(r=3/2,h=50,$fn=30);}
 }
 }
 }
}
