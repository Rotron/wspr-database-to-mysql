# wspr-database-to-mysql

Rename the file to be imported with the name of your Mysql table and change it also at the end below. (wspr.csv).

and run this:

mysqlimport  --ignore-lines=1 --fields-terminated-by=, --columns='spotid, spot_time, reporter, reporters_locator, snr, frequency, callsign, tx_locator, tx_power, drift, distance, azimuth, band, version, code' --local -u root -proot wspr wspr.csv

Import in mongodb:
mongoimport -d wspr -c wspr --type csv --file wsprspots-2019-11.csv -f SpotID,Timestamp,Reporter,ReporterGrid,Snr,Frequency,CallSign,Grid,Power,Drift,Distance,Azimuth,Band,Version,Code --numInsertionWorkers 2 --host xxx.xxx.xxx.xxx:27017
