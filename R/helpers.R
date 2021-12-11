
markdown_to_html <- function(text) {
  if (is.null(text)) {
    return(text)
  }
  return(HTML(markdown::renderMarkdown(text = text)))
}
aside <- function(text) {
  return(tag("aside", list(text)))
}

center <- function(text) {
  return(tag("center", list(text)))
}

aside_center <- function(text) {
  return(aside(center(list(text))))
}

aside_center_b <- function(text) {
  return(aside(center(list(tag(
    "b", text
  )))))
}



