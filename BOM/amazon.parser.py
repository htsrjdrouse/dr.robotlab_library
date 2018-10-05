import re,sys


a = open(sys.argv[1])

g = []
for i in a:
    i = re.sub("\n", "",i)
    g.append(i)



b = []
pc = []
for i in g[2:]:
    i = re.sub("\n", "",i)
    if re.match("^Offered", i):
      pc.append(i)
      b.append(pc)
      pc = []
    else:  
      pc.append(i)



#['HATCHBOX PLA 3D Printer Filament, Dimensional Accuracy +/- 0.03 mm, 1 kg Spool, 1.75 mm, Black\tHATCHBOX PLA 3D Printer Filament, Dimensional Accuracy +/- 0.03 mm, 1 kg Spool, 1.75 mm, Black', 'Offered by Amazon.com.\t\t$19.99\t1\t0']


p = []
for i in b:
    aa = {}
    aa['desc'] = i[0]
    dd = re.split("\t", i[1])
    #Offered by Amazon.com.		$19.99	1	0	1
    aa['store'] = re.sub("Offered by ", "", dd[0])
    aa['unitprice'] = float(re.sub("\$", "", dd[2]))
    aa['quantity'] = int(dd[3])
    aa['price'] = aa['unitprice'] * aa['quantity']
    aa['forsys'] = int(dd[5])
    p.append(aa)




totalcost = 0
for i in p:
    if i['forsys'] > 0:
      totalcost = totalcost + (i['price'] /i['forsys'])
print totalcost
