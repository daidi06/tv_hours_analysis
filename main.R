library(tidyverse)
library(here)
head(gss_cat)
dim(gss_cat)

tv_hours_tab <-  gss_cat %>% 
  filter(age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE)) %>% 
  arrange(mean_tv_hours) 

write_csv(tv_hours_tab, path = here("TV_hours_by_Marital.csv"))
