#Load & Understand the Dataset
data(diamonds)
data(package = .packages(all.available = TRUE))
library(ggplot2)

data(diamonds)
str(diamonds)
dim(diamonds)
?diamonds

#Very Basic Scatter
plot(diamonds$carat,diamonds$price)

#Improved Scatter
plot(diamonds$carat,diamonds$price,col = rgb(0,0,1,0.1),pch=16,
     main = "Scatter Plot: Carat vs Price")

#Hexbin Using Base R
install.packages('hexbin')
library(hexbin)
hb<-hexbin(diamonds$carat,diamonds$price,xbins = 40)
plot(hb,main="Hexbin Plot")

#Basic Hexbin
ggplot(diamonds, aes(x = carat, y= price))+
  geom_hex()

#Labeled Hexbin Plot