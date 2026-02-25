#Load the dataset
AirPassengers
?AirPassengers
#verify the dataset
class(AirPassengers)
View(AirPassengers)
#convert the dataset into dataframe
ap_df <-data.frame(
  year = time(AirPassengers),
  passengers = as.numeric(AirPassengers)
)
ap_df_months <-data.frame(
  year = floor(time(AirPassengers)),
  month = cycle(time(AirPassengers)),
  passengers = as.numeric(AirPassengers)
)
ap_df_months
plot(ap_df_months)
#Basic Plot
plot(AirPassengers)
plot(AirPassengers,
     type = 'o',
     lwd = 2,
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "pink"
)
'plot(AirPassengers,
     type = 'o',
     lwd = 2,
     main = "Air Passengers Trend Analysis",
     xlab = "Months",
     ylab = "No.of Passengers",
     col = "pink",
)'
points(AirPassengers,
       type = 'o',
       pch = '17',
       col = 'skyblue')
grid()
