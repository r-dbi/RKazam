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
#' @export
setMethod(
  "show", "KazamResult",
  function(object) {
    cat("<KazamResult>\n")
    # TODO: Print more details
  })

#' @rdname DBI
#' @export
setMethod(
  "dbClearResult", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbClearResult(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbFetch", "KazamResult",
  function(res, n = -1, ...) {
    testthat::skip("Not yet implemented: dbFetch(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbHasCompleted", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbHasCompleted(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetInfo", "KazamResult",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented: dbGetInfo(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbIsValid", "KazamResult",
  function(dbObj) {
    testthat::skip("Not yet implemented: dbIsValid(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetStatement", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetStatement", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbColumnInfo", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented: dbColumnInfo(Result)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetRowCount", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowCount", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetRowsAffected", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowsAffected", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbBind", "KazamResult",
  function(res, params, ...) {
    testthat::skip("Not yet implemented: dbBind(Result)")
  })
