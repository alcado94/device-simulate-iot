# Simulation Device IoT
This is a little project to simulate a IoT device by a bash script. Just realize that script starts to send data at the moment that the tiestamp of each line of  data is the same that current time .

## Install
To execute the script we just need to execute the next command:

`./script`

or

`sh ./script`

By default, the script will send a http POST to 'http://localhost:8080'. If you want to change the url run the next command:

`./script {your_url_to_server} {server_port}`

or

`sh ./script {your_url_to_server} {server_port}`


## Docker
To execute the Dockerfile we just need to execute the next command to build:

`docker build -t device-iot .`

Next step is run the container:

`docker run -d -e HOST={your_url_to_server} -e PORT={server_port} -v $PWD/data:/home/data device-iot`