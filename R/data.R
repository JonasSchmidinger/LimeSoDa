#' @title Overview of Datasets in Lime.SoDa
#' @description
#' This table gives an overview of datasets used in Lime.SoDa and containts:
#' \itemize{
#'  \item Dataset: The name of the dataset
#'  \item Number_of_samples: The number of analysed soil samples (i.e. rows) in the dataset
#'  \item Number_of_features: The number of features (i.e. columns) in the dataset
#'  \item Sensors: The type of sensors used to create the features in the dataset, see abbrevations below
#'  \item Coordinates: Specifies whether coordinates or dummy covariates are available for the dataset
#'  \item Location: The location where the dataset was collected
#'  \item Study_area_in_ha: The size of the study area in ha
#'  \item Sampling_Design: The sampling design used to collect the dataset
#'  }
#'  Abbreviations for sensors:
#' \itemize{
#'  \item CSMoisture - Capacitive soil moisture
#'  \item DEM - Digital elevation model and terrain parameters
#'  \item ERa - Apparent electrical resistivity
#'  \item Gamma - Gamma-ray activity
#'  \item MIR - Mid infrared spectroscopy
#'  \item NIR - Near infrared spectroscopy
#'  \item pH-ISE - Ion selective electrodes for pH determination
#'  \item RSS - Remote sensing derived spectral data
#'  \item VI - Vegetation indices
#'  \item vis-NIR - Visible and near infrared spectroscopy
#'  \item XRF - X-ray fluorescence derived elemental concentrations
#'  }
#' @docType data
"Overview_Datasets"








#' @title SSP.460 Dataset
#' @description
#' \itemize{
#'  \item Metadata not yet received
#'  }
#' @docType data
"SSP.460"


#' @title BB.250 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, Gamma, pH-ISE, RSS, VI
#'  \item Sample size: 250
#'  \item Number of Features: 17
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Triangular Grid Sampling
#'  \item Study Area Size: 52 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
#'  \item Previous Data Publication: Target soil properties published but under boycott in Vogel et al. 2022
#'  \item Contact Information:
#'    \itemize{
#'      \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      \item Joerg Ruehlmann (ruehlmann@igzev.de), Leibniz Institute of Vegetable and Ornamental Crops (IGZ)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
#'    \item Sampling Date: May 2020
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: May 2020
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: May 2020
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: LiDAR March 2009, images for photogrammetry May 2018
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: Array of multiple rolling electrodes(Geophilus company, Caputh, Germany) on Geophilus platform with exploration depth of 0 - 25 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   Gamma
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{G_Total_Counts}
#'   \item Unit: Unitless
#'   \item Sensing: Gamma sensor (gamma sensor model is not commercially available) on Geophilus platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) from VerisMSP3, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 10
#'   \item Code(s): \code{B02, B03, B04, B05, B06, B07, B08, B8A, B11, B12}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”, with bands of 10 - 20 m spatial resolution
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: April 2020
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: August 2020
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset list
#' BB.250
#'
#' # Access the dataset
#' BB.250$Dataset
#'
#' # Access the folds
#' BB.250$Folds
#'
#' # Access the coordinates
#' BB.250$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.250 <- BB.250$Dataset[BB.250$Folds != 1,]
#' testing_data_BB.250 <- BB.250$Dataset[BB.250$Folds == 1,]
#'
#' @usage BB.250
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Vogel S., Bönecke E., Kling C., Kramer E., Lück K., Nagel A., Philipp G., Rühlmann J., Schröter I. & Gebbers, R. (2022), Base neutralizing capacity from agricultural fields in the quaternary landscape of North-East Germany, BONARES Repository, https://doi.org/10.20387/bonares-zh3x-nd80
"BB.250"






#' @title SP.231 Dataset
#' @description
#' \itemize{
#'  \item Metadata not yet received
#'  }
#' @docType data
"SP.231"







#' @title B.204 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, RSS, VI
#'  \item Sample size: 204
#'  \item Number of Features: 16
#'  \item Coordinates: With coordinates (EPSG: 32723)
#'  \item Location: Bahia, Brazil
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 204 ha
#'  \item Geological Setting: Heavily weathered soils originating from sedimentary rocks (conglomerates, pelite, conglomeratic sandstone)
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Domingos Sarvio Magalhaes Valente (valente@ufv.br), Federal University of Vicosa
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 2.5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 – 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (30 m) based on synthetic aperture radar from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: January 2010
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 12
#'   \item Code(s): \code{B01, B02, B03, B04, B05, B06, B07, B08, B8A, B09, B11, B12}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: November 2016
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: January 2017
#'   }
#' }
#'\cr
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32723)
#'
#'
#' @examples
#' # Load the dataset list
#' B.204
#'
#' # Access the dataset
#' B.204$Dataset
#'
#' # Access the folds
#' B.204$Folds
#'
#' # Access the coordinates
#' BB.250$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_B.204 <- B.204$Dataset[B.204$Folds != 1,]
#' testing_data_B.204 <- B.204$Dataset[B.204$Folds == 1,]
#'
#' @usage B.204
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"B.204"







#' @title H.138 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: MIR
#'  \item Sample size: 138
#'  \item Number of Features: 2,489
#'  \item Coordinates: With coordinates (EPSG: 32649)
#'  \item Location: Hubei, China
#'  \item Sampling Design: XXX
#'  \item Study Area Size: 420 ha
#'  \item Geological Setting: Sedimentary rocks, mainly dolomite with silt and limestone formed in the middle and lower Jurassic
#'  \item Previous Data Publication: Full dataset published in Wadoux et al. (2025) [?Not yet published?]
#'  \item Contact Information:
#'    \itemize{
#'      \item Alexandre M.J.-C- Wadoux (Alexandre.Wadoux@inrae.fr), University of Montpellier
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO2 release during dry combustion (DIN ISO 10694  ) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content,  determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: June 2013, May, 2014 & November 2014
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: XXX
#'    \item Sampling Date: June 2013, May, 2014 & November 2014
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: XXX
#'    \item Sampling Date: June 2013, May, 2014 & November 2014
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   MIR – Mid Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 2,489 \cr
#'   \item Code(s): \code{wn_5397.9, wn_5396, wn_5394} ... \code{wn_599.8}
#'   \item Unit: Unitless
#'   \item Sensing: VERTEX 70v FT-IR Spektrometer (Bruker Optik, Ettlingen, Germany), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 7,500 - 370 cm\eqn{^{-1}} at 0.4 cm\eqn{^{-1}} intervals
#'   \item Processing: Discarding irrelevant spectral data of the spectrum (7,500 - 5,397.9 cm\eqn{^{-1}}) and noisy edges of the spectrum (599.8 - 370 cm\eqn{^{-1}})
#'   \item Sensing Date: June 2013, May, 2014 & November 2014
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~2 cm\eqn{^{-1}}
#'      \item Spectral Range: 5,397.9 – 599.8 cm\eqn{^{-1}}
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32649)
#'
#'
#' @examples
#' # Load the dataset list
#' H.138
#'
#' # Access the dataset
#' H.138$Dataset
#'
#' # Access the folds
#' H.138$Folds
#'
#' # Access the coordinates
#' H.138$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_H.138 <- H.138$Dataset[H.138$Folds != 1,]
#' testing_data_H.138 <- H.138$Dataset[H.138$Folds == 1,]
#'
#' @usage H.138
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references [ ? Add data publication ?]
"H.138"
















