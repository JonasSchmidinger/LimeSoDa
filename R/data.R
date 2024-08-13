#' @title BB.250 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC_target, pH_target, Clay_target
#'  \item Groups of Features: ER, Gamma, ISE.pH, RSS, DEM
#'  \item Sample size: 250
#'  \item Number of Features: 16
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Triangular Grid Sampling
#'  \item Study Area: 52 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: SVogel@atb-potsdam.de
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOC_target}}{Unit: \% \cr
#'    Protocol: Dry combustion after removing inorganic carbon (DIN ISO 10694)\cr
#'    Sampling Date: May 2020\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{clay_target}}{Unit: \% \cr
#'    Protocol: Wet sieving and sedimentation after removal of organic matter (DIN ISO 11277)\cr
#'    Sampling Date: May 2020\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{pH_target}}{Unit: Unitless \cr
#'    Protocol: In CaCl\eqn{_2} solution with a glass electrode (DIN ISO 10390)\cr
#'    Sampling Date: May 2020\cr
#'    Sampling Depth: 0 - 30 cm} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{ER}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): ER \cr
#'   Unit: \eqn{\Omega} m \cr
#'   Sensing: Array of multiple rolling electrodes(Geophilus company, Caputh, Germany) on Geophilus platform with 0 - 25 cm measuring depth (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: August 2021
#'   }
#'
#'   \item{\code{pH_ISE}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): pH_ISE \cr
#'   Unit: unitless \cr
#'   Sensing: Soil pH Manager from VerisMSP3 (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: August 2021
#'   }
#'
#'   \item{\code{Gamma}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): G_Total_Counts \cr
#'   Unit: unitless \cr
#'   Sensing: Gamma sensor on Geophilus platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: August 2021
#'   }
#'
#'   \item{\code{RSS}}{
#'   No. Features: 10 \cr
#'   Feature Code(s): B02, B03, B04, B05, B06, B07, B08, B08A, B11, B12 \cr
#'   Unit: unitless \cr
#'   Sensing: Sentinel-2 bare soil Image (Level-2A), with bands of 10 - 20 m spatial resolution\cr
#'   Processing: Extracting RSS values from raster at soil sampling locations \cr
#'   Sensing Date: April 2020
#'   }
#'   \item{\code{DEM}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): Altitude, Slope, TDI \cr
#'   Unit: Altitude (m), Slope (°), TDI (unitless) \cr
#'   Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from the “State office for Land Surveying and Geoinformation Brandenburg”\cr
#'   Processing: Slope and TPI through \code{\link[raster]{terrain}} function of the \pkg{raster} package \cr
#'   Sensing Date: LiDAR March 2009, Images for photogrammetry May 2018
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 250 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset & folds
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
"BB.250"



#' @title BB.72 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC_target, pH_target, Clay_target
#'  \item Groups of Features: ER, Gamma, ISE.pH, RSS, DEM
#'  \item Sample size: 72
#'  \item Number of Features: 16
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area: 3.4 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: SVogel@atb-potsdam.de
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOC_target}}{Unit: \% \cr
#'    Protocol: Dry combustion after removing inorganic carbon (DIN ISO 10694)\cr
#'    Sampling Date: August 2022\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{clay_target}}{Unit: \% \cr
#'    Protocol: Wet sieving and sedimentation after removal of organic matter (DIN ISO 11277)\cr
#'    Sampling Date: August 2022\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{pH_target}}{Unit: Unitless \cr
#'    Protocol: In CaCl\eqn{_2} solution with a glass electrode (DIN ISO 10390)\cr
#'    Sampling Date: August 2022\cr
#'    Sampling Depth: 0 - 30 cm} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{ER}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): ER \cr
#'   Unit: \eqn{\Omega} m \cr
#'   Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on Geophilus platform with 0 - 25 cm measuring depth (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: July 2020
#'   }
#'
#'   \item{\code{pH_ISE}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): pH_ISE \cr
#'   Unit: unitless \cr
#'   Sensing: Soil pH Manager from VerisMSP3 (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: August 2021
#'   }
#'
#'   \item{\code{Gamma}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): G_Total_Counts \cr
#'   Unit: unitless \cr
#'   Sensing: Gamma sensor on Geophilus platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: July 2020
#'   }
#'
#'   \item{\code{RSS}}{
#'   No. Features: 10 \cr
#'   Feature Code(s): B02, B03, B04, B05, B06, B07, B08, B08A, B11, B12 \cr
#'   Unit: unitless \cr
#'   Sensing: Sentinel-2 bare soil Image (Level-2A), with bands of 10 - 20 m spatial resolution\cr
#'   Processing: Extracting RSS values from raster at soil sampling locations \cr
#'   Sensing Date: August 2022
#'   }
#'   \item{\code{DEM}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): Altitude, Slope, TDI \cr
#'   Unit: Altitude (m), Slope (°), TDI (unitless) \cr
#'   Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from the “State office for Land Surveying and Geoinformation Brandenburg”\cr
#'   Processing: Slope and TPI through \code{\link[raster]{terrain}} function of the \pkg{raster} package \cr
#'   Sensing Date: LiDAR March 2011, Images for photogrammetry May 2022
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 72 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe With coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset & folds
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
"BB.72"








#' @title RP.62 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC_target, pH_target, Clay_target
#'  \item Groups of Features: ER, Gamma, ISE.pH, NIR
#'  \item Sample size: 62
#'  \item Number of Features: 1408
#'  \item Coordinates: With coordinates (EPSG: 32632)
#'  \item Location: Rhineland-Palatinate, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area: 3.3 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: SVogel@atb-potsdam.de
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOC_target}}{Unit: \% \cr
#'    Protocol: Dry combustion after removing inorganic carbon (DIN ISO 10694)\cr
#'    Sampling Date: XXX 2017\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{clay_target}}{Unit: \% \cr
#'    Protocol: Wet sieving and sedimentation after removal of organic matter (DIN ISO 11277)\cr
#'    Sampling Date: XXX 2017\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{pH_target}}{Unit: Unitless \cr
#'    Protocol: In CaCl\eqn{_2} solution with a glass electrode (DIN ISO 10390)\cr
#'    Sampling Date: September 2020\cr
#'    Sampling Depth: 0 - 30 cm} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{ER}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): ER \cr
#'   Unit: \eqn{\Omega} m \cr
#'   Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with 0 - 50 cm measuring depth (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: September 2020
#'   }
#'
#'   \item{\code{pH_ISE}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): pH_ISE \cr
#'   Unit: unitless \cr
#'   Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA ) on RapidMapper platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: September 2020
#'   }
#'
#'   \item{\code{Gamma}}{
#'   No. Features: 5 \cr
#'   Feature Code(s): G_Total_Counts, G_K, G_U, G_Th, G_Cs \cr
#'   Unit: unitless \cr
#'   Sensing: Gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: September 2020
#'   }
#'   \item{\code{NIR}}{
#'   No. Features: 1401 \cr
#'   Feature Code(s): NIR_1000, NIR_1001, NIR_1002 ... NIR_2400 \cr
#'   Unit: unitless \cr
#'   Sensing: NIR spectrometer (C11118GA, Hamamatsu Photonics K.K., Shizuoka Prefecture, Japan) on RapidMapper platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations, Harmonization to 1nm intervals, Discarding noisy edges \cr
#'   Sensing Date: September 2020
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 62 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32632)
#'
#' @examples
#' # Load the dataset & folds
#' RP.62
#'
#' # Access the dataset
#' RP.62$Dataset
#'
#' # Access the folds
#' RP.62$Folds
#'
#' # Access the coordinates
#' RP.62$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_RP.62 <- RP.62$Dataset[RP.62$Folds != 1,]
#' testing_data_RP.62 <- RP.62$Dataset[RP.62$Folds == 1,]
#'
#' @usage RP.62
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"RP.62"



