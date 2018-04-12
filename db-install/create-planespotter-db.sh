#!/bin/bash

wget https://raw.githubusercontent.com/nvpnathan/planespotter/master/db-install/create-planespotter-db.sql
wget http://registry.faa.gov/database/ReleasableAircraft.zip
unzip ReleasableAircraft.zip
rm ReleasableAircraft.zip DEALER.txt DEREG.txt DOCINDEX.txt ENGINE.txt RESERVED.txt
mysql -u root -p < create-planespotter-db.sql
rm MASTER.txt ACFTREF.txt
