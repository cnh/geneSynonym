% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/synonym.R
\name{geneSynonym}
\alias{geneSynonym}
\title{Get synonyms of given genes}
\usage{
geneSynonym(genes, tax, cores = 1)
}
\arguments{
\item{genes}{list of genes}

\item{tax}{Species taxonomy ID}

\item{cores}{of cores to use when multiprocessing. Useful for large gene lists}
}
\description{
Given a list of genes and taxid, returns a data frame with corresponding synonyms to said genes. For mouse and humans just use humanSyno and mouseSyno
}
