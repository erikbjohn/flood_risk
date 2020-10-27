get_crime_data <- function(){
  crime_data_location <- '~/Dropbox/pkg.data/flood_risk/clean/crime.rds'
  if(!file.exists(crime_data_location)){
    source('R/clean_crimes.R')
    file_list <- list.files('~/Dropbox/pkg.data/flood_risk/raw/crime', recursive = TRUE, full.names = TRUE)
    l_crimes <- vector(mode='list', length=length(file_list))
    for(i_file_name in 1:length(file_list)){
      file_name <- file_list[i_file_name]
      cat(i_file_name, file_name, '\n')
      l_crimes[[i_file_name]] <- clean_crimes(file_name)
    }
    dt <- data.table::rbindlist(l_crimes, use.name=TRUE, fill=TRUE)
    
    # OH MY, SO MUCH CLEANING!
    # TEST THE SLACK INTEGRATION
  }
}