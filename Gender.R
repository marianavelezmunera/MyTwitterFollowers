#Género de mis seguidores

genero<-c("Hombre","Mujer","No binario")
f_genero<-c(242,494,16)
datos_genero<-data.frame(genero,f_genero)
colnames(datos_genero)<-c("Genero","Frecuencia")
library(plotrix)
tortalabels<-c("Hombre","Mujer","NB")
torta<-pie3D(datos_genero$Frecuencia,edges=100, explode=0.1, radius=2, height=0.3,theta=0.5, start=0, labelcol="black", labelcex=1, main = "Género de mis seguidores", cex.main=1.55,labels = tortalabels,col = met.brewer("Cassatt1",3,type = "discrete"),labelpos=c(80,20,30))

