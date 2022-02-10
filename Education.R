niveled<-c("Colegio","Técnica/Tecnología","Universidad","Posgrado")
f_niveled<-c(12,17,357,130)
datos_niveled<-data.frame(niveled,f_niveled)
datos_niveled$fraccion = datos_niveled$f_niveled/sum(datos_niveled$f_niveled)
datos_niveled$ymax = cumsum(datos_niveled$fraccion)
datos_niveled$ymin = c(0, head(datos_niveled$ymax, n=-1))
datos_niveled$labelPosition <- (datos_niveled$ymax + datos_niveled$ymin) / 2

ggplot(datos_niveled, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=niveled)) +
  theme_void()+
  geom_rect() +
  coord_polar(theta="y")+
  xlim(c(2, 4))+
  ggtitle("Nivel educativo de mis seguidores")+
  theme(plot.title=element_text( hjust=1, vjust=0.5, face='bold'))+
  scale_fill_manual(values=met.brewer("Klimt", 4))+
  labs(fill="Nivel educativo")+
  geom_text(aes(x=3.5,y = labelPosition,label=f_niveled))
  

