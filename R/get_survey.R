#' Get a specific survey based on the survey name
#' @param name The exact name of the survey, passed as a string. If the exact
#'   name isn't supplied, an error is thrown with the list of all possible
#'   surveys.
#' @export
get_survey <- function(name) {
  if (!any(name %in% surveys$name)) {
    stop(
      "Survey name '", name, "' is not valid. Survey name should be one of\n",
      paste0(surveys$name, sep = "\n")
    )
  }
  id <- surveys$id[surveys$name == name]
  fetch_survey(surveyID = id)
}
