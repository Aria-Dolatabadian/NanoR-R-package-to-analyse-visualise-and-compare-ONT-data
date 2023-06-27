library(plotly)
library(scales)
library(data.table)
library(dplyr)
library(tidyr)

library(NanoR)

#install.packages("devtools") #if not installed yet
#devtools::install_github("davidebolo1993/NanoR")



#test files
summary1<-file.path("sample_summary_1.tsv")
summary2<-file.path("sample_summary_2.tsv")
muxdata<-file.path("sample_mux.csv")
alfreddata<-file.path("sample_alfred_qc.tsv")

#out file
out1<-file.path("report_1.NanoR.tsv")

#run report function
NanoR::report(summary=summary1, out=out1) #or report(summary=summary1, out=out1)

#out file
out2<-file.path("yield_1.NanoR.html")

#run yield function
NanoR::yield(summary=summary1, time=1, out=out2) #time can be adjusted to different hour fractions


#out file
out3<-file.path("lenqual_1.NanoR.html")

#run lenqual function
NanoR::lenqual(summary=summary1, time=1, out=out3) #time can be adjusted to different hour fractions

#out file
out4<-file.path("lenqualdist_1.NanoR.html")

#run lenqualdist function
NanoR::lenqualdist(summary=summary1, fraction=0.01, out=out4) #fraction can be adjusted to different values


#out file
out5<-file.path("heatmap_1.NanoR.html")

#run heatmap function
NanoR::heatmap(summary=summary1, time=1, out=out5) #time can be adjusted to different hour fractions

#use the following if plotting PromethION data
#NanoR::heatmap(summary=summary1, time=1, out=out5, platform = "promethion")


#out file
out6<-file.path("muxscan_1.NanoR.html")

#run muxscan function
NanoR::muxscan(muxdata=muxdata,out=out6)




out7<-file.path("alfredqc_1.NanoR.html")
NanoR::alfredstats(qcdata=alfreddata,out=out7)



#out file
out8<-file.path("comparison_1_2.NanoR.html")

#run compare function
NanoR::compare(summaries=c(summary1,summary2), time=10, out=out8) #time can be adjusted to different hour fractions. Using small intervals is not suggested for readability.


#https://davidebolo1993.github.io/nanordoc/usage/usage.html#use-cases
