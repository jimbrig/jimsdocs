#' Last Updated
#'
#' @return generated HTML `<span>` tag.
last_updated <- function() {
  return(span(
    paste0(
      'Last updated on ',
      format(Sys.Date(), format = "%B %d, %Y")
    ),
    style = "font-size:0.8rem;")
  )
}
