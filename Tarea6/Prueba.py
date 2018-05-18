from random import random, normalvariate,expovariate, randint
from math import ceil, floor, sqrt

def distancia(p,q):
    return (abs(q[0]-p[0])+ abs(q[1]-p[1]))
def pmedio(p,q):
    return ((p[0]+q[0])/2),((p[1]+q[1])/2)

class Grafo:

    def __init__(self,k,prob):
        self.aristas = dict()
        self.vecinos = dict()
        self.nodos = []

        
    def agrega(self, i):
        with open("Nodos6.dat", "w") as crear:
            self.distancia = 1/(i+1)
            for m in range (1,i+1):
                for n in range(1, i+1):
                    x = m
                    y = n
                    self.nodos.append((x,y))
                    print(x, y, file = crear)
                    if not (x, y) in self.vecinos:
                        self.vecinos[(x,y)] = []

    def conexiones(self, umbral):
        for n in self.nodos:
            for m in self.nodos: 
                if n is not m:
                    if distancia (n,m) < umbral+1:
                        self.aristas[n,m] = self.aristas[m,n] = floor(normalvariate(4,0.5))+1
                        self.vecinos[m].append(n)
                        self.vecinos[n].append(m)


    def juntacion(self):
        import random
        for j in range(0, len(self.nodos)-2):
            p = random.sample(self.nodos,1)[0]
            q = random.sample(self.nodos,1)[0]
            while (p,q) not in self.aristas:
                p = random.sample(self.nodos,1)[0]
                q = random.sample(self.nodos,1)[0]
            if (p,q) in self.aristas:
                r = pmedio(p,q)
                self.nodos.append(r)
                self.vecinos[r]=[]
                for pp in range(0,len(self.vecinos[p])-1):
                    if q is not self.vecinos[p][pp]:
                        if (p,self.vecinos[p][pp]) in self.aristas:
                            pdla = self.aristas[p,self.vecinos[p][pp]]
                            self.vecinos[r].append(self.vecinos[p][pp])
                            self.vecinos[self.vecinos[p][pp]].append(r)
                            self.aristas[r,self.vecinos[p][pp]] = pdla
                            self.aristas[self.vecinos[p][pp],r] = pdla
                        
                for qq in range(0,len(self.vecinos[q])-1):
                    if p is not self.vecinos[q][qq]:
                        if (q,self.vecinos[q][qq]) in self.aristas:
                            pdla = self.aristas[q,self.vecinos[q][qq]]
                            self.vecinos[r].append(self.vecinos[q][qq])
                            self.vecinos[self.vecinos[q][qq]].append(r)
                            self.aristas[r,self.vecinos[q][qq]] = pdla
                            self.aristas[self.vecinos[q][qq],r] = pdla

                
##                print("r=",r)
##                print("p=",p)
##                print("q=",q)
##                print(self.vecinos[r])
                del self.vecinos[p]
                del self.vecinos[q]

                for qa in self.nodos:
                    if len(self.aristas) > 2:
                        if qa is not r:
                            if (p,qa) in self.aristas:
                                del self.aristas[p,qa]
                            if (qa,p) in self.aristas:
                                del self.aristas[qa,p]
                            if (q,qa) in self.aristas:
                                del self.aristas[q,qa]
                            if (qa,q) in self.aristas:
                                del self.aristas[qa,q]

                self.nodos.remove(p)
                self.nodos.remove(q)

            #print(self.aristas)
               
        with open ("Nodos6.dat", "w") as crear:
            for nodos in range(len(self.nodos)):
                print(self.nodos[nodos][0], self.nodos[nodos][1], 1, file=crear)
            
            
    def graficar(self):
        with open("Tarea6.plot","w") as archivo:
             print("set term png", file=archivo)
             print("set output 'Tarea6.png", file=archivo)
             print("set xrange [0: {:d}]".format(k+1), file=archivo)
             print("set yrange [0: {:d}]".format(k+1), file=archivo)
             print("set pointsize .5", file=archivo)
             print("set size square", file=archivo)
             print("set key off", file=archivo)
             num = 0
             for key in self.aristas:
                 x1 = key[0][0] 
                 y1 = key[0][1] 
                 x2 = key[1][0] 
                 y2 = key[1][1]
                 p = self.aristas[key]
                 print("set arrow {:d} from {:f},{:f} to {:f}, {:f} nohead lw 1.5 lc 0".format(num+1,x1,y1,x2,y2),file=archivo)
                 num+=1
             print("plot 'Nodos6.dat' using 1:2 with points pt 7", file=archivo)
             print("show arrow", file=archivo)
             print("quit()",file=archivo)
k = 10
l = 1
p = 0.0
G=Grafo(k,p)
G.agrega(k)
G.conexiones(l)
G.juntacion()
G.graficar()
