  #install.packages("ggplot2")
library(ggplot2)
data(mpg)
help(mpg)
f <- ggplot(data =mpg, aes(x=class, y=hwy))
print(f)

f + geom_boxplot() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))  
print(f)

f2 <- f + geom_boxplot(aes(fill=fl)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))
f2 + xlab('Class Of Car')+ylab('Highway miles per gallon')
print(f2)

f3 <- f + geom_vio() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))
print(f3)


#install.packages("gridExtra")
library(gridExtra)
grid.arrange(f2,f3)

f4 <- ggplot(data = mpg, aes(x=displ, y=cty))+geom_point(aes(col=class, size=cyl))+facet_wrap(facets = 'class')
f4


