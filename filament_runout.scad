filamentDiameter = 2.3;
ptfeDiameter = 4;
screwDiameter = 3.5;
walls = 2;
radius = 3;
bottomHeight = 2;

switchLength = 13;
switchHeight = 5.8;
switchWidth = 6.5;
switchPadding = 2.5;
switchDiameter = 2.6;
switchOffsetX = 3;
switchOffsetY = 0.8;

/* [Hidden] */
$fn = 360;
filamentRadius = filamentDiameter / 2;
ptfeRadius = ptfeDiameter / 2;
screwRadius = screwDiameter / 2;
switchRadius = switchDiameter / 2;

length = (walls * 2 + switchPadding + screwDiameter) * 2 + switchLength;
width = walls * 2 + filamentDiameter + switchWidth + switchPadding;
height = switchHeight / 2 + bottomHeight;

filament_runout(length, width, height, filamentRadius, ptfeRadius,screwRadius,switchRadius, screwDiameter);
translate([70,0,0])rotate([0,0,0])mirror([1,0,0])filament_runout(length, width, height, filamentRadius, ptfeRadius,2.8/2,0.1, screwDiameter);

//translate([33,0,10])rotate([0,180,0])filament_runout(length, width, height, filamentRadius, ptfeRadius,2.8/2,0.1, screwDiameter);
module filament_runout(length, width, height, filamentRadius, ptfeRadius,screwRadius,switchRadius, screwDiameter){


difference() {
  hull() {
    translate([radius, -radius, 0])
      cylinder(r=radius, h=height);

    translate([length - radius, -radius, 0])
      cylinder(r=radius, h=height);
    
    translate([length - radius, radius - width, 0])
      cylinder(r=radius, h=height);
    
    translate([radius, radius - width, 0])
      cylinder(r=radius, h=height);
    
    translate([length / 2, -width + walls - radius, 0])
      cylinder(r=radius + walls / 2, h=height);
  }

  // Switch cutout
  group() {
    translate([walls * 2 + screwDiameter + switchPadding, -switchWidth, bottomHeight])
      cube([switchLength, switchWidth + 1, height]);

    translate([walls * 2 + screwDiameter, -width + walls, bottomHeight])
      #cube([switchLength + switchPadding * 2, width - walls * 2-1, height]);
  }
  
  // Filament
  translate([-1, -width + walls + screwDiameter + filamentRadius - 0.8, height])
    rotate([0, 90, 0])
      cylinder(r=filamentRadius, h= length + 2);
  translate([-1+6, -width + walls + screwDiameter + filamentRadius - 0.8, height])
    rotate([0, 90, 0])
      #cylinder(r1=filamentRadius, r2=filamentRadius*2, h= 3);

  // PTFE tube holes
  group() {
    translate([-1, -width + walls + screwDiameter + filamentRadius - 0.8, height])
      rotate([0, 90, 0])
        cylinder(r=ptfeRadius, h= walls + radius + 1);

    translate([length - walls - radius, -width + walls + screwDiameter + filamentRadius - 0.8, height])
      rotate([0, 90, 0])
        cylinder(r=ptfeRadius, h= walls + radius + 1);
  }
  
  // Screwholes
  group() {
    translate([screwRadius + walls, -screwRadius - walls, -1])
      cylinder(r=screwRadius, h=height + 2);
    
    translate([length - walls - screwRadius, -screwRadius - walls, -1])
      cylinder(r=screwRadius, h=height + 2);
    
    translate([length / 2, -width + walls - radius, -1])
      cylinder(r=screwRadius, h=height + 2);
  }
  
  // Switch Holes
  group() {
    translate([walls * 2 + screwDiameter + switchPadding + switchOffsetX, -switchRadius - switchOffsetY-1, -1])
      cylinder(r=switchRadius, h=height);

    translate([walls * 2 + screwDiameter + switchPadding + switchLength - switchOffsetX, -switchRadius - switchOffsetY-1, -1])
      cylinder(r=switchRadius, h=height);
  
  }
}

}
