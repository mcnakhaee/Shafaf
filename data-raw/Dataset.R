## code to prepare `Dataset` dataset goes here
library(readxl)
library(tidyverse)
library(janitor)



#### -----------------------------------------------------------------------------------------------
mayors <- read_excel('data-raw/shahrdaran.xls')
#### -----------------------------------------------------------------------------------------------
managers <- read_excel('data-raw/sayer_modiran.xls')
#### -----------------------------------------------------------------------------------------------
ceos <- read_excel('data-raw/modir_amel.xls')


#### -----------------------------------------------------------------------------------------------
journalists_traffic_pass_97 <- read_excel('data-raw/journalists_traffic_pass_97.xlsx',skip = 1)
journalists_traffic_pass_97$year <- 1397
journalists_traffic_pass_98 <- read_excel('data-raw/journalists_traffic_pass_98.xlsx',skip = 1)
journalists_traffic_pass_98$year <- 1398
journalists_traffic_pass <- bind_rows(journalists_traffic_pass_97,journalists_traffic_pass_98)


#### -----------------------------------------------------------------------------------------------
earning_contracts <- read_excel('data-raw/206341574789555.xlsx',skip = 1)
#### -----------------------------------------------------------------------------------------------
expenditure_contracts <- read_excel('data-raw/414771574789021.xlsx',skip = 1)
#### -----------------------------------------------------------------------------------------------
research_studies <- read_excel('data-raw/298161574789728.xlsx',skip = 1)
#### -----------------------------------------------------------------------------------------------
issued_garden_licenses <- read_excel('data-raw/195451574789880.xlsx')
#### -----------------------------------------------------------------------------------------------
investment_contracts <- read_excel('data-raw/124941574789660.xlsx',skip = 1)
#### -----------------------------------------------------------------------------------------------
usethis::use_data(mayors, overwrite = TRUE)
usethis::use_data(managers, overwrite = TRUE)
usethis::use_data(ceos, overwrite = TRUE)
usethis::use_data(journalists_traffic_pass, overwrite = TRUE)
usethis::use_data(issued_garden_licenses, overwrite = TRUE)
usethis::use_data(research_studies, overwrite = TRUE)
usethis::use_data(earning_contracts, overwrite = TRUE)
usethis::use_data(expenditure_contracts, overwrite = TRUE)
usethis::use_data(investment_contracts, overwrite = TRUE)
