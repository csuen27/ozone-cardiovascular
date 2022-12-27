#loading the Splines Packages
library(splines)

setwd("/Users/csuen/Documents/GitHub/ozone-cardiovascular/Figures/Fig. 2/")
data <- read.csv("Fig. 2 mort global trend.csv", header = TRUE)

y = data$cvd_25_death_urban_est
x = data$year

xlims<-range(x)
x.grid<-seq(from=xlims[1], to = xlims[2])

fit_smooth <- smooth.spline(x, y, df=4)
plot(x, y, col="grey", xlab="Year", ylab="Deaths")
lines(fit_smooth,col="red",lwd=2)
urban_est_global_pred = predict(fit_smooth, newdata = list(x=x.grid))

y = data$cvd_25_death_urban_ub
fit_smooth <- smooth.spline(x, y, df=4)
plot(x, y, col="grey", xlab="Year", ylab="Deaths")
lines(fit_smooth,col="red",lwd=2)
urban_ub_global_pred = predict(fit_smooth, newdata = list(x=x.grid))

y = data$cvd_25_death_rural_est
fit_smooth <- smooth.spline(x, y, df=4)
plot(x, y, col="grey", xlab="Year", ylab="Deaths")
lines(fit_smooth,col="red",lwd=2)
rural_est_global_pred = predict(fit_smooth, newdata = list(x=x.grid))

y = data$cvd_25_death_rural_ub
fit_smooth <- smooth.spline(x, y, df=4)
plot(x, y, col="grey", xlab="Year", ylab="Deaths")
lines(fit_smooth,col="red",lwd=2)
rural_ub_global_pred = predict(fit_smooth, newdata = list(x=x.grid))

write.csv(y_pred,"cvds_CR_curve_values(1114).csv", row.names = TRUE)