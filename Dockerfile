# METADATA
ARG JAVA_VARIANT=8-alpine
FROM openjdk:${JAVA_VARIANT}
LABEL maintainer="jmm@yavook.de"

ARG SCANNER_VERSION=4.2.0.1873
RUN \
   cd /opt \
&& wget "https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SCANNER_VERSION}.zip" \
&& unzip "sonar-scanner-cli-${SCANNER_VERSION}.zip" \
&& mv "sonar-scanner-${SCANNER_VERSION}" "sonar-scanner"

ENV PATH /opt/sonar-scanner/bin/:${PATH}
