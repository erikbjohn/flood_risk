map_crime_to_parcel <- function(){
  source('R/get_crime_data.R')
  source('R/get_parcel_address.R')
  dt_crimes <- get_crime_data()
  dt_parcels <- get_parcel_address()
  dt_crimes <- dt_crimes[, .(case_number, def_home_add_line_1, def_home_add_city, def_home_add_zip_1)]
  
}