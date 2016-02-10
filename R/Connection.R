#' @include Driver.R
NULL

KazamConnection <- function() {
  # TODO: Add arguments
  new("KazamConnection")
}

#' @rdname DBI
#' @export
setClass(
  "KazamConnection",
  contains = "DBIConnection",
  slots = list()
)

#' @rdname DBI
setMethod(
  "show", "KazamConnection",
  function(object) {
    cat("<KazamConnection>\n")
    # TODO: Print more details
  })

#' @rdname DBI
setMethod(
  "dbIsValid", "KazamConnection",
  function(dbObj) {
    testthat::skip("Not yet implemented: dbIsValid(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbDisconnect", "KazamConnection",
  function(conn) {
    if (!dbIsValid(conn)) {
      warning("Connection already closed.", call. = FALSE)
    }

    # TODO: Free resources
    TRUE
  })

#' @rdname DBI
setMethod(
  "dbSendQuery", c("KazamConnection", "character"),
  function(conn, statement, ...) {
    KazamResult(connection = conn, statement = statement)
  })

#' @rdname DBI
setMethod(
  "dbDataType", "KazamConnection",
  function(dbObj, obj, ...) {
    tryCatch(
      getMethod("dbDataType", "DBIObject", asNamespace("DBI"))(dbObj, obj, ...),
      error = function(e) testthat::skip("Not yet implemented: dbDataType(Connection)"))
  })

#' @rdname DBI
setMethod(
  "dbQuoteString", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteString", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
setMethod(
  "dbQuoteIdentifier", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteIdentifier", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
setMethod(
  "dbWriteTable", c("KazamConnection", "character", "data.frame"),
  function(conn, name, value, overwrite=FALSE, append=FALSE, ...) {
    testthat::skip("Not yet implemented: dbWriteTable(Connection, character, data.frame)")
  })

#' @rdname DBI
setMethod(
  "dbReadTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbReadTable(Connection, character)")
  })

#' @rdname DBI
setMethod(
  "dbListTables", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbListTables(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbExistsTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbExistsTable(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbListFields", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbListFields(Connection, character)")
  })

#' @rdname DBI
setMethod(
  "dbRemoveTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbRemoveTable(Connection, character)")
  })

#' @rdname DBI
setMethod(
  "dbGetInfo", "KazamConnection",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented: dbGetInfo(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbBegin", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbBegin(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbCommit", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbCommit(Connection)")
  })

#' @rdname DBI
setMethod(
  "dbRollback", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbRollback(Connection)")
  })
