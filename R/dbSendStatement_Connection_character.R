#' @rdname DBI
#' @inheritParams DBI::dbSendStatement
#' @usage NULL
dbSendStatement_KazamConnection_character <- function(conn, statement, ...) {
  # TODO: Implement, remove skip() call
  testthat::skip("Not sending statement")
  KazamResult(connection = conn, statement = statement)
}
#' @rdname DBI
#' @export
setMethod("dbSendStatement", c("KazamConnection", "character"), dbSendStatement_KazamConnection_character)
