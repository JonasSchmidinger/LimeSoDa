
# Lime.SoDa

This R-packages contains field- and farm-scale datasets for digital soil mapping purposes. It overall includes seven datasets. Target soil properties are SOC/SOM, pH and clay, features are dataset-specific and described extensively in the dataset specific metadata.

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install the pre-print version of `Lime.SoDa` from [Github]

``` r
install.packages("Lime.SoDa")
# Add Github before CRAN

```

Datasets can be accessed through their unique code. Upon access, a list is returned, which containts, the tabular dataset, pre-defined validation folds for 10-fold cross validation and for most datasets coordinates.

```{r}
data(package = "Lime.SoDa")$results[,3] # List datasets from Lime.SoDa

# Access example dataset BB.250

head(BB.250$Dataset)

BB.250$Folds

head(BB.250$Coordinates)
```

For more general information about `Lime.SoDa`, we refer to the associated paper Schmidinger et al. (2024).
For more information on the datasets, we refer to the dataset specific metadata.
For more information on the usage of `Lime.SoDa`, we refer to the vignette.



