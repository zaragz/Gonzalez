# Gonzalez

Simple data summary tools for students learning analysis and visualization in R.

I created Gonzalez as a beginner-friendly data summary package for the LIS4370
final project. It is designed for students who want quick ways to inspect small
data sets, check missing values, summarize numeric columns, and visualize
category counts.

## Functions

The package includes six unique functions:

- `hello_gonzalez()` returns a short welcome message.
- `quick_summary()` gives a quick overview of a data frame.
- `missing_report()` counts missing values in each column.
- `numeric_summary()` summarizes numeric columns with common statistics.
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

The package uses the CC0 license.

## Classes And Methods

The package does not use S3 or S4 classes. It uses regular exported R
functions.

## Installation

The package can be installed from GitHub with:

```r
devtools::install_github("zaragz/Gonzalez")
```

## Example

```r
library(Gonzalez)

hello_gonzalez()
quick_summary(iris)
missing_report(airquality)
numeric_summary(mtcars)
package_metadata()
plot_category_counts(mtcars, "cyl")
plot_category_counts(iris, "Species")
```
