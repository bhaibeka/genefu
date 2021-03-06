% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sig.score.R
\name{sig.score}
\alias{sig.score}
\title{Function to compute signature scores as linear combination of
gene expressions}
\usage{
sig.score(x, data, annot, do.mapping = FALSE, mapping, size = 0,
  cutoff = NA, signed = TRUE, verbose = FALSE)
}
\arguments{
\item{x}{Matrix containing the gene(s) in the gene list in rows and at
least three columns: "probe", "EntrezGene.ID" and "coefficient" standing
for the name of the probe, the NCBI Entrez Gene id and the coefficient
giving the direction and the strength of the association of each gene
in the gene list.}

\item{data}{Matrix of gene expressions with samples in rows and probes
in columns, dimnames being properly defined.}

\item{annot}{Matrix of annotations with at least one column named
"EntrezGene.ID", dimnames being properly defined.}

\item{do.mapping}{TRUE if the mapping through Entrez Gene ids must be
performed (in case of ambiguities, the most variant probe is kept for
each gene), FALSE otherwise.}

\item{mapping}{Matrix with columns "EntrezGene.ID" and "probe" used to
force the mapping such that the probes are not selected based on their
variance.}

\item{size}{Integer specifying the number of probes to be considered in
signature computation. The probes will be sorted by absolute value of
coefficients.}

\item{cutoff}{Only the probes with coefficient greater than cutoff will
be considered in signature computation.}

\item{signed}{TRUE if only the sign of the coefficient must be considered
in signature computation, FALSE otherwise.}

\item{verbose}{TRUE to print informative messages, FALSE otherwise.}
}
\value{
A list with items:
\itemize{
\item score: Signature score.
\item mapping: Mapping used if necessary.
\item probe: If mapping is performed, this matrix contains the correspondence
between the gene list (aka signature) and gene expression data.
}
}
\description{
This function computes a signature score from a gene list (aka gene
signature), i.e. a signed average as published in Sotiriou et al. 2006
and Haibe-Kains et al. 2009.
}
\examples{
# load NKI data
data(nkis)
# load GGI signature
data(sig.ggi)
# make of ggi signature a gene list
ggi.gl <- cbind(sig.ggi[ ,c("probe", "EntrezGene.ID")],
  "coefficient"=ifelse(sig.ggi[ ,"grade"] == 1, -1, 1))
# computation of signature scores
ggi.score <- sig.score(x=ggi.gl, data=data.nkis, annot=annot.nkis,
  do.mapping=TRUE, signed=TRUE, verbose=TRUE)
str(ggi.score)

}
\references{
Sotiriou C, Wirapati P, Loi S, Harris A, Bergh J, Smeds J, Farmer P, Praz
V, Haibe-Kains B, Lallemand F, Buyse M, Piccart MJ and Delorenzi M
(2006) "Gene expression profiling in breast cancer: Understanding the
molecular basis of histologic grade to improve prognosis", Journal of
National Cancer Institute, 98:262-272
Haibe-Kains B (2009) "Identification and Assessment of Gene Signatures
in Human Breast Cancer", PhD thesis at Universite Libre de Bruxelles,
http://theses.ulb.ac.be/ETD-db/collection/available/ULBetd-02182009-083101/
}
