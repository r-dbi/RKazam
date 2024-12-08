if (requireNamespace("DBItest", quietly = TRUE) && identical(Sys.getenv("NOT_CRAN"), "true") && utils::packageVersion("DBItest") >= "1.7.2") {
  DBItest::test_all()
}
