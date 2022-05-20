#' @rdname DBI
#' @inheritParams DBI::dbReadTable
#' @usage NULL
dbReadTable_KazamConnection_character <- function(conn, name, ...) {
  testthat::skip("Not yet implemented: dbReadTable(Connection, character)")
}
#' @rdname DBI
#' @export
setMethod("dbReadTable", c("KazamConnection", "character"), dbReadTable_KazamConnection_character)
