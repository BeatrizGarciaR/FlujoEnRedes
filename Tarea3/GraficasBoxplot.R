NoDirigido <- read.csv("TiemposNoDirigidoCompleto.csv", header=FALSE)
shapiro.test(NoDirigido[,1])
#La distribución no es normal
Dirigido <- read.csv("TiemposDirigidoCompleto.csv", header=FALSE)
shapiro.test(Dirigido[,1])
#La distribución no es normal

TiemposNoDirigido <- data.frame()
for (i in 1:20){
  TiemposNoDirigido <- rbind(TiemposNoDirigido, NoDirigido[((10*i)-9):(10*i),])
}
png("TiemposNoDirigidoCompleto.png")
boxplot(t(TiemposNoDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:21, labels=seq(0,100,5))
par(new=TRUE)
plot(exp, xlab="", ylab="", col="blue", lwd=3, xaxt="n", yaxt="n", ylim=c(1,3))
#axis(1, at=1:21, labels=seq(0,100,5))
  
TiemposDirigido <- data.frame()
for (i in 1:20){
  TiemposDirigido <- rbind(TiemposDirigido, Dirigido[((10*i)-9):(10*i),])
}
png("TiemposDirigidoCompleto.png")
boxplot(t(TiemposDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:21, labels=seq(0,100,5))
par(new=TRUE)
plot(exp, xlab="", ylab="", col="blue", lwd=3, xaxt="n", yaxt="n", ylim=c(1,3))
#axis(1, at=1:21, labels=seq(0,100,5))
graphics.off()
