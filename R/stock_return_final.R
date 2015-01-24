stock_returns_final <- function(){
  stock_years <- c(1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007)
  y <- tbl_df(y) ##### Y is my big overall dataset with all years and secref and yearly
  one_month_of_returns <- vector()
  unique(y$symbol) -> stocks
  for(i in 1:10) {
    s_y <- stock_years[i]
    green_eggs_and_ham <- i
    for(i in 1:12) {
      m_of_analysis <- i
      stock_return_monthly_improved(s_y, m_of_analysis) -> one_month_of_returns
      assign(paste("month", m_of_analysis, sep = ""), one_month_of_returns)
      }
    cbind(month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11, month12) -> yearly_temp_df
    assign(paste("y_t_df", green_eggs_and_ham, sep = ""), yearly_temp_df)
    }
  final_return_df <- cbind(stocks, y_t_df1, y_t_df2, y_t_df3, y_t_df4, y_t_df5, y_t_df6, y_t_df7, y_t_df8, y_t_df9, y_t_df10)
  return(final_return_df)
}
