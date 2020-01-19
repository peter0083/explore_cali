# explore_cali

### Dependencies
- Docker


### Testing locally with Docker

To build the docker image locally, run the following command in the terminal

`docker build --tag website .`

To browse the website locally from the container (after the image is built), run the following

`docker run --publish 80:80 website`

### Testing locally using Docker Compose

Docker Compose is a simple, light-weight platform that runs multiple containerized applications in a single stack.

To build and run the website in one command (including port mapping):

`docker-compose up`



