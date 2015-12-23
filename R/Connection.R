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
#' @export
setMethod(
  "show", "KazamConnection",
  function(object) {
    cat("<KazamConnection>\n")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbDisconnect", "KazamConnection",
  function(conn) {
    # TODO: Free resources
    TRUE
  })

#' @rdname DBI
#' @export
setMethod(
  "dbSendQuery", "KazamConnection",
  function(conn, statement, ...) {
    new("KazamResult", statement)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbDataType", "KazamConnection",
  function(dbObj, obj, ...) {
    # Optional
    getMethod("dbDataType", c("DBIobject"))(dbObj, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbQuoteString", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteString", c("DBIConnection", "character"))(conn, x, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbQuoteIdentifier", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteIdentifier", c("DBIConnection", "character"))(conn, x, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbWriteTable", c("KazamConnection", "character", "data.frame"),
  function(conn, name, value, overwrite=FALSE, append=FALSE, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbReadTable", c("KazamConnection", "character"),
  function(conn, name, row.names = NA, check.names = TRUE, select.cols = "*") {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbListTables", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbExistsTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbListFields", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbRemoveTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetInfo", "KazamConnection",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbIsValid", "KazamConnection",
  function(dbObj) {
    testthat::skip("Not yet implemented")
  })
