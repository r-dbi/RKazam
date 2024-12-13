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
  slots = list(
    # TODO: Add slots
  )
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
DBI::dbGetQueryArrow

#' @export
DBI::dbFetch

#' @export
DBI::dbFetchArrowChunk

#' @export
DBI::dbExecute

#' @export
DBI::dbReadTable

#' @export
DBI::dbReadTableArrow

#' @export
DBI::dbWriteTable

#' @export
DBI::dbWriteTableArrow

#' @export
DBI::dbCreateTable

#' @export
DBI::dbCreateTableArrow

#' @export
DBI::dbAppendTable

#' @export
DBI::dbAppendTableArrow

#' @export
DBI::dbBind

#' @export
DBI::dbBindArrow

#' @export
DBI::dbListObjects

#' @export
DBI::dbWithTransaction
