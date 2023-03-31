#YESENIA VILLARREAL TORRES
#EXAMEN ANALISIS ESTADISTICO
#31/MARZO/2023

library(repmis)

#ACTIVIDAD 1
suelos <- source_data("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
suelos
head(suelos)
suelos$zone <- factor(suelos$zone)
is.factor(suelos$zone)
suelos$wrb1 <- factor(suelos$wrb1)
is.factor(suelos$wrb1)

names(suelos)

colnames(suelos)
#P1 
summary(suelos$Clay1)
summary(suelos$Clay2)
summary(suelos$Clay5)
profundidad <- c(suelos$Clay1, suelos$Clay2, suelos$Clay5)

boxplot(suelos$Clay1)
boxplot(suelos$Clay2)
boxplot(suelos$Clay5)

#Clay1 tendencia es baja del contenido promedio de arcilla con respecto a la profundidad, el promedio es 31.27 la mayoría de las observaciones se encuentran alrededor de la media que es 30, entonces el contenido es bajo.   
#Clay2 tendencia del contenido promedio de arcilla con respecto a la profundidad en Clay 2, es que tienen una distribución poco mas simétrica que Clay 1, ya que los datos están distribuidos alrededor del promedio, sin embargo la mediana está en los datos menores a la media.
#Clay5 tendencia del contenido promedio de arcilla con respecto a la profundidad, la media y mediana están en el centro de la distribución simétrica, estas observaciones son más homogéneas, ya que son muy parecidas.

#ACTIVIDAD 2

# P2
stem(suelos$Clay1)
#Distribución con sesgo 

#ACTIVIDAD 3

boxplot(suelos$Clay1)
#P3

#Si hay outliers

#P4
which(suelos$Clay1 > 65)

#ACTIVIDAD 4

mean(suelos$Clay1)

#P5
t.test(suelos$Clay1, mu=30)
t.test(suelos$Clay2, mu=30)
t.test(suelos$Clay5, mu=30)

# Clay 1: no hay diferencias estadísticamente significativas debido a que el valor de p=27% 
# Clay 2: si hay diferencias estadísticamente significativas debido a que el valor de p=1.062e-07, se acepta la hipótesis alternativa 
# Clay 5:si hay diferencias estadísticamente significativas debido a que el valor de p=2.2e-16, se acepta la hipótesis alternativa 


#ACTIVIDAD 5
#P6
#Existe relación positiva en los perfiles Clay 1 y Clay 5, a medida que aumenta el valor de una variable aumenta la otra.
# el valor de cor = 0.89, la relación es positiva, a medida que una variable aumenta la otra también.

cor.test(suelos$Clay1, suelos$Clay5)

plot(suelos$Clay5, suelos$Clay1)
# La relación que existe, sí hay diferencias estadísticamente significativas, se acepta la hipótesis alterna ya que el valor de p=2.2e-16

#P7

# el valor de cor = 0.89, la relación es positiva, a medida que una variable aumenta la otra también.


#Actividad 6

#P 8
#es posible determinar una ecuación significativa para predecir el comportamniento del contenido de arcilla en el perfil inferior clay5?
#R= si es posible

#P 9 
#¿cual es la ecuación final para predecir el comportamiento del contenido de arcilla en el perfil mas profundo (30-50cm)?

arcilla.lm <- lm(suelos$Clay5~suelos$Clay1)
arcilla.lm
plot(suelos$Clay5 ~ suelos$Clay1)
abline(arcilla.lm)
lm(suelos$Clay5 ~ suelos$Clay1)

#Pregunta 10
#¿son ambos parametros alfa y beta significativos?
summary(arcilla.lm)
#R= si, los dos parámetros son estadísticamente significativos 

#Pregunta 11
anova(arcilla.lm)
#p= 2.2e-16 ***, estadísticamente significativos, porcentaje de varianza explicado 
# R-square 0.8047, cuando el valor de R está cerca de 1, significa que el modelo predice correctamente.

#ACTIVIDAD 7
#P12

#Sí existe, calculando y comparando la varianza (ANOVA), representarlo graficando

#P13
boxplot(suelos$Clay5~suelos$zone)

#P13
#Si existen diferencias, ya que las 4 medianas y los diferentes, límites máximos y mínimos también son diferentes, así como la distribución de los datos.

#P14
by(suelos$Clay5, suelos$zone, summary)

#La tendencia en los datos en las diferentes zonas es a disminuir , valores máximos y mínimos disminuyen al igual que medias y medianas.

#ACTIVIDAD 8

#P15
anova <- aov(suelos$Clay5~suelos$zone)
anova

#P16
TUKEY.test <- TukeyHSD(anova)
TUKEY.test

plot(TUKEY.test)
#Las diferencias en las medias de las zonas 

#Zonas 1 y 2 no tienen diferencias estadísticamente significativas.
#Sin embargo, la zona 3-1, 4-1, 3-2, 4-2, 4-3, si tienen diferencias estadísticamente significativas.

#PUNTAJE MAXIMO
 #50