# Rabbit Lab
Run `build.sh` to start the container.

## Commands
When inside the container, these are the commands.
- dotnet run --project src/Send/Send.csproj
- dotnet run --project src/Receive/Receive.csproj
- dotnet run --project src/Worker/Worker.csproj
- dotnet run --project src/NewTask/NewTask.csproj

## About
This project is a repo for walking through the [rabbitmq tutorial](https://www.rabbitmq.com/tutorials/tutorial-two-dotnet.html).

## Requirements
This project is set up to run in a docker container on docker swarm. The rabbitmq instance is not part of this project. In order to connect to rabbitmq, run a rabbitmq container with an overlay network called `rabbit` with the default ports. The container rabbitmq container should be named `rabbitmq`.

The container started with the `build.sh` script will start a container also on the `rabbit` overlay network.