#' @title SL.125 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM, pH, Clay
#'  \item Groups of Features: ERa, vis-NIR
#'  \item Sample size: 125
#'  \item Number of Features: 2,082
#'  \item Coordinates: Without coordinates because of privacy concerns instead with dummy coordinates (EPSG: 4326)
#'  \item Location: Skåne Län, Sweden
#'  \item Sampling Design: Three sampling designs over multiple adjacent fields: (1) Regular Grid Sampling, targeted sampling through Surface Tortoise Sampling (Persson et al. 2023) based on (2) ERa and (3) Reflectance from remote sensing
#'  \item Study Area Size: 78 ha
#'  \item Geological Setting: High spatial variability of sandy till, clay till with chalk and glacial clay
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Johanna Wetterlind (Johanna.Wetterlind@slu.se), Swedish University of Agricultural Sciences
#'      \item Bo Stenberg (Bo.Stenberg@slu.se), Swedish University of Agricultural Sciences
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOM - Soil Organic Matter
#'    \itemize{
#'    \item Code: \code{SOM_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through the weight difference before and after ignition of the soil with additional correction for structural water from clay by using the formula: SOM = LI − 0.46 − 0.047 × clay content (\%) (Ekström 1927)
#'    \item Sampling Date: September 2006
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in a water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: September 2006
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: September 2006
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: EM38 sensor (Geonics Ltd., Mississauga, Canada) with exploration depth of 0 - 150 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: April 2006
#'   }
#'
#'
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 2,081 \cr
#'   \item Code(s): \code{wl_420, wl_421, wl_422} ... \code{wl_2500} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: vis-NIR spectrometer (FieldSpec Pro FR scanning instrument, Analytical Spectral Devices Inc., Boulder, USA), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 350–2,500 nm at 1.4–2.0 nm intervals \cr
#'   \item Processing: Discarding noisy edges of the spectrum (350 - 420 nm), resampling to 1 nm intervals \cr
#'   \item Sensing Date: September 2006
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 420 - 2,500 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with dummy coordinates (EPSG: 4326)
#'
#'
#' @examples
#' # Load the dataset list
#' SL.125
#'
#' # Access the dataset
#' SL.125$Dataset
#'
#' # Access the folds
#' SL.125$Folds
#'
#' # Access the coordinates but for SL.125 only dummy coordinates
#' SL.125$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SL.125 <- SL.125$Dataset[SL.125$Folds != 1,]
#' testing_data_SL.125 <- SL.125$Dataset[SL.125$Folds == 1,]
#'
#' @usage SL.125
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Ekström, G. (1927). Klassifikation av Svenska Åkerjordar (Classification of Swedish arable soils). Sveriges Geologiska Undersökning, Ser C. 345, 161 pp. \cr
#' \cr
#' Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Persson, K., Söderström, M. & Mutua, J. (2023). SurfaceTortoise: Find Optimal Sampling Locations Based on Spatial Covariate(s). R package version 2.0.1.
"SL.125"



#' @title UL.120 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM, pH, Clay
#'  \item Groups of Features: ERa, vis-NIR
#'  \item Sample size: 120
#'  \item Number of Features: 2,082
#'  \item Coordinates: Without coordinates because of privacy concerns instead with dummy coordinates (EPSG: 4326)
#'  \item Location: Uppsala Län, Sweden
#'  \item Sampling Design: Three sampling designs over multiple adjacent fields: (1) Regular Grid Sampling, targeted sampling through Surface Tortoise Sampling (Persson et al. 2023) based on (2) ERa and (3) Reflectance from remote sensing
#'  \item Study Area Size: 97 ha
#'  \item Geological Setting: Glacial and postglacial clay with elements of sandy till
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Johanna Wetterlind (Johanna.Wetterlind@slu.se), Swedish University of Agricultural Sciences
#'      \item Bo Stenberg (Bo.Stenberg@slu.se), Swedish University of Agricultural Sciences
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOM - Soil Organic Matter
#'    \itemize{
#'    \item Code: \code{SOM_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through the weight difference before and after ignition of the soil with additional correction for structural water from clay by using the formula: SOM = LI − 0.46 − 0.047 × clay content (\%) (Ekström 1927)
#'    \item Sampling Date: September 2005
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in a water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: September 2005
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: September 2005
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: EM38 sensor (Geonics Ltd., Mississauga, Canada) with exploration depth of 0 - 150 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: April 2005
#'   }
#'
#'
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 2,081 \cr
#'   \item Code(s): \code{wl_420, wl_421, wl_422} ... \code{wl_2500} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: vis-NIR spectrometer (FieldSpec Pro FR scanning instrument, Analytical Spectral Devices Inc., Boulder, USA), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 350–2,500 nm at 1.4–2.0 nm intervals \cr
#'   \item Processing: Discarding noisy edges of the spectrum (350 - 420 nm), resampling to 1 nm intervals \cr
#'   \item Sensing Date: September 2005
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 420 - 2,500 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with dummy coordinates (EPSG: 4326)
#'
#'
#' @examples
#' # Load the dataset list
#' UL.120
#'
#' # Access the dataset
#' UL.120$Dataset
#'
#' # Access the folds
#' UL.120$Folds
#'
#' # Access the coordinates but for UL.120 only dummy coordinates
#' UL.120$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_UL.120 <- UL.120$Dataset[UL.120$Folds != 1,]
#' testing_data_UL.120 <- UL.120$Dataset[UL.120$Folds == 1,]
#'
#' @usage UL.120
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Ekström, G. (1927). Klassifikation av Svenska Åkerjordar (Classification of Swedish arable soils). Sveriges Geologiska Undersökning, Ser C. 345, 161 pp. \cr
#' \cr
#' Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Persson, K., Söderström, M. & Mutua, J. (2023). SurfaceTortoise: Find Optimal Sampling Locations Based on Spatial Covariate(s). R package version 2.0.1.
"UL.120"



#' @title NRW.115 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: MIR
#'  \item Sample size: 115
#'  \item Number of Features: 1,686
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: North Rhine-Westphalia, Germany
#'  \item Sampling Design: Regular Grid Sampling on two adjacent fields in two sampling campaigns
#'  \item Study Area Size: 17 ha
#'  \item Geological Setting: Cretaceous marls partially covered by Saalian glacial till, aeolian sand and fluvial sediments
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: October 2013 & November 2015
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: October 2013 & November 2015
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: October 2013 & November 2015
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   MIR – Mid Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,686 \cr
#'   \item Code(s): \code{wn_3799, wn_3797.1, wn_3795.1} ... \code{wn_549.6} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: MIR spectrometer (Bruker Tensor 27 HTS-XT, Bruker Optik, Ettlingen, Germany), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 7,500 – 549.6 cm\eqn{^{-1}} at 4 cm\eqn{^{-1}} intervals \cr
#'   \item Processing: Discarding irrelevant spectral data of the spectrum (7,500 - 3,799 cm\eqn{^{-1}}), resampling to ~2 cm\eqn{^{-1}} intervals\cr
#'   \item Sensing Date: October 2013 & November 2015
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~ 2 cm\eqn{^{-1}}
#'      \item Spectral Range: 3,799 - 549.6 cm\eqn{^{-1}}
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset list
#' NRW.115
#'
#' # Access the dataset
#' NRW.115$Dataset
#'
#' # Access the folds
#' NRW.115$Folds
#'
#' # Access the coordinates but empty for NRW.115 (i.e. NA)
#' NRW.115$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_NRW.115 <- NRW.115$Dataset[NRW.115$Folds != 1,]
#' testing_data_NRW.115 <- NRW.115$Dataset[NRW.115$Folds == 1,]
#'
#' @usage NRW.115
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"NRW.115"



