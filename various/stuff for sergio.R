library(devtools)
devtools::install_github("rgcstats/distance.sample.size")
library(distance.sample.size)

dispersion.sergio <- 63 * (0.1972^2)
dispersion.sergio

dispersion.sergio.finitepop <- 0.1972^2 / (1/63 - 1/203)

F.sergio <- DS.penalty(detection.function="halfnormal",theta=89.18,mean.detection.prob.value=0.55,w=200,P=0.57)

dispersion <- dispersion.sergio.finitepop / F.sergio

distance.sample.size(cv.pct=19.72,N=203,overdispersion=dispersion,detection.function="halfnormal", theta = 89.18, 
                     mean.detection.prob.value = 0.55, w = 200)