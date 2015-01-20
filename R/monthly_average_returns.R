avg_return_monthly <- function(y_ear, m_onth, in_dustry){
  y <- tbl_df(y)
  filter(y, year == y_ear, m.ind == in_dustry, month(v.date) == m_onth) -> temp  #filter(y, month(v.date) == 1)
  unique(temp$symbol) -> temp_v
  t_l <- length(temp_v)
  re <- vector()
  for(i in 1:t_l) {
    filter(temp, symbol == temp_v[i]) %>%
      arrange(v.date) -> y1
    length(y1$v.date) -> l_s
    if(l_s == 0) {
      re[i] <- NA
    }
    else {
      y1[1, 5] -> price_start
      y1[l_s, 5] -> price_end
      re[i] <- (price_end-price_start)/price_start
    }
  }
  returns <- unlist(re)
  mean(returns)
}
