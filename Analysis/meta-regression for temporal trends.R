library(Matrix)
library(metafor)
library(meta)

setwd("/Volumes/Database/Backups/202304 JASMIN/results presentation/")


## For global estimation 
GB <- read.csv("Fig. 2 mort global year-trend.csv", header = TRUE)

yi   <- log(GB$cvd_25_death_urban_est) 
seTE <- (log(GB$cvd_25_death_urban_ub)-log(GB$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = GB)
m_reg

yi   <- log(GB$cvd_25_death_rural_est) 
seTE <- (log(GB$cvd_25_death_rural_ub)-log(GB$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = GB)
m_reg


## For Asia estimation 
AS <- read.csv("Fig. 2 mort Asia year-trend.csv", header = TRUE)

yi   <- log(AS$cvd_25_death_urban_est) 
seTE <- (log(AS$cvd_25_death_urban_ub)-log(AS$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = AS)
m_reg

yi   <- log(AS$cvd_25_death_rural_est) 
seTE <- (log(AS$cvd_25_death_rural_ub)-log(AS$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = AS)
m_reg


## For North America estimation 
NAm <- read.csv("Fig. 2 mort North America year-trend.csv", header = TRUE)

yi   <- log(NAm$cvd_25_death_urban_est) 
seTE <- (log(NAm$cvd_25_death_urban_ub)-log(NAm$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = NAm)
m_reg

yi   <- log(NAm$cvd_25_death_rural_est) 
seTE <- (log(NAm$cvd_25_death_rural_ub)-log(NAm$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = NAm)
m_reg


## For Africa estimation 
AF <- read.csv("Fig. 2 mort Africa year-trend.csv", header = TRUE)

yi   <- log(AF$cvd_25_death_urban_est) 
seTE <- (log(AF$cvd_25_death_urban_ub)-log(AF$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = AF)
m_reg

yi   <- log(AF$cvd_25_death_rural_est) 
seTE <- (log(AF$cvd_25_death_rural_ub)-log(AF$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = AF)
m_reg


## For Europe estimation 
EU <- read.csv("Fig. 2 mort Europe year-trend.csv", header = TRUE)

yi   <- log(EU$cvd_25_death_urban_est) 
seTE <- (log(EU$cvd_25_death_urban_ub)-log(EU$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = EU)
m_reg

yi   <- log(EU$cvd_25_death_rural_est) 
seTE <- (log(EU$cvd_25_death_rural_ub)-log(EU$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = EU)
m_reg


## For South America estimation 
SA <- read.csv("Fig. 2 mort South America year-trend.csv", header = TRUE)

yi   <- log(SA$cvd_25_death_urban_est) 
seTE <- (log(SA$cvd_25_death_urban_ub)-log(SA$cvd_25_death_urban_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = SA)
m_reg

yi   <- log(SA$cvd_25_death_rural_est) 
seTE <- (log(SA$cvd_25_death_rural_ub)-log(SA$cvd_25_death_rural_est))/1.956

m_reg <- rma(yi = yi,
             vi = seTE,
             mods = ~year,
             data = SA)
m_reg