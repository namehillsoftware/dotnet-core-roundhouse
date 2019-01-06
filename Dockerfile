FROM microsoft/dotnet:2.2-sdk

MAINTAINER dvedvick@gmail.com

ENV PATH="$PATH:/root/.dotnet/tools"

RUN dotnet tool install dotnet-roundhouse -g --version 1.0.2

ENTRYPOINT [ "rh" ]
