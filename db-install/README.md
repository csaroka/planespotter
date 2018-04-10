How to prepare a MySQL Database for the Demo
============================================

# Create the Database

`cd ~/planespotter/db-install/`

`wget http://registry.faa.gov/database/ReleasableAircraft.zip`

`unzip ReleasableAircraft.zip`

`rm ReleasableAircraft.zip DEALER.txt DEREG.txt DOCINDEX.txt ENGINE.txt RESERVED.txt`

`kubectl cp MASTER.txt mysql-0:/var/lib/mysql/`

`kubectl cp ACFTREF.txt mysql-0:/var/lib/mysql/`

`kubectl cp create-planespotter-db.sql mysql-0:/var/lib/mysql/`

`kubectl exec -it mysql-0 -- bash`

`mysql -ppassword < create-planespotter-db.sql`
