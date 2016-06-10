
# Final Project

# DataAnalysisProject.R

# getwd()
# setwd("C:/Users/Joe/Google Drive/Coursera/Statistics with R/Introduction to Probability and Data/Final_Project")
# setwd("C:\\Users\\David.David-PC\\Documents\\Coursera\\Introduction_to_Probability_and_Data\\Week_05_Data_Analysis_Project")

# brfss2013.RData

# load(file, envir = parent.frame(), verbose = FALSE)

rm(list = ls())
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


# brfss2013$

# unique(brfss2013$_bmi5)
# brfss2013$_bmi5cat
# brfss2013$_rfbmi5



# height3: Reported Height In Feet And Inches
# htin4
# weight2


unique(brfss2013$height3)


brfss2013[1:12, c("weight2", "height3", "htin4")]

str(brfss2013[1:12, c("weight2", "height3", "htin4")])




as.integer(brfss2013$weight2)


str(brfss2013$weight2)

unique(brfss2013$weight2)



is.numeric(brfss2013$weight2)


# --------------------------------------------------------------
# create new column "weight2_int"
# --------------------------------------------------------------

brfss2013$weight2_int <- as.integer(as.character(brfss2013$weight2))


# --------------------------------------------------------------
# get rid of NA values in the new column "weight2_int"
# --------------------------------------------------------------

brfss2013 <- brfss2013[!is.na(brfss2013$weight2_int),]

# --------------------------------------------------------------
# values in new variable "weight2_int" should be in one of the 
# two valid ranges of values:
#
#    50 -  999
#  9000 - 9998
#
# --------------------------------------------------------------

# --------------------------------------------------------------
# Look for any invalid values outside the allowable ranges
# --------------------------------------------------------------

range(brfss2013$weight2_int)

brfss2013[brfss2013$weight2_int >= 1000 & brfss2013$weight2_int <= 8999, c("weight2_int", "weight2")]

brfss2013[brfss2013$weight2_int < 50, c("weight2_int", "weight2")]

brfss2013[brfss2013$weight2_int > 9998, c("weight2_int", "weight2")]


# --------------------------------------------------------------
# delete any observations with invalid values in variable "weight2_int"
# --------------------------------------------------------------

brfss2013 <- brfss2013[brfss2013$weight2_int >= 50,]






# pick back up here.






brfss2013[is.na(brfss2013$weight2_int), 
          c("weight2", "weight2_int", "height3", "htin4")]




