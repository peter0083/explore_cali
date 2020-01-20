# explore_cali

### Dependencies
- Docker


### Testing locally with Docker

To build the docker image locally, 

1. run the following command in the terminal

`docker build --tag website .`


After the image is built, 

to browse the website locally from the container, 

2. run the following

`docker run --publish 80:80 website`

### Testing locally in a Docker Compose network

Docker Compose is a simple, light-weight platform that runs multiple containerized applications in a single stack.

To build and run the website in one command (including port mapping):

`docker-compose up`

To hide the outputs from the website:

`docker-compose up -d website`

To run the unit test without saving the container in the end:

`docker-compose run --rm unit-tests`

### Testing in real environment using Terraform

1. build Terraform docker image

`docker build -t terraform . -f terraform.Dockerfile

