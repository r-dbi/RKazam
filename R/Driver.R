#' @include RKazam.R
NULL

#' DBI methods
#'
#' This package implements pure virtual functions defined in the
#' \code{DBI} package.
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

#' @rdname DBI
#' @export
setMethod(
  "show", "KazamDriver",
  function(object) {
    cat("<KazamDriver>\n")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbConnect", "KazamDriver",
  function(drv, ...) {
    new("KazamConnection")
  }
)

#' @rdname DBI
#' @export
setMethod(
  "dbIsValid", "KazamDriver",
  function(dbObj) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetInfo", "KazamDriver",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })
