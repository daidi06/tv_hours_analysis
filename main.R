library(tidyverse)
head(gss_cat)
dim(gss_cat)

tv_hours_table <-  gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE)) %>% 
  arrange(mean_tv_hours)

write_csv(tv_hours_table, path = here("TV_hours_by_Marital.csv"))