


#' Codon translation to aminoacids
#'
#' @param codons A, G, C and U written as a triplet
#'
#' @return returns a aminoacid string translated from codons
#' @export
#'
#' @examples
#' aa_translation('CUA')
aa_translation <- function(codons){
  aa_seq <- paste0(codon_tbl[codons], collapse = "")
  return(aa_seq)
}

