# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#devtools::document()
# library(devtools)
# library(usethis)
# library(roxygen2)
# library(Lime.SoDa)
#
# O.32_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/O.32_data_table.rds")
# O.32_data_table.rds
# folds_O.32_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/O.32_folds.rds")
# O.32_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/O.32_coordinates.rds")
# O.32_coordinates.rds
# O.32_coordinates.rds <- NA
# # #
# O.32 <- list("Dataset" = O.32_data_table.rds, "Folds" = folds_O.32_data_table.rds, "Coordinates" = O.32_coordinates.rds)
# usethis::use_data(O.32,overwrite = TRUE)
# usethis::use_r("data")
#
#
#
#

# library(ggplot2)
# library(tidyverse)
# mir_data <- O.32$Dataset
# #select all columns where column name contains "wl_"
# tt <- mir_data[, grepl("wn_", colnames(mir_data))]
# tt
# colnames(tt) <- as.numeric(sub("wn_", "", colnames(tt)))
#
# long_data <- tt %>%
#   mutate(Spectrum = row_number()) %>%
#   pivot_longer(-Spectrum, names_to = "Wavelength", values_to = "Reflectance")
#
#
# long_data
#
# # Plot the spectrum for the selected row
# ggplot(long_data, aes(x = as.numeric(Wavelength), y = Reflectance, group = Spectrum)) +
#   geom_line(alpha=0.1) +
#   labs(x = "Wavelength (nm)", y = "Reflectance", title = "Spectra Plot") +
#   theme_minimal() +
#   theme(legend.title = element_blank())+
#   scale_x_reverse()







#
#
# #
# # ?BB.30_1
# # BB.30_1$Dataset
# # ncol(BB.30_1$Dataset)-3
# #
# # BB.30_1$Coordinates
# # BB.30_1$Folds
# # summary(BB.30_1$Dataset[1:3])
#
#
# SP.231
# library(ggplot2)
# library(tidyverse)
# nir_data <- MG.44$Dataset
# #select all columns where column name contains "wl_"
# tt <- nir_data[, grepl("wl_", colnames(nir_data))]
#
# colnames(tt) <- as.numeric(sub("wl_", "", colnames(tt)))
# tt
#
#
# # Select one row to plot, for example the first row
# row_to_plot <-tt[150, ]
# row_to_plot
# #row_to_plot<- 1/(10^row_to_plot)
#




#Convert the row to a long format for ggplot2
# library(ggplot2)
# library(tidyverse)
# nir_data <- MG.44$Dataset
# #select all columns where column name contains "wl_"
# tt <- nir_data[, grepl("wl_", colnames(nir_data))]
#
# colnames(tt) <- as.numeric(sub("wl_", "", colnames(tt)))
# tt
#
# long_data <- tt %>%
#   mutate(Spectrum = row_number()) %>%
#   pivot_longer(-Spectrum, names_to = "Wavelength", values_to = "Reflectance")
#
#
# long_data
#
# # Plot the spectrum for the selected row
# ggplot(long_data, aes(x = as.numeric(Wavelength), y = Reflectance, group = Spectrum)) +
#   geom_line(alpha=0.1) +
#   labs(x = "Wavelength (nm)", y = "Reflectance", title = "Spectra Plot") +
#   theme_minimal() +
#   theme(legend.title = element_blank())







# # # #
# #
# BB_72_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/BB_72_data_table.rds")
# folds_BB_72_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_BB_72_data_table.rds")
# BB_72_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/BB_72_coordinates.rds")

