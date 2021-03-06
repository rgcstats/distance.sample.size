% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DS.penalty.R
\name{DS.penalty}
\alias{DS.penalty}
\title{Variance penalty due to unknown detection parameters.}
\usage{
DS.penalty(detection.function = c("halfnormal", "hazard"), theta,
  mean.detection.prob.value, w, P = 0, stop = F)
}
\arguments{
\item{detection.function}{The detection function. Only "halfnormal" and "hazard" (hazard rate) are supported at present.}

\item{theta}{The detection function parameters. A single value for halfnormal, or a vector of two values for hazard rate.}

\item{mean.detection.prob.value}{An optional value specifying the mean detection probability over the range of observation. If this is supplied,
the first element of theta should be set to NA, and theta[1] will be calculated using mean.detection.prob.value and detection.function.}

\item{w}{The maximum range of observation. Objects at distance greater than w from the observer are assumed to never be recorded.}

\item{P}{The proportion of the region of interest that is within w of an observer's path. P=0 may be assumed if the region is large relative to the observed area.}

\item{stop}{Set to T to open a browser window (for debugging purposes)}
}
\value{
A single numeric value giving the asymptotic factor by which the variance is inflated due to unknown detection parameters.
}
\description{
Calculates the variance penalty factor due to unknown detection parameters in conventional distance sampling.
}
\examples{
DS.penalty(detection.function="hazard",theta=c(NA,2),mean.detection.prob.value=0.6,w=1)
}
\references{
Buckland S, Anderson D, Burnham K, Laake J and Borchers D (2001). Introduction to Distance Sampling: Estimating Abundance of Biological Populations. Oxford: Oxford University Press.

Clark, R. G. (2016), "Statistical efficiency in distance sampling," PLoS One, forthcoming, www.plosone.org
}

