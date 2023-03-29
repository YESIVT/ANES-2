library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

conjunto$Especies <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)

boxplot(conjunto$Diametro,
        col = "RED",
        ylab = "Diametro")

boxplot(conjunto$Diametro ~ conjunto$Especie)

boxplot(conjunto$Altura ~ conjunto$Especie)


#outlayer o valor extremo 
boxplot(conjunto$Diametro ~ conjunto$Clase)

boxplot(conjunto$Altura ~ conjunto$Clase)

# INVESTIGAR  conjunto2 <- with(conjunto, reorder(conjunto$Altura, conjunto$Clase, median , na.rm=T))

cor.test(conjunto$Diametro, conjunto$Altura)
#Aunque la correlación es baja la correlación es significativa, valor de p es menor a 0.05, tiene la tendencia que aumenta x y aumenta y

plot(conjunto$Diametro, conjunto$Altura, pch = 19)

# importante para las pruebas el valor de correlación y el valor de P y los grados de libertar 98ª de libertad siempre es N-2 para las correlaciones
#queremos determinar si el diámetro es un buen predictor de la altura, tomar un grupo de arboles y predecir como está el comportamiento 

     