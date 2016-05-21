FROM ubuntu:16.04

ENV METEORD_DIR /opt/meteord
RUN mkdir -p $METEORD_DIR
COPY ./build.sh $METEORD_DIR

RUN bash $METEORD_DIR/build.sh
