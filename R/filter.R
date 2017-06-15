#' \code{FilterVariable}
#'
#' @description Creates a filter variable.
#' @param variable A \code{\link{character}} (Text) or \code{\link{factor}} (Ordinal, Nominal) variable.
#' @param combobox A \code{\link{character}} vector containing selected options.
#' @return A \code{\link{logical}} vector of length \code{length(variable)}.
#' @export
FilterVariable <- function(variable, combobox)
{
    if (length(combobox) == 0)
        return(rep(TRUE, length(variable)))
    return(variable %in% combobox)
}
