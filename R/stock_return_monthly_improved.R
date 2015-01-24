stock_return_monthly_improved <- function(y_ear, m_onth) {
  filter(y, year == y_ear, month(v.date) == m_onth) -> temp
  unique(y$symbol) -> temp_v
  re <- vector()
  for(i in 1:3083) {
  filter(temp, symbol == temp_v[i]) %>%
      arrange(v.date) -> y1
    length(y1$v.date) -> l_s
    if(l_s ==0) {
      re[i] <- NA
      }
    else {y1[1, 5] -> price_start
    y1[l_s, 5] -> price_end
    re[i] <- (price_end-price_start)/price_start
    }
  }
  re <- as.numeric(re)
  return(re)
}
