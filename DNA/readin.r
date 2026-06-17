           

library(shapes)
afa<-read.in("AFA_P.x",22,3)
afc<-read.in("AFC_P.x",22,3)
afg<-read.in("AFG_P.x",22,3)
aga<-read.in("AGA_P.x",22,3)
agc<-read.in("AGC_P.x",22,3)
agg<-read.in("AGG_P.x",22,3)
tfa<-read.in("TFA_P.x",22,3)
tfc<-read.in("TFC_P.x",22,3)
tft<-read.in("TFT_P.x",22,3)
tga<-read.in("TGA_P.x",22,3)
tgc<-read.in("TGC_P.x",22,3)
tgt<-read.in("TGT_P.x",22,3)

#every 50th observation
thin.afa<-afa[,,(1:50)*50]
ans<-procGPA(thin.afa,scale=FALSE)
shapes3d(ans$rotated)


#shape distances `rho' from the mean shape
plot(ans$rho)

#size
plot(ans$size)
ts.plot(ans$size)
acf(ans$size)
pacf(ans$size)



