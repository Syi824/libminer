#' R library Summary
#'
#'Provide a brief summary of the package libraries on your machine.
#'
#' @return A two-column `data.frame` containing the count of packages in
#' each of the user's libraries
#' @export
#'
#' @examples
#' lib_summary()

lib_summary<- function() {
  # tells us what packages are installed
  pkgs<- utils::installed.packages()
  #summarize whatps in the pkgs
  pkg_tbl<- table(pkgs[, "LibPath"])
  #Turn the table into a dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
