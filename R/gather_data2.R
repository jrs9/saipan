gather_data2 <- function() {
  library(ws.data)
  library(lubridate)
  library(dplyr)
  library(ggplot2)
  library(tidyr)
  data(daily.1998)
  data(daily.1999)
  data(daily.2000)
  data(daily.2001)
  data(daily.2002)
  data(daily.2003)
  data(daily.2004)
  data(daily.2005)
  data(daily.2006)
  data(daily.2007)
  data(yearly)
  data(secref)

  x_1998 <- merge(daily.1998, secref)

  z_1998 <- filter(yearly, year == 1998)

  x_1998 <- merge(x_1998,z_1998)

  x_1998 <- tbl_df(x_1998)
  #########

  x_1999 <- merge(daily.1999, secref)

  z_1999 <- filter(yearly, year == 1999)

  x_1999 <- merge(x_1999,z_1999)

  x_1999 <- tbl_df(x_1999)
  ##########
  x_2000 <- merge(daily.2000, secref)

  z_2000 <- filter(yearly, year == 2000)

  x_2000 <- merge(x_2000,z_2000)

  x_2000 <- tbl_df(x_2000)
  #############
  x_2001 <- merge(daily.2001, secref)

  z_2001 <- filter(yearly, year == 2001)

  x_2001 <- merge(x_2001,z_2001)

  x_2001 <- tbl_df(x_2001)
  #######
  x_2002 <- merge(daily.2002, secref)

  z_2002 <- filter(yearly, year == 2002)

  x_2002 <- merge(x_2002,z_2002)

  x_2002 <- tbl_df(x_2002)
  #######
  x_2003 <- merge(daily.2003, secref)

  z_2003 <- filter(yearly, year == 2003)

  x_2003 <- merge(x_2003,z_2003)

  x_2003 <- tbl_df(x_2003)
  #####
  x_2004 <- merge(daily.2004, secref)

  z_2004 <- filter(yearly, year == 2004)

  x_2004 <- merge(x_2004,z_2004)

  x_2004 <- tbl_df(x_2004)
  ########
  x_2005 <- merge(daily.2005, secref)

  z_2005 <- filter(yearly, year == 2005)

  x_2005 <- merge(x_2005,z_2005)

  x_2005 <- tbl_df(x_2005)
  ##############
  x_2006 <- merge(daily.2006, secref)

  z_2006 <- filter(yearly, year == 2006)

  x_2006 <- merge(x_2006,z_2006)

  x_2006 <- tbl_df(x_2006)
  ##########
  x_2007 <- merge(daily.2007, secref)

  z_2007 <- filter(yearly, year == 2007)

  x_2007 <- merge(x_2007,z_2007)

  x_2007 <- tbl_df(x_2007)
  #######
  df_all <- rbind_all(list(x_1998, x_1999, x_2000, x_2001, x_2002, x_2003, x_2004, x_2005, x_2006, x_2007))

  return(df_all)
}
