# File:    R01_3_1_plot().R
# Course:  R01: R: An introduction
# Chapter: 3: Basic graphics
# Section: 1: plot()
# Author:  Barton Poulson, datalab.cc, @bartonpoulson
# Date:    2016-05-24

# LOAD DATASETS PACKAGES ###################################

library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################

head(iris)

# PLOT DATA WITH PLOT() ####################################

?plot  # Help for plot()

# It's in dataset iris $ use this varialbe in dataset
plot(iris$Species)  # Categorical variable - scatter plot / automatticly chooose
plot(iris$Petal.Length)  # Quantitative variable
plot(iris$Species, iris$Petal.Width)  # Cat x quant - box plot / automatticly chooose
plot(iris$Petal.Length, iris$Petal.Width)  # Quant pair
plot(iris)  # Entire data frame - gave back scatter plots for all options

# Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
  col = "#cc0000",  # Hex code for datalab.cc red
  pch = 19,         # Use solid circles for points
  main = "Iris: Petal Length vs. Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width")

# PLOT FORMULAS WITH PLOT() ################################

plot(cos, 0, 2*pi) #cosinus
plot(exp, 1, 5) #exponential function
plot(dnorm, -3, +3) #normal distribution

# Formula plot with options
plot(dnorm, -3, +3,
  col = "#cc0000",
  lwd = 5,
  main = "Standard Normal Distribution",
  xlab = "z-scores",
  ylab = "Density")

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
