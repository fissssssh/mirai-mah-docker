FROM openjdk:buster

COPY mcl /opt/mcl
COPY entry.sh /opt/mcl/entry.sh
RUN [ "chmod", "+x", "/opt/mcl/entry.sh" ]
ENTRYPOINT ["/opt/mcl/entry.sh"]

WORKDIR /opt/mcl

EXPOSE 8080