#' @rdname DBI
#' @inheritParams DBI::dbWriteTable
#' @param overwrite Allow overwriting the destination table. Cannot be
#'   `TRUE` if `append` is also `TRUE`.
#' @param append Allow appending to the destination table. Cannot be
#'   `TRUE` if `overwrite` is also `TRUE`.
#' @usage NULL
dbWriteTable_KazamConnection_character_data.frame <- function(conn, name, value, overwrite = FALSE, append = FALSE, ...) {
  testthat::skip("Not yet implemented: dbWriteTable(Connection, character, data.frame)")
}
#' @rdname DBI
#' @export
setMethod("dbWriteTable", c("KazamConnection", "character", "data.frame"), dbWriteTable_KazamConnection_character_data.frame)
