% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merge_values.R
\name{merge_values}
\alias{merge_values}
\title{Merge labels and rgb values}
\usage{
merge_values(labelsValues, rgbValues)
}
\arguments{
\item{labelsValues}{A \code{tibble} or \code{dataframe} which contains the labels directly import from the xlsx file.}

\item{rgbValues}{A \code{tibble} or \code{dataframe} with the rgb metrics values.}
}
\value{
A \code{tibble}
}
\description{
A function to merge the labels from the xlsx file and the rgb metrics
values.
}
