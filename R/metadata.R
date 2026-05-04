#' Package Metadata Summary
#'
#' Returns a small list describing the main metadata for the Gonzalez package.
#'
#' @return A list with package metadata fields.
#' @export
package_metadata <- function() {
  list(
    package = "Gonzalez",
    version = "0.0.0.9000",
    license = "CC0",
    classes = "No S3 or S4 classes are used",
    imports = c("dplyr", "ggplot2", "rlang")
  )
}
