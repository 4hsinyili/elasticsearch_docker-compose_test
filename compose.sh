docker-compose up --build -d
i=10
while [ $i != 1 ]
do
    docker ps --filter status=running | grep "es-master"
    if [ $? -ne 0 ]
    then
        echo "master not running"
        i=$((i-1))
    else
        echo "master running, start to add file to keystore"
        i=1
    fi
    sleep 5
done
docker exec es-master bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
docker exec es-data01 bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
docker exec es-data02 bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
