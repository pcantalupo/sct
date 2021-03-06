% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sct.R
\name{TwoSample_scmapCluster}
\alias{TwoSample_scmapCluster}
\title{TwoSample_scmapCluster}
\usage{
TwoSample_scmapCluster(sce1, sce2)
}
\arguments{
\item{sce1}{A SingleCellExperiment object with colData populated with 1 or more columns (such as the returned object from Seurat2SingleCellExperiment function).}

\item{sce2}{Same as 'sce1'. Needs to have the same number of column names in 'colData'.}
}
\value{
A list containing two lists ('1vs2' and '2vs1'). Each list contains a set of scmapCluster() objects. Sankey plots for sce1 vs sce2 and Sankey plots for sce2 vs sce1. Each plot will open in a browser.
}
\description{
This function performs a scmap cluster analysis on two Single Cell Experiment objects. colData columns (in the SCE object) will be compared in serial order
}
\examples{
names1 = c("Detox", "DNAReplication", "Quiescent")
names2 = c("Cellcycle", "Apoptosis" "Quiescent")
sce1 = Seurat2SingleCellExperiment(seurat1, names1) # 'seurat1' is created through use of Seurat package
sce2 = Seurat2SingleCellExperiment(seurat2, names2)
TwoSample_scmapCluster(sce1, sce2)
}
\keyword{scmap}
