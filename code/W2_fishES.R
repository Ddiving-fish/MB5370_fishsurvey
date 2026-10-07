#W2_fishES
#library
library(tidyverse)
library(readxl)

#Housekeeping
rm(list = ls())

#Load files, four dataset
catch1 <- read_excel(here::here("data/estuary_catch_log.xlsx"), sheet = "Lower_ross")
catch2 <- read_excel("data/estuary_catch_log.xlsx", sheet = 2)
catch3 <- read_excel("data/estuary_catch_log.xlsx", sheet = 3)
catch4 <- read_excel("data/estuary_catch_log.xlsx", sheet = 4)
#bind rows
catch_data <- bind_rows(catch1, catch2, catch3, catch4)
#clean
rm(catch1, catch2, catch3, catch4)
#check
catch_data
head(catch_data)
glimpse(catch_data)
str(catch_data)
#check what we have(four sites, four species)
catch_data |> 
  distinct(site)
catch_data |> 
  distinct(species)

#Load metadata
metadata <- read_csv("data/estuary_metadata.csv")
#