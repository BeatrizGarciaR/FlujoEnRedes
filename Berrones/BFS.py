from random import random
from math import sqrt, ceil
from random import randint, uniform, random
import time

#Falta poner leyenda de los colores

class Grafo:

    def __init__(self):
        self.nodos = set()
        self.dis = dict()
        self.vecinos = dict()
        self.aristas = dict()


    def agrega(self, n):
        for t in range(n):
            x = random()
            y = random()
            self.nodos.add((x,y))
            if not (x,y) in self.vecinos:
                self.vecinos[(x,y)] = set()

    def guarda(self):
        with open("BFS.dat", "w") as crear:
            import random
            self.nodoInicio = random.sample(self.nodos,1)[0]
            for nodos in self.nodos:
                if nodos == self.nodoInicio:
                    print(self.nodoInicio[0],self.nodoInicio[1],4, file=crear)
                if nodos is not self.nodoInicio:
                    print(nodos[0],nodos[1],6, file=crear)


    def distancia(self):
        for (x1,y1) in self.nodos:
            for (x2,y2) in self.nodos:
                d=sqrt(((y2-y1)**2)+((x2-x1)**2))
                if d==0:
                    self.dis[(x1,y1),(x2,y2)] = 20
                else:
                    if d in self.dis:
                        self.dis[(x1,y1),(x2,y2)] = 20
                    else:
                        self.dis[(x1,y1),(x2,y2)] = d


    def conectaDir(self):
        for (x1,y1) in self.nodos:
            self.dismin = dict()
            for(x2,y2) in self.nodos:
                dm = sqrt(((y2-y1)**2)+((x2-x1)**2))
                if dm == 0:
                    self.dismin[(x1,y1),(x2,y2)] = 20
                else:
                    if dm in self.dismin:
                        self.dismin[(x1,y1),(x2,y2)] = 20
                    else:
                        self.dismin[(x1,y1),(x2,y2)] = dm
            minimo = min(self.dismin.values())
            lis = []
            if minimo in self.dis.values():
                items = list(self.dismin.items())
                for k in range (len(self.dismin)):
                    lis.append(items[k][1])
                u = items[lis.index(min(self.dismin.values()))][0][1]
                if pesos is 0:
                  self.aristas[((x1,y1),u)] = pesos
                  self.vecinos[(x1,y1)].add(u)
                else:
                  self.aristas[((x1,y1),u)] = randint(1,10)
                  self.vecinos[(x1,y1)].add(u)
                del(self.dis[((x1,y1),u)])


                
    def conecta(self):
        for (x1,y1) in self.nodos:
            self.dismin = dict()
            for(x2,y2) in self.nodos:
                dm = sqrt(((y2-y1)**2)+((x2-x1)**2))
                if dm == 0:
                    self.dismin[(x1,y1),(x2,y2)] = 20
                else:
                    if dm in self.dismin:
                        self.dismin[(x1,y1),(x2,y2)] = 20
                    else:
                        self.dismin[(x1,y1),(x2,y2)] = dm
            minimo = min(self.dismin.values())
            lis = []
            if minimo in self.dis.values():
                items = list(self.dismin.items())
                for k in range (len(self.dismin)):
                    lis.append(items[k][1])
                u = items[lis.index(min(self.dismin.values()))][0][1]
                if pesos is 0:
                  self.aristas[((x1,y1),u)] = self.aristas[(u,(x1,y1))] = pesos
                  self.vecinos[(x1,y1)].add(u)
                  self.vecinos[u].add((x1,y1))
                else:
                  self.aristas[((x1,y1),u)] = self.aristas[(u,(x1,y1))] = randint(1,10)
                  self.vecinos[(x1,y1)].add(u)
                  self.vecinos[u].add((x1,y1))
                del(self.dis[((x1,y1),u)])
                del(self.dis[(u,(x1,y1))])
                    
        

    def conectaAleatorioDir(self):
        import random
        rand = ceil(i*(50/100))
        for j in range (rand):
            v = random.sample(self.nodos,1)[0]
            u = random.sample(self.nodos,1)[0]
            if v == u:
                u = random.sample(self.nodos,1)[0]
                if pesos is 0:
                    self.aristas[(v,u)] = pesos
                    self.vecinos[v].add(u)
                else:
                    self.aristas[(v,u)] = randint(1,10)
                    self.vecinos[v].add(u)
            else:
                if pesos is 0:
                    self.aristas[(v,u)] = pesos
                    self.vecinos[v].add(u)
                else:
                    self.aristas[(v,u)] = randint(1,10)
                    self.vecinos[v].add(u)

    def conectaAleatorio(self):
        import random
        rand = ceil(i*(50/100))
        for j in range (rand):
            v = random.sample(self.nodos,1)[0]
            u = random.sample(self.nodos,1)[0]
            if v == u:
                u = random.sample(self.nodos,1)[0]
                if pesos is 0:
                    self.aristas[(v,u)] = self.aristas[(u,v)] = pesos
                    self.vecinos[v].add(u)
                    self.vecinos[u].add(v)
                else:
                    self.aristas[(v,u)] = self.aristas[(u,v)] = randint(1,10)
                    self.vecinos[v].add(u)
                    self.vecinos[u].add(v)
            else:
                if pesos is 0:
                    self.aristas[(v,u)] = self.aristas[(u,v)] = pesos
                    self.vecinos[v].add(u)
                    self.vecinos[u].add(v)
                else:
                    self.aristas[(v,u)] = self.aristas[(u,v)] = randint(1,10)
                    self.vecinos[v].add(u)
                    self.vecinos[u].add(v)

    def Breath_First_Search(self):
        import random
        niveles = {}
        explorado = []
        estado = [self.nodoInicio]         
        niveles[self.nodoInicio]= 0    
        visitado= [self.nodoInicio]     
        while estado:
            nodo = estado.pop(0)
            explorado.append(nodo)
            vecino = self.vecinos[nodo]
            for vecino in vecino:
                if vecino not in visitado:
                    estado.append(vecino)
                    visitado.append(vecino)
                    niveles[vecino]= niveles[nodo]+1
                    
        print(niveles)
        return explorado


    def graficar(self, di, pesos):
        with open("BFS.plot","w") as archivo:
             print("set term png", file=archivo)
             print("set output 'BFS.png'", file=archivo)
             print("set xrange [-.1:1.1]", file=archivo)
             print("set yrange [-.1:1.1]", file=archivo)
             print("set pointsize 2", file=archivo)
             print("set size square", file=archivo)
             print("set key off", file=archivo)
             num=0
             set1 = [1,2,3]
             set2 = [4,5,6]
             set3 = [7,8,9,10]
             for key in self.aristas:
                 x1 = key[0][0] 
                 y1 = key[0][1] 
                 x2 = key[1][0] 
                 y2 = key[1][1]
                 if di is 1:
                    if x1 < x2:
                     x2 = x2 - .007
                     if x2 < x1:
                         x2 = x2 + .007
                     if y1 < y2:
                         y2 = y2 - .007
                     if y2 < y1:
                         y2 = y2 + .007
                    if pesos is 0:
                        print("set arrow {:d} from {:f},{:f} to {:f}, {:f} head filled size screen 0.02,15,45 lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                    else:
                        p = self.aristas[key]
                        if p in set1:
                            print("set arrow {:d} from {:f},{:f} to {:f}, {:f} head filled size screen 0.02,15,45 lw 1.5 lc 1".format(num+1,x1,y1,x2,y2),file=archivo)
                        if p in set2:
                            print("set arrow {:d} from {:f},{:f} to {:f}, {:f} head filled size screen 0.02,15,45 lw 1.5 lc 2".format(num+1,x1,y1,x2,y2),file=archivo)
                        if p in set3:
                            print("set arrow {:d} from {:f},{:f} to {:f}, {:f} head filled size screen 0.02,15,45 lw 1.5 lc 6".format(num+1,x1,y1,x2,y2),file=archivo)
                 else:
                     if pesos is 0:
                        print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead filled lw 1".format(num+1,x1,y1,x2,y2),file=archivo)
                     else:
                        p = self.aristas[key]
                        if p in set1:
                            print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead filled lw 1.5 lc 1".format(num+1,x1,y1,x2,y2),file=archivo)
                        if p in set2:
                            print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead filled lw 1.5 lc 2".format(num+1,x1,y1,x2,y2),file=archivo)
                        if p in set3:
                            print("set arrow {:d} from {:f}, {:f} to {:f}, {:f} nohead filled lw 1.5 lc 6".format(num+1,x1,y1,x2,y2),file=archivo)        
                 num+=1
             print("plot 'BFS.dat' using 1:2:3 with points pt 7 lc var", file=archivo)
             print("show arrow", file=archivo)
             print("quit()",file=archivo)



di = 0      #Si di=0 el grafo va a ser sin direccion, si es 1 es dirigido
pesos = 0   #Si pesos=0 el grafo no tendra ponderacion, si es 1 si lo tendra

if di is 0:
    i = 10 #Cantidad de nodos que va a tener el grafo
    G = Grafo()
    G.agrega(i)
    G.guarda()
    G.distancia()
    G.conecta()
    G.conectaAleatorio()
    print(G.Breath_First_Search())
    G.graficar(di,pesos)


if di is 1:
    i = 10 #Cantidad de nodos que va a tener el grafo
    G = Grafo()
    G.agrega(i)
    G.guarda()
    G.distancia()
    G.conectaDir()
    G.conectaAleatorioDir()
    print(G.Breath_First_Search())
    G.graficar(di,pesos)

                
