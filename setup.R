# Title     : setup.R
# Objective : Setup the R virtual environment

#firstPackages = c('devtools', 'renv')
firstPackages = 'renv'

install.packages(firstPackages, repos='https://cran.rstudio.com/')

renv::init()
renv::activate()

required_pkgs = c(
  'bit64'
  , 'data.table'
  , 'devtools'
  , 'foreach'
  , 'formattable'
  , 'ggplot2'
  , 'knitr'
  , 'magrittr'
  , 'rmarkdown'
)

install.packages(required_pkgs)

#devtools::install('../jabUtils')