#' @title SA.112 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, Gamma, NIR, pH-ISE, VI
#'  \item Sample size: 112
#'  \item Number of Features: 1,412
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: Saxony-Anhalt, Germany
#'  \item Sampling Design: Regular Grid Sampling but with missing values in the center of the field
#'  \item Study Area Size: 27
#'  \item Previous Data Publication: None
#'  \item Geological Setting: Weichselian loess
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      \item Hamed Tavakoli (HTavakoli@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in a water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: October 2016
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE / LVermGeo ST”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: Unknown
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with exploration depth of 0 - 50 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   Gamma
#'   \itemize{
#'   \item Number Features: 5
#'   \item Code(s): \code{G_Total_Counts, G_K, G_U, G_Th, G_Cs}
#'   \item Unit: Unitless
#'   \item Sensing: Gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'
#'   NIR – Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,401
#'   \item Code(s): \code{wl_1000, wl_1001, wl_1002} ... \code{wl_2400}
#'   \item Unit: Unitless
#'   \item Sensing: NIR spectrometer (C11118GA, Hamamatsu Photonics K.K., Shizuoka Prefecture, Japan) on RapidMapper platform, in-situ, spectral range was 900 - 2550 nm at 15 nm intervals
#'   \item Processing: Kriging to align sensing- with soil sampling locations, discarding noisy edges of the spectrum (900 - 1,000 nm & 2,400 - 2,550 nm), resampling to 1 nm intervals
#'   \item Sensing Date: August 2021
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 1,000 - 2,400 nm
#'    }
#'   }
#'
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) on RapidMapper platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: April 2018
#'   }
#' }
#' \cr
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset list
#' SA.112
#'
#' # Access the dataset
#' SA.112$Dataset
#'
#' # Access the folds
#' SA.112$Folds
#'
#' # Access the coordinates but empty for SA.112 (i.e. NA)
#' SA.112$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SA.112 <- SA.112$Dataset[SA.112$Folds != 1,]
#' testing_data_SA.112 <- SA.112$Dataset[SA.112$Folds == 1,]
#'
#' @usage SA.112
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"SA.112"




#' @title G.104 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, RSS, VI
#'  \item Sample size: 104
#'  \item Number of Features: 16
#'  \item Coordinates: With coordinates (EPSG: 32722)
#'  \item Location: Goias, Brazil
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 95 ha
#'  \item Geological Setting: Heavily weathered soils originating from sedimentary rocks (Claystone, Sandstone)
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Domingos Sarvio Magalhaes Valente (valente@ufv.br), Federal University of Vicosa
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: July 2022
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 2.5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: July 2022
#'    \item Sampling Depth: 0 – 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: July 2022
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (30 m) based on synthetic aperture radar from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: December 2010
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 12
#'   \item Code(s): \code{B01, B02, B03, B04, B05, B06, B07, B08, B8A, B09, B11, B12}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: July 2022
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: December 2023
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32722)
#'
#'
#' @examples
#' # Load the dataset list
#' G.104
#'
#' # Access the dataset
#' G.104$Dataset
#'
#' # Access the folds
#' G.104$Folds
#'
#' # Access the coordinates
#' G.104$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_G.104 <- G.104$Dataset[G.104$Folds != 1,]
#' testing_data_G.104 <- G.104$Dataset[G.104$Folds == 1,]
#'
#' @usage G.104
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"G.104"





#' @title MGS.101 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, RSS, VI
#'  \item Sample size: 101
#'  \item Number of Features: 16
#'  \item Coordinates: With coordinates (EPSG: 32721)
#'  \item Location: Mato Grosso do Sul, Brazil
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 95 ha
#'  \item Geological Setting: Heavily weathered soils originating from Andesitic Basalt
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Domingos Sarvio Magalhaes Valente (valente@ufv.br), Federal University of Vicosa
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 2.5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 – 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (30 m) based on synthetic aperture radar from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: February 2011
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 12
#'   \item Code(s): \code{B01, B02, B03, B04, B05, B06, B07, B08, B8A, B09, B11, B12}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: August 2022
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: December 2021
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32721)
#'
#'
#' @examples
#' # Load the dataset list
#' MGS.101
#'
#' # Access the dataset
#' MGS.101$Dataset
#'
#' # Access the folds
#' MGS.101$Folds
#'
#' # Access the coordinates
#' MGS.101$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_MGS.101 <- MGS.101$Dataset[MGS.101$Folds != 1,]
#' testing_data_MGS.101 <- MGS.101$Dataset[MGS.101$Folds == 1,]
#'
#' @usage MGS.101
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"MGS.101"







#' @title CV.98 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: vis-NIR
#'  \item Sample size: 98
#'  \item Number of Features: 2,151
#'  \item Coordinates: Without coordinates because dataset was not georeferenced
#'  \item Location: Canton of Vaud, Switzerland
#'  \item Sampling Design: Random Stratified Sampling based on different treatments of organic amendments, fertilization, crop rotation and soil cultivation
#'  \item Study Area Size: 28 ha
#'  \item Geological Setting: Glacial or fluvioglacial deposits
#'  \item Previous Data Publication: Full dataset published in Metzger et al. (2024) but under embargo until June 2025
#'    \itemize{
#'      \item Konrad Metzger (konrad.metzger@agroscope.admin.ch), Agroscope
#'      \item Luca Bragazza (luca.bragazza@agroscope.admin.ch), Agroscope
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: %
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: May - June and September - October 2021
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (NF ISO 10390)
#'    \item Sampling Date: May - June and September - October 2021
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: %
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: May - June and September - October 2021
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 2,151
#'   \item Code(s): \code{wl_350, wl_351, wl_352} ... \code{wl_2500}
#'   \item Unit: Unitless
#'   \item Sensing: PSR+3500 (Spectral Evolution, Haverhill, USA), in-situ from Edelman auger (denoted as scantype = a in original dataset publication), spectral range was 350 - 2500 nm at 3 - 8 nm spectral resolution
#'   \item Processing: Resampling to 1 nm intervals
#'   \item Sensing Date: May - June and September - October 2021
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 350 – 2500 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset list
#' CV.98
#'
#' # Access the dataset
#' CV.98$Dataset
#'
#' # Access the folds
#' CV.98$Folds
#'
#' # Access the coordinates but empty for CV.98 (i.e. NA)
#' CV.98$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_CV.98 <- CV.98$Dataset[CV.98$Folds != 1,]
#' testing_data_CV.98 <- CV.98$Dataset[CV.98$Folds == 1,]
#'
#' @usage CV.98
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Metzger, K., Liebisch, F., Herrera, J. M., Guillaume, T., Walder, F. & Bragazza, L. (2024). Agroscope_SoilSpectralLibrary _2024. Zenodo repository. https://doi.org/10.5281/zenodo.11204174 \cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"CV.98"










