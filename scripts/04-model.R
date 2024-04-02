#### Preamble ####
# Purpose: Models on analysis data
# Authors: Zheng(Zeb) Yang
# Contact: zhengzeb.yang@mail.utoronto.ca
# Pre-requisites: -


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/analysis_data/analysis_data.csv")

### Model data ####
first_model <-
  lm(
    PTS ~ DRB,
    data = drbpt4,
  )

summary(first_model)

#### Save model ####
saveRDS(
  first_model,
  file = "models/first_model.rds"
)