#' @title BB.30 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOC_target, pH_target, Clay_target
#'  \item Groups of Features: ER, Gamma, RSS, DEM
#'  \item Sample size: 30
#'  \item Number of Features: 8
#'  \item Coordinates: With coordinates (EPSG: 25833)
#'  \item Location: Brandenburg, Germany
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area: 1.4 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: SVogel@atb-potsdam.de
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOC_target}}{Unit: \% \cr
#'    Protocol: Dry combustion after removing inorganic carbon (DIN ISO 10694)\cr
#'    Sampling Date: September 2022\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{clay_target}}{Unit: \% \cr
#'    Protocol: Wet sieving and sedimentation after removal of organic matter (DIN ISO 11277)\cr
#'    Sampling Date: September 2022\cr
#'    Sampling Depth: 0 - 30 cm}
#'   \item{\code{pH_target}}{Unit: Unitless \cr
#'    Protocol: In CaCl\eqn{_2} solution with a glass electrode (DIN ISO 10390)\cr
#'    Sampling Date: September 2020\cr
#'    Sampling Depth: 0 - 30 cm} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{ER}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): ER \cr
#'   Unit: \eqn{\Omega} m \cr
#'   Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with 0 - 50 cm measuring depth (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: September 2022
#'   }
#'
#'   \item{\code{Gamma}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): G_Total_Counts \cr
#'   Unit: unitless \cr
#'   Sensing: Gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform (in-situ)\cr
#'   Processing: Kriging to align sensing- with soil sampling locations \cr
#'   Sensing Date: September 2022
#'   }
#'
#'   \item{\code{RSS}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): B04, B08, B11 \cr
#'   Unit: unitless \cr
#'   Sensing: Sentinel-2 bare soil Image (Level-2A), with selected bands based on correlation\cr
#'   Processing: Extracting RSS values from raster at soil sampling locations \cr
#'   Sensing Date: September 2022
#'   }
#'   \item{\code{DEM}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): Altitude, Slope, TDI \cr
#'   Unit: Altitude (m), Slope (°), TDI (unitless) \cr
#'   Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from the “State office for Land Surveying and Geoinformation Brandenburg”\cr
#'   Processing: Slope and TPI through \code{\link[raster]{terrain}} function of the \pkg{raster} package \cr
#'   Sensing Date: LiDAR April 2011, Images for photogrammetry April 2019
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 30 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 25833)
#'
#'
#' @examples
#' # Load the dataset & folds
#' BB.30
#'
#' # Access the dataset
#' BB.30$Dataset
#'
#' # Access the folds
#' BB.30$Folds
#'
#' # Access the coordinates
#' BB.30$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_BB.30 <- BB.30$Dataset[BB.30$Folds != 1,]
#' testing_data_BB.30 <- BB.30$Dataset[BB.30$Folds == 1,]
#'
#' @usage BB.30
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"BB.30"




