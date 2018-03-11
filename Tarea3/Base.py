from random import random
from math import sqrt, ceil
from random import randint, uniform,random

def punto(x1,y1):
    return(((x1[0] + y1[0])/2)-.005, ((x1[1] + y1[1])/2)+.005)

class Grafo:

    def __init__(self):
        self.nodos = []
        self.aristas= []
        self.dis = []
        self.dismin = []
        self.peso = []
        self.vector = []

    def agrega(self, n):
        with open("Base.dat", "w") as crear:
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
                    self.dis.append(20)
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
            if min(self.dismin) in self.dis:
                a1=self.nodos[self.dismin.index(min(self.dismin))][0]
                b1=self.nodos[self.dismin.index(min(self.dismin))][1]
                self.aristas.append((x1,y1,a1,b1))
                self.peso.append(randint(1,10))
                self.vector.append(punto((x1,y1),(a1,b1)))
                self.dis.remove(min(self.dismin))

    def conectaOrdenado(self):
        sig = 0
        rand = randint(0,10)
        for(x1,y1) in self.nodos[0:rand]:
            sig = randint(0,10)
            w1 = self.nodos[sig][0]
            w2 = self.nodos[sig][1]
            if x1 == w1 and y1 == w2:
                sig = randint(0,10)
                w1 = self.nodos[sig][0]
                w2 = self.nodos[sig][1]
                self.aristas.append((x1,y1,w1,w2))
                if (x1,y1,w1,w2) in self.aristas and (w1,w2,x1,y1) in self.aristas:
                    pesoarista = G.peso[G.aristas.index((w1,w2,x1,y1))]
                    self.peso.append(pesoarista)
                    self.vector.append(punto((x1,y1),(w1,w2)))
                else:
                    self.peso.append(randint(1,10))
                    self.vector.append(punto((x1,y1),(w1,w2)))
            else:
                self.aristas.append((x1,y1,w1,w2))
                if (x1,y1,w1,w2) in self.aristas and (w1,w2,x1,y1) in self.aristas:
                    pesoarista = G.peso[G.aristas.index((w1,w2,x1,y1))]
                    self.peso.append(pesoarista)
                    self.vector.append(punto((x1,y1),(w1,w2)))
                else:
                    self.peso.append(randint(1,10))
                    self.vector.append(punto((x1,y1),(w1,w2)))
            
        
    def floyd_warshall(self): 
        d = {}
        for v in range (len(self.nodos)):
            dot = self.nodos[v]
            d[(dot, dot)] = 0 # distancia reflexiva es cero
            for u in range (len(self.aristas)): # para vecinos, la distancia es el peso
                p1=(self.aristas[u][0], self.aristas[u][1])
                p2=(self.aristas[u][2], self.aristas[u][3])
                d[(p1,p2)] = d[(p2,p1)] = self.peso[u]

        for intermedio in range (len(self.nodos)):
            for desde in range (len(self.nodos)):
                for hasta in range (len(self.nodos)):
                    di = None
                    if (self.nodos[desde], self.nodos[intermedio]) in d:
                        di = d[(self.nodos[desde], self.nodos[intermedio])]
                    ih = None
                    if (self.nodos[intermedio], self.nodos[hasta]) in d:
                        ih = d[(self.nodos[intermedio], self.nodos[hasta])]
                    if di is not None and ih is not None:
                        c = di + ih # largo del camino via "i"
                        if (self.nodos[desde], self.nodos[hasta]) not in d or c < d[(self.nodos[desde], self.nodos[hasta])]:
                            d[(self.nodos[desde], self.nodos[hasta])] = c # mejora al camino actual
   
        return d

    def camino(self): # construcción de un camino aumentante
        cola = [self.s]
        usados = set()
        camino = dict()
        while len(cola) > 0:
            u = cola.pop(0)
            usados.add(u)
            for (w, v) in self.c:
                if w == u and v not in cola and v not in usados:
                    actual = self.f.get((u, v), 0)
                    dif = self.c[(u, v)] - actual
                    if dif > 0:
                        cola.append(v)
                        camino[v] = (u, dif)
        if self.t in usados:
           return camino
        else: # no se alcanzó
            return None
    
    def ford_fulkerson(self): # algoritmo de Ford y Fulkerson
        self.s = self.nodos[0]
        self.t = self.nodos[randint(1,i-1)]
        if self.s == self.t:
            return 0
        maximo = 0
        self.f = dict()
        while True:
            self.c = self.floyd_warshall()
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
        print(maximo)
        return maximo

    def graficar(self, di, pesos):
        with open("Base.plot","w") as archivo:
             print("set term pdf", file=archivo)
             print("set output 'Base.pdf'", file=archivo)
             print("set xrange [-.1:1.1]", file=archivo)
             print("set yrange [-.1:1.1]", file=archivo)
             print("set pointsize .7", file=archivo)
             print("set size square", file=archivo)
             print("set key off", file=archivo)
             num=0
             for a in self.aristas:
                 (x1,y1,x2,y2)=a
                 if di is 1:
                    print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} head filled lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                 else:
                    print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead filled lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                 if pesos is 1:
                    p = self.peso[num]
                    (kp, rp) = self.vector[num]
                    print("set label font ',11' '{:d}' at {:f},{:f} tc rgb 'brown'".format(p, kp, rp),file = archivo)
                 num+=1
             print("show arrow", file=archivo)
             print("plot 'Base.dat' using 1:2 with points pt 7 lc 6", file=archivo)
             print("quit()",file=archivo)

             

i = 20 #Cantidad de nodos que va a tener el grafo
G = Grafo()
G.agrega(i)
G.distancia()
G.conecta()
G.conectaOrdenado()
G.floyd_warshall()
G.ford_fulkerson()
print(G.peso)
G.graficar(di=0, pesos=1) #Si di=0 el grafo va a ser sin direccion, si es 1 es dirigido
                          #Si pesos=0 el grafo no tendra ponderacion, si es 1 si lo tendra

