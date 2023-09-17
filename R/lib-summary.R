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
