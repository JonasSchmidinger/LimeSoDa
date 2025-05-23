% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{BB.30_1}
\alias{BB.30_1}
\title{BB.30_1 Dataset}
\format{
A list with three elements: 'Dataset', 'Coordinates' and 'Folds'
}
\usage{
BB.30_1
}
\description{
\itemize{
 \item Target Soil Properties: SOC, pH, Clay
 \item Groups of Features: DEM, ERa, pH-ISE, VI
 \item Sample Size: 30
 \item Number of Features: 8
 \item Coordinates: With coordinates (EPSG: 25833)
 \item Location: Brandenburg, Germany
 \item Sampling Design: Multi criteria sampling (Boenecke et al. 2021) based on quantile coverage of sensing features (ERa and pH-ISE), clustering of large and low values of sensing features and spatial coverage
 \item Study Area Size: 19 ha
 \item Geological Setting: Pleistocene young morainic landscape of the Weichselian glaciation with predominantly glacial sand
 \item Previous Data Publication: Target soil properties published but under embargo in Vogel et al. 2022
 \item Contact Information:
   \itemize{
     \item Sebastian Vogel (SVogel@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
     }
 \item License: CC BY-SA 4.0
 \item Publication/Modification Date (d/m/y): 28.02.2025, version 1.0
 \item Changelog:
   \itemize{
     \item Version 1.0 (28.02.2025): Initial release
   }
}
\cr
}
\details{
\describe{
\strong{Dataset:}
Dataframe which contains the tabular dataset with the target soil properties and features}
\describe{
Target Soil Properties:

   SOC - Soil Organic Carbon
   \itemize{
   \item Code: \code{SOC_target}
   \item Unit: \%
   \item Protocol: Measured CO\eqn{_2} release during dry combustion after removing inorganic carbon with an acid (DIN ISO 10694)
   \item Sampling Date: August and October 2017
   \item Sampling Depth: 0 - 30 cm
   }

   pH
   \itemize{
   \item Code: \code{pH_target}
   \item Unit: Unitless
   \item Protocol: Measured in CaCl\eqn{_2} suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
   \item Sampling Date: August and October 2017
   \item Sampling Depth: 0 - 30 cm
}

   Clay
   \itemize{
   \item Code: \code{Clay_target}
   \item Unit: \%
   \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water, German adaptation (DIN ISO 11277)
   \item Sampling Date: August and October 2017
   \item Sampling Depth: 0 - 30 cm
   }
}

\cr
Groups of Features:
\describe{
  DEM – Digital Elevation Model and Terrain Parameters
  \itemize{
  \item Number of Features: 2
  \item Code(s): \code{Altitude, Slope}
  \item Unit: \code{Altitude} in m, \code{Slope } in °
  \item Sensing: Digital elevation model raster (5 m) based on LiDAR and photogrammetry from “GeoBasis-DE/LGB”
  \item Processing: Calculating \code{Slope} with \code{\link[raster]{terrain}} function of the \pkg{raster} package, extracting DEM values from raster at soil sampling locations
  \item Sampling Date: LiDAR March 2011, images for photogrammetry May 2022
  }

  ERa – Apparent Electrical Resistivity
  \itemize{
  \item Number of Features: 1
  \item Code(s): \code{ERa}
  \item Unit: \eqn{\Omega} m
  \item Sensing: EC Surveyor (VERIS Technologies, Salinas, USA) from VerisMSP3 with exploration depth of 0 - 30 cm, in-situ
  \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
  \item Sampling Date: August 2017
  }

  pH-ISE – Ion Selective Electrodes for pH Determination
  \itemize{
  \item Number of Features: 1
  \item Code(s): \code{pH-ISE}
  \item Unit: Unitless
  \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) from VerisMSP3, in-situ
  \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
  \item Sampling Date: August 2017
  }
  VI - Vegetation Indices
  \itemize{
  \item Number of Features: 1
  \item Code(s): \code{NDVI}
  \item Unit: Unitless
  \item Sensing: Sentinel-2 image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
  \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04), extracting VI values from raster at soil sampling locations
  \item Sampling Date: May 2017
   }
}
\cr


\strong{Folds:}
Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr

\strong{Coordinates:}
Dataframe with coordinates (EPSG: 25833)
}
\examples{
# Load the dataset list
BB.30_1

# Access the dataset
BB.30_1$Dataset

# Access the folds
BB.30_1$Folds

# Access the coordinates
BB.30_1$Coordinates

# How to split the dataset into training and testing folds for the example of the first fold
training_data_BB.30_1 <- BB.30_1$Dataset[BB.30_1$Folds != 1,]
testing_data_BB.30_1 <- BB.30_1$Dataset[BB.30_1$Folds == 1,]

}
\references{
Vogel S., Boenecke E., Kling C., Kramer E., Lueck K., Nagel A., Philipp G., Ruehlmann J., Schroeter I. & Gebbers, R. (2022), Base neutralizing capacity from agricultural fields in the quaternary landscape of North-East Germany, BONARES Repository, https://doi.org/10.20387/bonares-zh3x-nd80 \cr
\cr
Boenecke, E., Meyer, S., Vogel, S., Schroeter, I., Gebbers, R., Kling, C., Kramer, E., Lueck, K., Nagel A., Philipp, G., Gerlach F., Palme S., Scheibe D., Ziegler K. & Ruehlmann, J. (2021). Guidelines for precise lime management based on high-resolution soil pH, texture and SOM maps generated from proximal soil sensing data. Precision Agriculture, 22, 493-523.
}
\keyword{datasets}
