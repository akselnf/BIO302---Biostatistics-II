
#####
library(readxl)
library(tidyverse)
library(ggplot2)

#import data
biomass2015 <- read_excel("biomass2015.xls")
head(biomass2015)


# exclude irrelevant columns
biomass_clean <- biomass2015 %>%
  
  #selecting only relevant columns
  select(plot, production) %>%
  
  #excluding NA values
  filter(!is.na(production)) %>%
  
  #grouping by plot
  group_by(plot) %>%
  
  #getting sum by plot
  summarise(biomass_sum = sum(production))

view(biomass_clean)

biomass_clean$plot <- as.factor(biomass_clean$plot)


biomass_barplot <- (ggplot(biomass_clean,
                          aes(reorder(plot, biomass_sum), biomass_sum, colour = plot)) 
                    + geom_bar(stat = "identity")
                    + labs(title = "MT. GONGA", x = "Plot", y = "Sum biomass (g)"))

biomass_barplot
