% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{ssp2006}
\alias{ssp2006}
\alias{ssp2006.robust}
\alias{ssp2006.scale}
\title{SSP2006 classifier for identification of breast cancer molecular subtypes (Hu et al 2006)}
\format{
List of parameters for SSP2006:
\itemize{
\item centroids: Gene expression centroids for each subtype.
\item centroids.map: Mapping for centroids.
\item method.cor: Method of correlation used to compute distance to the centroids.
\item method.centroids: Method used to compute the centroids.
\item std: Method of standardization for gene expressions.
\item mins: Minimum number of samples within each cluster allowed during the fitting of the model.
}
}
\source{
\url{http://www.biomedcentral.com/1471-2164/7/96}
}
\usage{
data(ssp2006)
data(ssp2006.robust)
data(ssp2006.scale)
}
\description{
List of parameters defining the SSP2006 classifier for identification of breast cancer molecular subtypes (Hu et al 2006).
}
\details{
Three versions of the model are provided, each of ones differs by the gene expressions standardization method since it has an important impact on the subtype classification:
\itemize{
\item ssp2006: Use of the official centroids without scaling of the gene expressions.
\item ssp2006.scale: Use of the official centroids with traditional scaling of the gene expressions (see \code{\link[base:scale]{base::scale()}})
\item ssp2006.robust: Use of the official centroids with robust scaling of the gene expressions (see \code{\link[=rescale]{rescale()}})
The model \code{ssp2006.robust} has been shown to reach the best concordance with the traditional clinical parameters (ER IHC, HER2 IHC/FISH and histological grade). However the use of this model is recommended only when the dataset is representative of a global population of breast cancer patients (no sampling bias, the 5 subtypes should be present).
}
}
\references{
Hu, Zhiyuan and Fan, Cheng and Oh, Daniel and Marron, JS and He, Xiaping and Qaqish, Bahjat and Livasy, Chad and Carey, Lisa and Reynolds, Evangeline and Dressler, Lynn and Nobel, Andrew and Parker, Joel and Ewend, Matthew and Sawyer, Lynda and Wu, Junyuan and Liu, Yudong and Nanda, Rita and Tretiakova, Maria and Orrico, Alejandra and Dreher, Donna and Palazzo, Juan and Perreard, Laurent and Nelson, Edward and Mone, Mary and Hansen, Heidi and Mullins, Michael and Quackenbush, John and Ellis, Matthew and Olopade, Olufunmilayo and Bernard, Philip and Perou, Charles (2006) "The molecular portraits of breast tumors are conserved across microarray platforms", \emph{BMC Genomics}, \emph{7}(96)
}
\keyword{data}
