#Yesenia Villarreal Torres
#TAREA 5
#Matrícula 1109559
#02 de marzo de 2023

Speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
Speed
Abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)
Abundance

Emi <- data.frame(Speed, Abundance)
plot(Emi, pch = 19)

#Figura 1: Diagrama de dispersión de efímeros (Ecdyonurus dispar) y datos de velocidad del flujo. La velocidad de la corriente es el eje independiente y los datos de la mosca de mayo el eje dependiente
#Parece que puede haber una relación entre la velocidad y la abundancia, pero hay varias inconsistencias, no es una correlación perfecta. Contestar las siguientes interrogantes: + ¿Es estadísticamentesignificativa la correlación?


#Si es estadísticamente significativa porque el valor de p es valor a la referencia que es 0.406
#H1: Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)”.

#Nuestra hipótesis nula (H0) ahora se convierte en: “No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras”

cor.test(Speed, Abundance)

#Ejercicio 2
#Conjunto de datos: Composiciones del suelo, características físicas y químicas.
#Descripción: Las características del suelo se midieron en muestras de tres áreas diferentes (cima, pendiente y depresión) y a cuatro profundidades (0-10 cm, 10-30 cm, 30-60 cm y 60-90 cm). El árease dividió en 4 bloques, en un diseño de bloques al azar (Cuadro 2).

library(repmis)

suelos <- read.csv("suelo.csv")
head(suelos)

#Realizar un análisis de correlación para las variables y reportar en un cuadro los valores de coeficiente de correlación y su valor de significancia (p-value):
#Cuadro 3: Ejemplo de cuadro de datos con los estadísticos de interés.


cor.test(suelos$pH, suelos$N)

cor.test(suelos$pH, suelos$Dens)

cor.test(suelos$pH, suelos$P)

cor.test(suelos$pH, suelos$Ca)

cor.test(suelos$pH, suelos$Mg)

cor.test(suelos$pH, suelos$K)

cor.test(suelos$pH, suelos$Na)

cor.test(suelos$pH, suelos$Conduc)


cuadro5p_H <- read.csv("cuadro5.csv")

cuadro5p_H
head(cuadro5p_H)

#Matriz de correlación
suelos.0 <- suelos[, 7:15]
suelos.0
suelos.cor <- round(cor(suelos.0), digits = 4)
suelos.cor


library(corrplot)


corrplot(suelos.cor, tl.col="black", bg="white", tl.srt=45,
         title = "Correlación de Suelos",
         addCoef.col= "black", type ="upper")

##




