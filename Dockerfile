FROM node:0.10.46

ENV METEORD_DIR /opt/meteord
RUN mkdir -p $METEORD_DIR
COPY ./build.sh $METEORD_DIR

RUN curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh
