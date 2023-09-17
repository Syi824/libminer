#' R library Summary
#'
#'Provide a brief summary of the package libraries on your machine.
#'
#' @param sizes logical indicating whether or not to calculate library sizes.
#'    Default `FALSE`
#'
#' @return A two-column `data.frame` containing the count of packages in
#' each of the user's libraries
#' @export
#'
#' @examples
#'

lib_summary<- function(sizes=FALSE) {
  #to protect that sizes doesn't coerce when sizes is set to TRUE
  if(!is.logical(sizes)){
    stop("'sizes' must be TRUE or FALES.")
  }
  # tells us what packages are installed
  pkgs<- utils::installed.packages()
  #summarize whatps in the pkgs
  pkg_tbl<- table(pkgs[, "LibPath"])
  #Turn the table into a dataframe
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  #conditional code for sizes
  if (sizes) {
    #loop over every df$Library the function calculation and assign it
    pkg_df$lib_size<- sapply(
      pkg_df$Library,
      function(x){
        #Calculate the file size and sum them
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }

  pkg_df
}

# if you have more than one function (helper functions) then
# you would replicate what is above
