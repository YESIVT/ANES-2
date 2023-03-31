mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
mamiferos
vivero <- read.csv("C:/Users/yesiv/OneDrive/Documentos/ANES-2/ANES-2/DBH_1.csv", header = TRUE)
vivero

library(readr)
library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
conjunto
head(conjunto)

#COMO SUBIR ARCHIVOS
#I NOS PASAN ESTA LIGA, VERIFICAR SI TIENE 0 CAMBIAR POR 1
#("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#SUBSET
#Para obtener valores a partir de cierto valor, por ejemplo
# Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diametro
#DiamCrojo_16.9 <- subset(Cedro_rojo, Diametro<= 16.9)
#DiamCrojo_16.9

#WHICH
#También es interesante saber cuales son los individuos que son inferiores al diámetro (dbh< 10 cm).
#Para esto, hacemos uso de la función which que no regresara cuales individuos son los que posen tal
#restricción.
#which(trees$dbh < 10)

#<MENOR QUE  >MAYOR QUE 

#Selección de una submuestra
#Una submuestra se puede obtener de cualquier base de datos que este disponible en R mediante la
#función subset [Crawley, 2007]. Por ejemplo queremos obtener solo los diámetros iguales o menores
#a 10 cm y deseamos guardarla en un objeto que se denominará trees.1.
#trees.1 <- subset(trees, dbh <= 10)
#head(trees.1)

#RESTRICCIONES
#Selección mediante restricciones
#El uso de restricciones sirve para obtener una muestra bajo ciertas condiciones restrictivas de la base
#de datos trees y es por ejemplo, una operación útil en el manejo de información de los inventarios
#forestales.
#Los condicionantes restrictivas más empleadas son:
#  igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)
#Para mostrar como funcionan las restricciones podemos realizar las siguientes preguntas: ¿Cuántos
#individuos tiene un diámetro menor (<) a 10 cm?
  # Indica la sumatoria de los individuos en el objeto tree con un dbh < a 10
 # sum(trees$dbh < 10)


#library(corrplot), CORRELACION DE VARIABLES,  MATRIZ DE CORRELACION - GRAFICA DE CIRCULOS DE COLORES 
#ESTADISTICA DESCRIPTIVA BOX PLOT - CAJA DE BIGOTES

#Quiero con el if.50 que me de los datos igual o menor a la mediana

#if.50 <= median(if.50)

#subset(if.50, if.50 <= median(if.50))

#IMPORTAR DATOS ----------------------------------------------------------

#función read.csv

getwd()

#Representación de variables cuantitativas
#La mayoría de las variables del conjunto de datos Inventario son de naturaleza cuantitativa. Una
#posibilidad de inspeccionar visualmente esas variables es categorizarlas y luego usar un gráfico de
#barras o un gráfico circular. Otra posibilidad es utilizar gráficos específicamente para variables
#cuantitativas:
#  histogramas
#boxplots o gráfica de cajas
#Histogramas
#   Un histograma es un tipo de gráfico que muestra la distribución de datos numéricos.

#Gráficas barplot y pie
#Habiendo obtenido las frecuencias y / o proporciones de las categorías de un variable cualitativa,
#podemos continuar nuestra exploración con algunas representaciones visuales. Hay dos gráficos más
#comunes que se utilizan para visualizar frecuencias:
#  Gráficas de barras (barplot)
#Gráficas de pastel (pie)

#Para crear un gráfico de barras en R puede usar la función barplot(). Esta función requiere un
#vector numérico o una tabla de frecuencias:
 # barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#El objeto inventario es un conjunto de datos. Por lo general, después de importar un grupo de
#datos en R, es posible que desee utilizar algunas funciones para inspeccionar sus propiedades y
#funciones y estructura básica:
#  str(inventario): mostrar la estructura general de los datos
#dim(inventario): dimensiones (i.e. tamaño) del conjunto de datos
#head(inventario, n = 5): muestra las primeras n filas
#tail(inventario, n = 5): muestra las últimas n filas
#names(inventario): nombre de las columnas
#colnames(inventario): igual names(inventario)
#summary(inventario): resumen estadístico de las variables presentes en inventario

#La principal característica del diagrama de caja y bigotes es que permite visualizar rápidamente la dispersión de una serie de datos, ya que indica los cuartiles, la mediana, los valores extremos y los valores atípicos de los datos.

#Así pues, este tipo de diagrama está formado por un caja rectangular y unas líneas (o bigotes) de los cuales destacan los siguientes valores:
  
# Los límites de la caja indican el primer y el tercer cuartil (Q1 y Q3). Y la línea vertical dentro de la caja es la mediana (equivalente al segundo cuartil Q2).
#Los límites de los bigotes (o brazos) son los valores extremos, es decir, el valor mínimo y el valor máximo de la serie de datos.
#Los puntos fuera de los bigotes son los valores atípicos (outliers), o dicho con otras palabras, datos que probablemente se han medido mal y por tanto no deberían tenerse en cuenta en el estudio estadístico.
#¿Qué es un diagrama de caja y bigotes?
#El diagrama de caja y bigotes, también llamado diagrama de caja o boxplot, es un gráfico que representa un conjunto de datos estadísticos de manera visual utilizando los cuartiles.


#corchetes

#Explicación
#En R [,] se usa para hacer subconjuntos, que es el nombre técnico de lo que quieres hacer. Como en este caso estás trabajando con un data.frame, que es una estructura de datos bidimensional (filas y columnas) usas la coma dentro de los corchetes para hacer subconjuntos de filas (primera posición) y columnas (segunda posición). Dejar ese espacio en blanco (o con un espacio, que en R es lo mismo) es el comodín, quiere decir "todo".

#[,] es muy versátil, puede evaluar números de índice, nombres o vectores lógicos de TRUE FALSE. Esto último es lo que estamos utilizando en este caso. data.frame2$age > 60 usa el operador binario >, que evalúa la condición (el lado derecho) en el vector (lado izquierdo) y regresa un vector lógico que con TRUE cuando se cumplió la condición. [,] evalúa ese vector lógico y te regresa un data.frame en el que están solo las filas en las que se cumple la condición, si lo ubicas en la primera posición.

#Podrías hacer otro tipo de pruebas lógicas: == igual a, != no igual a. También poner más de una condición encadenándolas con & u |, y y o lógicos. Por ejemplo, para hacer un subconjunto con los mayores de 60 años y con hr diferente a 62:
  
#  data_frame2[data_frame2$age > 60 & data_frame2$hr != 62, ]
#Regresa un data.frame que contiene solo la fila de Ana. Simple y potente.
