from random import random
from math import sqrt, ceil, sin, cos, pi, floor
from random import randint, uniform, random
import time, random

def distancia(p, q):
     return (abs(q[0]-p[0])+ abs(q[1]-p[1]))
    

class Grafo:

    def __init__(self):
        self.dis = dict()
        self.vecinos = dict()
        self.aristas = dict()
        self.nodos = []

        
    def agrega(self, i):
        with open("NodosFulkerson.dat", "w") as crear:
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
        for (x,y) in self.nodos:
            for (p,q) in self.nodos:
                if (x,y) is not (p,q):
                    if distancia ((x,y),(p,q)) < umbral+1:
                        self.aristas[(x,y),(p,q)] = self.aristas[(p,q),(x,y)] = umbral


     def conexionAleatoria(self,p):
          numero = rand()
          if           

    
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
        self.t = self.nodos[k**2 - 1]
        print(self.s, self.t)
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
        #with open("FulkersonCompleto.dat", "at") as archivo:
        print(maximo)
        return maximo


    def graficar(self):
        with open("Tarea5Prueba.plot","w") as archivo:
             print("set term pdf", file=archivo)
             print("set output 'Tarea5Prueba.pdf'", file=archivo)
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
                 if p > k:
                     print("set arrow {:d} from {:f},{:f} to {:f}, {:f} nohead lw 1 lc 1".format(num+1,x1,y1,x2,y2),file=archivo)
                 else:
                     print("set arrow {:d} from {:f},{:f} to {:f}, {:f} nohead lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                 num+=1
             print("plot 'NodosFulkerson.dat' using 1:2 with points pt 7 lc 6", file=archivo)
             print("show arrow", file=archivo)
             print("quit()",file=archivo)


k = 4
umbral = 1
G = Grafo()
G.agrega(k)
G.conexiones(umbral)
G.ford_fulkerson()
G.graficar()
