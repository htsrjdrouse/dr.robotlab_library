import json


ref = json.load(open('drrobotlab.json'))

print ref['city']




'''
json_data = '{"name": "Brian", "city": "Seattle"}'
#python_obj = json.loads(json_data)
python_obj = json.loads(ref)
#print python_obj["name"]
#print python_obj["city"]

for i in python_obj:
    print python_obj[i]

with open('drrobotlab.json','w') as outfile:
   json.dump(python_obj, outfile)
'''

