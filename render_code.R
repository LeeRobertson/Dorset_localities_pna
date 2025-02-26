###############################################################################.
##                   PNA LOCALITY PROFILES RENDER CODE                       ##
###############################################################################.

# Code for running profiles for a selection of localities

# R 4.2.2
# Original date: 19/02/2025

# Packages
library(lubridate) #for working with dates
library(here) #project directory working
library(quarto) #run quarto reports

# read/write permissions for files
Sys.umask("006")

# Provide list of Localities to run
loc_list <- c("North", 
              "West",
              "Mid",
              "Weymouth & Portland", 
              "Purbeck", 
              "East", 
              "Canford and Creekmoor Group & Christchurch Area Group & ...", 
              "Boscombe Group & Poole East and Bournemouth Group",
              "Kinson and Wallisdown Group & Mid Bournemouth Group")


# Run reports

for (i in loc_list) {
  
  quarto_render(input = "quarto_profile.qmd",
                execute_params = list(locality = i), 
                output_file = paste0(i, " PNA Locality profile.docx"))
  
}
