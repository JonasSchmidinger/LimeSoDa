
# Lime.SoDa

This R-packages contains field- and farm-scale datasets for Digial Soil Mapping purposes. It overall includes 31 datasets. In each dataset, SOC/SOM, pH and clay are the target soil properties but features are dataset-specific.

<!-- badges: start -->
<!-- badges: end -->

## Installation

`Lime.SoDa` can be installed from Github (https://github.com/JonasSchmidinger/Lime.SoDa):

``` r
library(remotes)
install_github("JonasSchmidinger/Lime.SoDa")
# CRAN release will follow

```

Datasets can be accessed through their unique code. See included datasets:

```{r}
data(package = "Lime.SoDa")$results[,3] # List datasets from Lime.SoDa
```

After calling a dataset (e.g. BB-250), a list object is returned. It contains the tabular dataset, pre-defined validation folds for 10-fold cross validation and for most datasets coordinates:

```{r}
# Access example dataset BB.250

head(BB.250$Dataset)

BB.250$Folds

head(BB.250$Coordinates)
```

For more information on the methodology behind the datasets, we refer to the dataset specific metadata.
For more information on the usage of `Lime.SoDa`, we refer to the vignette.
For more general information about `Lime.SoDa`, we refer to the associated paper Schmidinger et al. (2025).


## How to cite

```{r}
citation("Lime.SoDa")
```
