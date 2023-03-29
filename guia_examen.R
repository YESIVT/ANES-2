# Yesenia Villarreal Torres
# 09/02/2023
# Sesion 1: Estadísticas descriptivas

# SESION 1 ----------------------------------------------------------------

dbh <- 15
h <- 8
#Multiplicacion
dbh * h

log(dbh)

dbh <- c(12, 8, 7, 5, 11, 13, 16,21, 8, 16)

#Multiplicación
dbh*h

h <- c(5, 3, 2.5, 2, 4.7, 5.8, 7, 11, 2.4, 7.2)
#Multiplicación
dbh*h

# Gráficas ----------------------------------------------------------------


boxplot(dbh)

boxplot(h)

plot(dbh,h)

hist(dbh)


set.seed(13)
rnorm(50, mean =3)
obs.50 <- rnorm(50, mean =3)
hist(obs.50)

set.seed(13)
if.50 <- runif(50, min = 10, max = 40)
hist(if.50)

set.seed(13)
if.100 <- runif(100, min = 10, max = 40)
hist(if.100)

if.500 <- runif(500, min = 10, max = 40)
hist(if.500)

if.1000 <- runif(1000, min = 10, max = 40)
hist(if.1000)



#grafica de hoja y tallo
stem(if.50)
hist(if.50)


# Restricciones -----------------------------------------------------------

#Trabajar con datos del objeto if.50

#Estadística descriptiva

mean(if.50)
fivenum(if.50)
boxplot(if.50)

#igual a ==
#diferente a !=
#igual o mayor >=
#igual o menos <=
#mayor que >
#menor que <

#Quiero con el if.50 que me de los datos igual o menor a la mediana

if.50 <= median(if.50)

subset(if.50, if.50 <= median(if.50))
?subset


subset(if.50, if.50 >= median(if.50))

dbh.50 <- subset(if.50, if.50 <= median(if.50))

dbh.up50 <- subset(if.50, if.50 >= median(if.50))

dbh.up30 <- subset(if.50, if.50>30)

dbh.up30

mean(dbh.up30)
sd(dbh.up30)


#IMPORTAR DATOS ----------------------------------------------------------

#función read.csv


Fert <- read.csv("TEST_1/SCRIPTS/vivero1.csv", header = TRUE) 
Fert$Tratamiento
boxplot(Fert$IE ~ Fert$Tratamiento)

#Para personalizar en diferentes líneas es coma, o en isntrucción diferente, ok para personalizar el eje de las x y y

boxplot(Fert$IE ~ Fert$Tratamiento,
        xlab = "Tratamientos",
        ylab = "Indice de Esbeltez",
        col = "pink",
        mail = "Vivero Bosque Escuela",
        las = 1,
        ylim =c (0.4, 1.4))

#dirección de los subtítuos de los ejes de las y (horizontal o vertical)

#SCRIPT 1

#Yesenia Villarreal Torres
#23/02/2023

#Tarea 2


# Sección de datos --------------------------------------------------------
#Importar datos desde Excel.csv
getwd()
conjunto <- read.csv("DATOS_01.csv", header= TRUE)
head(conjunto)

mean(conjunto$Altura)

H.media <- subset(conjunto, conjunto$Altura <= 13.94)
H.media

H.16 <- subset(conjunto, conjunto$Altura <16.5)
H.16

Vecinos.3 <- subset(conjunto, conjunto$Vecinos <=3)
Vecinos.3

Vecinos.4 <- subset(conjunto, conjunto$Vecinos >4)
Vecinos.4

#Aplicar subset para la variable Diametro

mean(conjunto$Diametro)

DBH.media <- subset(conjunto, conjunto$Diametro <15.794)
DBH.media

DBH.16 <- subset(conjunto, conjunto$Diametro >16)
DBH.16

#Aplicar subset para la variable Especie
# Incluir la especie Cedro Rojo

Cedro_rojo <- subset(conjunto, Especie=="C")
Cedro_rojo

# Incluir la especie Tsuga heterófila y Douglasia verde
Tsuga_Douglasia <- subset(conjunto, Especie!="C")
Tsuga_Douglasia

#Mediante la combinacion de dos campos 
Tsuga <- subset(conjunto, Especie== "F")
Douglasia <- subset(conjunto, Especie=="H")
Douglasia_Tsuga <- rbind(Tsuga,Douglasia)
Douglasia_Tsuga

# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diametro
DiamCrojo_16.9 <- subset(Cedro_rojo, Diametro<= 16.9)
DiamCrojo_16.9

DiamTsu_Doug_16.9 <- subset(Tsuga_Douglasia, Diametro<= 16.9)
DiamTsu_Doug_16.9

