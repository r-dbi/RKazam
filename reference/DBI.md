# DBI methods

Implementations of pure virtual functions defined in the `DBI` package.

## Usage

``` r
# S4 method for class 'KazamConnection'
dbAppendTable(conn, name, value, ..., row.names = NULL)

# S4 method for class 'KazamConnection'
dbBegin(conn, ...)

# S4 method for class 'KazamResult'
dbBind(res, params, ...)

# S4 method for class 'KazamResult'
dbClearResult(res, ...)

# S4 method for class 'KazamResultArrow'
dbClearResult(res, ...)

# S4 method for class 'KazamResult'
dbColumnInfo(res, ...)

# S4 method for class 'KazamConnection'
dbCommit(conn, ...)

# S4 method for class 'KazamDriver'
dbConnect(drv, ...)

# S4 method for class 'KazamConnection,ANY'
dbDataType(dbObj, obj, ...)

# S4 method for class 'KazamDriver,ANY'
dbDataType(dbObj, obj, ...)

# S4 method for class 'KazamDriver,list'
dbDataType(dbObj, obj, ...)

# S4 method for class 'KazamConnection'
dbDisconnect(conn, ...)

# S4 method for class 'KazamConnection,character'
dbExistsTable(conn, name, ...)

# S4 method for class 'KazamResultArrow'
dbFetchArrow(res, ...)

# S4 method for class 'KazamResult'
dbFetch(res, n = -1, ...)

# S4 method for class 'KazamConnection'
dbGetInfo(dbObj, ...)

# S4 method for class 'KazamDriver'
dbGetInfo(dbObj, ...)

# S4 method for class 'KazamResult'
dbGetInfo(dbObj, ...)

# S4 method for class 'KazamResult'
dbGetRowCount(res, ...)

# S4 method for class 'KazamResult'
dbGetRowsAffected(res, ...)

# S4 method for class 'KazamResult'
dbGetStatement(res, ...)

# S4 method for class 'KazamResult'
dbHasCompleted(res, ...)

# S4 method for class 'KazamConnection'
dbIsValid(dbObj, ...)

# S4 method for class 'KazamDriver'
dbIsValid(dbObj, ...)

# S4 method for class 'KazamResult'
dbIsValid(dbObj, ...)

# S4 method for class 'KazamConnection,character'
dbListFields(conn, name, ...)

# S4 method for class 'KazamConnection'
dbListTables(conn, ...)

# S4 method for class 'KazamConnection,character'
dbQuoteIdentifier(conn, x, ...)

# S4 method for class 'KazamConnection,character'
dbQuoteString(conn, x, ...)

# S4 method for class 'KazamConnection,character'
dbRemoveTable(conn, name, ..., temporary = FALSE, fail_if_missing = TRUE)

# S4 method for class 'KazamConnection'
dbRollback(conn, ...)

# S4 method for class 'KazamConnection'
dbSendQueryArrow(conn, statement, ..., params = NULL)

# S4 method for class 'KazamConnection,character'
dbSendQuery(conn, statement, ..., params = NULL)

# S4 method for class 'KazamConnection,character'
dbSendStatement(conn, statement, ..., params = NULL)

# S4 method for class 'KazamConnection,character,data.frame'
dbWriteTable(
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

# S4 method for class 'KazamConnection'
show(object)

# S4 method for class 'KazamDriver'
show(object)

# S4 method for class 'KazamResult'
show(object)
```

## Arguments

- conn:

  A
  [DBI::DBIConnection](https://dbi.r-dbi.org/reference/DBIConnection-class.html)
  object, as returned by
  [`dbConnect()`](https://dbi.r-dbi.org/reference/dbConnect.html).

- name:

  The table name, passed on to
  [`dbQuoteIdentifier()`](https://dbi.r-dbi.org/reference/dbQuoteIdentifier.html).
  Options are:

  - a character string with the unquoted DBMS table name, e.g.
    `"table_name"`,

  - a call to [`Id()`](https://dbi.r-dbi.org/reference/Id.html) with
    components to the fully qualified table name, e.g.
    `Id(schema = "my_schema", table = "table_name")`

  - a call to [`SQL()`](https://dbi.r-dbi.org/reference/SQL.html) with
    the quoted and fully qualified table name given verbatim, e.g.
    `SQL('"my_schema"."table_name"')`

- value:

  A [data.frame](https://rdrr.io/r/base/data.frame.html) (or coercible
  to data.frame).

- ...:

  Other parameters passed on to methods.

- row.names:

  A logical specifying whether the `row.names` should be output to the
  output DBMS table; if `TRUE`, an extra field whose name will be
  whatever the R identifier `"row.names"` maps to the DBMS (see
  [`DBI::make.db.names()`](https://dbi.r-dbi.org/reference/make.db.names.html)).
  If `NA` will add rows names if they are characters, otherwise will
  ignore.

- res:

  An object inheriting from
  [DBI::DBIResult](https://dbi.r-dbi.org/reference/DBIResult-class.html).

- params:

  For [`dbBind()`](https://dbi.r-dbi.org/reference/dbBind.html), a list
  of values, named or unnamed, or a data frame, with one element/column
  per query parameter. For
  [`dbBindArrow()`](https://dbi.r-dbi.org/reference/dbBind.html), values
  as a nanoarrow stream, with one column per query parameter.

- drv:

  An object that inherits from
  [DBI::DBIDriver](https://dbi.r-dbi.org/reference/DBIDriver-class.html),
  or an existing
  [DBI::DBIConnection](https://dbi.r-dbi.org/reference/DBIConnection-class.html)
  object (in order to clone an existing connection).

- dbObj:

  A object inheriting from
  [DBI::DBIDriver](https://dbi.r-dbi.org/reference/DBIDriver-class.html)
  or
  [DBI::DBIConnection](https://dbi.r-dbi.org/reference/DBIConnection-class.html)

- obj:

  An R object whose SQL type we want to determine.

- n:

  maximum number of records to retrieve per fetch. Use `n = -1` or
  `n = Inf` to retrieve all pending records. Some implementations may
  recognize other special values.

- x:

  A character vector, [SQL](https://dbi.r-dbi.org/reference/SQL.html) or
  [Id](https://dbi.r-dbi.org/reference/Id.html) object to quote as
  identifier.

- temporary:

  a logical specifying whether the new table should be temporary. Its
  default is `FALSE`.

- fail_if_missing:

  If `FALSE`, `dbRemoveTable()` succeeds if the table doesn't exist.

- statement:

  a character string containing SQL.

- overwrite:

  Allow overwriting the destination table. Cannot be `TRUE` if `append`
  is also `TRUE`.

- append:

  Allow appending to the destination table. Cannot be `TRUE` if
  `overwrite` is also `TRUE`.

- field.types:

  character vector of named SQL field types where the names are the
  names of new table's columns. If missing, types inferred with
  [`DBI::dbDataType()`](https://dbi.r-dbi.org/reference/dbDataType.html)).

- object:

  Any R object
