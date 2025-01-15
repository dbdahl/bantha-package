#' Initialize Expected Generalized Structural Hamming (GSH) Loss
#'
#' This function initializes the expected GSH loss (Bailey, Dahl, Andros, 2024)  
#'   based on the given samples and value of the parameter a.
#
#' @param samples An object of class \sQuote{array} containing posterior samples
#'   from a Bayesian network distribution. Each array element encodes a
#'   Bayesian network as a binary adjacency matrix, with nodes in the rows and columns. 
#'   A value of 1 in cell (i, j) indicates a directed edge from node i to node j.
#' @param a A numeric scalar for the cost parameter of generalized Hamming
#'   distance used in GSH loss.  The other cost parameter, \eqn{b}, is equal to
#'   \eqn{2 - a}.
#' @return A pointer to an initialized GSH structure containing the posterior 
#'   probabilities of edges between each pair of nodes, which can be found using
#'   the 'initialized_expected_gsh_loss' function.
#'
#' @export
#'
#' @references
#' E. Bailey, D. B. Dahl, J. Andros (2024).
#' Structure Learning of Bayesian Networks from Posterior Sample Inference.
#' Unpublished manuscript. Available upon request from the authors.
#'
#' @examples
#' data(choi25)
#' initialized_expected_gsh_loss(choi25, a = 1)
#'
initialized_expected_gsh_loss <- function(samples, a = 1) {
  .Call(.initialized_expected_gsh_loss, samples, a)
}
