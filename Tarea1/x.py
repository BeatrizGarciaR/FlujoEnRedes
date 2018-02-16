from random import random
import math
n=50
nodos=[]
aristas=[]

t=1
with open ("nodosprueba.dat","w") as crear:
    for t in range(n):
        x=random()
        y=random()
        nodos.append((x,y))
        print (x,y,t, file=crear)
        t+=1
        

dis=[]
for (x1,y1) in nodos:
    for (x2,y2) in nodos:
        d=math.sqrt(((y2-y1)**2)+((x2-x1)**2))
        if d==0:
            dis.append(20)
        else:
            if d in dis:
                dis.append(20)
            else:
                dis.append(d)


aristas=[]
for (x1,y1) in nodos:
    dismin=[]
    for(x2,y2) in nodos:
        dm=math.sqrt(((y2-y1)**2)+((x2-x1)**2))
        if dm==0:
            dismin.append(20)
        else:
            if dm in dismin:
                dismin.append(20)
            else:
                dismin.append(dm)
    if min(dismin) in dis:
        a1=nodos[dismin.index(min(dismin))][0]
        b1=nodos[dismin.index(min(dismin))][1]
        aristas.append((x1,y1,a1,b1))
        dis.remove(min(dismin))
        
with open("prueba1.plot","w") as archivo:
    print("set term png", file=archivo)
    print("set output 'graficaPrueba.png'", file=archivo)
    print("set xrange [0:1]", file=archivo)
    print("set yrange [0:1]", file=archivo)
    print("set pointsize 3", file=archivo)
    print("set size square", file=archivo)
    print("set key off", file=archivo)
    num=1
    for a in aristas:
        (x1,y1,x2,y2)=a
        print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead lw 3".format(num,x1,y1,x2,y2),file=archivo)
        num+=1
    print("show arrow", file=archivo)
    print("plot 'nodosprueba.dat' using 1:2:3 with points pt 7 lc var", file=archivo)
    print("quit()",file=archivo)
       
        
    
