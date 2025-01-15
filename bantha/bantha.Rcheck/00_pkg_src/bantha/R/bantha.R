#' Bayesian Network Thresholding Heuristic Algorithm (BANTHA)
#'
#' This function provides a Bayesian network to summarize a network distribution
#' using the BANTHA method (Bailey, Dahl, Andros 2024). 
#'
#' @param samples An object of class \sQuote{array} containing posterior samples
#'   from a Bayesian network distribution. Each array element encodes one
#'   network as a binary adjacency matrix, with nodes in the rows and columns. 
#'   A value of 1 in cell (i, j) indicates a directed edge from node i to node j.
#' @param a A numeric scalar for the cost parameter of generalized Hamming
#'   distance used in GSH loss.  The other cost parameter, \eqn{b}, is equal to
#'   \eqn{2 - a}.
#' @param n_cores The number of CPU cores to use, i.e., the number of
#'   simultaneous calculations at any given time. A value of zero indicates to
#'   use all cores on the system.
#' @param n_candidates The number of starting states to use in calculating the best 
#'   matrix estimate. Using all samples as starting states is recommended, this is 
#'   indicated by a value of zero.
#' @return A Bayes estimate in the form of an adjacency matrix found by minimizing 
#'   the Monte Carlo approximation of the expected GSH loss using the available 
#'   samples.
#'
#' @importFrom methods hasArg 
#' @export
#'
#' @references
#' E. Bailey, D. B. Dahl, J. Andros (2024).
#' Structure Learning of Bayesian Networks from Posterior Sample Inference.
#' Unpublished manuscript. Available upon request from the authors.
#'
#' @examples
#' data(choi25)
#' bantha(choi25, a = 1)
#'
bantha <- function(samples, a = 1, n_candidates = 0, n_cores = 0) {
  if (is.array(samples)) {
    .Call(.bantha, samples, a, n_candidates, n_cores)
  } else if (mode(samples) == "externalptr") {
    if (hasArg("a")) stop("Based on the type of the 'sample' argument, 'a' should not be provided.")
    if (hasArg("n_candidates")) stop("Based on the type of the 'sample' argument, 'n_candidates' should not be provided.")
    .Call(.bantha_big_data, samples, n_cores)
  } else stop("Unsupported type for 'samples'")
}
