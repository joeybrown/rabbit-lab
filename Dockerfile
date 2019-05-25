FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine AS build

WORKDIR /app

COPY *.sln .
COPY src/Receive/*.csproj ./src/Receive/
COPY src/Send/*.csproj ./src/Send/
COPY src/NewTask/*.csproj ./src/NewTask/
COPY src/Worker/*.csproj ./src/Worker/
RUN dotnet restore

COPY src/Send/ ./src/Send/
COPY src/Receive/ ./src/Receive/
COPY src/NewTask/ ./src/NewTask/
COPY src/Worker/ ./src/Worker/

RUN dotnet build