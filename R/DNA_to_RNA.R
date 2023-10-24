
#' DNA to RNA
#'
#' @param DNA_string The input to the function is a DNA string.
#'                  The function replaces T with U during the transcription.
#'
#'
#' @return The function returns a RNA string transcribed from the given DNA string
#' @export
#'
#' @examples
#' DNA_to_RNA("TACGT")
DNA_to_RNA <- function(DNA_string){
  RNA_string <- gsub("T", "U", DNA_string)
  return(RNA_string)
}