#' @title SC.93 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: vis-NIR
#'  \item Sample size: 93
#'  \item Number of Features: 2,146
#'  \item Coordinates: With coordinates (EPSG: 32722)
#'  \item Location: Santa Catarina, Brazil
#'  \item Sampling Design: conditioned Latin Hypercube Sampling based on terrain parameters
#'  \item Study Area Size: 108 ha
#'  \item Geological Setting: Heavily weathered soils originating from volcanic rock of the Serra Geral Formation (basalt, dacit)
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Taciara Zborowski Horst (taciaraz@utfpr.edu.br), Federal University of Technology – Paraná
#'      \item Ricardo Simão Diniz Dalmolin (dalmolin@ufsm.br), Federal University of Santa Maria
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through light absorption after oxidization of the organic carbon in suspension (Tedesco et al. 1995)
#'    \item Sampling Date: December 2016
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode ratio with a 1:1 liquid:soil [? volmetric or gravimetric ?] ratio
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: December 2016
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 2,146 \cr
#'   \item Code(s): \code{wl_355, wl_356, wl_357} ... \code{wl_2500} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: vis-NIR spectrometer (ASD FieldSpec 4, Analytical Spectral Devices Inc., Boulder, USA), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 355 - 2,500 nm at 3 - 8 nm spectral resolution
#'   \item Processing: Reesampling to 1 nm intervals\cr
#'   \item Sensing Date: March 2017
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 355 – 2500 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32722)
#'
#'
#' @examples
#' # Load the dataset list
#' SC.93
#'
#' # Access the dataset
#' SC.93$Dataset
#'
#' # Access the folds
#' SC.93$Folds
#'
#' # Access the coordinates
#' SC.93$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SC.93 <- SC.93$Dataset[SC.93$Folds != 1,]
#' testing_data_SC.93 <- SC.93$Dataset[SC.93$Folds == 1,]
#'
#' @usage SC.93
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Tedesco, M.J., Gianello, C., Bissani, C., Bohnen, H. & Volkweiss, S.J. (1995) Análise de solo, plantas e outros materiais. [Analysis of soil, plants and other materials.] 2nd Edition, Departamento de Solos da Universidade Federal do Rio Grande do Sul, Porto Alegre, 174.
"SC.93"






#' @title BB.72 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, Gamma, pH-ISE, RSS, VI
#'  \item Sample size: 72
#'  \item Number of Features: 17
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 3.4 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
#'  \item Previous Data Publication: Target soil properties published but under boycott in Vogel et al. 2022
#'  \item Contact Information:
#'    \itemize{
#'      \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      \item Jörg Rühlmann (ruehlmann@igzev.de), Leibniz Institute of Vegetable and Ornamental Crops (IGZ)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
#'    \item Sampling Date: August 2022
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: August 2022
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: August 2022
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: LiDAR March 2011, images for photogrammetry May 2022
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: Array of multiple rolling electrodes(Geophilus company, Caputh, Germany) on Geophilus platform with exploration depth of 0 - 25 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   Gamma
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{G_Total_Counts}
#'   \item Unit: Unitless
#'   \item Sensing: Gamma sensor (gamma sensor model is not commercially available) on Geophilus platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2021
#'   }
#'
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) from VerisMSP3, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: July 2020
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 10
#'   \item Code(s): \code{B02, B03, B04, B05, B06, B07, B08, B8A, B11, B12}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”, with bands of 10 - 20 m spatial resolution
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: August 2022
#'   }
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: May 2022
#'   }
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset list
#' BB.72
#'
#' # Access the dataset
#' BB.72$Dataset
#'
#' # Access the folds
#' BB.72$Folds
#'
#' # Access the coordinates
#' BB.72$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.72 <- BB.72$Dataset[BB.72$Folds != 1,]
#' testing_data_BB.72 <- BB.72$Dataset[BB.72$Folds == 1,]
#'
#' @usage BB.72
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Vogel S., Bönecke E., Kling C., Kramer E., Lück K., Nagel A., Philipp G., Rühlmann J., Schröter I. & Gebbers, R. (2022), Base neutralizing capacity from agricultural fields in the quaternary landscape of North-East Germany, BONARES Repository, https://doi.org/10.20387/bonares-zh3x-nd80
"BB.72"




#' @title NRW.62 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: MIR
#'  \item Sample size: 62
#'  \item Number of Features: 1,686
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: North Rhine-Westphalia, Germany
#'  \item Sampling Design: Stratified Sampling by sampling rectangular plots which received different fertilizer dosages, samples were taken in the center of the plots
#'  \item Study Area Size: 0.6 ha
#'  \item Geological Setting: Pleistocene periglacial slope deposits consisting of weathered sand- and claystones from the Upper Bunter sandstone
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: November 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: November 2017
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: November 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   MIR – Mid Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,686 \cr
#'   \item Code(s): \code{wn_3799, wn_3797.1, wn_3795.1} ... \code{wn_549.6} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: MIR spectrometer (Bruker Optik, Ettlingen, Germany), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 7,500 – 549.6 cm\eqn{^{-1}} at 4 cm\eqn{^{-1}} intervals \cr
#'   \item Processing: Discarding irrelevant spectral data of the spectrum (7,500 - 3,799 cm\eqn{^{-1}}), resampling to ~2 cm\eqn{^{-1}} intervals\cr
#'   \item Sensing Date: November 2017
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~ 2 cm\eqn{^{-1}}
#'      \item Spectral Range: 3,799 - 549.6 cm\eqn{^{-1}}
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#' @examples
#' # Load the dataset list
#' NRW.62
#'
#' # Access the dataset
#' NRW.62$Dataset
#'
#' # Access the folds
#' NRW.62$Folds
#'
#' # Access the coordinates but empty for NRW.62 (i.e. NA)
#' NRW.62$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_NRW.62 <- NRW.62$Dataset[NRW.62$Folds != 1,]
#' testing_data_NRW.62 <- NRW.62$Dataset[NRW.62$Folds == 1,]
#'
#' @usage NRW.62
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"NRW.62"





#' @title RP.62 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: ERa, Gamma, NIR, pH-ISE, VI
#'  \item Sample size: 62
#'  \item Number of Features: 1,410
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: Rhineland-Palatinate, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 3.3 ha
#'  \item Geological Setting: Pleistocene periglacial slope deposits consisting of Weichselian loess with variable amounts of weathered Devonian sand-, silt-, and claystones and scattered Tertiary basalt bombs
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      \item Hamed Tavakoli (HTavakoli@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: October 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in a water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: May 2020
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: October 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#' \cr
#' Groups of Features:
#' \describe{
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with 0 - 50 cm measuring depth, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: September 2020
#'   }
#'
#'   Gamma
#'   \itemize{
#'   \item Number Features: 5
#'   \item Code(s): \code{G_Total_Counts, G_K, G_U, G_Th, G_Cs}
#'   \item Unit: Unitless
#'   \item Sensing: Gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: September 2020
#'   }
#'
#'   NIR – Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,401
#'   \item Code(s): \code{wl_1000, wl_1001, wl_1002} ... \code{wl_2400}
#'   \item Unit: Unitless
#'   \item Sensing: NIR spectrometer (C11118GA, Hamamatsu Photonics K.K., Shizuoka Prefecture, Japan) on RapidMapper platform, in-situ, spectral range was 900 - 2550 nm at 15 nm intervals
#'   \item Processing: Kriging to align sensing- with soil sampling locations, discarding noisy edges of the spectrum (900 - 999 nm & 2,400 - 2,550 nm), resampling to 1 nm intervals
#'   \item Sensing Date: September 2020
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: 1 nm
#'      \item Spectral Range: 1,000 - 2,400 nm
#'    }
#'   }
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) on RapidMapper platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: September 2020
#'   }
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: March 2017
#'    }
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset list
#' RP.62
#'
#' # Access the dataset
#' RP.62$Dataset
#'
#' # Access the folds
#' RP.62$Folds
#'
#' # Access the coordinates but empty for RP.62 (i.e. NA)
#' RP.62$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_RP.62 <- RP.62$Dataset[RP.62$Folds != 1,]
#' testing_data_RP.62 <- RP.62$Dataset[RP.62$Folds == 1,]
#'
#' @usage RP.62
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"RP.62"






