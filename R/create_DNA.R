#' DNA string creator
#'
#' @param length The length (number of bases in the DNA string)
#'
#' @return A DNA string consisting of bases in string-format of length "length"
#' @export
#'
#' @examples create_DNA(300)
create_DNA <- function(length){
  DNA_list <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  DNA_string <- paste0(DNA_list, collapse = "")
  return(DNA_string)
}
