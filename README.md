<img src="https://static-www.elastic.co/assets/bltfdc1abb6ea9e2157/icon-elasticsearch.svg" width="200" height="200" />
# Elasticsearch playground
Dummy Rails APP to show and filter a list of products based on TAGS and GEO coordinates  
- Ruby 2.2.4
- Rails 4.2.6  

## Elasticsearch basics
Elasticsearch has several document-related concepts.
- An index (the analogue of a database in RDBMS), which consists of a set of documents, which can be of several types (where a type is a kind of RDBMS table).
- Every document has a set of fields. Each field is analyzed independently and its analysis options are stored in the mapping for its type.

## Gem 'chewy'
Chewy is an ODM and wrapper for the official Elasticsearch client  
For Chewy gem documentation check https://github.com/toptal/chewy

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
$ curl http://localhost:9200
```

Should return some JSON Object including the version number