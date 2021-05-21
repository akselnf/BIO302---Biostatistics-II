library(tidyverse)
library(readxl)

mt.gonga <- "biomass2015.xls"

excel_sheets((path = mt.gonga))

####### SITE L ##########
gonga_site_L <- read_excel(path = mt.gonga, sheet = "Site L")
head(gonga_site_L)

####### SITE M ##########
gonga_site_M <- read_excel(path = mt.gonga, sheet = "Site M")
head(gonga_site_M)

####### SITE A ##########
gonga_site_A <- read_excel(path = mt.gonga, sheet = "Site A")
head(gonga_site_A)

####### SITE H ##########
gonga_site_H <- read_excel(path = mt.gonga, sheet = "Site H")
head(gonga_site_H)



