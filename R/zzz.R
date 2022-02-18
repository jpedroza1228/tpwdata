.onAttach <- function(...) {
  key <- Sys.getenv("QUALTRICS_API_KEY")
  if (nchar(key) == 0) {
    packageStartupMessage("Please set your key with `set_key()`")
  }
}

# .onLoad <- function(...) {
#   key <- Sys.getenv("QUALTRICS_API_KEY")
#   if (nchar(key) > 0) {
#     surveys <<- all_surveys()
#   }
# }
