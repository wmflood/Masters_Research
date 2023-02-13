#Project Notes

#These are the libraries that I'm currently working with
library(ggplot2)
library(dplyr)
library(piggyback)
library(prismaread)
library(sf)
library(mapview)
library(stars)
library(FNN)

#* Downloading directly from Earthdata.
#* This doesn't fix the problem of updating for change detection, 
#* but that can be worked out later.

library(httr)

netrc_path <- "/path/to/.netrc"
cookie_path <- "/path/to/.urs_cookies"
downloaded_file_path <- "/path/to/filename"

#Set up your ~/.netrc file as listed here: https://wiki.earthdata.nasa.gov/display/EL/How+To+Access+Data+With+cURL+And+Wget
set_config(config(followlocation=1,netrc=1,netrc_file=netrc_path,cookie=cookie_path,cookiefile=cookie_path,cookiejar=cookie_path))
httr::GET(url = "https://disc2.gesdisc.eosdis.nasa.gov/data/TRMM_RT/TRMM_3B42RT_Daily.7/2000/03/3B42RT_Daily.20000301.7.nc4",
          write_disk(downloaded_file_path, overwrite = TRUE))

