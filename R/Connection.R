#' @include Driver.R
NULL

#' @rdname DBI
#' @export
setClass(
  "KazamConnection",
  contains = "DBIConnection",
  slots = list()
)

#' @rdname DBI
#' @inheritParams DBI::show
#' @export
setMethod(
  "show", "KazamConnection",
  function(object) {
    cat("<KazamConnection>\n")
  })

#' @rdname DBI
#' @inheritParams DBI::dbDisconnect
#' @export
setMethod(
  "dbDisconnect", "KazamConnection",
  function(conn) {
    # TODO: Free resources
    TRUE
  })

#' @rdname DBI
#' @inheritParams DBI::dbSendQuery
#' @export
setMethod(
  "dbSendQuery", c("KazamConnection", "character"),
  function(conn, statement, ...) {
    new("KazamResult", connection = conn, statement = statement)
  })

#' @rdname DBI
#' @inheritParams DBI::dbDataType
#' @export
setMethod(
  "dbDataType", "KazamConnection",
  function(dbObj, obj, ...) {
    tryCatch(
      getMethod("dbDataType", "DBIObject", asNamespace("DBI"))(dbObj, obj, ...),
      error = function(e) testthat::skip("Not yet implemented"))
  })

#' @rdname DBI
#' @inheritParams DBI::dbQuoteString
#' @export
setMethod(
  "dbQuoteString", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteString", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
#' @inheritParams DBI::dbQuoteIdentifier
#' @export
setMethod(
  "dbQuoteIdentifier", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteIdentifier", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
#' @inheritParams DBI::dbWriteTable
#' @export
setMethod(
  "dbWriteTable", c("KazamConnection", "character", "data.frame"),
  function(conn, name, value, overwrite=FALSE, append=FALSE, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbReadTable
#' @export
setMethod(
  "dbReadTable", c("KazamConnection", "character"),
  function(conn, name, row.names = NA, check.names = TRUE, select.cols = "*") {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbListTables
#' @export
setMethod(
  "dbListTables", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbExistsTable
#' @export
setMethod(
  "dbExistsTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbListFields
#' @export
setMethod(
  "dbListFields", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbRemoveTable
#' @export
setMethod(
  "dbRemoveTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbGetInfo
#' @export
setMethod(
  "dbGetInfo", "KazamConnection",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbIsValid
#' @export
setMethod(
  "dbIsValid", "KazamConnection",
  function(dbObj) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbBegin
#' @export
setMethod(
  "dbBegin", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbCommit
#' @export
setMethod(
  "dbCommit", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @inheritParams DBI::dbRollback
#' @export
setMethod(
  "dbRollback", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented")
  })
