#Sexual orientation
genero<-factor(c(1,2,3,1,2,3,1,2,3),labels =c("Hombre","Mujer","NB"))
orientacion<-factor(c(1,1,1,2,2,2,3,3,3),labels = c("Heterosexual","Homosexual","Bisexual"))
f_orientacion<-c(171,335,7,39,27,9,32,132,NA)
datos_orientacion<-data.frame(genero,orientacion,f_orientacion)

ggplot(datos_orientacion,aes(x=orientacion,y=f_orientacion,fill=genero))+
  geom_bar(stat="identity", position=position_dodge())+
  scale_fill_manual(values=met.brewer("Klimt", 3))+
  theme_classic()+
  ylab("Frecuencia")+
  xlab("Orientación sexual")+
  labs(fill="Género")+
  geom_text(data = NULL, x = 2, y = 300, label = "N=752")

