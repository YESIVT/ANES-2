#Yesenia Villarreal Torres
#Tarea_03
#23/02/2023


# Problema 1 --------------------------------------------------------------


xi <- c(6,4,1,3)
xi
yi <- c(1,3,4,2)
yi

sum(xi)
sum(xi, yi)
prod(xi)
prod(xi, yi)

prod((xi^2)*(yi^0.5))


# Problema 2 --------------------------------------------------------------

Grupo_A <- c(80, 90, 90, 100)
Grupo_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)

#Grupo A, con media mayor

mean(Grupo_A)
mean(Grupo_B)     
# si coincidió, los diámetros son mayores y menos número de individuos


# Problema 3 --------------------------------------------------------------
#José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escalade 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el 4to. examen para tener una media de 80 en los 4 exámenes?

calif <- c(87,72,85)
sum(calif)
mean(calif)
(4*80)-(sum(calif))
# calificación al menos de 76, para que el mean sea 80


# Problema 4 --------------------------------------------------------------

#El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños por hogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en la ciudad por 50 y determine que el número promedio de niños por hogar es 2.2. ¿Cuál de lo siguientes enunciados debe ser verdad?
2.2*50
#La respuesta es b, solo se multiplica el promedio por el número total de hogares


# Problema 5 --------------------------------------------------------------
#El número de semillas germinadas (Germinaciones) que se encontraron en las cajas petri se muestran en el siguiente cuadro.

germi <- c(5,6,7,8,9)
germi
petri <- c(1,3,5,3,1)
petri

Germinacion <- data.frame(petri, germi)
Germinacion
sum(Germinacion$petri)


germ.2 <- c(5, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 9)
germ.2
c.petri <- c(1:13)
c.petri
Germ2 <- data.frame(c.petri, germ.2)
Germ2

mean(Germ2$germ.2)
median(Germ2$germ.2)

stem(germ.2)

hist(germ.2)
#Para visualizar los datos podemos utilizar el histograma

set <- c(2, 2, 3, 6, 10)

# Problema 6 --------------------------------------------------------------

mean(set)
median(set)

library(modeest)
mfv(set)

set.5 <- (set+5)
set.5
mean(set.5)
median(set.5)
mfv(set.5)

#En la media, moda y mediana al sumarle 5, el resultado refleja ese mismo número de aumento

setpor5 <- (set*5)
setpor5
mean(setpor5)
median(setpor5)
mfv(setpor5)

#Cuando es multiplicación se incrementan los valores


# Problema 7 --------------------------------------------------------------

datos <- c(0,1,2,3,4,5,6,7,8,9)
datos1 <- c(7,7,7,7,7)
median(datos1)
datos2 <- c(5,6,7,8,9)
mean(datos2)

datos3 <- c(5,5,7,8,9)
median(datos3)
mean(datos3)

# Seleccionamos los datos y creamos objetos con diferentes grupos de números y en base a eso calcularmos moda, media y mediana.


  