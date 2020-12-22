DBItest::make_context(
  Kazam(),
  list(),
  tweaks = DBItest::tweaks(),
  name = "RKazam",
  default_skip = c(
    if (packageVersion("DBItest") < "1.7.0.9006") "reexport",

    NULL
  )
)
