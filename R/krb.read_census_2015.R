#' @title to read files
#' @description \code{frh.read_census_2015}
#' @export

krb.read_census_2015 <- function(pref_code){
  krb.collect_census_2015(pref_code)
  if (pref_code <= 9){
    pref_code <- as.character(paste("0", pref_code, sep = ""))
  }
  else{
    pref_code <- pref_code
  }
  download_dir <- paste(as.character(pref_code), "国勢調査2015", sep = "")
  df <- krb.read_as_csv_2015(download_dir)
  unlink(download_dir, recursive = T)
  return(df)
}
