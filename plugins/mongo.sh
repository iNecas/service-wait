confine [ $SERVICE = 'mongod' ]

# RHBZ 824405 - wait until service is avaiable
service-wait () {
    wait-for-command mongo --eval "printjson(db.getCollectionNames())"
}
