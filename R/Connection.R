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
    # TODO: Print more details
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
  "dbSendQuery", c("KazamConnection", "character"),
  function(conn, statement, ...) {
    new("KazamResult", connection = conn, statement = statement)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbDataType", "KazamConnection",
  function(dbObj, obj, ...) {
    tryCatch(
      getMethod("dbDataType", "DBIObject", asNamespace("DBI"))(dbObj, obj, ...),
      error = function(e) testthat::skip("Not yet implemented: dbDataType(Connection)"))
  })

#' @rdname DBI
#' @export
setMethod(
  "dbQuoteString", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteString", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbQuoteIdentifier", c("KazamConnection", "character"),
  function(conn, x, ...) {
    # Optional
    getMethod("dbQuoteIdentifier", c("DBIConnection", "character"), asNamespace("DBI"))(conn, x, ...)
  })

#' @rdname DBI
#' @export
setMethod(
  "dbWriteTable", c("KazamConnection", "character", "data.frame"),
  function(conn, name, value, overwrite=FALSE, append=FALSE, ...) {
    testthat::skip("Not yet implemented: dbWriteTable(Connection, character, data.frame)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbReadTable", c("KazamConnection", "character"),
  function(conn, name, row.names = NA, check.names = TRUE, select.cols = "*") {
    testthat::skip("Not yet implemented: dbReadTable(Connection, character)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbListTables", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbListTables(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbExistsTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbExistsTable(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbListFields", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbListFields(Connection, character)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbRemoveTable", c("KazamConnection", "character"),
  function(conn, name) {
    testthat::skip("Not yet implemented: dbRemoveTable(Connection, character)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbGetInfo", "KazamConnection",
  function(dbObj, ...) {
    testthat::skip("Not yet implemented: dbGetInfo(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbIsValid", "KazamConnection",
  function(dbObj) {
    testthat::skip("Not yet implemented: dbIsValid(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbBegin", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbBegin(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbCommit", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbCommit(Connection)")
  })

#' @rdname DBI
#' @export
setMethod(
  "dbRollback", "KazamConnection",
  function(conn) {
    testthat::skip("Not yet implemented: dbRollback(Connection)")
  })
