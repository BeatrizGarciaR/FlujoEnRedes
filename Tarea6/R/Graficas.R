
TIEMPOS <- read.csv("Tiempo.csv", header=FALSE)
tiempos<- data.frame()
FLUJOS <- read.csv("Flujos.csv", header=FALSE)
flujos<- data.frame()

for (t in 1:5){
  tiempos <- rbind(tiempos,TIEMPOS[((50*t)-49):(50*t),] )
}

pdf("TiemposEjecucion.pdf")
boxplot(t(tiempos), xaxt="n", xlab=c("Repeticiones"), ylab=c("Iteración de corte mínimo"))
axis(1, at=1:5, labels=seq(1,5,1))


for (t in 1:5){
  flujos<- rbind(flujos,FLUJOS[((50*t)-49):(50*t),] )
}

a <- sort(flujos[1,], decreasing = TRUE)
b <- sort(flujos[2,], decreasing = TRUE)
c <- sort(flujos[3,], decreasing = TRUE)
d <- sort(flujos[4,], decreasing = TRUE)
e <- sort(flujos[5,], decreasing = TRUE)

pdf("Flujos1.pdf")
plot(t(a)+20, type="l", col="blue", ylim=c(0,50), lwd=2, xlab="Iteración de corte mínimo", ylab="Flujo máximo")
abline(h=19, col="green", lwd=2)

pdf("Flujos2.pdf")
plot(t(b)+17, type="l", col="blue", ylim=c(0,50), lwd=2, xlab="Iteración de corte mínimo", ylab="Flujo máximo")
abline(h=16, col="green", lwd=2)

pdf("Flujos3.pdf")
plot(t(c)+18, type="l", col="blue", ylim=c(0,50), lwd=2, xlab="Iteración de corte mínimo", ylab="Flujo máximo")
abline(h=17, col="green", lwd=2)

pdf("Flujos4.pdf")
plot(t(d)+18, type="l", col="blue", ylim=c(0,50), lwd=2, xlab="Iteración de corte mínimo", ylab="Flujo máximo")
abline(h=17, col="green", lwd=2)

graphics.off()
