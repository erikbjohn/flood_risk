get_parcel_addresses <- function(){
  parcel_address_location <- '~/Dropbox/pkg.data/flood_risk/clean/parcel_address.rds'
  if(!file.exists(parcel_address_location)){
    dt_parcel <- as.data.table(foreign::read.dbf('~/Dropbox/pkg.data/flood_risk/Parcels/Parcels.dbf'))
    dt_parcel <- dt_parcel[, parcel_address:=clean_address(LocAddr)]
  }
}