bom_complete.scad://color("darkgrey")translate([0-37,3,-1+18])washbowl_8tip_drypad();
bom_complete.scad://color("darkgrey")translate([0,3,-1+18])washbowl_8tip();
bom_complete.scad://color("darkgrey")translate([0,3,-1])washbowl_8tip_base();
bom_complete.scad:// washplate_mount();
bom_complete.scad://m5bearing_washer();
bom_complete.scad://color("darkgrey")translate([0,3,0])washbowl_1tip();
bom_complete.scad://color("darkgrey")translate([0-37,3,-1+18])washbowl_8tip_drypad();
bom_complete.scad://color("darkgrey")translate([0,3,-1+18])washbowl_8tip();
bom_complete.scad://color("darkgrey")translate([0,3,-1])washbowl_8tip_base();
bom_complete.scad:// washplate_mount();
bom_complete.scad: //microwell_plate_rising_surface_washmount(144);
bom_complete.scad://washbowl_assy();
bom_complete.scad://color("darkgrey")translate([0,3,0])washbowl_1tip();
bom_complete.scad://color("darkgrey")washbowl_watervacinput();
bom_complete.scad://color("darkgrey")translate([0,3,-1])washbowl_8tip();
bom_complete.scad://color("darkgrey")translate([0,3,-19])washbowl_8tip_base();
bom_complete.scad://translate([0,3,0])washbowl_1tip();
bom_complete.scad://import("wash_assy_for_show.stl");
bom_complete.scad://washbowl_assy();
bom_electronics.scad:translate([320,150,-3])rotate([0,180,90])color("blue")BOM_washdrypcv_kill();
bom_electronics.scad://BOM_washdrypcv_kill();
bom_electronics.scad:translate([320,150,-3])rotate([0,180,90])BOM_washdrypcv_kill();
bom_electronics.scad:module BOM_washdrypcv_kill(){
bom_electronics.scad:translate([-10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_washdrypcv_kill",h=8);
bom_multichannel.scad://zbed_washer_hold_plate_into_place();
bom_multichannel.scad://multichannel_lockwasher();
bom_multichannel.scad:translate([231.75,195-0,145+5])wash_holder_arm();
bom_multichannel.scad:translate([230+125.25,195-0,145+5])wash_holder_arm();
bom_multichannel.scad://washbowl_assy();
bom_multichannel.scad://multichannel_wash_assembly();
bom_multichannel.scad://color("darkgrey")washbowl_watervacinput();
bom_multichannel.scad://multichannel_lockwasher();
bom_multichannel.scad://multichannel_lockwasher();
bom_multichannel.scad:module multichannel_lockwasher(){
bom_multichannel.scad:module multichannel_wash_assembly(){
bom_multichannel.scad:translate([242-10,0,200])washstation_for_multichannel();
bom_multichannel.scad:module wash_holder_arm(){
bom_multichannel.scad:module washstation_for_multichannel(){
bom_openmv_camera.scad://wash_and_strobparts();
bom_vacuum_pumps_box.scad://wash_waste_panel();
bom_xshuttle.scad://washdry_pcv_pump_enclosure();
bom_XY_motor_setup.scad://m5bearing_washer();
bom_zbed.scad:module microwell_plate_rising_surface_washmount(z){
bom_zbed.scad: //color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
bom_zbed.scad: translate([129.75+(94*0)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_rising_surface_washmount(144);} //microwell_plate_riser_rising_surface(144);}
bom_zbed.scad: //color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
bom_zbed.scad: translate([129.75+(94*0)-1.5-103,276.5-4,11])color("")mirror([0,0,0])rotate([0,0,0]){microwell_plate_riser(144); microwell_plate_rising_surface_washmount(144);} //microwell_plate_riser_rising_surface(144);}
bom_zbed.scad://zbed_washer_hold_plate_into_place();
bom_zbed.scad: //zbed_wash_microwell_stls();
bom_zbed.scad://zbed_wash_microwell_stls();
bom_zbed.scad://translate([0,3,0])washbowl_1tip();
bom_zbed.scad:wash_and_strobparts();
bom_zbed.scad://wash_and_strobparts();
bom_zbed.scad://translate([160-285,20-35,-3])rotate([0,180,90])color("DarkGray")washbowl_assy();
bom_zbed.scad://washbowl_shim();
bom_zbed.scad://start washbowl_assy
bom_zbed.scad: //translate([-60,-26,-11])washbowl_shim();
bom_zbed.scad: translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
bom_zbed.scad: translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
bom_zbed.scad://end washbowl_assy 
bom_zbed.scad:module zbed_wash_microwell_stls(){
bom_zbed.scad://start washbowl_assy
bom_zbed.scad: //translate([-60,-26,-11])washbowl_shim();
bom_zbed.scad: translate([-50,-28,29])rotate([0,180,90])washbowl_watervacinput();
bom_zbed.scad: translate([-110,-103+52,9])rotate([0,180,0])washbowl_1tip();
bom_zbed.scad://end washbowl_assy 
dr.robotlab_repstrap.scad:module washbowl_drypad(){
dr.robotlab_repstrap.scad:module washbowl_watervacinput(){
dr.robotlab_repstrap.scad:module washbowl_2tip(){
dr.robotlab_repstrap.scad:module washbowl_shim(){
dr.robotlab_repstrap.scad:module washbowl_8tip_drypad(){
dr.robotlab_repstrap.scad:module washbowl_8tip(){
dr.robotlab_repstrap.scad:module washbowl_8tip_base(){
dr.robotlab_repstrap.scad:module washbowl_1tip(){
dr.robotlab_repstrap.scad:module coolwashassembly(){
dr.robotlab_repstrap.scad:translate([0,-3,0])washbowl_watervacinput();
dr.robotlab_repstrap.scad:washbowl_1tip();
dr.robotlab_repstrap.scad:translate([0,-43,5])washbowl_9mm_shim();
dr.robotlab_repstrap.scad:module washbowl_9mm_shim(){
dr.robotlab_repstrap.scad:import("3dprinting/washbowl_watervacinput.stl");
dr.robotlab_repstrap.scad:translate([0,3,0])import("3dprinting/washbowl_1tip.stl");
dr.robotlab_repstrap.scad:module washdry_pcv_pump_enclosure(){
dr.robotlab_repstrap.scad:module wash_dry_pcv_mosfets(){
good.modparts.scad://wash_dry_pcv_brd();
good.modparts.scad:module zbed_washer_hold_plate_into_place(){
good.modparts.scad:module wash_dry_pcv_brd(){
good.modparts.scad:rotate([0,180,0])wash_dry_pcv_brd();
good.modparts.scad:module wash_and_strobparts()
good.modparts.scad:module washbowl_assy()
good.modparts.scad://wash_and_strobparts();
good.modparts.scad://washer_for_conveyer();
good.modparts.scad://biggernew_compact_wash_dry_pcv_arduinomicro();
good.modparts.scad://arduino_micro_wash_dry_pcv_valveservo_tmp_fix_rightside_up_simplify_traces_electrocaloric();
good.modparts.scad://new_compact_wash_dry_pcv_arduinomicro();
good.modparts.scad://arduinomicro_washdryppressurepcv();
good.modparts.scad:module arduinomicro_washdryppressurepcv(){
good.modparts.scad:module arduino_micro_wash_dry_pcv_valveservo_tmp_fix_rightside_up_simplify_traces_electrocaloric(){
good.modparts.scad:module new_compact_wash_dry_pcv_arduinomicro(){
good.modparts.scad:module biggernew_compact_wash_dry_pcv_arduinomicro(){
good.modparts.scad://begin to wash station
good.modparts.scad://end to wash station
good.modparts.scad://rotate([0,180,0])arduino_softpot_linearencoder_plate_washdry();
good.modparts.scad://wash_and_strobparts();
good.modparts.scad:module washer_for_conveyer(){
good.modparts.scad:module m5bearing_washer(){
good.modparts.scad:module highcurrent_power_mosfet_wash_dry_pcv_fan(x,y){
good.modparts.scad:wash_and_strobparts();
good.modparts.scad:module wash_and_strobparts(){
good.modparts.scad:washbowl_assy();
good.modparts.scad://washbowl_assy();
good.modparts.scad:module washbowl_assy(){
good.modparts.scad://washbowl_shim();
good.modparts.scad:color("darkgrey")washbowl_watervacinput();
good.modparts.scad:color("darkgrey")translate([0,3,0])washbowl_1tip();
good.modparts.scad://washbowl_drypad();
good.modparts.scad://translate([530,130,300])rotate([90,0,90])wash_waste_panel();
good.modparts.scad://translate([530,130,300])rotate([90,0,90])wash_waste_panel();
good.modparts.scad://translate([0,0,-10])wash_and_strobparts();
good.modparts.scad://translate([0,0,-10])wash_and_strobparts();
good.modparts.scad://washbowl_assy();
good.modparts.scad:module arduino_softpot_linearencoder_plate_washdry(){
good.modparts.scad:translate([-60,53,0])rotate([0,180,0])highcurrent_power_mosfet_wash_dry_pcv_fan(95,32);
good.modparts.scad:arduino_softpot_linearencoder_plate_washdry();
good.modparts.scad://BOM_washdrypcv_kill begin
good.modparts.scad://BOM_washdrypcv_kill end
good.modparts.scad://BOM_washdrypcv_kill begin
good.modparts.scad://BOM_washdrypcv_kill end
good.modparts.scad://BOM_washdrypcv_kill begin
good.modparts.scad://BOM_washdrypcv_kill end
good.modparts.scad://wash_waste_panel();
good.modparts.scad://washdry_pcv_pump_enclosure();
good.modparts.scad:module wash_waste_panel(){
good.modparts.scad:translate([320,150,-3])rotate([0,180,90])BOM_washdrypcv_kill();
good.modparts.scad:module BOM_washdrypcv_kill(){
good.modparts.scad:translate([-10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_washdrypcv_kill",h=8);
good.modparts.scad:module washplate_mount(){
good.modparts.scad: washplate_mount();
good.modparts.scad: translate([-70-4,-25+50,0+23]) color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
modparts.scad://wash_dry_pcv_brd();
modparts.scad:module zbed_washer_hold_plate_into_place(){
modparts.scad:module wash_dry_pcv_brd(){
modparts.scad:rotate([0,180,0])wash_dry_pcv_brd();
modparts.scad:module wash_and_strobparts()
modparts.scad:module washbowl_assy()
modparts.scad://wash_and_strobparts();
modparts.scad://washer_for_conveyer();
modparts.scad://biggernew_compact_wash_dry_pcv_arduinomicro();
modparts.scad://arduino_micro_wash_dry_pcv_valveservo_tmp_fix_rightside_up_simplify_traces_electrocaloric();
modparts.scad://new_compact_wash_dry_pcv_arduinomicro();
modparts.scad://arduinomicro_washdryppressurepcv();
modparts.scad:module arduinomicro_washdryppressurepcv(){
modparts.scad:module arduino_micro_wash_dry_pcv_valveservo_tmp_fix_rightside_up_simplify_traces_electrocaloric(){
modparts.scad:module new_compact_wash_dry_pcv_arduinomicro(){
modparts.scad:module biggernew_compact_wash_dry_pcv_arduinomicro(){
modparts.scad://begin to wash station
modparts.scad://end to wash station
modparts.scad://rotate([0,180,0])arduino_softpot_linearencoder_plate_washdry();
modparts.scad://wash_and_strobparts();
modparts.scad:module washer_for_conveyer(){
modparts.scad:module m5bearing_washer(){
modparts.scad:module highcurrent_power_mosfet_wash_dry_pcv_fan(x,y){
modparts.scad:wash_and_strobparts();
modparts.scad:module wash_and_strobparts(){
modparts.scad:washbowl_assy();
modparts.scad://washbowl_assy();
modparts.scad:module washbowl_assy(){
modparts.scad://washbowl_shim();
modparts.scad:color("darkgrey")washbowl_watervacinput();
modparts.scad:color("darkgrey")translate([0,3,0])washbowl_1tip();
modparts.scad://washbowl_drypad();
modparts.scad://translate([530,130,300])rotate([90,0,90])wash_waste_panel();
modparts.scad://translate([530,130,300])rotate([90,0,90])wash_waste_panel();
modparts.scad://translate([0,0,-10])wash_and_strobparts();
modparts.scad://translate([0,0,-10])wash_and_strobparts();
modparts.scad://washbowl_assy();
modparts.scad:module arduino_softpot_linearencoder_plate_washdry(){
modparts.scad:translate([-60,53,0])rotate([0,180,0])highcurrent_power_mosfet_wash_dry_pcv_fan(95,32);
modparts.scad:arduino_softpot_linearencoder_plate_washdry();
modparts.scad://BOM_washdrypcv_kill begin
modparts.scad://BOM_washdrypcv_kill end
modparts.scad://BOM_washdrypcv_kill begin
modparts.scad://BOM_washdrypcv_kill end
modparts.scad://BOM_washdrypcv_kill begin
modparts.scad://BOM_washdrypcv_kill end
modparts.scad://wash_waste_panel();
modparts.scad://washdry_pcv_pump_enclosure();
modparts.scad:module wash_waste_panel(){
modparts.scad:translate([320,150,-3])rotate([0,180,90])BOM_washdrypcv_kill();
modparts.scad:module BOM_washdrypcv_kill(){
modparts.scad:translate([-10,30,6])color("black")rotate([0,0,0])mirror([0,0,0])write("BOM_washdrypcv_kill",h=8);
modparts.scad:module washplate_mount(){
modparts.scad: washplate_mount();
modparts.scad: translate([-70-4,-25+50,0+23]) color("lime")translate([129.75+(94*0)-1.5-103+75,276.5-4-60-10+10,11+187])rotate([0,180,90])import("wash_assy_for_show.stl");
