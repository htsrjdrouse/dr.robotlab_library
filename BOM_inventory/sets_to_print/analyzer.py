import re, sys

a = open(sys.argv[1])

x = []
y = []
z = []
t = []
aa = []
for i in a:
    d = {}
    i = re.sub("\n", "", i)
    d['cmd'] = i
    if re.match('^G1 X.*Y.*',i):
        if re.match("G1 X(.*) Y(.*) E", i):
          b = re.match("G1 X(.*) Y(.*) E(.*)", i)
          d['e'] = b.group(3)
        else:
          re.match("G1 X(.*) Y(.*)", i)
          b = re.match("G1 X(.*) Y(.*)", i)
          d['e'] = "null"
        d['x'] = b.group(1)
        d['y'] = b.group(2)
        x.append(d['x'])
        y.append(d['y'])
    aa.append(d)

print "X min: "+ min(x)
print "X max: "+ max(x)
print "Y min: "+ min(y)
print "Y max: "+ max(y)



for i in aa:
    if re.match('^G1 X.*Y.*',i['cmd']):
      print "G1 X"+str(float(i['x'])+20)+" Y"+i['y']+" E"+i['e']
    else:
      print i['cmd']

