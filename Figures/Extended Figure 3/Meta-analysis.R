library(Matrix)
library(metafor)
library(meta)

setwd("/Users/csuen/Desktop/Sun-NCR-23/Analysis/Figures/Extended Figure 3/")

## CVD mortality
## Using all cohorts: 
data <- read.csv("cvd-6mDMA8-1110(all).csv", header = TRUE)

yi   <- log(data$hr) 
seTE <- (log(data$hr)-log(data$lb))/1.96 

m.hksj <- metagen(TE = yi,seTE = seTE,data = data,
                  studlab = paste(study),
                  comb.fixed = FALSE,
                  comb.random = TRUE,
                  method.tau = "HS",
                  hakn = FALSE,
                  prediction = FALSE,
                  sm = "RR")
m.hksj

forest(m.hksj, digits = 3)

## Funnel plot:
yi   <- log(data$hr) 
seTE <- (log(data$ub)-log(data$hr))/1.96 
res <- rma(yi, seTE, data = data, measure="RR")
taf <- trimfill(res)
funnel(taf, legend=FALSE, digits = 2)

## Using highlighted cohorts: 
data <- read.csv("cvd-6mDMA8-1110(unique)2.csv", header = TRUE)

yi   <- log(data$hr) 
seTE <- (log(data$hr)-log(data$lb))/1.95 

m.hksj <- metagen(TE = yi,seTE = seTE,data = data,
                  studlab = paste(study),
                  comb.fixed = FALSE,
                  comb.random = TRUE,
                  method.tau = "HS",
                  hakn = FALSE,
                  prediction = FALSE,
                  sm = "RR")
m.hksj

forest(m.hksj, digits = 3)