#' @include Result.R
NULL

#' @rdname DBI
#' @export
setClass(
  "KazamResult",
  contains = "DBIResult",
  slots = list(
    connection = "KazamConnection"
  )
)

#' @rdname DBI
#' @export
setMethod(
  "show", "KazamResult",
  function(object) {
    cat("<KazamResult>\n")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbClearResult", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbFetch", "KazamResult",
  function(res, n = -1, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbHasCompleted", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetInfo", "KazamResult",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetStatement", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetStatement", "DBIResult")(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbColumnInfo", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetRowCount", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowCount", "DBIResult")(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetRowsAffected", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowsAffected", "DBIResult")(res, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbBind", "KazamResult",
  function(res, params, ...) {
    testthat::skip("Not yet implemented")
  })
