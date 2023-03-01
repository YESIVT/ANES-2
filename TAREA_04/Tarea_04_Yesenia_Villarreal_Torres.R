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


              
       
       