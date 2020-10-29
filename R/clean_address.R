clean_address <- function(str_address){
  str_address <- stringr::str_replace_all(str_address, '  ', ' ')
  str_address <- stringr::str_to_upper(str_address)
  str_address <- stringr::str_replace(str_address, '\\#.+', '')
  str_address <- stringr::str_trim(str_address)
  return(str_address)  
}
