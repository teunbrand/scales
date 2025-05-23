% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/label-number-auto.R
\name{label_number_auto}
\alias{label_number_auto}
\title{Label numbers, avoiding scientific notation where possible}
\usage{
label_number_auto()
}
\value{
All \code{label_()} functions return a "labelling" function, i.e. a function that
takes a vector \code{x} and returns a character vector of \code{length(x)} giving a
label for each input value.

Labelling functions are designed to be used with the \code{labels} argument of
ggplot2 scales. The examples demonstrate their use with x scales, but
they work similarly for all scales, including those that generate legends
rather than axes.
}
\description{
Switches between \code{\link[=number_format]{number_format()}} and \code{\link[=scientific_format]{scientific_format()}} based on a set of
heuristics designed to automatically generate useful labels across a wide
range of inputs
}
\examples{
# Very small and very large numbers get scientific notation
demo_continuous(c(0, 1e-6), labels = label_number_auto())
demo_continuous(c(0, 1e9), labels = label_number_auto())

# Other ranges get the numbers printed in full
demo_continuous(c(0, 1e-3), labels = label_number_auto())
demo_continuous(c(0, 1), labels = label_number_auto())
demo_continuous(c(0, 1e3), labels = label_number_auto())
demo_continuous(c(0, 1e6), labels = label_number_auto())

# Transformation is applied individually so you get as little
# scientific notation as possible
demo_log10(c(1, 1e7), labels = label_number_auto())
}
\seealso{
Other labels for continuous scales: 
\code{\link{label_bytes}()},
\code{\link{label_currency}()},
\code{\link{label_glue}()},
\code{\link{label_number_si}()},
\code{\link{label_ordinal}()},
\code{\link{label_parse}()},
\code{\link{label_percent}()},
\code{\link{label_pvalue}()},
\code{\link{label_scientific}()}
}
\concept{labels for continuous scales}
