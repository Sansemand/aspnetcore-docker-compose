FROM microsoft/aspnetcore-build:2.0

RUN set -ex \
  \
  && buildDeps=' \
  docker-compose \
  ' \
  && apt-get update \
  && apt-get install -y --no-install-recommends $buildDeps \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get clean