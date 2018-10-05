
aa = []

b = {}
b['desc'] ='Panel Mount USB Cable - B Female to Mini-B Male'
b['PID']= 936
b['price']=3.95
b['quantity']=1
aa.append(b)

b['desc'] ='Panel Mount USB Cable - B Female to Micro-B Male'
b['PID'] = 937
b['price']=3.95
b['quantity'] =3
aa.append(b)

b['desc'] ='ADS1115 16-Bit ADC - 4 Channel with Programmable Gain Amplifier'
b['PID']= 1085
b['price'] =14.95
b['quantity']=1
aa.append(b)

b['desc']='1N4001 Diode - 10 pack'
b['PID']= 755
b['price'] = 1.50
b['quantity']=1
aa.append(b)

b['desc']='N-channel power MOSFET 30V/60A'
b['PID']= 355
b['price']=1.75
b['quantity']=9
aa.append(b)


totalcost = 0
for i in aa:
 totalcost = totalcost + (int(i['quantity']) * float(i['price']))

print totalcost
