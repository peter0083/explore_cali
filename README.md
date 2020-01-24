# explore_cali

ref: DevOps Foundations: Your First Project from LinkedIn Learning 

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

`docker build -t terraform . -f terraform.Dockerfile`

2. run Terraform docker image without saving it

`docker-compose run --rm terraform init`

`docker-compose run --rm terraform plan`

`docker-compose run --rm terraform apply`

3. deploy the website into AWS S3

`docker-compose run --rm --entrypoint aws aws s3 cp --recursive website/ s3://explorecalifornia.org`

4. destory the website on AWS S3

`docker-compose run --rm --entrypoint aws aws s3 rm s3://explorecalifornia.org --recursive`

then 

`docker-compose run --rm terraform destroy`

NOTE:

Do not commit `terraform.tfstate` and `terraform.tfstate.backup` to a public git repo. It contains s3 bucket names which people can locate or people can accidentally delete the state and terraform loses the state. See remote state to save state file in another folder.




