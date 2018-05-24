import re 


a = """1	 -- HFS5-2020-400-TPW-Z5-XA10-XB390-YA10-YB390  -- Aluminum Extrusion  (200g)  -- MISUMI -- 1	15.48	15.48	 --  --  	 -- 8 days	 -- (05/30/2018)   -- Processed --
2	 -- HFS5-2020-380-TPW-Z5-XA70-YA70  -- Aluminum Extrusion  (760g)  -- MISUMI -- 4	10.56	42.24	 --  --  	 -- 8 days	 -- (05/30/2018)   -- Processed --
3	 -- HFS5-2020-360-TPW  -- Aluminum Extrusion  (360g)  -- MISUMI -- 2	5.65	11.30	 --  --  	 -- 2 days	 -- (05/24/2018)   -- Processed --
4	 -- HFS5-2020-400-TPW-Z5-XA10-XB390-YA10-YB390  -- Aluminum Extrusion  (200g)  -- MISUMI -- 1	15.48	15.48	 --  --  	 -- 8 days	 -- (05/30/2018)   -- Processed --
5	 -- HFS5-2020-400-TPW-Z5-XA22-XB190-XC370  -- Aluminum Extrusion  (200g)  -- MISUMI -- 1	13.08	13.08	 --  --  	 -- 8 days	 -- (05/30/2018)   -- Processed --
6	 -- HFS5-2020-400-TPW  -- Aluminum Extrusion  (200g)  -- MISUMI -- 1	5.88	5.88	 --  --  	 -- 2 days	 -- (05/24/2018)   -- Processed --
7	 -- HFS5-2020-400-TPW-Z5-XA22-XB370-YA190  -- Aluminum Extrusion  (200g)  -- MISUMI -- 1	13.08	13.08	 --  --  	 -- 8 days	 -- (05/30/2018)   -- Processed --
"""
		#{"cost":"5.65", "sku":"HFS5-2020-400-TPW-Z5-XA10-XB390-YA10-YB390","quantity":1,"stl":"HFS5-2020-360-TPW.stl"},

b = re.split('\n', a)
for c in b:
    d = re.split('--',c)
    try: 
     sku = re.sub("/ $/", "", d[1])
     weight = re.sub("/ $/", "", d[2])
     quantityprice = re.sub("/ $/", "", d[4])
     print(sku)
     print(weight)
     print(quantityprice)
    except:
     pass

