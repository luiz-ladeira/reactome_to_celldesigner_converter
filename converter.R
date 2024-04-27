### Simple Reactome to CellDesigner converter using the minervar package.
### Luiz Ladeira - University of Liège
### lcladeira@uliege.be

### Install all the missing R packages
required.packages <- c("devtools", "dplyr", "enrichR", "httr", "igraph", "jsonlite", "xml2")
new.packages <- required.packages[!(required.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, repos='http://cran.us.r-project.org')


### Load the 'minervar' package
devtools::install_git(url = "https://gitlab.lcsb.uni.lu/minerva/minervar")

# Load required library
library(minervar)

# Define folder path
folder_path <- "data"

# Get list of SBML files in the "data" folder
sbml_files <- list.files(path = folder_path, pattern = "\\.sbml$", full.names = TRUE)

# Loop through each SBML file and convert to CellDesigner_SBML format
for (sbml_file in sbml_files) {
  # Define output file path
  cd_file <- file.path(folder_path, paste0(sub(".sbml$", "", basename(sbml_file)), ".xml"))
  
  # Convert SBML to CellDesigner SBML format
  tm_cd <- minervar::convert_format(sbml_file, "SBML", "CellDesigner_SBML")
  
  # Write the converted content to the output file
  cat(tm_cd, file = cd_file)
}
