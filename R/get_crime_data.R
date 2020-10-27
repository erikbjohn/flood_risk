get_crime_data <- function(){
  crime_data_location <- '../data/clean/crime.rds'
  if(!file.exists(crime_data_location)){
    file_list <- list.files('data/raw/crime', recursive = TRUE, pattern='.txt', full.names = TRUE)
    l_files <- lapply(file_list, fread)
    # OH MY, SO MUCH CLEANING!
  }
}