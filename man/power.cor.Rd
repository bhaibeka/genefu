% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/power.cor.R
\name{power.cor}
\alias{power.cor}
\title{Function for sample size calculation for correlation coefficients}
\usage{
power.cor(rho, w, alpha = 0.05, method = c("pearson", "kendall", "spearman"))
}
\arguments{
\item{rho}{Correaltion coefficients rho (Pearson, Kendall or Spearman)}

\item{w}{a numerical vector of weights of the same length as x giving the weights to
use for elements of x in the first class.}

\item{alpha}{alpha level}

\item{method}{a character string specifying the method to compute the correlation
coefficient, must be one of "pearson" (default), "kendall" or "spearman". You can
specify just the initial letter.}
}
\value{
sample size requirement
}
\description{
This function enables to compute the sample size requirements for estimating
pearson, kendall and spearman correlations
}
\examples{
power.cor(rho=0.5, w=0.1, alpha=0.05, method="spearman")

}
\references{
Bonett, D. G., and Wright, T. A. (2000). Sample size requirements for estimating
pearson, kendall and spearman correlations. Psychometrika, 65(1),
23-28. doi:10.1007/BF02294183
}
