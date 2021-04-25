

# Author Dalton Shepherd - University of South Florida - Morsani College of Medicine
# Obtained the life expectancy data from worldometers.info/demographics/life-expectancy/

# -----------------------------------------------------------------------------------------------------------------

# Devtools and roxygen2 allow us to compile and build our packages.
install.packages("devtools")
install.packages("roxygen2")


# -----------------------------------------------------------------------------------------------------------------


# Installing the required libraries and loading the libraries.
install.packages("readr")
install.packages("roxygen2")
install.packages("devtools")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("scales")
install.packages("quantmod")

# -----------------------------------------------------------------------------------------------------------------


# Load all of the required libraries to use their tools
library(readr) # Lets you read in the CSV data. RStudio also has this functionality.
library(ggplot2)
library(scales)
library(quantmod)
library(devtools)
library(roxygen2)
library(dplyr)


# -----------------------------------------------------------------------------------------------------------------


# Reading in the dataset for life expectancy of Males and Females in different countries.
lifeexpectancy <- read_csv("YOUR_Path_To_CSV_DATA/lifeexpectancy.csv")


# -----------------------------------------------------------------------------------------------------------------


# Checking if the data loaded correctly.
summary(lifeexpectancy)


# -----------------------------------------------------------------------------------------------------------------


# Plotting the Life Expectancy data for an overview of the data presented in a cluster format.
plot(lifeexpectancy)


# -----------------------------------------------------------------------------------------------------------------


# Using ggplot to visualize the data. It comes from the ggplot2 library.
ggplot( data = lifeexpectancy)


# -----------------------------------------------------------------------------------------------------------------


# View the data for life expectancy via the ggplot library.
View(lifeexpectancy)


ggplot(lifeexpectancy, aes(x="Country", y="Both")) + geom_point() + geom_jitter() + geom_smooth(method = 'lm')


# -----------------------------------------------------------------------------------------------------------------


# Creating the Life Expectancy T-test for Males only.
lifexpectancy.ttest<-function(lifeexpectancy.ttest){
  + Maleage<-lifeexpectancy$Male[6:80]
  + return(Maleage)}
> lifexpectancy.ttest()


# -----------------------------------------------------------------------------------------------------------------


# Creating the Life Expectancy T-test for only Females.
lifexpectancyfemale.ttest<-function(lifeexpectancyfemale.ttest){
  + femaleage<-lifeexpectancy$Female[6:80]
  + return(femaleage)}
> lifexpectancyfemale.ttest()


# -----------------------------------------------------------------------------------------------------------------


# Creating the Life Expectancy T-test for both Male and Females per country.
lifexpectancyboth.ttest<-function(lifeexpectancyboth.ttest){
  + Bothage<-lifeexpectancy$Both[6:80]
  + return(Bothage)}
> lifexpectancyboth.ttest()


# -----------------------------------------------------------------------------------------------------------------


#Making a scatter plot of the Country and Life Expectancy.
lifexpectancy.scatters<-function(lifexpectancy.scatters){
  + lifexpectancy<-ggplot(Country, aes(Male, Female)) + geom_point() + scale_x_continuous("Male", breaks = seq(0,80,by = 5))+ scale_y_continuous("Female", breaks = seq(0,150,by = 10))+ theme_bw()
  + return(lifexpectancy.scatters)}
> lifexpectancy.scatters()


# -----------------------------------------------------------------------------------------------------------------


#Defining the Life Expectancy of Both Male and Females VS the Country.
Life.duration<-function(Both){
  + Life<-ggplot(Country, aes(x="Country", y="Both")) + geom_point() + geom_jitter() + geom_smooth(method = 'lm')
  + return(Life)
}
