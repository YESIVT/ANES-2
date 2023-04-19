#YESENIA VILLARREAL TORRES
#EXAMEN ANALISIS ESTADISTICO
#31/MARZO/2023

library(repmis)

suelos <- source_data("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")
suelos
head(suelos)
suelos$zone <- factor(suelos$zone)
is.factor(suelos$zone)
suelos$wrb1 <- factor(suelos$wrb1)
is.factor(suelos$wrb1)

names(suelos)

colnames(suelos)

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

stem(suelos$Clay1)
·Distribución con sesgo 

#ACTIVIDAD 3

boxplot(suelos$Clay1)
#Si hay outliers
which(suelos$Clay1 > 65)

#ACTIVIDAD 4
mean(suelos$Clay1)

t.test(suelos$Clay1, mu=30)
t.test(suelos$Clay2, mu=30)
t.test(suelos$Clay5, mu=30)

# Clay 1: no hay diferencias estadísticamente significativas debido a que el valor de p=27% 
# Clay 2: si hay diferencias estadísticamente significativas debido a que el valor de p=1.062e-07, se acepta la hipótesis alternativa 
# Clay 5:si hay diferencias estadísticamente significativas debido a que el valor de p=2.2e-16, se acepta la hipótesis alternativa 

#ACTIVIDAD 5

cor.test(suelos$Clay1, suelos$Clay5)

plot(suelos$Clay5, suelos$Clay1)
# La relación que existe, sí hay diferencias estadísticamente significativas, se acepta la hipótesis alterna ya que el valor de p=2.2e-16
# el valor de cor = 0.89, la relación es positiva, a medida que una variable aumenta la otra también.

#ACTIVIDAD 6

#Es posible a través de un análisis de regresión

plot(suelos$Clay5, suelos$Clay1)

Clay.lm <- lm(suelos$Clay5~suelos$Clay1)
Clay.lm
summary(Clay.lm)

plot(Clay.lm)

abline(Clay.lm)
Clay.lm <- lm(suelos$Clay5~suelos$Clay1)

#De acuerdo al valor arrojado por p= 2.2e-16, si tiene diferencias estadísticamente significativas

#alfa x

#beta y
# fin 


