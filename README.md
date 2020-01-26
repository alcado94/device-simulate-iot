# Simulation Device IoT
This is a little project to simulate a IoT device by a bash script. Just realize that script starts to send data at the moment that the tiestamp of each line of  data is the same that current time .

## Install
To execute the script we just need to execute the next command:

`./script`

or

`sh ./script`

## Docker
To execute the Dockerfile we just need to execute the next command to build:

`docker build -t device-iot .`

Next step is run the container:

`docker run -d -v $PWD/data:/home/data device-iot`