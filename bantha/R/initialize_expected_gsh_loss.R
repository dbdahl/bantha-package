#' Initialize Expected Generalized Structural Hamming (GSH) Loss
#'
#' This function initializes the expected GSH loss (Bailey, Dahl, Andros, 2024)  
#'   based on the given samples and value of the parameter a.
#
#' @param samples One of two possible values:
#'   First option: An object of class \sQuote{array} containing posterior samples
#'   from a Bayesian network distribution. Each array element encodes one
#'   network as a binary adjacency matrix, where the rows and columns represent
#'   nodes. A value of 1 in cell \code{(i, j)} of an adjacency matrix indicates 
#'   a directed edge from node \code{i} to node \code{j}. The third dimension 
#'   of the array corresponds to different adjacency matrices (samples) from the 
#'   posterior distribution.  Second option: An symmetric matrix whose \code{(i, j)}
#'   element gives the relative frequency in which there is an edge from node
#'   \code{i} to node \code{j}.
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
#' initialize_expected_gsh_loss(choi25, a = 1)
#'
initialize_expected_gsh_loss <- function(samples, a = 1) {
  .Call(.initialize_expected_gsh_loss, samples, a)
}
