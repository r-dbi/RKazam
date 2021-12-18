#' @include RKazam.R
NULL

#' DBI methods
#'
#' Implementations of pure virtual functions defined in the `DBI` package.
#' @name DBI
NULL

#' Kazam driver
#'
#' TBD.
#'
#' @export
#' @import methods DBI
#' @examples
#' \dontrun{
#' #' library(DBI)
#' RKazam::Kazam()
#' }
Kazam <- function() {
  new("KazamDriver")
}

#' @rdname DBI
#' @export
setClass("KazamDriver", contains = "DBIDriver")

#' @export
DBI::dbCanConnect

#' @export
DBI::Id
