DBItest::make_context(Kazam(), list(), name = "RKazam")
DBItest::test_all(c(
  ".*stress.*", # TODO: Enable
  "quote_identifier_not_vectorized",
  "invalid_query",
  NULL
))