#' @title BC.58 Dataset
#' @description
#' \itemize{
#'  \item dataset will probably be dropped because something seems wrong! Performance with MIR data should be much better !
#'  }
#' @docType data
"BC.58"









#' @title SSP.58 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: vis-NIR
#'  \item Sample size: 58
#'  \item Number of Features: 351
#'  \item Coordinates: Without coordinates because dataset was not georeferenced
#'  \item Location: State of Sao Paulo, Brazil
#'  \item Sampling Design: Random Stratified sampling based on treatment doses of K\eqn{_2}O and CaO
#'  \item Study Area Size: 0.7 ha
#'  \item Geological Setting: Heavily weathered soils originating from diabase
#'  \item Previous Data Publication: Full dataset published in Tavares et al. (2022)
#'  \item Contact Information:
#'    \itemize{
#'      \item Tiago Rodrigues Tavares, tiagosrt@usp.br, University of Sao Paulo
#'      \item José Paulo Molin (jpmolin@usp.br), University of Sao Paulo
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: mmol\eqn{_c} dm\eqn{^{-3}}
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: September 2015
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 2.5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: September 2015
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: g dm\eqn{^{-3}}
#'    \item Protocol: Hydrometer method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by measuring suspension density using a hydrometer (Bouyoucos 1927)
#'    \item Sampling Date: September 2015
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 351
#'   \item Code(s): \code{wl_431.6, wl_437.4, wl_449.1} ... \code{wl_2153.1}
#'   \item Unit: Unitless
#'   \item Sensing: Device of former Veris MSP3 (Veris Technologies, Salina, Kansas, USA) which is based on two spectrometers (USB4000, Ocean optics, Largo, FL, USA) for the visible region and (C9914GB, Hamamatsu Photonics, Hamamatsu, Japan) for the NIR region, on dried and sieved samples (<2 mm) in the laboratory, spectral range was 343 - 2,200 nm at ~5 nm spectral resolution
#'   \item Processing: Discarding noisy edges of the spectrum (343 - 431.6 nm & 2153.1 - 2,200  nm)
#'   \item Sensing Date: September 2015
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~5 nm
#'      \item Spectral Range: 431.6 - 2,153.1 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#' @examples
#' # Load the dataset list
#' SSP.58
#'
#' # Access the dataset
#' SSP.58$Dataset
#'
#' # Access the folds
#' SSP.58$Folds
#'
#' # Access the coordinates but empty for SSP.58 (i.e. NA)
#' SSP.58$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SSP.58 <- SSP.58$Dataset[SSP.58$Folds != 1,]
#' testing_data_SSP.58 <- SSP.58$Dataset[SSP.58$Folds == 1,]
#'
#' @usage SSP.58
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Bouyoucos, G. J. (1927). The hydrometer as a new method for the mechanical analysis of soils. Soil science, 23(5), 343-354.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.\cr
#' \cr
#' Tavares, T. R., Molin, J. P., Nunes, L. C., Alves, E. E. N., Krug, F. J., & de Carvalho, H. W. P. (2022). Spectral data of tropical soils using dry-chemistry techniques (VNIR, XRF, and LIBS): A dataset for soil fertility prediction. Data in Brief, 41, 108004.
"SSP.58"








#' @title NSW.52 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, RSS
#'  \item Sample size: 52
#'  \item Number of Features: 5
#'  \item Coordinates: With coordinates (EPSG: 32755)
#'  \item Location: New South Wales, Australia
#'  \item Sampling Design: Two sampling designs and campaigns over multiple fields: (1) Random Sampling from k-means clustering based on digital soil maps, digital elevation model, air-borne gamma radiometric data and remote sensing satellite images, and (2) Stratified Random Sampling based on soil type and land use parameters
#'  \item Study Area Size: 1,158 ha
#'  \item Geological Setting: Alluvial deposits of basaltic sediments
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'     \itemize{
#'      \item Patrick Filippi (patrick.filippi@sydney.edu.au), University of Sydney
#'      \item Edward Jones (edjones1684@gmail.com), University of Sydney
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: July 2018 & December 2018
#'    \item Sampling Depth: 0 - 10 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: July 2018 & December 2018
#'    \item Sampling Depth: 0 – 10 cm
#'    }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Date: July 2018 & December 2018
#'    \item Sampling Depth: 0 - 10 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from the “Elevation and Depth – Foundation Spatial Data (ELVIS)”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: April 2016
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 3
#'   \item Code(s): \code{B02, B8A, B11}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”, with bands of 10 - 20 m spatial resolution
#'   \item Processing: Extracting RSS values from raster at soil sampling locations, selecting bands spread throughout the spectral range with lower intercorrelation
#'   \item Sensing Date: July 2018
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32755)
#'
#'
#' @examples
#' # Load the dataset list
#' NSW.52
#'
#' # Access the dataset
#' NSW.52$Dataset
#'
#' # Access the folds
#' NSW.52$Folds
#'
#' # Access the coordinates
#' NSW.52$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_NSW.52 <- NSW.52$Dataset[NSW.52$Folds != 1,]
#' testing_data_NSW.52 <- NSW.52$Dataset[NSW.52$Folds == 1,]
#'
#' @usage NSW.52
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"NSW.52"








#' @title BB.51 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, pH-ISE
#'  \item Sample size: 51
#'  \item Number of Features: 4
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Multi Criteria Sampling based on quantile coverage of the sensing-features (ECa and pH-ISE), clustering of large and low values of sensing-features and spatial coverage
#'  \item Study Area Size: 40 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
#'  \item Previous Data Publication: Target soil properties published but under boycott in Vogel et al. 2022
#'  \item Contact Information:
#'    \itemize{
#'      \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
#'    \item Sampling Date: September - November 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: September - November 2017
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: September - November 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: LiDAR March 2009, images for photogrammetry May 2018
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: EC Surveyor (VERIS Technologies, Salinas, USA) from VerisMSP3 with exploration depth of 0 - 30 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: September 2017
#'   }
#'
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) from VerisMSP3, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: September 2017
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset list
#' BB.51
#'
#' # Access the dataset
#' BB.51$Dataset
#'
#' # Access the folds
#' BB.51$Folds
#'
#' # Access the coordinates
#' BB.51$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.51 <- BB.51$Dataset[BB.51$Folds != 1,]
#' testing_data_BB.51 <- BB.51$Dataset[BB.51$Folds == 1,]
#'
#' @usage BB.51
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Vogel S., Bönecke E., Kling C., Kramer E., Lück K., Nagel A., Philipp G., Rühlmann J., Schröter I. & Gebbers, R. (2022), Base neutralizing capacity from agricultural fields in the quaternary landscape of North-East Germany, BONARES Repository, https://doi.org/10.20387/bonares-zh3x-nd80
"BB.51"










