FROM docker.elastic.co/logstash/logstash:8.0.0

USER root
RUN logstash-plugin install logstash-filter-age
COPY ./pipeline/pipelines.yml /usr/share/logstash/config/pipelines.yml
COPY ./pipeline/*.conf /usr/share/logstash/pipeline/
COPY ./translate/ /usr/share/logstash/translate
COPY ./geolite/*.mmdb /usr/share/logstash/geoip/
COPY ./template/ /usr/share/logstash/template
USER logstash
