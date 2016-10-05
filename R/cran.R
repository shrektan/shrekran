
# load --------------------------------------------------------------------

if (!require("miniCRAN")) {
  install.packages("miniCRAN")
}

# param -------------------------------------------------------------------

cranRepo <- c(CRAN = "https://mirrors.tuna.tsinghua.edu.cn/CRAN/")
cranPkgs <- c("magrittr", "data.table", "lubridate", "readr", "shiny",
              "shinyjs", "R6", "rmarkdown", "DT", "bookdown", "assertthat",
              "forcats", "V8")
cranType <- c("source", "mac.binary.mavericks", "win.binary")

# Create temporary folder for miniCRAN
dir.create(pth <- file.path(".", "miniCRAN"), recursive = TRUE)

# Specify list of packages to download
pkgList <- pkgDep(cranPkgs, repos = cranRepo, type = cranType[1L], suggests = TRUE)
pkgList

# Make repo for source and win.binary
makeRepo(pkgList, path = pth, repos = cranRepo, type = cranType)

# List all files in miniCRAN
# list.files(pth, recursive = TRUE, full.names = FALSE)

# Check for available packages
# pkgAvail(repos=pth, type="win.binary")[, c(1:3, 5)]
# pkgAvail(repos=pth, type="mac.binary.mavericks")[, c(1:3, 5)]

# install.packages(pkgs, 
#                  repos = paste0("file:", pth),
#                  type = "mac.binary.mavericks")

# Add new packages (from CRAN) to the miniCRAN repo
addPackage("packrat", path = pth, repos = cranRepo, type = cranType)
# pkgAvail(repos=pth, type="mac.binary.mavericks")[, c(1:3, 5)]
