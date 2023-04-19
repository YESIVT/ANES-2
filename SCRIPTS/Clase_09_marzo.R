
#Tarea 3
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

stem(germ.2)

hist(germ.2)
