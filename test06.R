year = 100
fun <- function(year) {
  if (year %% 400 == 0){
    return(T)
  } else if (year%%4 == 0 && year%%100!=0){
    return(T)
  } else {
    return(F)
  }
}
