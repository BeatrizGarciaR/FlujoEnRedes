NoDirigido <- read.csv("TiemposNoDirigidoCompleto.csv", header=FALSE)
Dirigido <- read.csv("TiemposDirigidoCompleto.csv", header=FALSE)

TiemposNoDirigido <- data.frame()
for (i in 1:20){
  TiemposNoDirigido <- rbind(TiemposNoDirigido, NoDirigido[((10*i)-9):(10*i),])
}
print(shapiro.test(TiemposNoDirigido[,1]))
#No es normal
pdf("TiemposNoDirigidoCompleto.pdf")
boxplot(t(TiemposNoDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:20, labels=seq(5,100,5))
par(new=TRUE)
plot(exp, xlab="", ylab="", col="blue", lwd=3, xaxt="n", yaxt="n", ylim=c(1,3))


TiemposDirigido <- data.frame()
for (i in 1:20){
  TiemposDirigido <- rbind(TiemposDirigido, Dirigido[((10*i)-9):(10*i),])
}
print(shapiro.test(TiemposDirigido[,1]))
#No es normal
pdf("TiemposDirigidoCompleto.pdf")
boxplot(t(TiemposDirigido), xaxt="n", ylim=c(0,3), xlab=c("Cantidad de nodos"), ylab=c("Tiempo en segundos"))
axis(1, at=1:21, labels=seq(0,100,5))
par(new=TRUE)
plot(exp, xlab="", ylab="", col="blue", lwd=3, xaxt="n", yaxt="n", ylim=c(1,3))
graphics.off()