# SC.50 <- list("Dataset" = BB_72_data_table.rds, "Folds" = folds_BB_72_data_table.rds, "Coordinates" = BB_72_coordinates.rds)
# usethis::use_data(SC.50,overwrite = TRUE)
# usethis::use_r("data")
# # #
# #
# #
# RP_62_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/RP_62_data_table.rds")
# folds_RP_62_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_RP_62_data_table.rds")
# RP_62_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/RP_62_coordinates.rds")#
#
# SC.50 <- list("Dataset" = RP_62_data_table.rds, "Folds" = folds_RP_62_data_table.rds, "Coordinates"= RP_62_coordinates.rds)
# usethis::use_data(SC.50,overwrite = TRUE)
# usethis::use_r("data")
# #
# #
# BB_30_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/BB_30_data_table.rds")
# folds_BB_30_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_BB_30_data_table.rds")
# BB_30_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/BB_30_coordinates.rds")
#
# BB.30 <- list("Dataset" = BB_30_data_table.rds, "Folds" = folds_BB_30_data_table.rds, "Coordinates" = BB_30_coordinates.rds)
# usethis::use_data(BB.30,overwrite = TRUE)
# usethis::use_r("data")
#
#
#
# SSP_58_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/SSP_58_data_table.rds")
# folds_SSP_58_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_SSP_58_data_table.rds")
# SSP_58_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/SSP_58_coordinates.rds")
#
# SC.50 <- list("Dataset" = SSP_58_data_table.rds, "Folds" = folds_SSP_58_data_table.rds, "Coordinates" = SSP_58_coordinates.rds)
# usethis::use_data(SC.50,overwrite = TRUE)
# usethis::use_r("data")
#
#
#
# MG_44_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/MG_44_data_table.rds")
# folds_MG_44_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_MG_44_data_table.rds")
# MG_44_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/MG_44_coordinates.rds")
#
# NRW.42 <- list("Dataset" = MG_44_data_table.rds, "Folds" = folds_MG_44_data_table.rds, "Coordinates" = MG_44_coordinates.rds)
# usethis::use_data(NRW.42,overwrite = TRUE)
# usethis::use_r("data")


# NSW_52_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/NSW_52_data_table.rds")
# folds_NSW_52_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_NSW_52_data_table.rds")
# NSW_52_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/NSW_52_coordinates.rds")
#
# SC.50 <- list("Dataset" = NSW_52_data_table.rds, "Folds" = folds_NSW_52_data_table.rds, "Coordinates" = NSW_52_coordinates.rds)
# usethis::use_data(SC.50,overwrite = TRUE)
# usethis::use_r("data")
#
#
# NRW_42_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/NRW_42_data_table.rds")
# folds_NRW_42_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_NRW_42_data_table.rds")
# #NRW_42_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/NRW_42_coordinates.rds")
#
# NRW.42 <- list("Dataset" = NRW_42_data_table.rds, "Folds" = folds_NRW_42_data_table.rds, "Coordinates" = NA)
# usethis::use_data(NRW.42,overwrite = TRUE)
# usethis::use_r("data")

#
#
# NRW_62_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/NRW_62_data_table.rds")
# folds_NRW_62_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_NRW_62_data_table.rds")
# #NRW_62_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/NRW_62_coordinates.rds")
#
# SC.50 <- list("Dataset" = NRW_62_data_table.rds, "Folds" = folds_NRW_62_data_table.rds, "Coordinates" = NA)
# usethis::use_data(SC.50,overwrite = TRUE)
# usethis::use_r("data")
#
#
#
# SA_112_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/SA_112_data_table.rds")
# folds_SA_112_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_SA_112_data_table.rds")
# #NRW_115_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/NRW_115_coordinates.rds")
# #
# SA.112 <- list("Dataset" = SA_112_data_table.rds, "Folds" = folds_SA_112_data_table.rds, "Coordinates" = NA)
# usethis::use_data(SA.112,overwrite = TRUE)
# usethis::use_r("data")

# SM_40_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_files/SM_40_data_table.rds")
# folds_SM_40_data_table.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_split_files/folds_SM_40_data_table.rds")
# #NRW_115_coordinates.rds <- readRDS("C:/Users/Jonas/Desktop/Benchmark_datasets/R/Benchmarks/R_script/Stored_dataset_coordinate_files/NRW_115_coordinates.rds")
# #
# SM.40 <- list("Dataset" = SM_40_data_table.rds, "Folds" = folds_SM_40_data_table.rds, "Coordinates" = NA)
# usethis::use_data(SM.40,overwrite = TRUE)
# usethis::use_r("data")

#  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
