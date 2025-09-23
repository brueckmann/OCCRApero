getwd()
# load packages
remotes::install_github("vincentarelbundock/tinytable")
library(tinytable)
packs <- c( 'tidyverse', 'modelsummary')
success <- suppressWarnings(sapply(packs, require, character.only = TRUE))
install.packages(names(success)[!success])
sapply(names(success)[!success], require, character.only = TRUE)

# LOAD YOUR DATA

# load("data_labelled.Rdata")


# set reasonable defaults for picture inclusion, uses https://arelbundock.com/posts/quarto_figures/index.html 
knitr::opts_chunk$set(
  out.width = "70%", # enough room to breath
  fig.width = 6,     # reasonable size
  fig.asp = 0.618,   # golden ratio
  fig.align = "center" # mostly what I want
)
