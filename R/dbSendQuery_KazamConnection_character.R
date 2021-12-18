#' @rdname DBI
#' @inheritParams DBI::dbSendQuery
#' @usage NULL
dbSendQuery_KazamConnection_character <- function(conn, statement, ...) {
  # TODO: Implement, remove skip() call
  testthat::skip("Not sending query")
  KazamResult(connection = conn, statement = statement)
}
#' @rdname DBI
#' @export
setMethod("dbSendQuery", c("KazamConnection", "character"), dbSendQuery_KazamConnection_character)
