
library(readr)
library(dplyr)
library(stringr)
library(lubridate)

url <- "https://raw.githubusercontent.com/jamisoncrawford/wealth/master/Tidy%20Data/hancock_lakeview_tidy.csv"

lvhc <- read_csv(url)

hancock <- lvhc %>%
  filter(project == "Hancock") %>%
  mutate(race = str_replace(race, "Native", "Indigenous")) %>%
  rename(ethnicity = race,
         gender = sex) %>%
  select(-project, -ot, -ssn, -pdf_no, -pdf_pg, -pg_ob)

setwd("~/Projects/DS4PS/DS4PS Repo/dp4ss-textbook/ch-102-ggplot2_files")

write_csv(hancock, "hancock.csv")
