#' Codons extraction
#'
#' @param sequence description
#' @param start of parameter
#'
#' @return description of function output
#' @export
#'
codons_extraction <- function(sequence, start = 1){
  sequence_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = sequence_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = sequence_length, by = 3))
  return(codons)
}
