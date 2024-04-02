#### Preamble ####
# Purpose: Tests on real analysis data
# Authors: Zheng(Zeb) Yang
# Contact: zhengzeb.yang@mail.utoronto.ca
# Pre-requisites: -



#### Workspace setup ####
library(tidyverse)
library(testthat)

#### Run the analysis data ####
drbpt4 <- read.csv("data/analysis_data/analysis_data.csv")



#### Test the data ####
test_that("Check class", {
  expect_type(drbpt4$DRB, "double")
  expect_type(drbpt4$PTS, "double")
  
})


test_that("Check complete", {
  expect_true(all(complete.cases(drbpt4)))
})


test_that("Check variable",{
  expect_true(drbpt4$DRB |> min() >= 0)
  expect_true(drbpt4$DRB |> max() <= 100)
  expect_true(drbpt4$PTS |> min() >= 0)
  expect_true(drbpt4$PTS |> max() <= 200)
})


