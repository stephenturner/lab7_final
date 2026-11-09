# Packages for lab7_final. Run once before starting the lab.

# CRAN packages
cran_packages <- c(
  "tidyverse",
  "rmarkdown",
  "knitr"
)
install.packages(cran_packages)


# Report what loads.
all_packages <- cran_packages
for (p in all_packages) {
  ok <- requireNamespace(p, quietly = TRUE)
  message(sprintf("%-20s %s", p, if (ok) "OK" else "FAILED"))
}
