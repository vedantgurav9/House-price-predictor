#you are given a dataset with various features of houses including their size, number of bedrooms bathrooms and age
#Using this data you need to build a multiple linear regression model in R to predict selling price of house
house_data<-data.frame(
  size_sqft = c(1500,1800,2000,2200,2500,3000,3500,4000,4500,4200),
  Bedrooms = c(3,3,4,4,5,5,5,6,6,6),
  Bathrooms = c(2,2,3,3,4,4,3,5,4,5),
  Age_years = c(10,5,8,12,6,3,15,7,4,2),
  Price = c(300000,350000,400000,420000,500000,600000,500000,700000,740000,1650000)
)
house_data
View(house_data)

house_model<-lm(Price~ size_sqft + Bedrooms + Bathrooms + Age_years, data = house_data)

summary(house_model)

new_house<-data.frame(size_sqft = 32000, Bedrooms= 15, Bathrooms =14, Age_years=30)
predicted_price<-predict(house_model,new_house)
predicted_price
cat("Predicted price: ",predicted_price,"\n")
