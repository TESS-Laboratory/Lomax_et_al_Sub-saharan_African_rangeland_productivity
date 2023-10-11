library(terra)
library(here)

test <- terra::rast(here::here("data", "raw_data", "raster", "annual_variables", "gppAnnualBandsExport.tif"))

test

orig <- terra::rast(here::here("data", "raw_data", "raster", "main_variables", "pmlv2_gpp_mean.tif"))
orig

plot(test[[1]])
plot(orig)
summary(test)


ppt_vars <- rast(here("data", "raw_data", "raster", "annual_variables", "pptAnnualVarsSsa.tif"))

ppt_vars
summary(ppt_vars[[1:19]])
