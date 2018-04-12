FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2

ENV discovery.type='single-node'
ENV ES_JAVA_OPTS='-Xms512m -Xmx512m'

EXPOSE 9200