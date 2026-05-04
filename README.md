# Gonzalez

Introductory data summary tools for simple analysis and visualization in R.

Gonzalez is an introductory data summary package created for the LIS4370 final
project. The package demonstrates basic R package structure while providing a
few simple tools for package information and category counts.

## Functions

This package includes three unique functions:

- `hello_gonzalez()` returns a short welcome message.
- `package_metadata()` returns a summary of the package metadata.
- `plot_category_counts()` creates a simple bar chart for a categorical column.

## Libraries

The package imports:

- `dplyr`
- `ggplot2`
- `rlang`

## Metadata

The `DESCRIPTION` file includes the package name, title, version, author,
description, R dependency, imported libraries, license, encoding, GitHub URL,
and bug report URL.

## License

This package uses the CC0 license.

## Classes And Methods

This package does not use S3 or S4 classes. It uses regular exported R
functions.

## Installation

After the package is posted on GitHub, it can be installed with:

```r
devtools::install_github("zaragz/Gonzalez")
```

## Example

```r
library(Gonzalez)

hello_gonzalez()
package_metadata()
plot_category_counts(mtcars, "cyl")
plot_category_counts(iris, "Species")
```
