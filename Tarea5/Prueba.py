from random import random
from math import sqrt, ceil, sin, cos, pi, floor
from random import randint, uniform, random
import time, random

def distancia(p, q):
    return sqrt(((p[0]-q[0])**2)+((p[1]-q[1])**2))
    

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
                    x = n*self.distancia
                    y = 1 - m*self.distancia
                    self.nodos.append((x,y))
                    print(x, y, file = crear)
                    if not (x, y) in self.vecinos:
                        self.vecinos[(x,y)] = []
                        

    def conexiones(self, umbral):
        for (x,y) in self.nodos:
            print("nodo", (x,y))
            (x1,y1) = (x + umbral*self.distancia, y)
            print("(x1,y1)",(x1,y1))
            (x2,y2) = (x - umbral*self.distancia, y)
            print("(x2,y2)",(x2,y2)) 
            (x3,y3) = (x, y + umbral*self.distancia)
            print("(x3,y3)",(x3,y3))
            (x4,y4) = (x, y - umbral*self.distancia)
            print("(x4,y4)",(x4,y4))
            if (x1,y1) in self.nodos:
                self.aristas[((x1,y1),(x,y))] = self.aristas[((x,y),(x1,y1))] = 1
            if (x2,y2) in self.nodos:
                self.aristas[((x2,y2),(x,y))] = self.aristas[((x,y),(x2,y2))] = 1 
            if (x3,y3) in self.nodos:
                self.aristas[((x3,y3),(x,y))] = self.aristas[((x,y),(x3,y3))] = 1
            if (x4,y4) in self.nodos:
                self.aristas[((x4,y4),(x,y))] = self.aristas[((x,y),(x4,y4))] = 1 

    
    def camino(self): # construcción de un camino aumentante
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
        else: # no se alcanzó
            return None
        

    def ford_fulkerson(self): # algoritmo de Ford y Fulkerson
        self.s = self.nodos[0]
        self.t = self.nodos[k**2 - 1]
        if self.s == self.t:
            return 0
        maximo = 0
        self.f = dict()
        while True:
            aum = self.camino()
            if aum is None:
                break # ya no hay
            incr = min(aum.values(), key = (lambda k: k[1]))[1]
            u = self.t
            while u in aum:
                v = aum[u][0]
                actual = self.f.get((v, u), 0) # cero si no hay
                inverso = self.f.get((u, v), 0)
                self.f[(v, u)] = actual + incr
                self.f[(u, v)] = inverso - incr
                u = v
            maximo += incr
        with open("FulkersonCompleto.dat", "at") as archivo:
            print(maximo, file=archivo)
        return maximo


    def graficar(self):
        with open("Tarea5Prueba.plot","w") as archivo:
             print("set term pdf", file=archivo)
             print("set output 'Tarea5Prueba.pdf'", file=archivo)
             print("set xrange [0:1]", file=archivo)
             print("set yrange [0:1]", file=archivo)
             print("set pointsize .7", file=archivo)
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
G.graficar()
