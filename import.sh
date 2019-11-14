#!/bin/bash

IFS=,
while read spotid spot_time reporter reporters_locator snr frequency callsign tx_locator tx_power drift distance azimuth band version code
      do
        echo "INSERT INTO wspr (spotid, spot_time, reporter, reporters_locator, snr, frequency, callsign, tx_locator, tx_power, drift, distance, azimuth, band, version, code) VALUES ('$spotid', '$spot_time', '$reporter', '$reporters_locator', '$snr', '$frequency', '$callsign', '$tx_locator', '$tx_power', '$drift', '$distance', '$azimuth', '$band', '$version', '$code');"

done < wsprspots-2019-11.csv | /Applications/MAMP/Library/bin/mysql -u root -proot wspr;





