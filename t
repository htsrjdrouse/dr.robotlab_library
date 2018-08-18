dr.robotlab_repstrap.scad:module powerswitch(){
dr.robotlab_repstrap.scad:module powerswitch_simple(){
dr.robotlab_repstrap.scad: //translate([-30,-5,0])powerswitch_simple();
dr.robotlab_repstrap.scad:powerswitch_simple();
dr.robotlab_repstrap.scad://philmore rocker switch SPDT 30-10080
dr.robotlab_repstrap.scad:module powersocketandswitch(){
dr.robotlab_repstrap.scad:rotate([90,0,0])powerswitch_simple();
dr.robotlab_repstrap.scad:module adafruit_microswitch_817(){
dr.robotlab_repstrap.scad:module adafruit_microswitch_817_mount(){
dr.robotlab_repstrap.scad://translate([-50+3,2,-3+10])rotate([-90,0,90])adafruit_microswitch_817();
modparts.scad://surface(file = "custom_pcbs/kill_switch_mosfet_pcb.png", center = true);
