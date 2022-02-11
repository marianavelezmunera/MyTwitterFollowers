llegada<-c("Hilos de biología","Tweet viral güevón","Otros","NS/NR")
f_llegada<-c(204,159,46,97)
datos_llegada<-data.frame(llegada,f_llegada)
ggplot(datos_llegada, aes(x=llegada, y=f_llegada)) +
  geom_point(size=5,color=met.brewer("Klimt", 4),fill=alpha(met.brewer("Klimt",4), 0.3), alpha=0.7, shape=21, stroke=2)+ 
  geom_segment(aes(x=llegada, xend=llegada, y=0, yend=f_llegada))+
  theme_classic()+
  ylab("Frecuencia")+
  xlab("Manera en que llegaron a mi cuenta")+
  ggtitle("¿Cómo llegaron mis seguidores a mi cuenta?")+
  theme(plot.title=element_text( hjust=0.5, vjust=0.5, face='bold'))+
  coord_flip()+
  geom_text(aes(x=llegada,y = f_llegada+20,label=f_llegada))
  
