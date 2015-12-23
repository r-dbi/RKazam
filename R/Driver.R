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
#' @inheritParams DBI::show
#' @export
setMethod(
  "show", "KazamDriver",
  function(object) {
    cat("<KazamDriver>\n")
  })

#' @rdname DBI
#' @inheritParams DBI::dbConnect
#' @export
setMethod(
  "dbConnect", "KazamDriver",
  function(drv, ...) {
    new("KazamConnection")
  }
)

#' @rdname DBI
#' @inheritParams DBI::dbDataType
#' @export
setMethod(
  "dbDataType", "KazamDriver",
  function(dbObj, obj, ...) {
    tryCatch(
      getMethod("dbDataType", "DBIObject", asNamespace("DBI"))(dbObj, obj, ...),
      error = function(e) testthat::skip("Not yet implemented"))
  })

#' @rdname DBI
#' @inheritParams DBI::dbIsValid
#' @export
setMethod(
  "dbIsValid", "KazamDriver",
  function(dbObj) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetInfo
#' @export
setMethod(
  "dbGetInfo", "KazamDriver",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })
