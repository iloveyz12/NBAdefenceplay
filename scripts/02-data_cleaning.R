#### Preamble ####
# Purpose: Cleans the raw data 
# Authors: Zheng(Zeb) Yang
# Contact: zhengzeb.yang@mail.utoronto.ca
# Pre-requisites: -

#### Workspace setup ####
library(tidyverse)
library(readxl)

#### Clean data ####
raw2023 <- read_excel("data/raw_data/2023general.xlsx")
raw2022 <- read_excel("data/raw_data/2022general.xlsx")
raw2021 <- read_excel("data/raw_data/2021general.xlsx")
raw2020 <- read_excel("data/raw_data/2020general.xlsx")

drbpt2023 <- raw2023 |>
  select(DRB, PTS)

drbpt2022 <- raw2022 |>
  select(DRB, PTS)

drbpt2021 <- raw2021 |>
  select(DRB, PTS)

drbpt2020 <- raw2020 |>
  select(DRB, PTS)

cleaned_four_seasons <- rbind(drbpt2023, drbpt2022) |> rbind(drbpt2021) |>rbind(drbpt2020) |>
  select(DRB, PTS)

#### Save data ####
write_csv(cleaned_four_seasons, "data/analysis_data/analysis_data.csv")
