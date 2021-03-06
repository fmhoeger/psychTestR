% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/order-at-run-time.R
\name{order_at_run_time}
\alias{order_at_run_time}
\title{Order at run time}
\usage{
order_at_run_time(
  label,
  get_order,
  logic,
  save_order = function(order, state, ...) save_result(state, label, order)
)
}
\arguments{
\item{label}{(Character scalar)
A label for storing the generated order of test elements.}

\item{get_order}{Function that should accept the arguments \code{state} and \code{...}.
It will be called at run time, being passed the participant's
state object. It should return a permutation of the integers 1 to N,
where N is the length of the \code{logic} argument.}

\item{logic}{List where each top-level element corresponds to a randomisation unit.
These randomisation units may be either single test elements,
lists of test elements, or timelines.}

\item{save_order}{A function called at run time to save the result of \code{get_order}.
It should accept three arguments: \code{order}, \code{state}, and \code{...}.
\code{order} corresponds to the output of \code{get_order},
whereas \code{state} corresponds to the participant's state object.
The default setting saves the generated order in psychTestR's
default results repository, under the label \code{label}.}
}
\value{
A list of test elements, or equivalently a timeline, which can be combined
with other test elements or timelines.
These test elements will be presented in the order defined by the
\code{get_order} function, with this function being called
afresh for each new participant.
}
\description{
This helper function constructs a timeline where the order of
test elements (or blocks of test elements) is determined at run time.
}
\note{
This function can be nested arbitrarily many times.
}
\seealso{
\code{\link{randomise_at_run_time}} for the common application
of randomising the order of test elements anew for each participant.
}
