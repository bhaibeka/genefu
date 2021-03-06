% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{ssp2003}
\alias{ssp2003}
\alias{ssp2003.robust}
\alias{ssp2003.scale}
\title{SSP2003 classifier for identification of breast cancer molecular subtypes (Sorlie et al 2003)}
\format{
List of parameters for SSP2003:
\itemize{
\item centroids: Gene expression centroids for each subtype.
\item centroids.map: Mapping for centroids.
\item method.cor: Method of correlation used to compute distance to the centroids.
\item method.centroids: Method used to compute the centroids.
\item std: Method used to compute the centroids.
\item mins: Minimum number of samples within each cluster allowed during the fitting of the model.
}
}
\source{
\url{http://www.pnas.org/content/100/14/8418}
}
\usage{
data(ssp2003)
data(ssp2003.robust)
data(ssp2003.scale)
}
\description{
List of parameters defining the SSP2003 classifier for identification of breast cancer molecular subtypes (Sorlie et al 2003).
}
\references{
T. Sorlie and R. Tibshirani and J. Parker and T. Hastie and J. S. Marron and A. Nobel and S. Deng and H. Johnsen and R. Pesich and S. Geister and J. Demeter and C. Perou and P. E. Lonning and P. O. Brown and A. L. Borresen-Dale and D. Botstein (2003) "Repeated Observation of Breast Tumor Subtypes in Independent Gene Expression Data Sets", Proceedings of the National Academy of Sciences, 1(14):8418--8423
}
\keyword{data}
