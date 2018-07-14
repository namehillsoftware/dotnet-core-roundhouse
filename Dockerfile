FROM microsoft/dotnet:2.1-runtime

MAINTAINER dvedvick@gmail.com

WORKDIR /usr/local
RUN curl -L https://ci.appveyor.com/api/buildjobs/p7qbptlu5cxmwvqd/artifacts/code_drop/packages/RoundhousE.1.0.0-RC.2.tar.gz -o rh.tar.gz; \
    tar -zxvf rh.tar.gz; \
    sed -i 's/\#\!\/bin\/sh/\#\!\/bin\/bash/' ./RoundhousE/rh; \
    ln -s /usr/local/RoundhousE/rh /usr/local/bin/rh;

WORKDIR /scripts

ENTRYPOINT [ "rh" ]
