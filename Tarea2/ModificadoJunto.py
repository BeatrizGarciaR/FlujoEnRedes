from random import random
from math import sqrt

class Grafo:

    def __init__(self):
        self.nodos = []
        self.aristas= []
        self.dis = []
        self.dismin = []

    def agrega(self, n):
        with open("ModificadoNodos.dat", "w") as crear:
            for t in range(n):
                x=random()
                y=random()
                self.nodos.append((x,y))
                print (x,y,file=crear)

    def distancia(self):
        for (x1,y1) in self.nodos:
            for (x2,y2) in self.nodos:
                d=sqrt(((y2-y1)**2)+((x2-x1)**2))
                if d==0:
                    self.dis.append(d)
                else:
                    if d in self.dis:
                        self.dis.append(20)
                    else:
                        self.dis.append(d)

    def conecta(self):
        for (x1,y1) in self.nodos:
            self.dismin=[]
            for(x2,y2) in self.nodos:
                dm=sqrt(((y2-y1)**2)+((x2-x1)**2))
                if dm==0:
                    self.dismin.append(20)
                else:
                    if dm in self.dismin:
                        self.dismin.append(20)
                    else:
                        self.dismin.append(dm)
            #print(self.nodos[self.dismin.index(min(self.dismin))][0])
            if min(self.dismin) in self.dis:
                a1=self.nodos[self.dismin.index(min(self.dismin))][0]
                b1=self.nodos[self.dismin.index(min(self.dismin))][1]
                self.aristas.append((x1,y1,a1,b1))
                self.dis.remove(min(self.dismin))

    def graficar(self):
        with open("Modificado.plot","w") as archivo:
             print("set term png", file=archivo)
             print("set output 'ModificadoGraf.png'", file=archivo)
             print("set xrange [0:1]", file=archivo)
             print("set yrange [0:1]", file=archivo)
             print("set pointsize 3", file=archivo)
             print("set size square", file=archivo)
             print("set key off", file=archivo)
             num=1
             for a in self.aristas:  
                 (x1,y1,x2,y2)=a
                 print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead lw 3".format(num,x1,y1,x2,y2),file=archivo)
                 num+=1
             print("show arrow", file=archivo)
             print("plot 'ModificadoNodos.dat' using 1:2 with points pt 7", file=archivo)
             print("quit()",file=archivo)




i=50
G = Grafo()
G.agrega(i)
G.distancia()
G.conecta()
G.graficar()
