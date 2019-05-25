docker build -t foo .
docker run -it --rm --network=rabbit --name=foo foo