#' @title SSP.58 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM_target, pH_target, Cay_target
#'  \item Groups of Features: visNIR
#'  \item Sample size: 58
#'  \item Number of Features: 351
#'  \item Coordinates: Without coordinates because dataset was not georeferenced
#'  \item Location: Sao Paulo State, Brazil
#'  \item Sampling Design: Regular Grid Sampling
#'  \item Study Area: 0.7 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: tiagosrt@usp.br
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOM_target}}{XXX}
#'   \item{\code{clay_target}}{XXX}
#'   \item{\code{pH_target}}{XXX} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{visNIR}}{XXX
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 58 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Empty entry (NA)
#'
#'
#' @examples
#' # Load the dataset & folds
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
"SSP.58"



#' @title MG.44 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM_target, pH_target, Cay_target
#'  \item Groups of Features: vis-NIR
#'  \item Sample size: 44
#'  \item Number of Features: 351
#'  \item Coordinates: With coordinates (EPSG: 32721)
#'  \item Location: Mato Grosso, Brazil
#'  \item Sampling Design: Random subsample from a larger grid sampling campaign
#'  \item Study Area: 13 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: tiagosrt@usp.br
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOM_target}}{XXX}
#'   \item{\code{clay_target}}{XXX}
#'   \item{\code{pH_target}}{XXX} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{visNIR}}{XXX
#'   }
#' }
#'
#'
#' \strong{Folds:}
#' Vector with 44 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32721)
#'
#'
#' @examples
#' # Load the dataset & folds
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
"MG.44"




