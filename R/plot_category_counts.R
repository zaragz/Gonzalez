#' Plot Category Counts
#'
#' Creates a simple bar chart showing the number of rows in each category of a
#' selected column.
#'
#' @param data A data frame.
#' @param column The quoted name of the categorical column to count.
#'
#' @return A ggplot bar chart.
#' @importFrom dplyr count
#' @importFrom ggplot2 ggplot aes geom_col labs theme_minimal
#' @importFrom rlang .data
#' @export
plot_category_counts <- function(data, column) {
  if (!column %in% names(data)) {
    stop("The selected column was not found in the data frame.", call. = FALSE)
  }

  counts <- dplyr::count(
    data,
    category = as.character(.data[[column]]),
    name = "n"
  )

  ggplot2::ggplot(counts, ggplot2::aes(x = .data$category, y = .data$n)) +
    ggplot2::geom_col() +
    ggplot2::labs(x = "Category", y = "Count", title = "Category Counts") +
    ggplot2::theme_minimal()
}
