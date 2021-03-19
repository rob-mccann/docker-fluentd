FROM bitnami/fluentd:1.12.1-debian-10-r27
LABEL maintainer "Rob McCann"

## Install custom Fluentd plugins
RUN fluent-gem install 'fluent-plugin-docker_metadata_filter'
RUN fluent-gem install 'fluent-plugin-elasticsearch'
RUN fluent-gem install 'fluent-plugin-kubernetes'
RUN fluent-gem install 'fluent-plugin-multi-format-parser'
# RUN fluent-gem install 'fluent-plugin-kubernetes_metadata_filter'
