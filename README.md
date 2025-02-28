
# LimeSoDa

Precision Liming Soil Datasets (LimeSoDa) is a collection of 31 datasets from a field- and farm-scale soil mapping context. These datasets are "ready-to-use" for modeling purposes, as they include target soil properties and features in a tidy tabular format. The target soil properties are soil organic matter (SOM) or soil organic carbon (SOC), pH, and clay content, while the features for modeling are dataset-specific. The primary goal of `LimeSoDa` is to enable more reliable benchmarking of machine learning methods in digital soil mapping and pedometrics.
<!-- badges: start -->
<!-- badges: end -->

## Installation

`LimeSoDa` can be installed from Github (https://github.com/JonasSchmidinger/LimeSoDa):

``` r
library(remotes)
install_github("JonasSchmidinger/LimeSoDa",build_vignettes = TRUE)
# CRAN release may follow

```

Datasets can be accessed through their unique code:

```{r}
data(package = "LimeSoDa")$results[,3] # List datasets from LimeSoDa
```

Datasets are organized as a list. This list contains the tabular dataset (`$Dataset`), pre-defined folds (`$Folds`) for a 10-fold cross-validation and, if available, the spatial coordinates of the soil samples (`$Coordinates`):

```{r}
# Access example dataset BB.250

head(BB.250$Dataset)

BB.250$Folds

head(BB.250$Coordinates)
```

For more information on the methodology behind the datasets, we refer to the dataset specific metadata.
For more information on the usage of `LimeSoDa`, we refer to the vignette.
For more general information about `LimeSoDa`, we refer to the associated paper "LimeSoDa: A Dataset Collection for Benchmarking of Machine Learning Regressors in Digital Soil Mapping " by Schmidinger et al. (2025).


## How to cite

```{r}
citation("LimeSoDa")
```
