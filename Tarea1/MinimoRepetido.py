from random import random
import math
n=50
nodos=[]
aristas=[]

#t=1
with open ("MinRepNodos.dat","w") as crear:
    for t in range(n):
        x=random()
        y=random()
        nodos.append((x,y))
        print (x,y, file=crear)
        #t+=1

dis1=[]
p1=nodos[n-1][0]
q1=nodos[n-1][1]
for (p2,q2) in nodos:
    d1=math.sqrt(((q2-q1)**2)+((p2-p1)**2))
    if d1!=0:
        dis1.append(d1)
    else:
        dis1.append(2)

ind=dis1.index(min(dis1))
k1=nodos[ind][0]
k2=nodos[ind][1]
aristas.append((p1,q1,k1,k2))
    

for (x1,y1) in nodos[0:n+1]:
    dis=[]
    for(b1,b2) in nodos[0:n+1]:
        d=math.sqrt(((b2-y1)**2)+((b1-x1)**2))
        if d!=0:
            dis.append(d)
        else:
            dis.append(2)

    minimo=min(dis)
    for (x2,y2) in nodos[0:n+1]:
        if math.sqrt(((y2-y1)**2)+((x2-x1)**2))==minimo:
            for (w1,w2,w3,w4) in aristas:
                if (x1,y1,x2,y2)==(w1,w2,w3,w4):
                    dis.remove(minimo)
                    minimo=min(dis)
                    for (r1,r2) in nodos[0:n+1]:
                        if math.sqrt(((r2-y1)**2)+((r1-x1)**2))==minimo:
                            aristas.append((x1,y1,r1,r2))
                            
                else:
                    aristas.append((x1,y1,x2,y2))
                    break
                    
                            
with open("MinRep.plot","w") as archivo:
    print("set term png", file=archivo)
    print("set output 'MinRepGraf.png'", file=archivo)
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
    print("plot 'MinRepNodos.dat' using 1:2 with points pt 7", file=archivo)
    print("quit()",file=archivo)
