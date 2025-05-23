% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Driver.R, R/Connection.R, R/Result.R,
%   R/ResultArrow.R, R/dbAppendTable_Connection_character_data.frame.R,
%   R/dbBegin_Connection.R, R/dbBind_Result.R, R/dbClearResult_Result.R,
%   R/dbClearResult_ResultArrow.R, R/dbColumnInfo_Result.R,
%   R/dbCommit_Connection.R, R/dbConnect_Driver.R, R/dbDataType_Connection.R,
%   R/dbDataType_Driver.R, R/dbDataType_Driver_list.R,
%   R/dbDisconnect_Connection.R, R/dbExistsTable_Connection_character.R,
%   R/dbFetchArrow_ResultArrow.R, R/dbFetch_Result.R, R/dbGetInfo_Connection.R,
%   R/dbGetInfo_Driver.R, R/dbGetInfo_Result.R, R/dbGetRowCount_Result.R,
%   R/dbGetRowsAffected_Result.R, R/dbGetStatement_Result.R,
%   R/dbHasCompleted_Result.R, R/dbIsValid_Connection.R, R/dbIsValid_Driver.R,
%   R/dbIsValid_Result.R, R/dbListFields_Connection_character.R,
%   R/dbListTables_Connection.R, R/dbQuoteIdentifier_Connection_character.R,
%   R/dbQuoteString_Connection_character.R,
%   R/dbRemoveTable_Connection_character.R, R/dbRollback_Connection.R,
%   R/dbSendQueryArrow_Connection.R, R/dbSendQuery_Connection_character.R,
%   R/dbSendStatement_Connection_character.R,
%   R/dbWriteTable_Connection_character_data.frame.R, R/show_Connection.R,
%   R/show_Driver.R, R/show_Result.R
\docType{class}
\name{DBI}
\alias{DBI}
\alias{KazamDriver-class}
\alias{KazamConnection-class}
\alias{KazamResult-class}
\alias{KazamResultArrow-class}
\alias{dbAppendTable_KazamConnection}
\alias{dbAppendTable,KazamConnection-method}
\alias{dbBegin_KazamConnection}
\alias{dbBegin,KazamConnection-method}
\alias{dbBind_KazamResult}
\alias{dbBind,KazamResult-method}
\alias{dbClearResult_KazamResult}
\alias{dbClearResult,KazamResult-method}
\alias{dbClearResult_KazamResultArrow}
\alias{dbClearResult,KazamResultArrow-method}
\alias{dbColumnInfo_KazamResult}
\alias{dbColumnInfo,KazamResult-method}
\alias{dbCommit_KazamConnection}
\alias{dbCommit,KazamConnection-method}
\alias{dbConnect_KazamDriver}
\alias{dbConnect,KazamDriver-method}
\alias{dbDataType_KazamConnection}
\alias{dbDataType,KazamConnection,ANY-method}
\alias{dbDataType_KazamDriver}
\alias{dbDataType,KazamDriver,ANY-method}
\alias{dbDataType_KazamDriver_list}
\alias{dbDataType,KazamDriver,list-method}
\alias{dbDisconnect_KazamConnection}
\alias{dbDisconnect,KazamConnection-method}
\alias{dbExistsTable_KazamConnection_character}
\alias{dbExistsTable,KazamConnection,character-method}
\alias{dbFetchArrow_KazamResultArrow}
\alias{dbFetchArrow,KazamResultArrow-method}
\alias{dbFetch_KazamResult}
\alias{dbFetch,KazamResult-method}
\alias{dbGetInfo_KazamConnection}
\alias{dbGetInfo,KazamConnection-method}
\alias{dbGetInfo_KazamDriver}
\alias{dbGetInfo,KazamDriver-method}
\alias{dbGetInfo_KazamResult}
\alias{dbGetInfo,KazamResult-method}
\alias{dbGetRowCount_KazamResult}
\alias{dbGetRowCount,KazamResult-method}
\alias{dbGetRowsAffected_KazamResult}
\alias{dbGetRowsAffected,KazamResult-method}
\alias{dbGetStatement_KazamResult}
\alias{dbGetStatement,KazamResult-method}
\alias{dbHasCompleted_KazamResult}
\alias{dbHasCompleted,KazamResult-method}
\alias{dbIsValid_KazamConnection}
\alias{dbIsValid,KazamConnection-method}
\alias{dbIsValid_KazamDriver}
\alias{dbIsValid,KazamDriver-method}
\alias{dbIsValid_KazamResult}
\alias{dbIsValid,KazamResult-method}
\alias{dbListFields_KazamConnection_character}
\alias{dbListFields,KazamConnection,character-method}
\alias{dbListTables_KazamConnection}
\alias{dbListTables,KazamConnection-method}
\alias{dbQuoteIdentifier_KazamConnection_character}
\alias{dbQuoteIdentifier,KazamConnection,character-method}
\alias{dbQuoteString_KazamConnection_character}
\alias{dbQuoteString,KazamConnection,character-method}
\alias{dbRemoveTable_KazamConnection_character}
\alias{dbRemoveTable,KazamConnection,character-method}
\alias{dbRollback_KazamConnection}
\alias{dbRollback,KazamConnection-method}
\alias{dbSendQueryArrow_KazamConnection}
\alias{dbSendQueryArrow,KazamConnection-method}
\alias{dbSendQuery_KazamConnection_character}
\alias{dbSendQuery,KazamConnection,character-method}
\alias{dbSendStatement_KazamConnection_character}
\alias{dbSendStatement,KazamConnection,character-method}
\alias{dbWriteTable_KazamConnection_character_data.frame}
\alias{dbWriteTable,KazamConnection,character,data.frame-method}
\alias{show_KazamConnection}
\alias{show,KazamConnection-method}
\alias{show_KazamDriver}
\alias{show,KazamDriver-method}
\alias{show_KazamResult}
\alias{show,KazamResult-method}
\title{DBI methods}
\usage{
\S4method{dbAppendTable}{KazamConnection}(conn, name, value, ..., row.names = NULL)

\S4method{dbBegin}{KazamConnection}(conn, ...)

\S4method{dbBind}{KazamResult}(res, params, ...)

\S4method{dbClearResult}{KazamResult}(res, ...)

\S4method{dbClearResult}{KazamResultArrow}(res, ...)

\S4method{dbColumnInfo}{KazamResult}(res, ...)

\S4method{dbCommit}{KazamConnection}(conn, ...)

\S4method{dbConnect}{KazamDriver}(drv, ...)

\S4method{dbDataType}{KazamConnection,ANY}(dbObj, obj, ...)

\S4method{dbDataType}{KazamDriver,ANY}(dbObj, obj, ...)

\S4method{dbDataType}{KazamDriver,list}(dbObj, obj, ...)

\S4method{dbDisconnect}{KazamConnection}(conn, ...)

\S4method{dbExistsTable}{KazamConnection,character}(conn, name, ...)

\S4method{dbFetchArrow}{KazamResultArrow}(res, ...)

\S4method{dbFetch}{KazamResult}(res, n = -1, ...)

\S4method{dbGetInfo}{KazamConnection}(dbObj, ...)

\S4method{dbGetInfo}{KazamDriver}(dbObj, ...)

\S4method{dbGetInfo}{KazamResult}(dbObj, ...)

\S4method{dbGetRowCount}{KazamResult}(res, ...)

\S4method{dbGetRowsAffected}{KazamResult}(res, ...)

\S4method{dbGetStatement}{KazamResult}(res, ...)

\S4method{dbHasCompleted}{KazamResult}(res, ...)

\S4method{dbIsValid}{KazamConnection}(dbObj, ...)

\S4method{dbIsValid}{KazamDriver}(dbObj, ...)

\S4method{dbIsValid}{KazamResult}(dbObj, ...)

\S4method{dbListFields}{KazamConnection,character}(conn, name, ...)

\S4method{dbListTables}{KazamConnection}(conn, ...)

\S4method{dbQuoteIdentifier}{KazamConnection,character}(conn, x, ...)

\S4method{dbQuoteString}{KazamConnection,character}(conn, x, ...)

\S4method{dbRemoveTable}{KazamConnection,character}(conn, name, ..., temporary = FALSE, fail_if_missing = TRUE)

\S4method{dbRollback}{KazamConnection}(conn, ...)

\S4method{dbSendQueryArrow}{KazamConnection}(conn, statement, ..., params = NULL)

\S4method{dbSendQuery}{KazamConnection,character}(conn, statement, ..., params = NULL)

\S4method{dbSendStatement}{KazamConnection,character}(conn, statement, ..., params = NULL)

\S4method{dbWriteTable}{KazamConnection,character,data.frame}(
  conn,
  name,
  value,
  overwrite = FALSE,
  append = FALSE,
  ...,
  field.types = NULL,
  row.names = NULL,
  temporary = FALSE
)

\S4method{show}{KazamConnection}(object)

\S4method{show}{KazamDriver}(object)

\S4method{show}{KazamResult}(object)
}
\arguments{
\item{conn}{A \link[DBI:DBIConnection-class]{DBI::DBIConnection} object,
as returned by \code{\link[DBI:dbConnect]{dbConnect()}}.}

\item{name}{The table name, passed on to \code{\link[DBI:dbQuoteIdentifier]{dbQuoteIdentifier()}}. Options are:
\itemize{
\item a character string with the unquoted DBMS table name,
e.g. \code{"table_name"},
\item a call to \code{\link[DBI:Id]{Id()}} with components to the fully qualified table name,
e.g. \code{Id(schema = "my_schema", table = "table_name")}
\item a call to \code{\link[DBI:SQL]{SQL()}} with the quoted and fully qualified table name
given verbatim, e.g. \code{SQL('"my_schema"."table_name"')}
}}

\item{value}{A \link{data.frame} (or coercible to data.frame).}

\item{...}{Other parameters passed on to methods.}

\item{row.names}{A logical specifying whether the \code{row.names} should be
output to the output DBMS table; if \code{TRUE}, an extra field whose name
will be whatever the R identifier \code{"row.names"} maps to the DBMS (see
\code{\link[DBI:make.db.names]{DBI::make.db.names()}}). If \code{NA} will add rows names if
they are characters, otherwise will ignore.}

\item{res}{An object inheriting from \link[DBI:DBIResult-class]{DBI::DBIResult}.}

\item{params}{For \code{dbBind()}, a list of values, named or unnamed,
or a data frame, with one element/column per query parameter.
For \code{dbBindArrow()}, values as a nanoarrow stream,
with one column per query parameter.}

\item{drv}{An object that inherits from \link[DBI:DBIDriver-class]{DBI::DBIDriver},
or an existing \link[DBI:DBIConnection-class]{DBI::DBIConnection}
object (in order to clone an existing connection).}

\item{dbObj}{A object inheriting from \link[DBI:DBIDriver-class]{DBI::DBIDriver}
or \link[DBI:DBIConnection-class]{DBI::DBIConnection}}

\item{obj}{An R object whose SQL type we want to determine.}

\item{n}{maximum number of records to retrieve per fetch. Use \code{n = -1}
or \code{n = Inf}
to retrieve all pending records.  Some implementations may recognize other
special values.}

\item{x}{A character vector, \link[DBI]{SQL} or \link[DBI]{Id} object to quote as identifier.}

\item{temporary}{a logical specifying whether the new table should be
temporary. Its default is \code{FALSE}.}

\item{fail_if_missing}{If \code{FALSE}, \code{dbRemoveTable()} succeeds if the
table doesn't exist.}

\item{statement}{a character string containing SQL.}

\item{overwrite}{Allow overwriting the destination table. Cannot be
\code{TRUE} if \code{append} is also \code{TRUE}.}

\item{append}{Allow appending to the destination table. Cannot be
\code{TRUE} if \code{overwrite} is also \code{TRUE}.}

\item{field.types}{character vector of named  SQL field types where
the names are the names of new table's columns. If missing, types inferred
with \code{\link[DBI:dbDataType]{DBI::dbDataType()}}).}

\item{object}{Any R object}
}
\description{
Implementations of pure virtual functions defined in the \code{DBI} package.
}
