import base64
import json

ref = json.load(open('drrobotlab.json'))


with open("box_gantry.PNG", "rb") as image_file:
    encoded_string = base64.b64encode(image_file.read())

ref['product'] = "ntesting"
print ref

'''
with open('drrobotlab.json','w') as outfile:
   json.dump(ref, outfile)
'''
