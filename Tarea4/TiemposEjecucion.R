Tiempos <- read.csv("TiemposEjecucion.csv", header=FALSE)

TiemposEjecucion <- data.frame()
for (i in 1:20){
  TiemposEjecucion <- rbind(TiemposEjecucion, Tiempos[((10*i)-9):(10*i),])
}

pdf("TiemposEjecucion.pdf")
boxplot(t(TiemposEjecucion), xaxt="n", xlab=c("Cantidad de nodos"), ylab=c("Tiempo de ejecución"))
axis(1, at=1:20, labels=seq(5,100,5))
graphics.off()