#' @title NSW.52 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM_target, pH_target, Cay_target
#'  \item Groups of Features: RSS, DEM
#'  \item Sample size: 52
#'  \item Number of Features: 6
#'  \item Coordinates: With coordinates (EPSG: 32755)
#'  \item Location: New South Wales, Australia
#'  \item Sampling Design: K-means (30 samples) & XXX (22 sampples)
#'  \item Study Area: 1,070 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: patrick.filippi@sydney.edu.au
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOM_target}}{XXX}
#'   \item{\code{clay_target}}{XXX}
#'   \item{\code{pH_target}}{XXX} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{RSS}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): B04, B08, B11 \cr
#'   Unit: unitless \cr
#'   Sensing: Sentinel-2 bare soil Image (Level-2A), with selected bands based on correlation\cr
#'   Processing: Extracting RSS values from raster at soil sampling locations \cr
#'   Sensing Date: July 2018
#'   }
#'   \item{\code{DEM}}{
#'   No. Features: 3 \cr
#'   Feature Code(s): Altitude, Slope, TDI \cr
#'   Unit: Altitude (m), Slope (°), TDI (unitless) \cr
#'   Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from the “Elevation and Depth – Foundation Spatial Data (ELVIS)”\cr
#'   Processing: Slope and TPI through \code{\link[raster]{terrain}} function of the \pkg{raster} package \cr
#'   Sensing Date: April 2016
#'   }
#'}
#'
#'
#' \strong{Folds:}
#' Vector with 52 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32755)
#'
#'
#' @examples
#' # Load the dataset & folds
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
"NSW.52"

#' @title SP.231 Dataset
#' @description
#' \itemize{
#'  \item Target Soil Properties: SOM_target, pH_target, Cay_target
#'  \item Groups of Features: visNIR, DEM
#'  \item Sample size: 231
#'  \item Number of Features: 272
#'  \item Coordinates: With coordinates (EPSG: 32654)
#'  \item Location: Saitama Prefecture, Japan
#'  \item Sampling Design: Random
#'  \item Study Area: 3.1 ha
#'  \item Publication/Modification Date (d/m/y): 02.08.2024, version 1.0
#'  \item Contact Information: kodaira@cc.tuat.ac.jp
#'  \item Extra Note: Pre-processing (e.g. Savitzky-Golay filter) needed for proper modelling, dimensionality reduction encouraged
#' }
#' \cr
#' @details
#'
#' \strong{Target Soil Properties:}
#' \describe{
#'   \item{\code{SOM_target}}{XXX}
#'   \item{\code{clay_target}}{XXX}
#'   \item{\code{pH_target}}{XXX} \cr
#' }
#'
#' \strong{Groups of Features:}
#' \describe{
#'   \item{\code{visNIR}}{
#'   No. Features: 271 \cr
#'   Feature Code(s): XXX \cr
#'   Unit: unitless \cr
#'   Sensing: XXX\cr
#'   Processing: XXX \cr
#'   Sensing Date: XXX
#'   }
#'   \item{\code{DEM}}{
#'   No. Features: 1 \cr
#'   Feature Code(s): Altitude \cr
#'   Unit: Altitude (m) \cr
#'   Sensing: XXX \cr
#'   Processing: XXX \cr
#'   Sensing Date: XXX
#'   }
#'}
#'
#'
#' \strong{Folds:}
#' Vector with 52 entries in which numbers from 1 to 10 were randomly assigned to every entry. Each number refers to a fold out of the ten folds of equal size.
#'
#' \strong{Coordinates:}
#' Dataframe with coordinates (EPSG: 32654)
#'
#'
#' @examples
#' # Load the dataset & folds
#' SP.231
#'
#' # Access the dataset
#' SP.231$Dataset
#'
#' # Access the folds
#' SP.231$Folds
#'
#' # Access the coordinates
#' SP.231$Coordinates
#'
#' # How to split the dataset into training and testing folds for the example of the first fold
#' training_data_SP.231 <- SP.231$Dataset[SP.231$Folds != 1,]
#' testing_data_SP.231 <- SP.231$Dataset[SP.231$Folds == 1,]
#'
#' @usage SP.231
#' @format A list with three elements: 'Dataset','Coordinates' and 'Folds'.
#' @docType data
"SP.231"
