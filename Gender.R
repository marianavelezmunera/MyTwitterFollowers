#Género de mis seguidores
library(ggplot2)
library(MetBrewer)
genero<-c("Hombre","Mujer","No binario")
f_genero<-c(242,494,16)
datos_genero<-data.frame(genero,f_genero)
colnames(datos_genero)<-c("Genero","Frecuencia")
text<-"N=752"

ggplot(datos_genero,aes(x="",y=Frecuencia,fill=Genero))+
  geom_bar(stat="identity",width = 1)+
  coord_polar(theta = "y",start = 0)+
  theme_void()+
  ggtitle("Género de mis seguidores")+
  theme(plot.title=element_text( hjust=1, vjust=0.5, face='bold'))+
  scale_fill_manual(values=met.brewer("Klimt", 3))+
  geom_text(data = NULL, x = 1.9, y = 105, label = "N=752")+
  geom_text(data = NULL, x = 1, y = 10, label = "16")+
  geom_text(data = NULL, x = 1, y = 200, label = "494")+
  geom_text(data = NULL, x = 0, y = 200, label = "242")
  
