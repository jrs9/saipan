industry_returns_final <- function(){
  stock_years <- c(1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007)
  y <- tbl_df(y) ##### Y is my big overall dataset with all years and secref and yearly
  industry_return <- vector()
  #stock_years[i] -> s_y
  #filter(y, year == stock_years[i]) -> y_1998
  unique(y$m.ind) -> industries
  for(i in 1:10) {
    s_y <- stock_years[i]
    green_eggs_and_ham <- i
  for(i in 1:12) {
    m_of_analysis <- i
    for(i in 1:69) {
      avg_return_monthly(s_y, m_of_analysis, industries[i]) -> industry_return[i]
      }
    assign(paste("industry_return_", m_of_analysis, sep = ""), industry_return)
    }
  temp_return_df <- cbind(industry_return_1,industry_return_2,industry_return_3,industry_return_4,industry_return_5, industry_return_6, industry_return_7, industry_return_8, industry_return_9, industry_return_10, industry_return_11, industry_return_12)
  assign(paste("r_df_", green_eggs_and_ham, sep = ""), temp_return_df)
  }
  final_return_df <- cbind(industries, r_df_1, r_df_2, r_df_3, r_df_4, r_df_5, r_df_6, r_df_7, r_df_8, r_df_9, r_df_10)
  return(final_return_df)
}