#' @title W.50 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, VI, XRF
#'  \item Sample size: 50
#'  \item Number of Features: 15
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: Wisconsin, USA
#'  \item Sampling Design: Conditioned Latin Hypercube Sampling (cLHS) based on electrical conductivity, terrain parameters, and normalized difference vegetation index
#'  \item Study Area Size: 80 ha
#'  \item Geological Setting: Glacial outwash and sediments of the Johnson End Moraine
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Jingyi Huang, (jhuang426@wisc.edu), University of Wisconsin-Madison
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (Nelson and Sommers 1996)
#'    \item Sampling Date: July 2019
#'    \item Sampling Depth: 0 – 10 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 1:1 liquid:soil gravimetric ratio (Burt 2014)
#'    \item Sampling Date: July 2019
#'    \item Sampling Depth: 0 – 10 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Hydrometer method; separation of the fractions by sieving and sedimentation. Measurement of the separated fractions by weighing the density of the suspension (Gee and Bauder 1979)
#'    \item Sampling Date: July 2019
#'    \item Sampling Depth: 0 – 10 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (3 m) based on LiDAR from the “Wisconsin Department of Natural Resources”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations, resampled from the original 3 m resolution to 5 m resolution
#'   \item Sensing Date: Unknown
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: DUALEM-1HS instrument (DUALEM Inc., Milton, Canada) with exploration depth of 0 - 30 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: July 2019
#'   }
#'
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{NDVI, GNDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: July 2019
#'    }
#'
#'   XRF – X-ray fluorescence derived elemental concentrations
#'   \itemize{
#'   \item Number Features: 10
#'   \item Code(s): \code{XRF_Mg, XRF_Al, XRF_Si,  XRF_Ca, XRF_Ti, XRF_Mn, XRF_Fe, XRF_Zn, XRF_Sr, XRF_Zr}
#'   \item Unit: ppm (estimated through XRF Geochem not ground truth)
#'   \item Sensing: Delta Premium PXRF spectrometer (Olympus Scientific Solutions Americas Inc., Waltham, USA), on dried and sieved samples (<2 mm) in the laboratory
#'   \item Processing: Compton normalization method to transform full spectra into estimates of elemental concentrations with accompanied software of the sensor (Geochem mode)
#'   \item Sensing Date: July 2019
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#'  Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset list
#' W.50
#'
#' # Access the dataset
#' W.50$Dataset
#'
#' # Access the folds
#' W.50$Folds
#'
#' # Access the coordinates but empty for W.50 (i.e. NA)
#' W.50$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_W.50 <- W.50$Dataset[W.50$Folds != 1,]
#' testing_data_W.50 <- W.50$Dataset[W.50$Folds == 1,]
#'
#' @usage W.50
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Burt, R. (Ed.) (2014). Kellogg soil survey laboratory methods manual. United States Department of Agriculture, Natural Resources Conservation Service, National Soil Survey Center, Kellogg Soil Survey Laboratory.\cr
#' \cr
#' Gee, G. W., & Bauder, J. W. (1979). Particle size analysis by hydrometer: a simplified method for routine textural analysis and a sensitivity test of measurement parameters. Soil Science Society of America Journal, 43(5), 1004-1007.\cr
#' \cr
#' Nelson, D.W. & Sommers, L.E. (1996) Total Carbon, Organic Carbon, and Organic Matter. In: Sparks, D.L., Page, A.L., Helmke, P.A., Loeppert, R.H., Soltanpour, P.N., Tabatabai, M.A., Johnston, C.T. & Sumner, M.E., Eds., Methods of Soil Analysis. Part 3. Chemical Methods, Soil Science Society of America, Madison, WI, 961-1010.
"W.50"










#' @title SC.50 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa
#'  \item Sample size: 50
#'  \item Number of Features: 3
#'  \item Coordinates: With coordinates (EPSG: 32722)
#'  \item Location: Santa Catarina, Brazil
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 13 ha
#'  \item Geological Setting: Heavily weathered soils originating from Mesozoic basalt rocks
#'  \item Previous Data Publication: Full dataset published in Bottega & Safanelli (2024)
#'  \item Contact Information:
#'    \itemize{
#'      \item Eduardo Bottega (bottega.elb@gmail.com), Federal University of Santa Maria
#'      \item José Lucas Safanelli (jsafanelli@woodwellclimate.org), Woodwell Climate Research Center
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Carbon from organic materials is oxidized with K\eqn{_2}Cr\eqn{_2}O\eqn{_7} and then quantified by titration using an ammoniacal ferrous sulphate solution (Walkley & Black 1934)
#'    \item Sampling Date: November 2013
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: November 2013
#'    \item Sampling Depth: 0 – 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: November 2013
#'    \item Sampling Depth: 0 – 20 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (30 m) based on synthetic aperture radar from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: October 2011
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: LandMapper ERM-02 conductivity meter (Landviser, League City, USA) with exploration depth of 0 - 20 cm, in-situ
#'   \item Processing: None
#'   \item Sensing Date: November 2014
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32722)
#'
#' @examples
#' # Load the dataset list
#' SC.50
#'
#' # Access the dataset
#' SC.50$Dataset
#'
#' # Access the folds
#' SC.50$Folds
#'
#' # Access the coordinates
#' SC.50$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SC.50 <- SC.50$Dataset[SC.50$Folds != 1,]
#' testing_data_SC.50 <- SC.50$Dataset[SC.50$Folds == 1,]
#'
#' @usage SC.50
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Bottega, E. L. & Safanelli J. L. (2024). Data for "Site-Specific Management Zones Delineation Based on Apparent Soil Electrical Conductivity in Two Contrasting Fields of Southern Brazil". Zenodo repository.  https://doi.org/10.5281/zenodo.13770031 \cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"SC.50"








#' @title PC.45 Dataset
#' @description
#' \itemize{
#'  \item Metadata not yet received
#'  }
#' @docType data
"PC.45"




#' @title MG.44 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: vis-NIR
#'  \item Sample size: 44
#'  \item Number of Features: 351
#'  \item Coordinates: With coordinates (EPSG: 32721)
#'  \item Location: Mato Grosso, Brazil
#'  \item Sampling Design:  Random sample from previous Regular Grid Sampling
#'  \item Study Area Size: 13 ha
#'  \item Geological Setting: Heavily weathered soils originating from Sandstone
#'  \item Previous Data Publication: Full dataset published in Tavares et al. (2022)
#'  \item Contact Information:
#'    \itemize{
#'      \item Tiago Rodrigues Tavares, tiagosrt@usp.br, University of Sao Paulo
#'      \item José Paulo Molin (jpmolin@usp.br), University of Sao Paulo
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: mmol\eqn{_c} dm\eqn{^{-3}}
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: March 2016
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 2.5:1 liquid:soil volumetric ratio
#'    \item Sampling Date: March 2016
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: g dm\eqn{^{-3}}
#'    \item Protocol: Hydrometer method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by measuring suspension density using a hydrometer (Bouyoucos 1927)
#'    \item Sampling Date: March 2016
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   vis-NIR – Visible and Near Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 351
#'   \item Code(s): \code{wl_431.6, wl_437.4, wl_449.1} ... \code{wl_2153.1}
#'   \item Unit: Unitless
#'   \item Sensing: Device of former Veris MSP3 (Veris Technologies, Salina, Kansas, USA) which is based on two spectrometers (USB4000, Ocean optics, Largo, FL, USA) for the visible region and (C9914GB, Hamamatsu Photonics, Hamamatsu, Japan) for the NIR region, on dried and sieved samples (<2 mm) in the laboratory, spectral range was 343 - 2,200 nm at ~5 nm spectral resolution
#'   \item Processing: Discarding noisy edges of the spectrum (343 - 431.6 nm & 2153.1 - 2,200 nm)
#'   \item Sensing Date: March 2016
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavelength (in nm)
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~5 nm
#'      \item Spectral Range: 431.6 - 2,153.1 nm
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32721)
#'
#' @examples
#' # Load the dataset list
#' MG.44
#'
#' # Access the dataset
#' MG.44$Dataset
#'
#' # Access the folds
#' MG.44$Folds
#'
#' # Access the coordinates
#' MG.44$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_MG.44 <- MG.44$Dataset[MG.44$Folds != 1,]
#' testing_data_MG.44 <- MG.44$Dataset[MG.44$Folds == 1,]
#'
#' @usage MG.44
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Bouyoucos, G. J. (1927). The hydrometer as a new method for the mechanical analysis of soils. Soil science, 23(5), 343-354.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.\cr
#' \cr
#' Tavares, T. R., Molin, J. P., Nunes, L. C., Alves, E. E. N., Krug, F. J., & de Carvalho, H. W. P. (2022). Spectral data of tropical soils using dry-chemistry techniques (VNIR, XRF, and LIBS): A dataset for soil fertility prediction. Data in Brief, 41, 108004.
"MG.44"







