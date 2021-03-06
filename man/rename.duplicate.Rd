% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rename.duplicate.R
\name{rename.duplicate}
\alias{rename.duplicate}
\title{Function to rename duplicated strings}
\usage{
rename.duplicate(x, sep = "_", verbose = FALSE)
}
\arguments{
\item{x}{vector of strings.}

\item{sep}{a character to be the separator between the number added at
the end and the string itself.}

\item{verbose}{TRUE to print informative messages, FALSE otherwise.}
}
\value{
A list with items:
\itemize{
\item new.x:	new strings (without duplicates).
\item duplicated.x: strings which were originally duplicated.
}
}
\description{
This function renames duplicated strings by adding their number of
occurrences at the end.
}
\examples{
nn <- sample(letters[1:10], 30, replace=TRUE)
table(nn)
rename.duplicate(x=nn, verbose=TRUE)

}
