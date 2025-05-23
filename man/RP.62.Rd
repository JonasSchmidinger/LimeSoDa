% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{RP.62}
\alias{RP.62}
\title{RP.62 Dataset}
\format{
A list with three elements: 'Dataset', 'Coordinates' and 'Folds'
}
\usage{
RP.62
}
\description{
\itemize{
 \item Target Soil Properties: SOC, pH, Clay
 \item Groups of Features: ERa, Gamma, NIR, pH-ISE, VI
 \item Sample Size: 62
 \item Number of Features: 1,410
 \item Coordinates: Without coordinates because of privacy concerns
 \item Location: Rhineland-Palatinate, Germany
 \item Sampling Design: Regular grid sampling
 \item Study Area Size: 3.3 ha
 \item Geological Setting: Pleistocene periglacial slope deposits consisting of Weichselian loess with variable amounts of weathered Devonian sand-, silt-, and claystones and scattered Tertiary basalt bombs
 \item Previous Data Publication: None
 \item Contact Information:
   \itemize{
     \item Stefan Paetzold (s.paetzold@uni-bonn.de), University of Bonn
     \item Hamed Tavakoli (HTavakoli@atb-potsdam.de), Leibniz Institute for Agricultural Engineering and Bioeconomy (ATB)
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
   \item Protocol: Measured through titration after oxidization of the organic carbon (Walkley & Black 1934)
   \item Sampling Date: October 2017
   \item Sampling Depth: 0 - 30 cm
   }

   pH
   \itemize{
   \item Code: \code{pH_target}
   \item Unit: Unitless
   \item Protocol: Measured in a water suspension with a glass electrode with a 5:1 liquid:soil volumetric ratio (DIN ISO 10390)
   \item Sampling Date: May 2020
   \item Sampling Depth: 0 - 30 cm
}

   Clay
   \itemize{
   \item Code: \code{Clay_target}
   \item Unit: \%
   \item Protocol: Sieve-Pipette method, measured through fractioning the soil into the sand fractions by sieving, and the silt and clay fractions by sedimentation in water, German adaptation (DIN ISO 11277)
   \item Sampling Date: October 2017
   \item Sampling Depth: 0 - 30 cm
   }
}
\cr
Groups of Features:
\describe{
  ERa – Apparent Electrical Resistivity
  \itemize{
  \item Number of Features: 1
  \item Code(s): \code{ERa}
  \item Unit: \eqn{\Omega} m
  \item Sensing: Array of multiple rolling electrodes (Geophilus company, Caputh, Germany) on RapidMapper platform with exploration depth of 0 - 50 cm, in-situ
  \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
  \item Sampling Date: September 2020
  }

  Gamma
  \itemize{
  \item Number of Features: 5
  \item Code(s): \code{G_Total_Counts, G_K, G_U, G_Th, G_Cs}
  \item Unit: Unitless
  \item Sensing: Passive gamma sensor (MS-2000-CsI-MTS, Medusa Radiometrics BV, Groningen, Netherlands) on RapidMapper platform, in-situ
  \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
  \item Sampling Date: September 2020
  }

  NIR – Near Infrared Spectroscopy
  \itemize{
  \item Number of Features: 1,401
  \item Code(s): \code{wl_1000, wl_1001, wl_1002} ... \code{wl_2400}
  \item Unit: \% (Reflectance)
  \item Sensing: NIR spectrometer (C11118GA, Hamamatsu Photonics K.K., Shizuoka Prefecture, Japan) on RapidMapper platform, in-situ, spectral range was 900 - 2550 nm at 15 nm intervals
  \item Processing: Kriging to align sensing- with soil sampling locations, discarding noisy edges of the spectrum (900 - 1,000 nm & 2,400 - 2,550 nm), resampling to 1 nm intervals
  \item Sampling Date: September 2020
  \item Spectral Information (After Data Processing):
   \itemize{
     \item Data Representation: Wavelength (in nm)
     \item Spectral Resolution: 1 nm
     \item Spectral Range: 1,000 - 2,400 nm
   }
  }
  pH-ISE – Ion Selective Electrodes for pH Determination
  \itemize{
  \item Number of Features: 1
  \item Code(s): \code{pH-ISE}
  \item Unit: Unitless
  \item Sensing: Soil pH Manager (VERIS Technologies, Salinas, USA) on RapidMapper platform, in-situ
  \item Processing: Ordinary Kriging to align sensing- with soil sampling locations
  \item Sampling Date: September 2020
  }
  VI - Vegetation Indices
  \itemize{
  \item Number of Features: 2
  \item Code(s): \code{NDVI, GNDVI}
  \item Unit: Unitless
  \item Sensing: Sentinel-2 image during vegetative period (Level-2A) from “Copernicus Open Access Hub”
  \item Processing: Calculating \code{NDVI} as (B08 - B04) / (B08 + B04) and \code{GNDVI} as (B08 - B03) / (B08 + B03), extracting VI values from raster at soil sampling locations
  \item Sampling Date: March 2017
   }
}
\cr


\strong{Folds:}
 Vector which contains numerical entries from 1 to 10, each number can be used to index the folds for cross validation \cr

\strong{Coordinates:}
Empty entry (NA)
}
\examples{
# Load the dataset list
RP.62

# Access the dataset
RP.62$Dataset

# Access the folds
RP.62$Folds

# Access the coordinates but empty for RP.62 (i.e. NA)
RP.62$Coordinates

# How to split the dataset into training and testing folds for the example of the first fold
training_data_RP.62 <- RP.62$Dataset[RP.62$Folds != 1,]
testing_data_RP.62 <- RP.62$Dataset[RP.62$Folds == 1,]

}
\references{
Walkley, A. & Black, I. A. (1934). An examination of the Degtjareff method for determining soil organic matter, and a proposed modification of the chromic acid titration method. Soil science, 37(1), 29-38.
}
\keyword{datasets}
