#' Initialize Expected Generalized Structural Hamming (GSH) Loss
#'
#' @param n_items Number of nodes in each network to process.
#' @param n_samples Number of networks to process.
#' @param n_candidates Number of networks to sweeten.
#' @param a A numeric scalar for the cost parameter of generalized Hamming
#'   distance used in GSH loss.  The other cost parameter, \eqn{b}, is equal to
#'   \eqn{2 - a}.
#' @return A pointer to an initialized GSH builder structure to process samples.
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
#' gsh_builder <- gsh_loss_builder_new(ncol(choi25), nrow(choi25), 4, a = 1)
#'
gsh_loss_builder_new <- function(n_items, n_samples, n_candidates, a = 1) {
  .Call(.gsh_loss_builder_new, n_items, n_samples, n_candidates, a)
}
