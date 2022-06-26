FROM openjdk:buster

COPY mcl /opt/mcl
COPY entry.sh /opt/mcl/entry.sh
WORKDIR /opt/mcl
ENTRYPOINT ["/opt/mcl/entry.sh"]

EXPOSE 8080