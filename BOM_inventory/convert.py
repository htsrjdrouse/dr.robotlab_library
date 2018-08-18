import json
import base64


def openinventory(products,filen):
    c = open(filen)
    refc = json.load(c) 
    for i in refc['parts'][0:]:
      products.append(i)
    return products

#c = open("bom_clean.json")

products = []
products = openinventory(products,"LB-gantry-scaffold.json")
products = openinventory(products,"BOM_module_conveyor.json")
products = openinventory(products,"bom_clean.json")
products = openinventory(products,"BOM_module_xshuttle_assy.json")

for i in products:
    print ""
    print "-----"
    print i['vendor']
    print i['openscad']
    print "-----"
    print ""
#print len(products)

#print set(vendors)

with open('drrobotlab.json','w') as outfile:
   json.dump(products, outfile)

'''
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
'''

