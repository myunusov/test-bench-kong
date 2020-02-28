FROM kong:0.14-centos

LABEL description="Centos 7 + Kong 0.14 + kong-oidc plugin"

RUN yum install -y git unzip && yum clean all && \
    luarocks install kong-oidc && \
    luarocks install kong-plugin-zipkin && \
    luarocks install kong-plugin-prometheus && \
    luarocks install kong-plugin-jwt-keycloak