#' Quick Data Summary
#'
#' Creates a simple overview of a data frame, including its size, column names,
#' column classes, and total missing values.
#'
#' @param data A data frame.
#'
#' @return A list with basic information about the data frame.
#' @export
quick_summary <- function(data) {
  if (!is.data.frame(data)) {
    stop("The input must be a data frame.", call. = FALSE)
  }

  list(
    rows = nrow(data),
    columns = ncol(data),
    column_names = names(data),
    column_classes = vapply(data, function(x) class(x)[1], character(1)),
    total_missing_values = sum(is.na(data))
  )
}

#' Missing Value Report
#'
#' Counts missing values in each column of a data frame and returns the results
#' as a data frame.
#'
#' @param data A data frame.
#'
#' @return A data frame with one row per column and a missing value count.
#' @export
missing_report <- function(data) {
  if (!is.data.frame(data)) {
    stop("The input must be a data frame.", call. = FALSE)
  }

  data.frame(
    column = names(data),
    missing_values = vapply(data, function(x) sum(is.na(x)), integer(1)),
    row.names = NULL
  )
}

#' Numeric Column Summary
#'
#' Summarizes numeric columns in a data frame with common descriptive
#' statistics.
#'
#' @param data A data frame.
#'
#' @return A data frame with summary statistics for each numeric column.
#' @importFrom stats median sd
#' @export
numeric_summary <- function(data) {
  if (!is.data.frame(data)) {
    stop("The input must be a data frame.", call. = FALSE)
  }

  numeric_columns <- data[vapply(data, is.numeric, logical(1))]

  if (length(numeric_columns) == 0) {
    return(data.frame(
      column = character(),
      mean = numeric(),
      median = numeric(),
      minimum = numeric(),
      maximum = numeric(),
      standard_deviation = numeric()
    ))
  }

  data.frame(
    column = names(numeric_columns),
    mean = vapply(numeric_columns, mean, numeric(1), na.rm = TRUE),
    median = vapply(numeric_columns, stats::median, numeric(1), na.rm = TRUE),
    minimum = vapply(numeric_columns, min, numeric(1), na.rm = TRUE),
    maximum = vapply(numeric_columns, max, numeric(1), na.rm = TRUE),
    standard_deviation = vapply(numeric_columns, stats::sd, numeric(1), na.rm = TRUE),
    row.names = NULL
  )
}
