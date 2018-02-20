from random import random
from math import sqrt


class Grafo:

    def _init_(mod):
        mod.n = 50
        mod.nodos = []
        mod.aristas= []
        mod.dis = []
        mod.dismin=[]

    def nodos(nod):
        for t in range(mod.n):
            x=random()
            y=random()
            mod.nodos[(x,y)].add((x,y))

    def distancia(nod):
        for (x1,y1) in mod.nodos:
            for (x2,y2) in mod.nodos:
                d=math.sqrt(((y2-y1)**2)+((x2-x1)**2))
                if d==0:
                    mod.dis[d].add(d)
                else:
                    if d in dis:
                        mod.dis[20].add(20)
                    else:
                        mod.dis[d].add(d)

    def conecta(nod):
        for (x1,y1) in mod.nodos:
            mod.dismin
            for(x2,y2) in mod.nodos:
                dm=math.sqrt(((y2-y1)**2)+((x2-x1)**2))
                if dm==0:
                    mod.dismin[20].add(20)
                else:
                    if dm in mod.dismin:
                        mod.dismin[20].add(20)
                    else:
                        mod.dismin[d].add(d)
            if min(mod.dismin) in mod.dis:
                a1=mod.nodos[mod.dismin.index(min(mod.dismin))][0]
                b1=mod.nodos[mod.dismin.index(min(mod.dismin))][1]
                mod.aristas[(x,y)].add((x,y))
                mod.dis.remove(min(mod.dismin))
