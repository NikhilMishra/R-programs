#create subset of acceleration data (ax) that excludes calibration data
newData <- subset(ax, Time >= 110, select=c(X, mag, Time))
#use a random sample of 1500 data points to create graph of Time vs X acceleration and magnitude
plot <- ggplot(newData[sample(nrow(newData), 1500), ], aes(x=Time, y=X, color = mag )) + geom_point()
#label axis and title
theme_update(plot.title = element_text(hjust = 0.5))
plot + labs(y="X Acceleration (m/s^2)", x = "Time (s)", color = "magnitude (m/s^2)") +
ggtitle("Time vs X Acceleration and Magnitude of Acceleration")