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


  mu.tab <- tab %>% group_by(fishery) %>% summarise(mu.reg = mean(cpue))


  rep <- read.MFCLRep("//penguin/assessments/yft/2020_review/analysis/stepwise/17_Diag20/plot-14.par.rep")


  bio <- SB(rep, combine_areas = FALSE)

  tmp <- apply(bio, c(5), mean)


  mu.tab$bio <- as.vector(tmp)

  mu.tab$mu.reg.st <- mu.tab$mu.reg/sum(mu.tab$mu.reg)
  mu.tab$bio.st <- mu.tab$bio/sum(mu.tab$bio)



  tab1 <- data.frame(reg = 1:9, Prop = mu.tab$mu.reg.st, type = "CPUE")
  tab2 <- data.frame(reg = 1:9, Prop = mu.tab$bio.st, type = "MFCL - SBio")

  tab3 <- rbind(tab1, tab2)
  
  theme_bw()
  
  windows(4000,3000)
  pl <- ggplot(tab3, aes(x = factor(reg), y = Prop, fill = type)) + geom_bar(stat = "identity", position = "dodge") +
               xlab("Region") + ylab("Proportion of total") + theme(legend.position = "top") #+ scale_fill_brewer(palette = 1)
  print(pl)  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
