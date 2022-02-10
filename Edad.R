#Age 
install.packages("packcircles")
install.packages("viridis")
install.packages("ggiraph")
library(packcircles)
library(ggplot2)
library(viridis)
library(ggiraph)
edad<-c("niños","genz","milenial","boomers")
f_edad<-c(8,307,128,93)
datos_edad<-data.frame(edad,f_edad)
packing<-circleProgressiveLayout(datos_edad$f_edad, sizetype='area')
datos_edad2<- cbind(datos_edad, packing)
datos_edad3<-circleLayoutVertices(packing, npoints=50)
edades<-c("Niños(<18)","Gen Z y Millennials jovenes (18-25)","Millennials viejos(25-30)","Boomers (30+)")
ggplot()+
  geom_polygon(data=datos_edad3,aes(x,y,group=id,fill=as.factor(id)),colour="black",alpha=1)+
  theme_void()+
  geom_text(data=datos_edad2,aes(x,y,size=f_edad,label=edades))+
  geom_text(data=datos_edad2,aes(x,y-1.1,size=f_edad,label=f_edad))+
  scale_size_continuous(range = c(2.5,4))+
  theme(legend.position="none") +
  coord_equal()+
  scale_fill_manual(values=met.brewer("Klimt", 4))+
  ggtitle("Edad de mis seguidores")+
  theme(plot.title=element_text( hjust=1, vjust=0.5, face='bold'))
  
