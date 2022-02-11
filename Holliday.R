library(treemap)
festividad<- c("Halloween","Navidad","Semana Santa","Otra")
f_festividad<- c(116,248,21,74)
datos_festividad<- data.frame(festividad,f_festividad)

# treemap

treemap(datos_festividad,index="festividad",vSize="f_festividad",type="index",title = "Festividad favorita de mis seguidores",palette = met.brewer("Klimt", 4))

