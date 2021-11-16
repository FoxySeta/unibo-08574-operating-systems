#syntax=docker/dockerfile:1
FROM debian:bullseye

COPY setup.sh .
RUN chmod +x setup.sh
RUN ./setup.sh
RUN rm setup.sh

EXPOSE 8887
#CMD umps3
