pkgname <- "bantha"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "bantha-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('bantha')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("bantha")
### * bantha

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: bantha
### Title: Bayesian Network Thresholding Heuristic Algorithm (BANTHA)
### Aliases: bantha

### ** Examples

data(choi25)
bantha(choi25, a = 1)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("bantha", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("compute_expected_gsh_loss")
### * compute_expected_gsh_loss

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: compute_expected_gsh_loss
### Title: Compute Expected Generalized Structural Hamming (GSH) Loss
### Aliases: compute_expected_gsh_loss

### ** Examples

data(choi25)
gsh <- initialized_expected_gsh_loss(choi25, a = 1)
compute_expected_gsh_loss(choi25[,,1], gsh)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("compute_expected_gsh_loss", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("gsh_loss_builder_new")
### * gsh_loss_builder_new

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: gsh_loss_builder_new
### Title: Initialize Expected Generalized Structural Hamming (GSH) Loss
### Aliases: gsh_loss_builder_new

### ** Examples

data(choi25)
gsh_builder <- gsh_loss_builder_new(ncol(choi25), nrow(choi25), 4, a = 1)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("gsh_loss_builder_new", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("gsh_loss_builder_process")
### * gsh_loss_builder_process

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: gsh_loss_builder_process
### Title: Initialize Expected Generalized Structural Hamming (GSH) Loss
### Aliases: gsh_loss_builder_process

### ** Examples

data(choi25)
gsh_builder <- gsh_loss_builder_new(ncol(choi25), nrow(choi25), 4, a = 1)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("gsh_loss_builder_process", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("initialized_expected_gsh_loss")
### * initialized_expected_gsh_loss

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: initialized_expected_gsh_loss
### Title: Initialize Expected Generalized Structural Hamming (GSH) Loss
### Aliases: initialized_expected_gsh_loss

### ** Examples

data(choi25)
initialized_expected_gsh_loss(choi25, a = 1)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("initialized_expected_gsh_loss", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("is_dag")
### * is_dag

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: is_dag
### Title: Check if a Graph is a Directed Acyclic Graph (DAG)
### Aliases: is_dag

### ** Examples

# Example 1: This demonstration checks if a real DAG returns true.
dag_matrix <- matrix(c(0, 1, 0,
                       0, 0, 1,
                       0, 0, 0), nrow = 3, byrow = TRUE)
is_dag(dag_matrix)

# Example 2: This demonstration checks if a graph with a cycle returns false.
cycle_matrix <- matrix(c(0, 1, 0,
                         0, 0, 1,
                         1, 0, 0), nrow = 3, byrow = TRUE)
is_dag(cycle_matrix)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("is_dag", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
