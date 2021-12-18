#' @rdname DBI
#' @inheritParams DBI::dbExistsTable
#' @usage NULL
dbExistsTable_KazamConnection_character <- function(conn, name, ...) {
  testthat::skip("Not yet implemented: dbExistsTable(Connection)")
}
#' @rdname DBI
#' @export
setMethod("dbExistsTable", c("KazamConnection", "character"), dbExistsTable_KazamConnection_character)
