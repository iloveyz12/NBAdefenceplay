#### Preamble ####
# Purpose: Simulates data on 
# Authors: Zheng(Zeb) Yang
# Contact: zhengzeb.yang@mail.utoronto.ca
# Pre-requisites: -


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(812)

num_obs <- 120

simDRB <- tibble(
  DRB =round(runif(num_obs, min = 30, max = 35), 1),
  PTS = round(rnorm(num_obs, 110, 5),1)
) 

write.csv(simDRB, "data/simulated_data/simulated_data.csv")
