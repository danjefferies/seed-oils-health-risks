setwd("~/Desktop/Northeastern/JRNL 5500 - C4DS/usrtk-seed-oils-project/src/data")

library(tidyverse)
library(ggplot)


data <- read.csv("fao-oils-global.csv")

# stacked area chart



data$country <- factor(data$country , levels=c("Philippines", "China", "Thailand", "Mexico",
                                               "Morocco", "Indonesia", "Japan", "Israel",
                                               "Germany", "Brazil", "Italy", "Spain", "United States of America"))   

library(svglite)

# PANEL SVG
ggplot(data, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                  'Soybean', 'Sunflower', 'Other oils')))) + geom_col(position="stack") + labs(fill = "item") + facet_wrap(~ country) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
  panel.background = element_blank(), axis.line = element_line(colour = "black"))
ggsave(filename = "panel.svg",
       width = 10,
       height = 6,
       dpi=72)


  
china <- data %>% filter(country == "China")
ggplot(china, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                  'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "china2.svg",
       width = 12,
       height = 6,
       dpi=72)


phl <- data %>% filter(country == "Philippines")
ggplot(phl, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                 'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "phl2.svg",
       width = 12,
       height = 6,
       dpi=72)


thai <- data %>% filter(country == "Thailand")
ggplot(thai, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                 'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "thai2.svg",
       width = 12,
       height = 6,
       dpi=72)


mex <- data %>% filter(country == "Mexico")
ggplot(mex, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "mexico2.svg",
       width = 12,
       height = 6,
       dpi=72)



mor <- data %>% filter(country == "Morocco")
ggplot(mor, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "morocco2.svg",
       width = 12,
       height = 6,
       dpi=72)



indo <- data %>% filter(country == "Indonesia")
ggplot(indo, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                 'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "indonesia2.svg",
       width = 12,
       height = 6,
       dpi=72)



jpn <- data %>% filter(country == "Japan")
ggplot(jpn, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "japan2.svg",
       width = 12,
       height = 6,
       dpi=72)

israel <- data %>% filter(country == "Israel")
ggplot(israel, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                   'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "israel2.svg",
       width = 12,
       height = 6,
       dpi=72)


grm <- data %>% filter(country == "Germany")
ggplot(grm, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "germany2.svg",
       width = 12,
       height = 6,
       dpi=72)


brazil <- data %>% filter(country == "Brazil")
ggplot(brazil, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                   'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "brazil2.svg",
       width = 12,
       height = 6,
       dpi=72)


italy <- data %>% filter(country == "Italy")
ggplot(italy, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                  'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "italy2.svg",
       width = 12,
       height = 6,
       dpi=72)


spain <- data %>% filter(country == "Spain")
ggplot(spain, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                  'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "spain2.svg",
       width = 12,
       height = 6,
       dpi=72)


usa <- data %>% filter(country == "United States of America")
ggplot(usa, aes(x=year, y=value, fill = factor(item, levels = c('Coconut', 'Palm', 'Olive', 'Rapeseed/Canola', 'Peanut','Ricebran', 'Sesame',  'Cottonseed', 'Corn', 
                                                                'Soybean', 'Sunflower', 'Other oils')))) + geom_col() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) + ylim(0,800)
ggsave(filename = "usa2.svg",
       width = 12,
       height = 6,
       dpi=72)


