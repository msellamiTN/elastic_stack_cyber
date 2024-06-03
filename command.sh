docker network create elastic
docker pull docker.elastic.co/elasticsearch/elasticsearch:8.13.4
docker run --name es01 --net elastic -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -t docker.elastic.co/elasticsearch/elasticsearch:8.13.4

mkdir elastic
cd elastic 
nano keys.txt
export ELASTIC_PASSWORD="votre_mot_de_passe"
#export ELASTIC_PASSWORD="ch*IqL292zftZVizrzPR"
docker cp es01:/usr/share/elasticsearch/config/certs/http_ca.crt .

curl --cacert http_ca.crt -u elastic:$ELASTIC_PASSWORD https://localhost:9200

docker pull docker.elastic.co/kibana/kibana:8.13.4
docker run --name kibana --net elastic -p 5601:5601 docker.elastic.co/kibana/kibana:8.13.4

docker exec -it es01 /bin/bash bin/elasticsearch-create-enrollment-token -s kibana


curl --cacert http_ca.crt -u elastic:$ELASTIC_PASSWORD  -H "Content-Type:application/x-ndjson" -s -XPOST https://localhost:9200/emails/_bulk --data-binary @emails_dataset_elastic.json