#' @title NRW.42 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: MIR
#'  \item Sample size: 42
#'  \item Number of Features: 1,686
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: North Rhine-Westphalia, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 1.5 ha
#'  \item Geological Setting: Pleistocene periglacial slope deposits consisting of weathered Devonian sand-, silt-, & claystones, partially covered by Weichselian loess
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: Apr 2013
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: Apr 2013
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: Apr 2013
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   MIR – Mid Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,686 \cr
#'   \item Code(s): \code{wn_3799, wn_3797.1, wn_3795.1} ... \code{wn_549.6} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: MIR spectrometer (Bruker Tensor 27 HTS-XT, Bruker Optik, Ettlingen, Germany), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 7,500 – 550 cm\eqn{^{-1}} at 4 cm\eqn{^{-1}} intervals \cr
#'   \item Processing: Discarding irrelevant spectral data of the spectrum (7,500 - 3,799 cm\eqn{^{-1}}), resampling to ~2 cm\eqn{^{-1}} intervals\cr
#'   \item Sensing Date: Apr 2013
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~ 2 cm\eqn{^{-1}}
#'      \item Spectral Range: 3,799 - 549.6 cm\eqn{^{-1}}
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#' @examples
#' # Load the dataset list
#' NRW.42
#'
#' # Access the dataset
#' NRW.42$Dataset
#'
#' # Access the folds
#' NRW.42$Folds
#'
#' # Access the coordinates but empty for NRW.42 (i.e. NA)
#' NRW.42$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_NRW.42 <- NRW.42$Dataset[NRW.42$Folds != 1,]
#' testing_data_NRW.42 <- NRW.42$Dataset[NRW.42$Folds == 1,]
#'
#' @usage NRW.42
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"NRW.42"









#' @title SM.40 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa
#'  \item Sample size: 40
#'  \item Number of Features: 3
#'  \item Coordinates: With coordinates (EPSG: 32633)
#'  \item Location: South Moravia, Czechia
#'  \item Sampling Design: Subsample from previous Regular Grid Sampling, subsample was handpicked to cover contrasting areas
#'  \item Study Area Size: 53 ha
#'  \item Geological Setting: Weichselian sandy loess [? Eventually wrong ?]
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Vojtech Lukas (vojtech.lukas@mendelu.cz), Mendel University in Brno
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOM_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon following slight adjustments of the Walkley & Black (1934) method (Zbíral et al. 2004)
#'    \item Sampling Date: May 2004
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in KCl suspension with a glass electrode with unspecified [?please add if you the volumetric or gravimetric soil to liquid ratio?] liquid:soil ratio (Zbíral 2002)
#'    \item Sampling Date: May 2004
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Hydrometer method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by measuring suspension density using a hydrometer following slight adjustments of the Bouyoucos (1927) method [? Citation ?]
#'    \item Sampling Date: April 2006
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (~2 m) based on LiDAR from “Geoportal of the Czech Office for Surveying, Mapping and Cadastre"
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: Unknown
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: EM38 sensor (Geonics Ltd., Mississauga, Canada) drawn by a vehicle with exploration depth of 0 - 75 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: May 2004
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe With coordinates (EPSG: 32633)
#'
#'
#' @examples
#' # Load the dataset list
#' SM.40
#'
#' # Access the dataset
#' SM.40$Dataset
#'
#' # Access the folds
#' SM.40$Folds
#'
#' # Access the coordinates
#' SM.40$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SM.40 <- SM.40$Dataset[SM.40$Folds != 1,]
#' testing_data_SM.40 <- SM.40$Dataset[SM.40$Folds == 1,]
#'
#' @usage SM.40
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Bouyoucos, G. J. (1927). The hydrometer as a new method for the mechanical analysis of soils. Soil science, 23(5), 343-354.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38. \cr
#' \cr
#' Zbíral, J., Honsa, I., Malý, S. & Čižmář, D (2004). Analýza půd III : jednotné pracovní postupy [Soil Analysis III : Unified working procedures]. Brno: UKZUZ, 199\cr
#' \cr
#' Zbíral, J. (2002). Analýza půd I : jednotné pracovní postupy [Soil analysis I: Integrated work procedures]. Brno: UKZUZ, 197
"SM.40"





#' @title MWP.36 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, RSS
#'  \item Sample size: 36
#'  \item Number of Features: 5
#'  \item Coordinates: With coordinates (EPSG: 32633)
#'  \item Location: Mecklenburg-Western Pomerania, Germany
#'  \item Sampling Design: Random Sampling along field transects
#'  \item Study Area Size: 18 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sands
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Alexander Steiger (alexander.steiger@uni-rostock.de), University of Rostock
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
#'    \item Sampling Date: August 2022
#'    \item Sampling Depth: 0 – 15 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: August 2022
#'    \item Sampling Depth: 0 – 15 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water (Gee and Bauder 1986)
#'    \item Sampling Depth: 0 – 15 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “LAiV Geodaten-MV”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: Unknown
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 3
#'   \item Code(s): \code{B02, B8A, B11}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Extracting RSS values from raster at soil sampling locations, selecting bands spread throughout the spectral range with lower intercorrelation
#'   \item Sensing Date: August 2022
#'   }
#'
#' }
#'\cr
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe With coordinates (EPSG: 32633)
#'
#' @examples
#' # Load the dataset list
#' MWP.36
#'
#' # Access the dataset
#' MWP.36$Dataset
#'
#' # Access the folds
#' MWP.36$Folds
#'
#' # Access the coordinates
#' MWP.36$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_MWP.36 <- MWP.36$Dataset[MWP.36$Folds != 1,]
#' testing_data_MWP.36 <- MWP.36$Dataset[MWP.36$Folds == 1,]
#'
#' @usage MWP.36
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Gee, G.W. & Bauder, J.W. (1986) Particle-Size Analysis. In: Klute, A., Ed., Methods of Soil Analysis, Part 1. Physical and Mineralogical Methods, Agronomy Monograph No. 9, 2nd Edition, American Society of Agronomy/Soil Science Society of America, Madison, WI, 383-411.\cr
#' \cr
#' Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
"MWP.36"







