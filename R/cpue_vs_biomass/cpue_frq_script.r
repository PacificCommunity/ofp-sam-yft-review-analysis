library(tidyverse)
library(ggplot2)
library(reshape2)
library(magrittr)
library(FLR4MFCL)


frq <- read.MFCLFrq("//penguin/assessments/yft/2020_review/analysis/stepwise/17_Diag20/yft.frq")

tab <- frq@freq %>% filter(fishery %in% 33:41) %>% mutate(yrqtr = year + month/12, cpue = catch/effort)

windows()
pl <- ggplot(tab, aes(x = yrqtr, y = cpue)) + geom_line() + facet_wrap(~fishery)
print(pl)


tab %>% group_by(fishery) %>% summarise(mu.reg = mean(cpue))























