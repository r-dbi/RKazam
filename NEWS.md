<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# RKazam 0.0.0.9038 (2026-01-14)

## Continuous integration

- Fix comment (#78).

- Tweaks (#77).

- Test all R versions on branches that start with cran- (#76).


# RKazam 0.0.0.9037 (2025-11-17)

## Continuous integration

- Install binaries from r-universe for dev workflow (#74).


# RKazam 0.0.0.9036 (2025-11-12)

## Continuous integration

- Fix reviewdog and add commenting workflow (#72).


# RKazam 0.0.0.9035 (2025-11-11)

## Chore

- Auto-update from GitHub Actions (#67).

## Continuous integration

- Use workflows for fledge (#70).

- Sync (#69).

- Use reviewdog for external PRs (#68).

- Cleanup and fix macOS (#66).

- Format with air, check detritus, better handling of `extra-packages` (#65).


# RKazam 0.0.0.9034 (2025-05-04)

## Continuous integration

- Enhance permissions for workflow (#63).


# RKazam 0.0.0.9033 (2025-04-30)

## Continuous integration

- Permissions, better tests for missing suggests, lints (#61).

- Only fail covr builds if token is given (#58).

- Always use `_R_CHECK_FORCE_SUGGESTS_=false` (#57).

- Correct installation of xml2 (#54).

- Explain (#52).

- Add xml2 for covr, print testthat results (#51).

- Avoid failure in fledge workflow if no changes (#44).


# RKazam 0.0.0.9032 (2024-12-14)

## Bug fixes

- Reexport all generics as expected by DBItest.

## Chore

- Qualify `packageVersion()`.

- Bump versions.

## Documentation

- Document.


# RKazam 0.0.0.9031 (2024-12-08)

## Continuous integration

- Fetch tags for fledge workflow to avoid unnecessary NEWS entries (#42).


# RKazam 0.0.0.9030 (2024-12-07)

## Continuous integration

- Use larger retry count for lock-threads workflow (#40).


# RKazam 0.0.0.9029 (2024-12-02)

## Documentation

- Use qualified `\link{}` in favor of `\linkS4class{}`.


# RKazam 0.0.0.9028 (2024-12-01)

## Continuous integration

- Remove Aviator.

## Documentation

- Convert `\linkS4class{}` to `\link[]{}` (#35).


# RKazam 0.0.0.9027 (2024-11-30)

## Continuous integration

- Remove Aviator.

## Documentation

- Convert `\linkS4class{}` to `\link[]{}` (#35).


# RKazam 0.0.0.9026 (2024-11-29)

## Continuous integration

- Remove Aviator.

## Documentation

- Convert `\linkS4class{}` to `\link[]{}` (#35).


# RKazam 0.0.0.9025 (2024-11-28)

## Continuous integration

- Ignore errors when removing pkg-config on macOS (#34).


# RKazam 0.0.0.9024 (2024-11-27)

## Continuous integration

- Explicit permissions (#33).


# RKazam 0.0.0.9023 (2024-11-26)

## Continuous integration

- Use styler from main branch (#32).


# RKazam 0.0.0.9022 (2024-11-25)

## Continuous integration

- Need to install R on Ubuntu 24.04 (#31).

- Use Ubuntu 24.04 and styler PR (#29).


# RKazam 0.0.0.9021 (2024-11-22)

## Continuous integration

  - Correctly detect branch protection (#28).


# RKazam 0.0.0.9020 (2024-11-18)

## Continuous integration

  - Use stable pak (#27).


# RKazam 0.0.0.9019 (2024-11-11)

## Continuous integration

  - Trigger run (#26).
    
      - ci: Trigger run
    
      - ci: Latest changes


# RKazam 0.0.0.9018 (2024-10-28)

## Continuous integration

  - Use pkgdown branch (#25).
    
      - ci: Use pkgdown branch
    
      - ci: Updates from duckdb
    
      - ci: Trigger run


# RKazam 0.0.0.9017 (2024-09-15)

## Continuous integration

  - Install via R CMD INSTALL ., not pak (#24).
    
      - ci: Install via R CMD INSTALL ., not pak
    
      - ci: Bump version of upload-artifact action


# RKazam 0.0.0.9016 (2024-08-31)

## Chore

  - Auto-update from GitHub Actions.
    
    Run: https://github.com/r-dbi/RKazam/actions/runs/10425482924

  - Auto-update from GitHub Actions.
    
    Run: https://github.com/r-dbi/RKazam/actions/runs/10200160548

  - Auto-update from GitHub Actions.
    
    Run: https://github.com/r-dbi/RKazam/actions/runs/9728443838

  - Auto-update from GitHub Actions.
    
    Run: https://github.com/r-dbi/RKazam/actions/runs/9691616931

## Continuous integration

  - Install local package for pkgdown builds.

  - Improve support for protected branches with fledge.

  - Improve support for protected branches, without fledge.

  - Sync with latest developments.

  - Use v2 instead of master.

  - Inline action.

  - Use dev roxygen2 and decor.

  - Fix on Windows, tweak lock workflow.

  - Avoid checking bashisms on Windows.

  - Better commit message.

  - Bump versions, better default, consume custom matrix.

  - Recent updates.


# RKazam 0.0.0.9015 (2024-01-24)

- Internal changes only.


# RKazam 0.0.0.9014 (2024-01-15)

- Internal changes only.


# RKazam 0.0.0.9013 (2023-12-26)

- Internal changes only.


# RKazam 0.0.0.9012 (2023-12-23)

## Chore

- Bump dependencies.

- Add Aviator configuration.

## Documentation

- Use dbitemplate (@maelle, #22).


# RKazam 0.0.0.9011 (2023-12-18)

- Internal changes only.


# RKazam 0.0.0.9010 (2023-11-10)

## Testing

- Skip helper if DBItest is not installed (#21).


# RKazam 0.0.0.9009 (2023-11-06)

## Chore

- Add Aviator configuration.

## Testing

- Only run if DBItest is installed (#20).


# RKazam 0.0.0.9008 (2023-10-09)

## Features

- Bring back improvements from adbc package (#19).


# RKazam 0.0.0.9007 (2023-03-24)

- Internal changes only.


# RKazam 0.0.0.9006 (2023-02-17)

- Internal changes only.


# RKazam 0.0.0.9005 (2022-12-30)

- Internal changes only.


# RKazam 0.0.0.9004 (2022-12-24)

- Harmonize yaml formatting.

- Revert changes to matrix section.


# RKazam 0.0.0.9003 (2021-12-18)

- Make method definition more similar to S3 (#14).
- Compatibility with DBItest 1.7.2 (#13).
- Switch to CC0 license (#7).
- Prepare for CII badge (#6).
- Add comment pointing to implementations that help grow a data frame (#3).


# RKazam 0.0.0.9002 (2020-12-22)

- Converted to template repository on GitHub (#8).


# RKazam 0.0.0.9001 (2020-12-05)

- Switch to GitHub Actions (#9).
- Prefer `testthat::skip()` over `skip()` so that tests run cleanly (#5).
- Add ellipsis `...` to the signature of all DBI methods.
- Travis tests pass.
- Enable Travis CI.
- Compatibility with current DBI: Use default method for `dbGetInfo(DBIResult)`.
