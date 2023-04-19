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


Fert <- read.csv("SCRIPTS/vivero1.csv", header = TRUE) 
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



