plot <- ggplot(ax[sample(nrow(ax), 1000), ], aes(x=Time, y=X, size = mag )) + geom_point()
plot + labs(y="X Acceleration (m/s^2)", x = "Time (s)", size = "magnitude (m/s^s)")