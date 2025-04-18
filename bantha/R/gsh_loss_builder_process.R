#' Add Bayesian networks to GSH builder structure
#'
#' Add a Bayesian network represented by an adjacency matrix to an existing GSH 
#' builder structure
#'
#' @param x A network as an adjacency matrix.
#' @param gsh_loss_builder A pointer to a GSH builder structure.
#'
#' @export
#'
#' @references
#' E. Bailey, D. B. Dahl, J. Andros (2025).
#' Structure Learning of Bayesian Networks from Posterior Sample Inference.
#' Unpublished manuscript. Available upon request from the authors.
#'
#' @examples
#' data(choi25)
#' gsh_builder <- gsh_loss_builder_new(ncol(choi25), nrow(choi25), 4, a = 1)
#' gsh_loss_builder_process(choi25[,,1], gsh_builder)
#'
gsh_loss_builder_process <- function(x, gsh_loss_builder) {
  .Call(.gsh_loss_builder_process, x, gsh_loss_builder)
}
