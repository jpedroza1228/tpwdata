#' Set your API key to access the data from Qualtrics.
#'
#' Saves your key in your .REnviron so it's accessible to later functions.
#' This only needs to be run once.
#' @param key Your api key, passed as a string
#' @param ... Additional arguments passed to [qualtRics::qualtrics_api_credentials()]
#' @export
set_key <- function(key, ...) {
  qualtrics_api_credentials(
    api_key = key,
    base_url = "oregon.ca1.qualtrics.com/",
    install = TRUE,
    ...
  )
}