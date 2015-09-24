## Set R mirror
options(repos = c(CRAN = "http://mirror.its.dal.ca/cran/"))

## Packages to install by default
.default_packages <- c('devtools',
              'trapezoid',
              'caret',
              'e1071',
              'survival',
              'lme4',
              'nlme',
              'survey',
              'randomForest',
              'Rcpp',
              'data.table',
              'parallel',
              'XML',
              'jsonlite',
              'multicomp',
              'glmnet',
              'mgcv',
              'zoo',
              'xts',
              'biglm',
              'rpart', 'party', 'tree', 'gbm', 'gam'
              )
.default_packages_dev <- c('hadley/devtools',
                  'hadley/ggplot2',
                  'hadley/plyr',
                  'hadley/stringr',
                  'hadley/lubridate',
                  'hadley/lazyeval',
                  'hadley/dplyr',
                  'rstudio/shiny')

install.missing.packages <- function(packages = .default_packages) {
    install.packages(packages[!packages %in% rownames(installed.packages())])
}

install.missing.packages_dev <- function(packages = .default_packages_dev) {
    devtools::install_github(packages)
}


## Other options
options(tab.width = 2)
options(show.signif.stars = FALSE)



