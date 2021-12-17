#' @rdname DBI
#' @inheritParams DBI::dbRemoveTable
#' @usage NULL
dbRemoveTable_KazamConnection_character <- function(conn, name, ...) {
  testthat::skip("Not yet implemented: dbRemoveTable(Connection, character)")
}
#' @rdname DBI
#' @export
setMethod("dbRemoveTable", c("KazamConnection", "character"), dbRemoveTable_KazamConnection_character)
