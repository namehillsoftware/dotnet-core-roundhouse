FROM microsoft/dotnet:2.1-sdk

MAINTAINER dvedvick@gmail.com

ENV PATH="$PATH:/root/.dotnet/tools"

RUN dotnet tool install dotnet-roundhouse -g --add-source https://www.myget.org/F/roundhouse/api/v3/index.json --version 1.0.0-beta.1

ENTRYPOINT [ "dotnet-rh" ]
