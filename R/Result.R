#' @include Result.R
NULL

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
#' @inheritParams DBI::show
#' @export
setMethod(
  "show", "KazamResult",
  function(object) {
    cat("<KazamResult>\n")
  })

#' @rdname DBI
#' @inheritParams DBI::dbClearResult
#' @export
setMethod(
  "dbClearResult", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbFetch
#' @export
setMethod(
  "dbFetch", "KazamResult",
  function(res, n = -1, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbHasCompleted
#' @export
setMethod(
  "dbHasCompleted", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetInfo
#' @export
setMethod(
  "dbGetInfo", "KazamResult",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbIsValid
#' @export
setMethod(
  "dbIsValid", "KazamResult",
  function(dbObj) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetStatement
#' @export
setMethod(
  "dbGetStatement", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetStatement", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @inheritParams DBI::dbColumnInfo
#' @export
setMethod(
  "dbColumnInfo", "KazamResult",
  function(res, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetRowCount
#' @export
setMethod(
  "dbGetRowCount", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowCount", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetRowsAffected
#' @export
setMethod(
  "dbGetRowsAffected", "KazamResult",
  function(res, ...) {
    # Optional
    getMethod("dbGetRowsAffected", "DBIResult", asNamespace("DBI"))(res, ...)
  })

#' @rdname DBI
#' @inheritParams DBI::dbBind
#' @export
setMethod(
  "dbBind", "KazamResult",
  function(res, params, ...) {
    testthat::skip("Not yet implemented")
  })
