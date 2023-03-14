""" print ("sai")
for i in range(1,10):
    if (i%2==0):
        print (i)

 """

x=1234567890
y=str(x)
z=list(y)
a=0
b=0
c=[]
d=[]
for q in z:
    q1=int(q)
    if (q1%2==0):
        a=a+q1
        c.append(q1)
    else:
        b=b+q1
        d.append(q1)
print(c)
print(a)
print(d)
print(b)