#Determinar cuantos observacions son mayores a 18.5 metros de Altura
AltCrojo_18.5 <- subset(Cedro_rojo, Altura>=18.5)
AltCrojo_18.5

AltTsu_Doug_18.5 <- subset(Tsuga_Douglasia, Altura>=18.5)
AltTsu_Doug_18.5


# Visualización de datos --------------------------------------------------


#Con la función hist generar los histogramas para los objetos creados en el apartado anterior
#Altura, H.media y H.16

hist(conjunto$Altura)

hist(H.media$Altura)

hist(H.16$Altura)

#Vecinos, Vecinos-3, Vecinos-4
hist(conjunto$Vecinos)

hist(Vecinos.3$Vecinos)

hist(Vecinos.4$Vecinos)

#Diametro, DBH-media, DBH-16
hist(conjunto$Diametro)

hist(DBH.media$Diametro)

hist(DBH.16$Diametro)


# Estadísticas básicas ----------------------------------------------------

#Determinar la media (mean) de los objetos (variable y respectivos subsets), así como su desviación estándar (sd)
#Altura, H.media y H.16
mean(conjunto$Altura)

sd(conjunto$Altura)
mean(H.media$Altura)

sd(H.media$Altura)
mean(H.16$Altura)

sd(H.16$Altura)

#Vecinos, Vecinos-3, Vecinos-4
mean(conjunto$Vecinos)

sd(conjunto$Vecinos)
mean(Vecinos.3$Vecinos)

sd(Vecinos.3$Vecinos)
mean(Vecinos.4$Vecinos)

sd(Vecinos.4$Altura)

#Diametro, DBH-media, DBH-16
mean(conjunto$Diametro)

sd(conjunto$Diametro)
mean(DBH.media$Diametro)

sd(DBH.media$Diametro)
mean(DBH.16$Diametro)


# Líneas de comando en R --------------------------------------------------
#Insertar daros con URL

library(repmis)
conjunto2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto2

head(conjunto2)


#TAREA 02

#Yesenia Villarreal Torres
#22/02/2023
#Laboratorio semana 3


# Parte 1: Importar datos -------------------------------------------------

getwd()
trees <- read.csv("DBH_1.csv", header = TRUE)
head(trees)

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

# Datos de URL no seguras

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"

Profepa <- read.csv(prof_url, encoding = "latin1")
View(Profepa)
Profepa
library(repmis)
prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")


conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto


#datos de GITHUB

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto
head(conjunto)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)


# Parte 2: Operaciones con la base de datos  ------------------------------

# media
mean(trees$dbh) 
#Este signo $ informa que elegimos la calumna dbh

#desviación estándar
sd(trees$dbh)


#Selección mediante restricciones

#igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)
# Indica la sumatoria de los individuos en el objeto trees con un dbh < a 10
sum(trees$dbh < 10)

which(trees$dbh < 10)

#Símbolo ! indica NO 
trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

#Selección de una submuestra

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

#BDD 1
mean(trees$dbh)
#BDD 2
mean(trees.1$dbh)

hist(trees$dbh)
hist(trees.1$dbh)


# Parte 3: Representación gráfica -----------------------------------------

#Histogramas: representación visual de la distribución de un conjunto de datos

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
mamiferos

#Trabajaremos con la variable total_sleep para generar el histograma
hist(mamiferos$total_sleep)

hist(mamiferos$total_sleep, #datos
     xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies", #cambiar titulo
     xlab = "Horas sueño", #cambiar eje de las x
     ylab = "Frecuencia", #cambiar eje de las y
     las = 1, #cambiar orientacion de y
     col = "#555000") #cambiar color a las barras

#Barplot o gráfico de barras: Un diagrama de barras (o gráfico de barras) es uno de los tipos de gráficos más comunes. Muestra la relación entre una variable numérica y una categórica. 

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds


barplot(feeds[order(feeds, decreasing = TRUE)])

# Ordenada en forma decreciente
barplot(feeds[order(feeds, decreasing = FALSE)])

#y darle presentacion a la grafica 


barplot(feeds[order(feeds, decreasing = FALSE)], main = "Frecuencias por tipos de
alimento",
        xlab = "Cantidad de pollos",
        las=1,
        col= "BLUE",
        horiz = TRUE)
library(data.table)

#Corchete, se utiliza para generar cierto número de valores....

#LABORATORIO SEMANA 3

#Yesenia Villarreal Torres
#Matrícula 1109559
#Fecha 28 de febrero 2023
#Tarea 4

