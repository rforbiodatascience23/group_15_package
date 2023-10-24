
# name_me1 = aa_distribution_plot
# name_me2 = aa_string
# name_me3 = present_aa
# name_me4 = aa_plot
# Name_me2 = amino_acids

#' Plotting of Amino Acid Distribution
#'
#' @param aa_seq Sequence of amino acids
#'
#' @return A bar chart showing the counts of the different amino acids in the sequence.
#' @export
#'
#' @examples
#' aa_distribution_plot('AACWIGI')
aa_distribution_plot <- function(aa_seq){
  # Creating object containing the amino acids present in the sequence
  present_aa <- aa_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()
  print(present_aa)

  # Count the number of occurences for each of the present amino acids
  counts <- sapply(present_aa, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) |>
    as.data.frame()
  print(counts)

  # Rename columns
  colnames(counts) <- c("Counts")
  counts[["amino_acids"]] <- rownames(counts)
  print(counts)

  # Plot the amino acid distribution
  aa_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = amino_acids, y = Counts, fill = amino_acids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_plot)
}

