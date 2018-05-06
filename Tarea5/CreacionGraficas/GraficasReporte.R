FlujoA <- read.csv("FordFulkersonA.csv", header=FALSE)

FordFulkersonA <- data.frame()
for (i in 1:4){
  FordFulkersonA <- rbind(FordFulkersonA, FlujoA[((110*i)-109):(110*i),])
}
colnames(FordFulkersonA) <- rep(1,110)
for (u in 1:4){
  umbral <- data.frame()
  for (j in 1:10){
    umbral <- rbind(umbral, FordFulkersonA[u,(((11*j)-10):(11*j))])
  }
  pdf(paste("FordFulkersonA",u,".pdf"))
  boxplot(umbral, xaxt="n",ylim=c(0,100))
  axis(1, at=1:10, labels=seq(1,10,1))
}


FlujoN <- read.csv("FordFulkersonN.csv", header=FALSE)

FordFulkersonN <- data.frame()
for (i in 1:4){
  FordFulkersonN <- rbind(FordFulkersonN, FlujoN[((830*i)-829):(830*i),])
}
colnames(FordFulkersonN) <- rep(1,830)
for (u in 1:4){
  umbral <- data.frame()
  for (j in 1:10){
    umbral <- rbind(umbral, FordFulkersonN[u,(((83*j)-82):(83*j))])
  }
  pdf(paste("FordFulkersonN",u,".pdf"))
  boxplot(umbral, xaxt="n",ylim=c(0,85))
  axis(1, at=1:82, labels=seq(1,82,1))
}


TiempoA <- read.csv("TiempoPercolaArista.csv", header=FALSE)

TiempoEjecucionA <- data.frame()
for (i in 1:4){
  TiempoEjecucionA <- rbind(TiempoEjecucionA, TiempoA[((10*i)-9):(10*i),])
}
pdf(paste("TiempoEjecucionA.pdf"))
boxplot(t(TiempoEjecucionA),ylim=c(0,30), ylab="Tiempo en segundos", xlab="Tamaño de umbral")
axis(1, at=1:4, labels=seq(1,4,1))


TiempoN <- read.csv("TiempoPercolaNodo.csv", header=FALSE)

TiempoEjecucionN <- data.frame()
for (i in 1:4){
  TiempoEjecucionN <- rbind(TiempoEjecucionN, TiempoN[((10*i)-9):(10*i),])
}
pdf(paste("TiempoEjecucionN.pdf"))
boxplot(t(TiempoEjecucionN),ylim=c(0,50),ylab="Tiempo en segundos", xlab="Tamaño de umbral")
axis(1, at=1:4, labels=seq(1,4,1))

graphics.off()
