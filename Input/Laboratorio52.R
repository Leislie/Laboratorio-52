# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 52- Editando el color de los graficos- Parte 2

# Instalar paqueterias
install.packages("gapminder")
install.packages("ggplot2")

# Llamar la librerias
library(gapminder)
library(ggplot2)

# Cargar los datos al entorno
data("gapminder")

# Filtrado por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007',]

# Escala continua (variable continua)
# Grafico de puntos por poblacion
g3 <- ggplot(data = gapminder2007,
             mapping = aes(x= gdpPercap,
                           y = lifeExp,
                           color = log(pop)))+
  geom_point()

# Ver g3
g3

# Cambiar el color de los puntos segun gradiente
g3 + scale_color_gradient(low = "blue", high = "red")

# Volver a cambier el color de los puntos segun gradiente
g3 + scale_color_gradient2(midpoint = 16, low = "blue", mid = "white", 
                           high = "red", space= "Lab")

# Crear un nuevo objeto reciclando el codigo de boxplot
g4 <- ggplot(data = gapminder2007,
             mapping = aes(x= lifeExp,
                           fill= ..count..))+
  geom_histogram()

# Ver g4
g4

# Cambiar el color de las barras del histograma
g4 + scale_fill_gradient(low = "blue", high = "red")
