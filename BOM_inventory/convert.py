import json
import base64


a = open("BOM_module_conveyor.json")
refa = json.load(a)

b = open("LB-gantry-scaffold.json")
refb = json.load(b)

c = open("BOM_module_outside_frame.json")
refc = json.load(c) 

d = open("BOM_module_xshuttle_assy.json")
refd = json.load(d) 



ref = []
ref.append(refa)
ref.append(refb)
ref.append(refc)
ref.append(refd)
print(ref)

with open('drrobotlab.json','w') as outfile:
   json.dump(ref, outfile)

#$bg = $a['title']." | ".$a['price']." | ".$a['manufacturer']." | ".$a['page'];


