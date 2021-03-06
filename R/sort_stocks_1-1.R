sort_stock_1_1 <- function(){
  colnames(ardvark) -> c_n
top_means <- vector()
bot_means <- vector()
#i = 2
for(i in 2:120) {
  call <- substitute(arrange(ardvark, desc(temp)), list(temp = as.name(c_n[i])))
  df_arranged <- eval(call)
  df_arranged_top <- df_arranged[1:400,]

  call <- substitute(sum(is.na(df_arranged$temp)), list(temp = as.name(c_n[i])))
  numberofna <- eval(call)
  #sum(is.na(df_arranged$January.1998)) -> numberofna
  numberofna <- as.numeric(numberofna)
  t_frame <- 2700 - numberofna
  b_frame <- 3083 - numberofna
  df_arranged_bot <- df_arranged[t_frame:b_frame,]
  num <- i-1
#### Above working (not including for loop)

  call <- substitute(select(df_arranged_top, temp), list(temp = as.name(c_n[i+1])))
  top_mean_df <- eval(call)
  call <- substitute(as.numeric(levels(top_mean_df$temp)[top_mean_df$temp]), list(temp = as.name(c_n[i+1])))
  top_mean_list <- eval(call)
  mean(top_mean_list, na.rm = TRUE) -> top_mean
  top_means[num] <- top_mean

  call <- substitute(select(df_arranged_bot, temp), list(temp = as.name(c_n[i+1])))
  bot_mean_df <- eval(call)
  call <- substitute(as.numeric(levels(bot_mean_df$temp)[bot_mean_df$temp]), list(temp = as.name(c_n[i+1])))
  bot_mean_list <- eval(call)
  mean(bot_mean_list, na.rm = TRUE) -> bot_mean
  bot_means[num] <- bot_mean
}

means_df <- cbind(top_means, bot_means)
means_df <- data.frame(means_df)
means_df <- tbl_df(means_df)
mutate(means_df, difference = (top_means-bot_means)) -> means_df

return(mean(means_df$difference, na.rm = TRUE))
}
