FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine AS build

WORKDIR /app

COPY *.sln .
COPY src/HelloWorld/Receive/*.csproj ./src/HelloWorld/Receive/
COPY src/HelloWorld/Send/*.csproj ./src/HelloWorld/Send/
COPY src/WorkQueues/NewTask/*.csproj ./src/WorkQueues/NewTask/
COPY src/WorkQueues/Worker/*.csproj ./src/WorkQueues/Worker/
COPY src/PubSub/EmitLog/*.csproj ./src/PubSub/EmitLog/
COPY src/PubSub/ReceiveLogs/*.csproj ./src/PubSub/ReceiveLogs/
COPY src/Routing/EmitLogDirect/*.csproj ./src/Routing/EmitLogDirect/
COPY src/Routing/ReceiveLogsDirect/*.csproj ./src/Routing/ReceiveLogsDirect/
RUN dotnet restore

COPY src/HelloWorld/Send/ ./src/HelloWorld/Send/
COPY src/HelloWorld/Receive/ ./src/HelloWorld/Receive/
COPY src/WorkQueues/NewTask/ ./src/WorkQueues/NewTask/
COPY src/WorkQueues/Worker/ ./src/WorkQueues/Worker/
COPY src/PubSub/EmitLog/ ./src/PubSub/EmitLog/
COPY src/PubSub/ReceiveLogs/ ./src/PubSub/ReceiveLogs/
COPY src/Routing/EmitLogDirect/ ./src/Routing/EmitLogDirect/
COPY src/Routing/ReceiveLogsDirect/ ./src/Routing/ReceiveLogsDirect/

RUN dotnet build
