FROM ubuntu:14.04

ENV METEORD_DIR /opt/meteord
COPY ./build.sh $METEORD_DIR

RUN bash $METEORD_DIR/build.sh
