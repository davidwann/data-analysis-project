
# Final Project

# DataAnalysisProject.R

# getwd()
# setwd("C:/Users/Joe/Google Drive/Coursera/Statistics with R/Introduction to Probability and Data/Final_Project")
# setwd("C:\\Users\\David.David-PC\\Documents\\Coursera\\Introduction_to_Probability_and_Data\\Week_05_Data_Analysis_Project")


# brfss2013.RData

# load(file, envir = parent.frame(), verbose = FALSE)

load("brfss2013.RData")

library("dplyr")

# help("library")
# help("vector")

# rm(the.crew)


# the.crew <- data.frame(fname = c("Joe", "Bryan", "Helen"), 
#                        age = c(34, 32, 33))


# the.crew <- mutate(the.crew, marital.status = vector(mode = "character"))



brfss2013$ssbsugar


unique(brfss2013$ssbsugar)










