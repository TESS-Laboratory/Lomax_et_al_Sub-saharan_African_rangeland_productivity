# Analysis code for "The mean is what matters: African rangeland productivity appears robust to the temporal distribution of precipitation"
This repository contains R Markdown Notebooks and Google Earth Engine scripts for processing, visualising and analysing data presented in "The mean is what matters: African rangeland productivity appears robust to the temporal distribution of precipitation" by Guy Lomax, Andrew Cunliffe, Tom Powell, Theo Economou and Tim Lenton.

Publication doi: 

Repository doi: https://doi.org/10.5281/zenodo.7024962

Contact: G.Lomax@exeter.ac.uk

The code analyses the following datasets for the time period 2001-2019:
1. PML_V2 MODIS-based gross primary productivity data (Zhang et al., 2019; https://github.com/gee-hydro/gee_PML)
2. Climate Hazards Group InfraRed Precipitation with Station (CHIRPS) daily precipitation data (Funk et al., 2015; https://www.chc.ucsb.edu/data/chirps);
3. ERA5-Land reanalysis monthly averaged mean air temperature data (Muñoz Sabater, 2019; https://doi.org/10.24381/cds.68d2bb30);
4. MODIS mean daytime land surface temperature data (Wan et al., 2021; https://doi.org/10.5067/MODIS/MOD11A1.061);
5. MODIS monthly burned area data (Giglio et al., 2015; https://doi.org/10.5067/MODIS/MCD64A1.006);
6. iSDAsoil 30m African soil property maps (Hengl et al., 2021; https://doi.org/10.1038/s41598-021-85639-y);

All data were accessed, pre-processed and exported using Google Earth Engine.

Google Earth Engine repository available here: https://code.earthengine.google.com/?accept_repo=users/guylomax01/africa_rangeland_ppt_gpp_analysis.

Google Earth Engine intermediate assets can be found here: https://code.earthengine.google.com/?asset=projects/ee-guylomax01/assets/africa_rangeland_precipitation_gpp.

Earth Engine scripts are also made available directly on GitHub.

# Google Earth Engine scripts
**study_area_masks**: Processes and exports data layers defining the relevant study area (sub-Saharan African rangelands) for masking in R.

**season_variable_preparation**: Identifies mean and annual onset and cessation dates for the rainy season(s) in each pixel based on the CHIRPS daily rainfall dataset.

**main_variable_preparation**: Processes, resamples and exports all remaining (non-seasonal) data layers for masking and analysis in R.

# R Markdown Notebooks
**africa_rangelands_gam_analysis.Rmd**: Main analysis script. Imports and masks datasets from Earth Engine, generates exploratory figures, then fits non-spatial and spatial GAMs to the dataset and generates key results figures.

**seasonal_anomalies.Rmd**: Cleans season onset/cessation date datasets exported from Earth Engine to generate analysis-ready rasters of mean season length and standard deviation of season onset. 

# References

1. Funk, C. et al. (2015) ‘The climate hazards infrared precipitation with stations - A new environmental record for monitoring extremes’, Scientific Data, 2, pp. 1–21. doi: 10.1038/sdata.2015.66.
2. Giglio, L. et al. (2015) ‘MCD64A1 MODIS/Terra+Aqua Burned Area Monthly L3 Global 500m SIN Grid V006’. NASA EOSDIS Land Processes DAAC. doi: 10.5067/MODIS/MCD64A1.006.
3. Hengl, T. et al. (2021) ‘African soil properties and nutrients mapped at 30 m spatial resolution using two-scale ensemble machine learning’, Scientific Reports. Nature Publishing Group UK, 11(1), p. 6130. doi: 10.1038/s41598-021-85639-y.
4. Muñoz Sabater, J. (2021) ‘ERA5-Land monthly averaged data from 1981 to present’. Copernicus Climate Change Service (C3S) Climate Data Store (CDS. doi: 10.24381/cds.68d2bb30.
5. Wan, Z., Hook, S. and Hulley, G. (2021) ‘MODIS/Terra Land Surface Temperature/Emissivity Daily L3 Global 1km SIN Grid V061’. NASA EOSDIS Land Processes DAAC. doi: 10.5067/MODIS/MOD11A1.061.
6. Zhang, Y. et al. (2019) ‘Coupled estimation of 500 m and 8-day resolution global evapotranspiration and gross primary production in 2002–2017’, Remote Sensing of Environment. Elsevier, 222(December 2018), pp. 165–182. doi: 10.1016/j.rse.2018.12.031.


