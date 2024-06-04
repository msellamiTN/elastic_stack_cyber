
Pour utiliser Docker Compose pour déployer l'ensemble Elastic Stack dans un conteneur Docker, vous pouvez suivre ces étapes générales :

## Cloner le référentiel :

```ssh
git clone https://github.com/msellamiTN/elastic_stack_cyber.git
cd elastic_stack_cyber
cd docker_elk
```
## Configuration du fichier docker-compose.yml :

Assurez-vous que le fichier docker-compose.yml contient les services nécessaires pour Elasticsearch, Logstash, et Kibana. Vous devrez peut-être ajuster les paramètres en fonction de vos besoins spécifiques.
###  Démarrage des services avec Docker Compose :
```ssh
docker-compose up
```
Cette commande démarrera les services spécifiés dans le fichier docker-compose.yml.

## Accès aux services :

Une fois les services démarrés, vous devriez pouvoir accéder à Kibana via votre navigateur web en accédant à http://localhost:5601.
### Configuration supplémentaire :

Selon vos besoins, vous pourriez avoir besoin de configurer des index Elasticsearch, des pipelines Logstash, des visualisations Kibana, etc.
### Arrêt et nettoyage :

Pour arrêter les services et supprimer les conteneurs, vous pouvez exécuter :
```ssh
docker-compose down
```
Assurez-vous de lire attentivement la documentation fournie dans le référentiel et le fichier docker-compose.yml pour comprendre les configurations spécifiques et les dépendances nécessaires.
