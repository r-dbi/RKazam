#' @include Connection.R
NULL

KazamResult <- function(connection, statement) {
  # TODO: Initialize result
  new("KazamResult", connection = connection, statement = statement)
}

#' @rdname DBI
#' @export
setClass(
  "KazamResult",
  contains = "DBIResult",
  slots = list(
    connection = "KazamConnection",
    statement = "character"
  )
)

#' @rdname DBI
setMethod(
  "show", "KazamResult",
  function(object) {
    cat("<KazamResult>\n")
    # TODO: Print more details
  })

#' @rdname DBI
setMethod(
  "dbClearResult", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbClearResult(Result)")
  })

#' @rdname DBI
setMethod(
  "dbFetch", "KazamResult",
  function(res, n = -1, ...) {
    testthat::skip("Not yet implemented: dbFetch(Result)")
  })

#' @rdname DBI
setMethod(
  "dbHasCompleted", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbHasCompleted(Result)")
  })

#' @rdname DBI
setMethod(
  "dbGetInfo", "KazamResult",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented: dbGetInfo(Result)")
  })

#' @rdname DBI
setMethod(
  "dbIsValid", "KazamResult",
  function(dbObj) {
    testthat::skip("Not yet implemented: dbIsValid(Result)")
  })

#' @rdname DBI
setMethod(
  "dbGetStatement", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetStatement", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
setMethod(
  "dbColumnInfo", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbColumnInfo(Result)")
  })

#' @rdname DBI
setMethod(
  "dbGetRowCount", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowCount", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
setMethod(
  "dbGetRowsAffected", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowsAffected", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
setMethod(
  "dbBind", "KazamResult",
  function(res, params, ...) {
    testthat::skip("Not yet implemented: dbBind(Result)")
  })
