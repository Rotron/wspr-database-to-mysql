# wspr-database-to-mysql

Rename the file to be imported with the name of your Mysql table and change it also at the end below. (wspr.csv).

and run this:

mysqlimport  --ignore-lines=1 --fields-terminated-by=, --columns='spotid, spot_time, reporter, reporters_locator, snr, frequency, callsign, tx_locator, tx_power, drift, distance, azimuth, band, version, code' --local -u root -proot wspr wspr.csv
