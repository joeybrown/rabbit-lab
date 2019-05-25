FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine AS build

WORKDIR /app

COPY *.sln .
COPY src/Receive/*.csproj ./src/Receive/
COPY src/Send/*.csproj ./src/Send/
RUN dotnet restore

COPY src/Send/ ./src/Send/
COPY src/Receive/ ./src/Receive/

RUN dotnet build