##
## User installation
##
# Local installation
install.packages(file.choose(), repos = NULL, type="source")
# Installation from GitHub
devtools::install_github("dppalomar/sparseEigen")
# Installation from CRAN
install.packages("sparseEigen")
# Getting help
library(sparseEigen)
help(package="sparseEigen")
package?sparseEigen
?spEigen




##
## Developer commands (http://r-pkgs.had.co.nz/)
##
library(devtools)
#devtools::create("sparseEigen")
devtools::load_all()  #or Ctrl-Shift-L
#devtools::use_package("mvtnorm")
devtools::install()
devtools::build()  # to generate the installation file
#devtools::use_readme_rmd()  # to create the README file
#devtools::use_data_raw()  # to set up the raw-data folder


# Documentation
devtools::document()  #to generate all documentation via roxygen
?spEigen

# README (.md file has to be generated manually by clicking Knitr)

# Vignettes
#devtools::use_vignette("sparse_eigenvectors")  # to create the folder the first time
#rmarkdown::render("vignettes/SparseEigenvectors-vignette.Rmd", "md_document")  # this is to generate the .md for GitHub
#rmarkdown::render("vignettes/SparseEigenvectors-vignette.Rmd", "bookdown::html_document2")
#rmarkdown::render("vignettes/SparseEigenvectors-vignette.Rmd", "bookdown::pdf_document2")
#tools::compactPDF("vignettes/SparseEigenvectors-vignette.pdf", gs_quality = "ebook")
#browseVignettes("sparseEigen")



# code style
lintr::lint_package()


# Code tests
#devtools::use_testthat()  # the first time
devtools::test()
covr::package_coverage()  #coverage of tests
#goodpractice::gp()  # overall checks


# CRAN check and submission
devtools::check()
rcmdcheck::rcmdcheck()
devtools::build()
#R CMD build . --compact-vignettes=gs+qpdf  # this is to generate tarball
#R CMD check sparseEigen_0.1.0.tar.gz --as-cran  # this is before submission to CRAN
#submit the tarball directly via the webform: https://cran.r-project.org/submit.html

# An alternative is to upload to CRAN via devtools:
#devtools::build_win()  #to check under windows
devtools::release(args = "--compact-vignettes=gs+qpdf")  #for CRAN

