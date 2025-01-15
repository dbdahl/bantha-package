# Automatically regenerated. Do not edit.

# .Call(.bantha, samples, a, n_starts, n_cores)
# .Call(.bantha_big_data, gsh_builder, n_cores)
# .Call(.compute_expected_gsh_loss, network, gsh)
# .Call(.gsh_loss_builder_new, n_items, n_samples, n_starts, a)
# .Call(.gsh_loss_builder_process, network, gsh_builder)
# .Call(.gsh_loss_builder_sample, network, gsh_builder, n_samples, prob)
# .Call(.initialized_expected_gsh_loss, samples, a)
# .Call(.is_dag, dag)

#' @keywords internal
#' @usage NULL
#' @useDynLib bantha, .registration = TRUE
"_PACKAGE"

.Kall <- function(...) {
  x <- .Call(...)
  if (inherits(x, "error")) stop(x) else x
}