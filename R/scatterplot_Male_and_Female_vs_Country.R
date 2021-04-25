#Making a scatter plot of the Country and Life Expectancy.
> lifexpectancy.scatters<-function(lifexpectancy.scatters){
  + lifexpectancy<-ggplot(Country, aes(Male, Female)) + geom_point() + scale_x_continuous("Male", breaks = seq(0,80,by = 5))+ scale_y_continuous("Female", breaks = seq(0,150,by = 10))+ theme_bw()
  + return(lifexpectancy.scatters)}
> lifexpectancy.scatters()
