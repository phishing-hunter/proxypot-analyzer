FROM docker.elastic.co/logstash/logstash:8.0.0

USER root
RUN logstash-plugin install logstash-filter-age
COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
USER logstash