#Histogramas
#Problema 1
#Considere el siguiente conjunto de datos x2 con 1000 números al azar.

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)
x2


Hist_1 <- hist(x2, xaxt = "n",
               breaks = c(0, 2, 4, 6, 8, 10),
               col = "#654654", xlab="Clase",
               ylab= "Frecuencia",
               main = "",
               las = 1,
               ylim = c(0, 250))
Hist_1
Hist_1$breaks

Hist_2 <- hist(x2, xaxt = "n", freq = TRUE,
               breaks = c(0, 1, 2, 4, 7, 10),
               col = "green", xlab="Clase 2",
               ylab= "Frecuencia",
               main = "",
               las = 1,
               ylim = c(0, 450))

Hist_2

#Problema 2
#La siguiente figura 1 presenta cuatro histogramas (A, B, C, D).

#  a. ¿Cuál distribución parece estar sesgada a la derecha?
#Distribución D

#  b. ¿Cuál distribución parece estar sesgada a la izquierda?
#Distribución A

#  c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?
#Dsitribución C

#  d. ¿Cuál distribución parece ser bimodal?
#Distribución B

#  e. ¿Cuál distribución parece mostrar una falta de intervalos?
#Distribución C

#Problema 3
#En R puede importar los datos ya pre cargados en el Software siguiendo el comando data(quakes). Los datos proporcionan la localidad, estaciones que detectaron el terremoto, profundidad en km y la escala de Richter (mag) para 1000 terremotos registrados en la isla de Fiji desde el año de 1964.

data(quakes)

mags <- hist(quakes$mag, xaxt = "n",
             # breaks = c(en caso de necesitar aqui se puede especificar),
             col = "red", xlab="Magnitud de los terremotos",
             ylab= "Frecuencias",
             main = "",
             las = 1,
             ylim = c(0,260))


axis(1, mags$mids)
mags

#Puede tomar en cuenta los siguientes datos que se almacenaron en el objeto mags. para determinar las siguientes preguntas:
# a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?
#Sesgada a la derecha

# b. Mencione un intervalo donde ocurren tipicamente las magnitudes.
#4.4 a 4.6

#c. Determine el rango de las magnitudes (Range = Max - Min).
range(mags$breaks)

#d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?
Clase_5_3 <- subset(quakes,mag>=5.1)
Clase_5_3

Clase5_3 <- subset(Clase_5_3, mag<= 5.4)
Clase5_3

porcentaje <- 113/1000*100
porcentaje

# e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?

mag5.0 <- subset(quakes,mag>=5.0)
mag5.0

porcentaje5.0 <- 198/1000*100
porcentaje5.0

#f. ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?
mag4.6 <- subset(quakes,mag<=4.6)
mag4.6
porcentaje4.6 <- 585/1000*100
porcentaje4.6

#Boxplots
#Problema 4
#¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercer
#cuartil?

boxplot(quakes$mag, horizontal=TRUE)

#a. 25 %
#b. 50 %
#c. 75 %  
#Respuesta es la c, el 75%

#Problema 5
#La siguiente figura presenta tres gráficas para los diámetrs de tres especies diferentes (C, F y H).

# a. ¿Cuál especie tiene el diámetro más pequeño?
#Especie C

#  b. ¿Cuál especie tiene el diámetro más grande?
#Especie F

#  c. ¿Cuál especie tiene el diámetro mínimo más alto?
#Especie F

#  d. ¿Cuál especie tiene la mediana de diámetro más pequeña?
#Especie C

#  e. ¿Cuál especie tiene la mediana de diámetro mas grande?
#Especie H

#  f. ¿Cuál especie tiene el menor rango de diámetro?
#Especie F

#  g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?
#Especie C

#  h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?
#Especie F

#  i. ¿Cuál especie tiene una distribución simétrica?
#Especie H

#  j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ?
#Especie F

#Problema 6
#Los siguientes datos muestran el número de incendios forestales ocurridos en cada semana en nuestros bosques de México. Los datos son del 01. de enero al 04 de marzo del 2021 de acuerdo con el reporte de CONAFOR.

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

boxplot(fires)


min(fires)
max(fires)
range(fires)


quantile(fires,c(0.25))
quantile(fires,c(0.50))
quantile(fires,c(0.75))


mean(fires)
sd(fires)
var(fires)

#10. Realice un boxplot personalizado con los datos de los incendios.

boxplot(fires, horizontal = TRUE)
points(mean(fires), 1, col = 1, pch = 19)
#Punto que indica la media agregado
mean(fires)

#FIN
#TAREA 04


#TAREA 05
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

##revisión de clase, resumen...












