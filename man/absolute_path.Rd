% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_absolute_path.R
\name{absolute_path}
\alias{absolute_path}
\title{Absolute Path}
\usage{
absolute_path(filename, dirname)
}
\arguments{
\item{filename}{name of a file, absolute or relative to a folder}

\item{dirname}{name of a folder where the file is supposed to be}
}
\description{
This function is used to convert relative file paths to absolute file paths
without checking if the file exists as tools::file_as_absolute_path does
}
\keyword{internal}
