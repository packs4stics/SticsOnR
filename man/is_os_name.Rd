% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is_os_name.R
\name{is_os_name}
\alias{is_os_name}
\title{Testing OS name}
\usage{
is_os_name(os_tag_name = character())
}
\arguments{
\item{os_tag_name}{OS name(s) (see os_names list), optional}
}
\value{
TRUE if os_tag_name is the current system OS, FALSE otherwise; OS names list if os_tag_name not provided
}
\description{
Returning if the given OS name is the system name
}
\examples{
\dontrun{
os_list <- is_os_name()
is_os_name <- is_os_name("windows")
}

}
\keyword{internal}
