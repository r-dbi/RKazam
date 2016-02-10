#' @include RKazam.R
NULL

#' DBI methods
#'
#' Implementations of pure virtual functions defined in the \code{DBI} package.
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
setMethod(
  "show", "KazamDriver",
  function(object) {
    cat("<KazamDriver>\n")
    # TODO: Print more details
  })

#' @rdname DBI
setMethod(
  "dbConnect", "KazamDriver",
  function(drv, ...) {
    KazamConnection()
  }
)

#' @rdname DBI
setMethod(
  "dbDataType", "KazamDriver",
  function(dbObj, obj, ...) {
    tryCatch(
      getMethod("dbDataType", "DBIObject", asNamespace("DBI"))(dbObj, obj, ...),
      error = function(e) testthat::skip("Not yet implemented: dbDataType(Driver)"))
  })

#' @rdname DBI
setMethod(
  "dbDataType", c("KazamDriver", "list"),
  function(dbObj, obj, ...) {
    # rstats-db/DBI#70
    testthat::skip("Not yet implemented: dbDataType(Driver, list)")
  })

#' @rdname DBI
setMethod(
  "dbIsValid", "KazamDriver",
  function(dbObj) {
    testthat::skip("Not yet implemented: dbIsValid(Driver)")
  })

#' @rdname DBI
setMethod(
  "dbGetInfo", "KazamDriver",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented: dbGetInfo(Driver)")
  })
