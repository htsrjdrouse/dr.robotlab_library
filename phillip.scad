//translate([0,0,0.1])phillip_lowergasket();
//translate([0,0,12.1])phillip_middlegasket();
//translate([0,0,12.1+11])phillip_topgasket();

//translate([0,0,13.5])color("pink")phillip_lid();

phillip_magnetholder();

/*
phillip_base();
translate([0,0,0.1])phillip_lowergasket();
translate([-12,-37.5,11])color("lightblue")cube([25,75,1]);
translate([0,0,12.1])phillip_middlegasket();

translate([-12,-37.5,11+11])color("lightblue")cube([25,75,1]);
translate([0,0,12.1+11])phillip_topgasket();

translate([0,0,22+2.5])color("lime")phillip_window();
*/
/*
phillip_magnetholder();
translate([-5,-37.5+7,3.5])color("silver")cube([10,60,5]);
*/


module phillip_magnetholder(){
difference(){
 translate([-5-3,-37.5+7-2,0])cube([10+6,60+4,7]);
 translate([-5-0.5,-37.5+7-0.5,4])cube([10+1,60+1,5]);
 translate([-5-0.5+5,-37.5+7-0.5+10,-3])cylinder(r=3.7/2,h=30);
 translate([-5-0.5+5,-37.5+7-0.5+10,1])cylinder(r=8/2,h=3);
 translate([-5-0.5+5,-37.5+7-0.5+10+40,-3])cylinder(r=3.7/2,h=30);
 translate([-5-0.5+5,-37.5+7-0.5+10+40,1])cylinder(r=8/2,h=3);
}
}

module phillip_window(){
difference(){
union(){
translate([-12-10,-37.5-10,0])cube([25+20,75+20,8]);
}
translate([-12+4,-37.5-10+14,-0.1])cube([25-8,75-8,50]);
//translate([-12-2,-37.5-10+14+5,-0.1])cube([25+4,75-18,50]);
translate([-12-1,-37.5-1,10-1.5])cube([27,77,1.6+10]);
/*
translate([-12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([0,60,5-2.5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
for(i=[0:6]){
translate([-12-8,60-30-(i*10),5])rotate([90,0,90])cylinder(r=(2.3)/2,h=42);
}
*/



translate([-18,7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,23,0]){
translate([-18,7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}
translate([18,-7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,-23,0]){
translate([18,-7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,-7])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}










translate([18-10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,42,0+4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);

translate([18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,20,0+4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);

translate([18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-20,0+4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);

//translate([18,0,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
//translate([18,0,0+4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);

translate([-18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-20,4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);

translate([-18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,20,4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);


translate([-18,7,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-7,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);




translate([-18+10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,42,4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);


translate([18-10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,-42,4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);
translate([-18+10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,-42,4.5])rotate([0,0,45])cylinder(r=(8)/2,h=4);
}
}
/*
*/




module phillip_lid(){
difference(){
union(){
translate([-12-10,-37.5-10,0])cube([25+20,75+20,10]);
}
translate([-12+3,-37.5-10+14,-0.1])cube([25-6,75-8,50]);
//translate([-12-2,-37.5-10+14+5,-0.1])cube([25+4,75-18,50]);
translate([-12-1,-37.5-1,10-1.5])cube([27,77,1.6+10]);
//translate([-12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([0,60,5-2.5+2])rotate([90,0,0])#cylinder(r=(3.7)/2,h=150);
//translate([12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);

/*
for(i=[0:6]){
translate([-12-8,60-30-(i*10),5])rotate([90,0,90])cylinder(r=(2.3)/2,h=42);
}
*/
translate([-18,7,7])rotate([90,0,90])cylinder(r=(2)/2,h=35);
translate([-18,7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,23,0]){
translate([-18,7,7])rotate([90,0,90])cylinder(r=(2)/2,h=35);
translate([-18,7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}



translate([-18,-7,7])rotate([90,0,90])cylinder(r=(2)/2,h=35);
translate([18,-7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,-23,0]){
translate([-18,-7,7])rotate([90,0,90])cylinder(r=(2)/2,h=35);
translate([18,-7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}




translate([18-10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);


translate([18-10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);


}
}

module phillip_lowergasket(){
difference(){
translate([-12-1+0.5,-37.5-1+0.5,10-1.5+2-1.5])color("red")cube([27-1,77-1,1.5]);
translate([-12+3.5,-37.5-10+14+0.5,-0.1])cube([25-7,75-9,50]);
}
}


module phillip_middlegasket(){
difference(){
translate([-12-10,-37.5-10,0])color("red")cube([25+20,75+20,1.5-1]);
translate([-12-1,-37.5-1,-0.2])cube([27,77,10]);

translate([18-10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}
}

module phillip_topgasket(){
difference(){
translate([-12-10,-37.5-10,0])color("red")cube([25+20,75+20,1.5-1]);
translate([-12-1,-37.5-1,-0.2])cube([27,77,10]);
translate([-18,7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,23,-0.6]){
translate([-18,7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}
translate([18,-7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([0,-23,0]){
translate([18,-7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-7,-0.6])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}
translate([18-10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18-10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18+10,-42,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([-18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
translate([18,-20,-10])rotate([0,0,45])cylinder(r=(3.7)/2,h=25);
}
}

















module phillip_base(){
difference(){
union(){
translate([-12-10,-37.5-10,0])cube([25+20,75+20,10+2]);
translate([-12-20,-37.5+4,0])cube([25+40,75-8,4]);
}
//translate([-12-2,-37.5-10+14+5,-0.1])cube([25+4,75-18,50]);
translate([-12+3,-37.5-10+14,-0.1])cube([25-6,75-8,50]);
translate([-12-1,-37.5-1,10-1.5+2-1.5])cube([27,77,1.6+10]);

//translate([-12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
translate([0,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);
//translate([12,60,5])rotate([90,0,0])cylinder(r=(3.7)/2,h=150);

translate([18,20,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([18,-20,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([-18,20,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([-18,-20,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);


translate([18-10,42,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([-18+10,42,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([18-10,-42,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);
translate([-18+10,-42,-20])rotate([0,0,45])cylinder(r=(2.7)/2,h=100);

translate([18+11,0-25,-20])rotate([0,0,45])cylinder(r=(3.7)/2,h=100);
translate([18+11,0+25,-20])rotate([0,0,45])cylinder(r=(3.7)/2,h=100);
translate([-18-11,0-25,-20])rotate([0,0,45])cylinder(r=(3.7)/2,h=100);
translate([-18-11,0+25,-20])rotate([0,0,45])cylinder(r=(3.7)/2,h=100);


}
}






