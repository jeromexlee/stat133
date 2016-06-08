# 1. How many rows are in this data frame? __num_rows__
num_rows = length(flights)
# 2. How many variables are in this data frame? __num_vars__
num_vars = length(flights$flight)
# 3. What was the longest departure delay? __longest_dep_delay__
longest_dep_delay = flights$tailnum[which.max(flights$dep_delay)]
# 4. How long were the top 10 longest flights measured from departure to arrival? __longest_flights__
longest_flights = head(sort(flights$dep_delay+flights$arr_delay,decreasing = TRUE),n = 10)
# 5. What is the average departure delay time for United Airlines (carrier UA)? __ua_delay__
ua_delay = mean(flights$dep_delay[which(flights$carrier == "UA")][!is.na(flights$dep_delay[which(flights$carrier == "UA")])])  #12.1
# 6. Order the months from highest average departure delay time to lowest.  __month_delay__
#month_delay = sort(,decreasing = TRUE)
# 7. How many unique planes does American Airlines (AA) have? __num_planes_aa__
num_planes_aa = length(unique(flights$tailnum[which(flights$carrier == "AA")])) #601
# 8. How many flights originating from JFK flew more than 1000 miles? __jfk_1000mi__
jfk_1000mi = length(flights$distance[which(flights$origin == "JFK")][flights$distance[which(flights$origin == "JFK")]>1000]) #62071
# 9. How many airlines fly from LGA to DFW? __num_lga_dfw__
num_lga_dfw = length(flights$flight[which(flights$origin=="LGA")][which(flights$dest == "DFW")])
# 10. Which airline had the most flights coming out of JFK? __most_flights_jfk__