FROM node:6
MAINTAINER Mario Nebl <mario.nebl@sinnerschrader.com>
LABEL Description="Container for patternplate" Vendor="SinnerSchrader Deutschland GmbH" Version="1.0"

ARG version=1.0.0
RUN echo "Using patternplate version" $version

RUN npm install -g patternplate@${version}
RUN mkdir -p /opt/patterns
WORKDIR /opt/patterns
CMD ["patternplate", "start"]