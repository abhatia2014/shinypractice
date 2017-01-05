#add some changes
library(plotly)
data("midwest")
head(midwest)
plot_ly(midwest,x=~percollege,color = ~state,type="scatter")
# i can make any number of changes and push to github now
