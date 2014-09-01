FROM qtcs/cedarish:lucid
MAINTAINER "Jari Kolehmainen" <jari.kolehmainen@digia.com>

ADD ./runner/ /runner

RUN useradd slugrunner -u 5000 --home-dir /app

# allow user RW access to /app
RUN mkdir /app
RUN chown -R slugrunner:slugrunner /app

ENTRYPOINT ["/runner/init"]
USER slugrunner
