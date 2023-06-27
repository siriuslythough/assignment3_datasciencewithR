#Solution1
library(ggplot2)
ggplot(iris, aes(x=1:150, y=Sepal.Length, color=Species))+geom_point()+ggtitle("Sepal Length")
ggplot(iris, aes(x=1:150, y=Petal.Length, color=Species))+geom_point()+ggtitle("Petal Length")
print("HENCE, THE SEPAL LENGTH IS DIRECTLY RELATED TO THE PETAL LENGTH")
#Solution3
titanic<-read.csv("C:/Users/Hp/OneDrive/Documents/R/titanic.csv")
for(i in 1:712){
  if(titanic$Survived[i]==1)titanic$Survived[i]="Survived"
  else titanic$Survived[i]='Died'
}
head(titanic)
final_Plot <- ggplot(titanic, aes(x = Fare, y = Survived, color = Sex)) + geom_boxplot(outlier.color = levels(titanic$Sex)) + labs(title = "Fare vs Survival", subtitle = "Irrespective of Sex, richer people survived", y = "", x = "Fair")
final_Plot
