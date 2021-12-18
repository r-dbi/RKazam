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

#' @export
DBI::dbIsReadOnly

#' @export
DBI::dbQuoteLiteral

#' @export
DBI::dbUnquoteIdentifier

#' @export
DBI::dbGetQuery

#' @export
DBI::dbExecute

#' @export
DBI::dbCreateTable

#' @export
DBI::dbAppendTable

#' @export
DBI::dbListObjects

#' @export
DBI::dbWithTransaction