#' @title O.32 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: MIR
#'  \item Sample size: 32
#'  \item Number of Features: 1,637
#'  \item Coordinates: Without coordinates because of privacy concerns
#'  \item Location: Occitanie, France
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: XXX [will be delivered later]
#'  \item Geological Setting: Pleistocene fluvial deposits and Miocene marine deposits
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
#'    \item Sampling Date: March 2020
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: March 2020
#'    \item Sampling Depth: 0 - 20 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: March 2020
#'    \item Sampling Depth: 0 - 20 cm
#'    }
#'
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   MIR – Mid Infrared Spectroscopy
#'   \itemize{
#'   \item Number Features: 1,637 \cr
#'   \item Code(s): \code{wn_3800, wn_3797.1, wn_3795.1} ... \code{wn_751.1} \cr
#'   \item Unit: Unitless \cr
#'   \item Sensing: Handheld MIR spectrometer (Agilent 4300, Agilent Technologies, Santa Clara, USA), on dried and sieved samples (<2 mm) in the laboratory compressed to soil tablets, spectral range was 5,200 – 650 cm\eqn{^{-1}} at 4 - 16 cm\eqn{^{-1}} intervals \cr
#'   \item Processing: Discarding irrelevant spectral data of the spectrum (5,200 - 3,800 cm\eqn{^{-1}}) and noisy edges of the spectrum (751.1 - 650 cm\eqn{^{-1}}), resampling to ~2 cm\eqn{^{-1}} intervals\cr
#'   \item Sensing Date: March 2020
#'   \item Spectral Information (after data processing):
#'    \itemize{
#'      \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
#'      \item Measurement Type: Reflectance
#'      \item Spectral Resolution: ~ 2 cm\eqn{^{-1}}
#'      \item Spectral Range: 3,800 - 751.1 cm\eqn{^{-1}}
#'    }
#'   }
#'
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#' @examples
#' # Load the dataset list
#' O.32
#'
#' # Access the dataset
#' O.32$Dataset
#'
#' # Access the folds
#' O.32$Folds
#'
#' # Access the coordinates but empty for O.32 (i.e. NA)
#' O.32$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_O.32 <- O.32$Dataset[O.32$Folds != 1,]
#' testing_data_O.32 <- O.32$Dataset[O.32$Folds == 1,]
#'
#' @usage O.32
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"O.32"










#' @title BB.30_1 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, pH-ISE. VI
#'  \item Sample size: 30
#'  \item Number of Features: 8
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Multi Criteria Sampling based on quantile coverage of the sensing-features (ERa and pH-ISE), clustering of large and low values of sensing-features and spatial coverage
#'  \item Study Area Size: 19 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
#'  \item Previous Data Publication: Target soil properties published but under boycott in Vogel et al. 2022
#'  \item Contact Information:
#'    \itemize{
#'      \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#' Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
#'    \item Sampling Date: August & October 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: August & October 2017
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: August & October 2017
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: LiDAR March 2011, images for photogrammetry May 2022
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: EC Surveyor (VERIS Technologies, Salinas, USA) from VerisMSP3 with exploration depth of 0 - 30 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2017
#'   }
#'
#'   pH-ISE – Ion Selective Electrodes for pH Determination
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{pH-ISE}
#'   \item Unit: Unitless
#'   \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) from VerisMSP3, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date: August 2017
#'   }
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{NDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: May 2017
#'    }
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset list
#' BB.30_1
#'
#' # Access the dataset
#' BB.30_1$Dataset
#'
#' # Access the folds
#' BB.30_1$Folds
#'
#' # Access the coordinates
#' BB.30_1$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.30_1 <- BB.30_1$Dataset[BB.30_1$Folds != 1,]
#' testing_data_BB.30_1 <- BB.30_1$Dataset[BB.30_1$Folds == 1,]
#'
#' @usage BB.30_1
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
#' @references Vogel S., Bönecke E., Kling C., Kramer E., Lück K., Nagel A., Philipp G., Rühlmann J., Schröter I. & Gebbers, R. (2022), Base neutralizing capacity from agricultural fields in the quaternary landscape of North-East Germany, BONARES Repository, https://doi.org/10.20387/bonares-zh3x-nd80
"BB.30_1"


#' @title BB.30_2 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC, pH, Clay
#'  \item Groups of Features: DEM, ERa, Gamma, RSS, VI
#'  \item Sample size: 30
#'  \item Number of Features: 13
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area Size: 1.4 ha
#'  \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
#'  \item Previous Data Publication: None
#'  \item Contact Information:
#'    \itemize{
#'      \item Pablo Rosso (Pablo.Rosso@zalf.de), Leibniz Centre for Agricultural Landscape Research (ZALF)
#'      \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
#'      }
#'  \item License: CC BY-NC-SA 4.0
#'  \item Publication/Modification Date (d/m/y): XXX.2025, version 1.0
#'  \item Changelog:
#'    \itemize{
#'      \item Version 1.0 (XXX.2025): Initial release
#'    }
#' }
#' \cr
#' @details
#' \describe{
#' \strong{Dataset:}
#' Dataframe which contains the tabular dataset with the target soil properties and features}
#' \describe{
#'  Target Soil Properties:
#'
#'    SOC - Soil Organic Carbon
#'    \itemize{
#'    \item Code: \code{SOC_target}
#'    \item Unit: \%
#'    \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#'
#'    pH
#'    \itemize{
#'    \item Code: \code{pH_target}
#'    \item Unit: Unitless
#'    \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 - 30 cm
#' }
#'
#'
#'    Clay
#'    \itemize{
#'    \item Code: \code{Clay_target}
#'    \item Unit: \%
#'    \item Protocol: Measured through a combination of wet sieving and sedimentation after dispersion and removal of organic matter through oxidation (DIN ISO 11277)
#'    \item Sampling Date: September 2022
#'    \item Sampling Depth: 0 - 30 cm
#'    }
#' }
#'
#' \cr
#' Groups of Features:
#' \describe{
#'   DEM – Digital Elevation Model and Terrain Parameters
#'   \itemize{
#'   \item Number Features: 2
#'   \item Code(s): \code{Altitude, Slope}
#'   \item Unit: \code{Altitude} (m), \code{Slope } (°)
#'   \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
#'   \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
#'   \item Sensing Date: LiDAR March 2011, images for photogrammetry May 2022
#'   }
#'
#'   ERa – Apparent Electrical Resistivity
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{ERa}
#'   \item Unit: \eqn{\Omega} m
#'   \item Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with exploration depth of 0 - 50 cm, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date:  September 2022
#'   }
#'
#'   Gamma
#'   \itemize{
#'   \item Number Features: 5
#'   \item Code(s): \code{G_Total_Counts, G_K, G_U, G_Th, G_Cs}
#'   \item Unit: Unitless
#'   \item Sensing: Gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform, in-situ
#'   \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
#'   \item Sensing Date:  September 2022
#'   }
#'
#'   RSS – Remote Sensing Derived Spectral Data
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{B04}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 bare soil Image (Level-2A) from “Copernicus Open Access Hub”, selecting bands spread throughout the spectral range with lower intercorrelation
#'   \item Processing: Extracting RSS values from raster at soil sampling locations
#'   \item Sensing Date: September 2022
#'   }
#'   VI - Vegetation Indices
#'   \itemize{
#'   \item Number Features: 1
#'   \item Code(s): \code{NDVI}
#'   \item Unit: Unitless
#'   \item Sensing: Sentinel-2 Image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
#'   \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04), extracting VI values from raster at soil sampling locations
#'   \item Sensing Date: April 2023
#'    }
#' }
#'\cr
#'
#'
#' \strong{Folds:}
#' Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset list
#' BB.30_2
#'
#' # Access the dataset
#' BB.30_2$Dataset
#'
#' # Access the folds
#' BB.30_2$Folds
#'
#' # Access the coordinates
#' BB.30_2$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.30_2 <- BB.30_2$Dataset[BB.30_2$Folds != 1,]
#' testing_data_BB.30_2 <- BB.30_2$Dataset[BB.30_2$Folds == 1,]
#'
#' @usage BB.30_2
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"BB.30_2"






