#Yesenia Villarreal Torres
#1109559
#Laboratorio 4
#27 de febrero 2023

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
inventario

str(inventario)
dim(inventario)
head(inventario, n = 5)
tail(inventario, n = 5)
names(inventario)
colnames(inventario)
summary(inventario)

#dimensiones (num filas y columnas)

dim(inventario)

#nombre de las primeras 5 columnas

names(inventario[ ,1:5])

summary(inventario[ ,3:5])

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario[ ,3:5])
summary(inventario)

# Tablas de frecuencia ----------------------------------------------------


freq_position <- table(inventario$Posicion)
freq_position

prop_position <- freq_position / sum(freq_position)
prop_position

#Si desea expresar las proporciones como porcentajes, multiplique prop_position por 100:
perc_position = 100 * prop_position
perc_position


# Gráficas barplot y pie --------------------------------------------------

#Gráficas de barras (barplot)
#Gráficas de pastel (pie)

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#las = 1: muestra las frecuencias perpendiculares al eje-y.
#border = NA: elimina el borde negro alrededor de las barras.
#cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas quepan en el gráfico).



#Gráfico circular o pie. El otro tipo común de gráfico para ver frecuencias es un gráfico circular. R proporciona la función pie() para producir estos gráficos:
pie(freq_position, col = topo.colors(4),
labels = paste(levels(inventario$Posicion), round(perc_position, 2), " %"))

  
  #Autoestudio

  # topo.colors es una paleta de colores pre establecidas en R y
  # el paréntesis indica el # de colores a usar  
#Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datos inventario
freq_Especie <- table(inventario$Especie)
freq_Especie

prop_Especie <- freq_Especie / sum(freq_Especie)
prop_Especie

perc_Especie = 100 * prop_Especie
perc_Especie
barplot(freq_Especie, las = 1, border = NA, cex.names = 0.7)
pie(freq_Especie, col = topo.colors(3),
    
    labels = paste(levels(inventario$Especie), round(perc_Especie, 2), " %"))

# Representación de variables cuantitativas -------------------------------

#histogramas
#boxplots o gráfica de cajas

#Histogramas
#Un histograma es un tipo de gráfico que muestra la distribución de datos numéricos

diam_hist <- hist(inventario$Diametros, las = 1, col = 'yellow')
diam_hist

#breaks: puntos de ruptura (corte) de los intervalos de clase
#counts: número de observaciones en cada categoría
#density: densidad
#mids: punto central del intervalo
#xname: nombre del objeto (variable) que se esta graficando
#equidist: ¿Los categorías tienen el mismo ancho?
# attr: Tipo de clase

diam_hist$breaks
diam_hist$mids
diam_hist$counts
diam_hist$density
diam_hist$xname
diam_hist$equidist
diam_hist$attr

       
h1 <- hist(inventario$Diametros, xaxt = "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col = "#00cFDFDF", xlab="Diámetros (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)


# Autoestudio Realizar el mismo procedimiento para la variable Alt --------

altura_hist <- hist(inventario$Altura, las = 1, col = 'yellow')
altura_hist

altura_hist$breaks
altura_hist$mids
altura_hist$counts
altura_hist$density
altura_hist$xname
altura_hist$equidist
altura_hist$attr


h2 <- hist(inventario$Altura, xaxt = "n",
           breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
           col = "#12444444", xlab="Métros (m)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)

#FIN 1
culpame a mi 
