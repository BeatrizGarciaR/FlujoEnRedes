from random import random
n=10
nodos=[]
aristas=[]
t=1
with open ("OrdenNodos.dat", "w") as crear:
    for t in range(n):
        x=random()
        y=random()
        nodos.append((x,y))
        print(x,y,t,file=crear)
        t+=1

a1=nodos[0][0]
a2=nodos[0][1]
a3=nodos[n-1][0]
a4=nodos[n-1][1]
aristas.append((a1,a2,a3,a4))

sig=0
for(x1,y1) in nodos[0:n-1]:
    sig+=1
    w1=nodos[sig][0]
    w2=nodos[sig][1]
    aristas.append((x1,y1,w1,w2))
    
with open("Orden.plot","w") as archivo:
    print("set term png", file=archivo)
    print("set output 'OrdenGraf.png'", file=archivo)
    print("set xrange [0:1]", file=archivo)
    print("set yrange [0:1]", file=archivo)
    print("set pointsize 3", file=archivo)
    print("set size square", file=archivo)
    print("set key off", file=archivo)
    num=1
    for a in aristas:
        (x1,y1,w1,w2)=a
        print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead lw 3".format(num,x1,y1,w1,w2),file=archivo)
        num+=1
    print("show arrow", file=archivo)
    print("plot 'OrdenNodos.dat' using 1:2:3 with points pt 7 lc var", file=archivo)
    print("quit()",file=archivo)
