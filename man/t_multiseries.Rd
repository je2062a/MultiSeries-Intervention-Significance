\name{t_multiseries}
\alias{t_multiseries}
\title{t_multiseries}
\usage{
t_multiseries(x)
}
\arguments{
\item{x}{A data frame containing multiple time-series.}
}
\description{
This function provides simple analysis of multiple time-series data sets. This function requires that the time-series data be pre-synchronized so that time of intervention is zero (t = 0) for all series. The function returns the same results as a regualr t-test, where the p-value relates how likely the post-intervention data was unaffected by the intervention.
}
\examples{
t_multiseries(df)
}
\author{
James D. Ensor
}
