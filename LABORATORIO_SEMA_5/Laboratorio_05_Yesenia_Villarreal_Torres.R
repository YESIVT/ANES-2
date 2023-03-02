#Yesenia Villarreal Torres
#Laboratorio 5
#Matrícula 1109559
#02 de marzo de 2023


#Actividades
#Generar los gráficos de distribución de puntos para cada par de datos

# Graficar en un cuadro de 2x2
op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)

#Coeficiente de correlación

cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)


#Determinar para cada par de datos los coeficientes de correlación r.
#¿Alguna sorpresa? Como puedes ver, los cuatro pares de las variables xy tienen básicamente la misma correlación de 0.816. Pero no todos tienen diagramas de dispersión en los que los puntos se agrupan alrededor de una línea.
#El mensaje para llevar a casa es que el coeficiente de correlación puede ser engañoso en presencia de valores atípicos o asociación no lineal. Debido a esto, siempre es importante revisar los datos con un gráfico de dispersión.
