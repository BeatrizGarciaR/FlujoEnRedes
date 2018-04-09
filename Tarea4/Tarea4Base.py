from random import random
from math import sqrt, ceil, sin, cos, pi
from random import randint, uniform, random
import time, random

class Grafo:

    def __init__(self):
        self.dis = dict()
        self.vecinos = dict()
        self.aristas = dict()
        self.nodos = []
        

    def agrega(self, i):
        with open("NodosWarshall.dat", "at") as crear:
            centro = (0.5, 0.5)
            radio = 0.4
            angulo = (360/i)*(pi/180)
            for n in range(1, i+1):
                x = radio*cos(angulo*n) + centro[0]
                y = radio*sin(angulo*n) + centro[1]
                self.nodos.append((x,y))
                print(x, y, file = crear)
                if not (x, y) in self.vecinos:
                    self.vecinos[(x,y)] = set()
          

    def conecta(self, k):
        for r in range(1,k+1):
            for j in range(0,i):
                a = self.nodos[j]
                b = self.nodos[j-r]
                self.aristas[(a,b)] = self.aristas[(b,a)] = 2
                self.vecinos[a].add(b)
                self.vecinos[b].add(a)

    def conectaAleatorio(self, p):
        for (x1,y1) in self.nodos:
            for (x2,y2) in self.nodos:
                rand = random.uniform(0,1)
                print(rand)
                if rand < p and ((x1,y1),(x2,y2)) not in self.aristas and ((x2,y2),(x1,y1)) not in self.aristas:
                    self.aristas[((x1,y1),(x2,y2))] = self.aristas[((x2,y2),(x1,y1))] = 2
                    self.vecinos[(x1,y1)].add((x2,y2))
                    self.vecinos[(x2,y2)].add((x1,y1))
                    

    def graficar(self):
        with open("Tarea4.plot","w") as archivo:
             print("set term pdf", file=archivo)
             print("set output 'Tarea4.pdf'", file=archivo)
             print("set xrange [-.1:1.1]", file=archivo)
             print("set yrange [-.1:1.1]", file=archivo)
             print("set pointsize .7", file=archivo)
             print("set size square", file=archivo)
             print("set key off", file=archivo)
             num = 0
             for key in self.aristas:
                 x1 = key[0][0] 
                 y1 = key[0][1] 
                 x2 = key[1][0] 
                 y2 = key[1][1]
                 print("set arrow {:d} from {:f},{:f} to {:f}, {:f} nohead lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                 num+=1
             print("plot 'NodosWarshall.dat' using 1:2 with points pt 7 lc 6", file=archivo)
             print("show arrow", file=archivo)
             print("quit()",file=archivo)



i = 10
k = ceil(i/4)
p = 0.1
G = Grafo()
G.agrega(i)
G.conecta(k)
G.conectaAleatorio(p)
G.graficar()
