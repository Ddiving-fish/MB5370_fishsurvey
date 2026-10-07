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
