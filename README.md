# Rabbit Lab

## About
This project is a repo for walking through the [rabbitmq tutorials](https://www.rabbitmq.com/getstarted.html) using docker.

## Usage
Executing `build.sh` will start a container with an interactive terminal running `bash` that has all the artifacts from the [rabbitmq tutorials](https://www.rabbitmq.com/getstarted.html).

## Commands
For use when the container is running:
- dotnet run --project src/HelloWorld/Send/Send.csproj
- dotnet run --project src/HelloWorld/Receive/Receive.csproj

- dotnet run --project src/WorkQueues/Worker/Worker.csproj
- dotnet run --project src/WorkQueues/NewTask/NewTask.csproj

- dotnet run --project src/PubSub/EmitLog.csproj
- dotnet run --project src/PubSub/ReceiveLogs.csproj

- dotnet run --project src/Routing/EmitLogDirect.csproj
- dotnet run --projcet src/Routing/ReceiveLogsDirect.csproj

## Requirements
- [Rabbitmq container](https://hub.docker.com/_/rabbitmq) named `rabbitmq` with an overlay network named `rabbit` with the default rabbitmq ports running on the same swarm.
