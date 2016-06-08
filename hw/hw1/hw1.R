library(nycflights13)
data(flights)
attach(flights)
# 1. How many rows are in this data frame? __num_rows__
num_rows = nrow(flights)
num_rows #336776
# 2. How many variables are in this data frame? __num_vars__
num_vars = ncol(flights)
num_vars #19
# 3. What was the longest departure delay? __longest_dep_delay__
longest_dep_delay = max(dep_delay,na.rm=TRUE) 
longest_dep_delay #1301
# 4. How long were the top 10 longest flights measured from departure to arrival? __longest_flights__
longest_flights = head(sort(air_time,decreasing = TRUE),n = 10)
longest_flights
# 5. What is the average departure delay time for United Airlines (carrier UA)? __ua_delay__
ua_delay = mean(dep_delay[which(carrier == "UA")], na.rm=TRUE)  
ua_delay  #12.1
# 6. Order the months from highest average departure delay time to lowest.  __month_delay__
month_delay = order(aggregate(dep_delay, by = list(month), mean, na.rm = TRUE)$x,decreasing = T)
month_delay
# 7. How many unique planes does American Airlines (AA) have? __num_planes_aa__
num_planes_aa = length(unique(flights$tailnum[which(carrier == "AA")])) 
num_planes_aa  #601
# 8. How many flights originating from JFK flew more than 1000 miles? __jfk_1000mi__
jfk_1000mi = length(distance[which(origin == "JFK")][distance[which(origin == "JFK")]>1000]) 
jfk_1000mi  #62071
# 9. How many airlines fly from LGA to DFW? __num_lga_dfw__
temp = subset(flights, origin == "LGA" & dest == "DFW")
num_lga_dfw = length(unique(temp$carrier)) 
num_lga_dfw  #3
# 10. Which airline had the most flights coming out of JFK? __most_flights_jfk__
temp = ddply(subset(flights,origin == "JFK"),c('carrier'), nrow)
most_flights_jfk = temp$carrier[which.max(temp$V1)]
most_flights_jfk

