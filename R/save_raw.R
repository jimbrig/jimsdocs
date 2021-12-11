#' Save Raw File
#'
#' @param text text to save
#' @param path path of file to create/overwrite.
save_raw <- function(text, path) {
  fileConn <- file(path)
  writeLines(text, fileConn)
  close(fileConn)
}
