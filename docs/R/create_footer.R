#' Create Footer
#'
#' Creates a footer for your website.
#'
#' @param text_color Color of text to display.
#' @param text_size Size of text to display.
#' @param author Name of author (defaults to `getOption(usethis.full.name)`).
#' @param ... For future considerations
#'
#' @return raw text output to a file `_footer.html` at root of project.
create_footer <- function(text_color = "#ededeb",
                          text_size = "15px",
                          author = getOption("usethis.full_name"),
                          ...) {

  fill <- text_color
  height <- text_size

  year <- substr(as.character(Sys.Date()), 1, 4)
  year_auth_txt <- paste0("Copyright: ", year, " ", author, " \n")

  footer <- htmltools::HTML(
    paste0(
      year_auth_txt,
      br(),
      fontawesome::fa('wrench', fill = fill, height = height),
      ' Made with the [distill](https://github.com/rstudio/distill) R package. ',
      fontawesome::fa('r-project', fill = fill, height = height),
      "\n",
      br(),
      last_updated(),
      "\n\n",
      '<!-- Add function to open links to external links in new tab, from: -->',
      '<!-- https://yihui.name/en/2018/09/target-blank/ -->\n\n',
      '<script src="js/external-link.js"></script>'
    )
  )

  save_raw(footer, "_footer.html")
}
