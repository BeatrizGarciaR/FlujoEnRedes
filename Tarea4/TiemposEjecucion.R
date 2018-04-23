Tiempos <- read.csv("TiemposEjecucion.csv", header=FALSE)

TiemposNoDirigido <- data.frame()
for (i in 1:20){
  TiemposNoDirigido <- rbind(TiemposNoDirigido, NoDirigido[((10*i)-9):(10*i),])
}

pdf("TiemposEjecucion.pdf")
boxplot(t(TiemposNoDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:20, labels=seq(5,100,5))
#par(new=TRUE)
#plot(exp, xlab="", ylab="", col="blue", lwd=3, xaxt="n", yaxt="n", ylim=c(1,3))

