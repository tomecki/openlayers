## also add options?
`+.options` <- function(lhs, rhs) {
  c(lhs, rhs)
}

#' Layer options.
#'
#' @param opacity opacity
#' @param select \code{\link{select_interaction}} object
#'
#' @export
layer_options <- function(opacity = 1, select = NULL) {
  list(opacity = opacity, select = select)
}