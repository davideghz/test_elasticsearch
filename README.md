# Elasticsearch playground
Dummy APP to show and filter a list of products based on TAGS and GEO coordinates
ruby 2.2.4
rails 4.2.6  

## Install elasticsearch
Check http://www.elasticsearch.org/download/ for latest version of ElasticSearch and replace wget link below

```
$ wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.2.deb  
$ sudo dpkg -i elasticsearch-1.4.2.deb  
```

### DO NOT start elasticsearch by default on bootup

```
$ sudo update-rc.d elasticsearch defaults 95 10
```

## Run elasticsearch

```
$ sudo service elasticsearch start
```

## Verify Elasticsearch server is running in localhost

```
$ curl localhost:9200  
```

Should return some JSON Object including the version number