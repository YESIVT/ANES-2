#Yesenia Villarreal Torres
#23/02/2023

#Tarea 2


# Sección de datos --------------------------------------------------------
#Importar datos desde Excel.csv

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


