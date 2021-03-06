% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_enh_region.R
\name{create_enh_region}
\alias{create_enh_region}
\title{Create enhancer regions from gene annotation data.}
\usage{
create_enh_region(annot_data, chrom_size = NULL, upstream = -15000,
  downstream = 15000)
}
\arguments{
\item{annot_data}{A \code{\link[GenomicRanges]{GRanges}} object containing
the enhancer annotation data.}

\item{chrom_size}{Optional \code{\link[data.table]{data.table}} containing
chromosome sizes, e.g. using the \code{\link{read_chrom_size}} function.}

\item{upstream}{Integer defining the length of bp upstream of enhancer
centre.}

\item{downstream}{Integer defining the length of bp downstream of enhancer
cetre.}
}
\value{
A \code{\link[GenomicRanges]{GRanges}} object containing the enhancer
  regions data.
}
\description{
\code{create_enh_region} creates enhancer region from gene annotation data.
}
\examples{
enh_beatson_file <- system.file("extdata", "enhancers_beatson.bed", package = "processHTS")
gene_beatson_file <- system.file("extdata", "rna_beatson2.bed", package = "processHTS")
enh_beatson_data <- read_enh_beatson(enh_beatson_file, gene_beatson_file)
enh_beatson_data <- enh_beatson_data$enhancer_data
enh_regions <- create_enh_region(enh_beatson_data)

}
\author{
C.A.Kapourani \email{C.A.Kapourani@ed.ac.uk}
}

