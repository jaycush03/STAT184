install.packages("ggplot2")
library(ggplot2)
View(diamonds)
#Get the diamonds data, and compare the carat (x) vs. the price (y) of them, having the color of the dots be different based on their cut
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  #Make the points somewhat transparent 
  geom_point(alpha = 0.6) +
  #Give a color gradient 
  scale_color_viridis_d() +
  #Add labels for the title, axis, and key 
  labs(
    title = "Diamond Price vs. Carat Size",
    x = "Carat",
    y = "Price",
    color = "Cut"
  ) +
  #Add theme
  theme_minimal()

install.packages("palmerpenguins")
library(palmerpenguins)
View(penguins)
#Compare body mass with bill length between the different species of penguins. 
ggplot(data = penguins, aes(x = body_mass_g, y = bill_length_mm, color = species)) +
  #Create readable glyphs
  geom_point(size = 6, alpha = 0.6) +
  #Create a gradient between the different species
  scale_color_viridis_d() +
  #Label the different parts of the table
  labs(
    title = "Penguin Body Mass vs. Bill Length",
    x = "Body Mass (g)", 
    y = "Bill Length (mm)",
    color = "Species"
  ) +
  #Organize the plot of the data by adding a theme
  theme_minimal()
