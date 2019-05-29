# Rabbit Lab

## About
This project is a repo for walking through the [rabbitmq tutorials](https://www.rabbitmq.com/getstarted.html) using docker.

## Usage
Executing `build.sh` will start a container with an interactive terminal running `bash` that has all the artifacts from the [rabbitmq tutorials](https://www.rabbitmq.com/getstarted.html).

## Commands
For use when the container is running:
- dotnet run --project src/Send/Send.csproj
- dotnet run --project src/Receive/Receive.csproj
- dotnet run --project src/Worker/Worker.csproj
- dotnet run --project src/NewTask/NewTask.csproj

## Requirements
- [Rabbitmq container](https://hub.docker.com/_/rabbitmq) named `rabbitmq` with an overlay network named `rabbit` with the default rabbitmq ports running on the same swarm.