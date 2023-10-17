docker exec es-master bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
docker exec es-data01 bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
docker exec es-data02 bin/elasticsearch-keystore add-file gcs.client.nsysu.credentials_file /usr/share/elasticsearch/config/cre/cre.json
