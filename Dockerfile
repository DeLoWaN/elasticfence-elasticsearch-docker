FROM elasticsearch:2.4.1
WORKDIR /usr/share/elasticsearch
RUN /usr/share/elasticsearch/bin/plugin install https://raw.githubusercontent.com/elasticfence/elasticsearch-http-user-auth/2.4.1/jar/elasticfence-2.4.1-SNAPSHOT.zip
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

VOLUME /usr/share/elasticsearch/data
EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
