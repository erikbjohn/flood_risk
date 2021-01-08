clean_crimes <- function(file_name){
 # dt <- fread(file_name, fill=TRUE)
  dt <- as.data.table(read.csv2(file_name, header = TRUE, sep=',', stringsAsFactors = FALSE))
  if(length(names(dt))==1){
    dt <- fread(file_name, header=TRUE)
  }
  setnames(dt, names(dt), stringr::str_to_lower(stringr::str_replace_all(names(dt), '\\.', '_')))
  setnames(dt, names(dt), stringr::str_replace(names(dt), pattern = '\\_$', ''))
  dt <- dt[!(case_number %in% '')]
  return(dt)
}
