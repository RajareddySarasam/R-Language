#install the 'tidyverse' package 

#install.packages("tidyverse") 

library(tidyverse) 
data()# it will give list of datasets
View(mpg)
?mpg

#Now using the ggplot()

# filtering out hwy<30 and taking hwy as independent variable,
# displ as dependent variable,colouring based on their no.of cylinders

mpg %>% filter(hwy < 30) %>% 
  ggplot(aes(y=hwy,x=displ,colour=cyl))+
  geom_point(size=4,alpha=0.5) +
  geom_smooth() +
  ggtitle("Highway miles vs Engine displacement")+ 
  labs(x="highway miles per gallon",
       y="engine displacement, in litres")
  
  
