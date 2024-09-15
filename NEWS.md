<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

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
