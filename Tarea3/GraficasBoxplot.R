NoDirigido <- read.csv("TiemposNoDirigido.csv", header=FALSE)
Dirigido <- read.csv("TiemposDirigido.csv", header=FALSE)

TiemposNoDirigido <- data.frame()
for (i in 1:20){
  TiemposNoDirigido <- rbind(TiemposNoDirigido, NoDirigido[((10*i)-9):(10*i),])
}
png("TiemposNoDirigido.png")
boxplot(t(TiemposNoDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:20, labels=seq(5,100,5))
  
TiemposDirigido <- data.frame()
for (i in 1:20){
  TiemposDirigido <- rbind(TiemposDirigido, Dirigido[((10*i)-9):(10*i),])
}
png("TiemposDirigido.png")
boxplot(t(TiemposDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:20, labels=seq(5,100,5))
graphics.off()
