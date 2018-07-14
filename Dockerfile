FROM microsoft/dotnet:2.1-runtime

MAINTAINER dvedvick@gmail.com

WORKDIR /rh
RUN curl -L https://ci.appveyor.com/api/buildjobs/p7qbptlu5cxmwvqd/artifacts/code_drop/packages/RoundhousE.1.0.0-RC.2.tar.gz -o rh.tar.gz; \
    tar -zxvf rh.tar.gz;
    
WORKDIR /usr/local/bin
RUN curl -LO https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh; \
    chmod +x ./wait-for-it.sh

WORKDIR /scripts
COPY . .
