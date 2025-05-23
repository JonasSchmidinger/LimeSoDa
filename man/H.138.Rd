% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{H.138}
\alias{H.138}
\title{H.138 Dataset}
\format{
A list with three elements: 'Dataset', 'Coordinates' and 'Folds'
}
\usage{
H.138
}
\description{
\itemize{
 \item Target Soil Properties: SOC, pH, Clay
 \item Groups of Features: MIR
 \item Sample Size: 138
 \item Number of Features: 2,489
 \item Coordinates: With coordinates (EPSG: 32649)
 \item Location: Hubei, China
 \item Sampling Design: Two sampling designs: (1) adapted latin hypercube sampling taking into account legacy samples, correlation and accessibility and (2) uncertainty guided sampling based on uncertainty predictions from a random forest model (Stumpf et al. 2017)
 \item Study Area Size: 420 ha
 \item Geological Setting: Sedimentary rocks, mainly dolomite with silt and limestone formed in the middle and lower Jurassic
 \item Previous Data Publication: Full dataset published in Wadoux et al. (2024)
 \item Contact Information:
   \itemize{
     \item Alexandre M.J.-C. Wadoux (Alexandre.Wadoux@inrae.fr), French National Institute for Agriculture, Food, and Environment (INRAE)
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
   \item Protocol: Determined by the difference of total carbon and inorganic carbon, where total carbon was obtained through elemental analysis by measuring the CO\eqn{_2} release during dry combustion (DIN ISO 10694) without acid pretreatment and inorganic carbon as 0.12 x the calcium carbonate content, determined by the gas-volumetric Scheibler Method (ISO 10693)
   \item Sampling Date: June 2013, May, 2014 and November 2014
   \item Sampling Depth: 0 - 20 cm
   }


   pH
   \itemize{
   \item Code: \code{pH_target}
   \item Unit: Unitless
   \item Protocol: Measured in water suspension with a glass electrode with unspecified liquid:soil ratio
   \item Sampling Date: June 2013, May, 2014 and November 2014
   \item Sampling Depth: 0 - 20 cm
}


   Clay
   \itemize{
   \item Code: \code{Clay_target}
   \item Unit: \%
   \item Protocol: Measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by x-ray sedimentation
   \item Sampling Date: June 2013, May, 2014 and November 2014
   \item Sampling Depth: 0 - 20 cm
   }
}
\cr
Groups of Features:
\describe{
  MIR – Mid Infrared Spectroscopy
  \itemize{
  \item Number of Features: 2,489
  \item Code(s): \code{wn_5397.9, wn_5396, wn_5394} ... \code{wn_599.8}
  \item Unit: \% (Reflectance)
  \item Sensing: VERTEX 70v FT-IR Spectrometer (Bruker Optik, Ettlingen, Germany), on dried and sieved samples (<2 mm) in the laboratory, spectral range was 7,500 - 370 cm\eqn{^{-1}} at 0.4 cm\eqn{^{-1}} intervals
  \item Processing: Discarding irrelevant spectral data of the spectrum (7,500 - 5,397.9 cm\eqn{^{-1}}) and noisy edges of the spectrum (599.8 - 370 cm\eqn{^{-1}})
  \item Sampling Date: June 2013, May, 2014 and November 2014
  \item Spectral Information (After Data Processing):
   \itemize{
     \item Data Representation: Wavenumber (in cm\eqn{^{-1}})
     \item Spectral Resolution: ~2 cm\eqn{^{-1}}
     \item Spectral Range: 5,397.9 – 599.8 cm\eqn{^{-1}}
   }
  }

}
\cr


\strong{Folds:}
Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr

\strong{Coordinates:}
Dataframe with coordinates (EPSG: 32649)
}
\examples{
# Load the dataset list
H.138

# Access the dataset
H.138$Dataset

# Access the folds
H.138$Folds

# Access the coordinates
H.138$Coordinates

# How to split the dataset into training and testing folds for the example of the first fold
training_data_H.138 <- H.138$Dataset[H.138$Folds != 1,]
testing_data_H.138 <- H.138$Dataset[H.138$Folds == 1,]

}
\references{
Wadoux, A. M. J.-C., Stumpf, F., & Scholten, T.. (2024). A catchment-scale dataset of soil properties and their mid-infrared spectra. Zenodo repository. https://doi.org/10.5281/zenodo.14557348 \cr
\cr
Stumpf, F., Schmidt, K., Goebes, P., Behrens, T., Schoenbrodt-Stitt, S., Wadoux, A., Xiang, W. & Scholten, T. (2017). Uncertainty-guided sampling to improve digital soil maps. Catena, 153, 30-38.
}
\keyword{datasets}
