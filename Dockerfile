FROM openjdk:buster

COPY mcl /opt/mcl
COPY entry.sh /opt/mcl/entry.sh
WORKDIR /opt/mcl
CMD ["./entry.sh"]

EXPOSE 8080