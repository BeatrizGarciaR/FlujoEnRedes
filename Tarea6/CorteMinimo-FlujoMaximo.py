from random import random, normalvariate,expovariate, randint
from math import ceil, floor, sqrt
import copy
import time


def distancia(p,q):
    return (abs(q[0]-p[0])+ abs(q[1]-p[1]))
def pmedio(p,q):
    return ((p[0]+q[0])/2),((p[1]+q[1])/2)

class Grafo:

    def __init__(self,k,umbral):
        self.aristas = dict()
        self.vecinos = dict()
        self.nodos = []

        
    def agrega(self):
        with open("Nodos6.dat", "w") as crear:
            self.distancia = 1/(k+1)
            for m in range (1,k+1):
                for n in range(1, k+1):
                    x = m
                    y = n
                    self.nodos.append((x,y))
                    print(x, y, file = crear)
                    if not (x, y) in self.vecinos:
                        self.vecinos[(x,y)] = []
            self.s = self.nodos[0]
            self.t = self.nodos[k*k - 1]

    def conexiones(self):
        for n in self.nodos:
            for m in self.nodos: 
                if n is not m:
                    if distancia (n,m) < umbral+1:
                        self.aristas[n,m] = self.aristas[m,n] = floor(normalvariate(10,3))
                        self.vecinos[m].append(n)
                        self.vecinos[n].append(m)




    def juntacion(self):
        import random
        while len(self.nodos)>2:
            p = random.sample(self.nodos,1)[0]
            q = random.sample(self.nodos,1)[0]
            if (p,q) in self.aristas:
                if (p is self.s and q is self.t) or (q is self.s and p is self.t):
                    0                  
                else:
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

                    

                self.s = self.nodos[0]
                self.t = self.nodos[len(self.nodos)-1]

                while len(self.nodos) > 2 and len(self.aristas) is 2:
                    for nodo in self.nodos:
                        if nodo is not self.s and nodo is not self.t:
                            self.nodos.remove(nodo)


        with open ("Nodos6.dat", "w") as crear:
            for nodos in range(len(self.nodos)):
                print(self.nodos[nodos][0], self.nodos[nodos][1], 1, file=crear)
            


    def camino(self):
        cola = [self.s]
        usados = set()
        camino = dict()
        while len(cola) > 0:
            u = cola.pop(0)
            usados.add(u)
            for (w, v) in self.aristas:
                if w == u and v not in cola and v not in usados:
                    actual = self.f.get((u, v), 0)
                    dif = self.aristas[(u, v)] - actual
                    if dif > 0:
                        cola.append(v)
                        camino[v] = (u, dif)
        if self.t in usados:
           return camino
        else:
            return None
        

    def ford_fulkerson(self): 
        self.s = self.nodos[0]
        self.t = self.nodos[len(self.nodos) - 1]
        if self.s == self.t:
            return 0
        maximo = 0
        self.f = dict()
        while True:
            aum = self.camino()
            if aum is None:
                break 
            incr = min(aum.values(), key = (lambda k: k[1]))[1]
            u = self.t
            while u in aum:
                v = aum[u][0]
                actual = self.f.get((v, u), 0) 
                inverso = self.f.get((u, v), 0)
                self.f[(v, u)] = actual + incr
                self.f[(u, v)] = inverso - incr
                u = v
            maximo += incr
        with open ("Flujos.csv", "at") as fulkerson:
            #if maximo is not 0:
            print(maximo, file=fulkerson)
        return maximo

             
    def graficar(self):
        with open("Tarea6.plot","w") as archivo:
             print("set term png", file=archivo)
             print("set output 'Tarea6.png", file=archivo)
             print("set xrange [-.1:1.1]", file=archivo)
             print("set yrange [-.1:1.1]", file=archivo)
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
umbral = 1
G=Grafo(k,umbral)
G.agrega()
G.conexiones()
G.ford_fulkerson()
#G.graficar()

for num in range(0,5):
    print(num)
    for rep in range(0,50):
        #print(rep)
        G1 = copy.deepcopy(G)
        with open ("Tiempo.csv", "at") as percola:
            TiempoInicio = time.clock()
            G1.juntacion()
            G1.ford_fulkerson()
            print(time.clock() - TiempoInicio, file=percola)
 
    #G1.graficar()  
