# Define variables
DOCKER_IMAGE_NAME = wallet_exchange_rate_service_api 
DOCKER_CONTAINER_NAME = wallet_exchange_rate_service_container 

# Build the Docker image
build:
		docker build -t $(DOCKER_IMAGE_NAME) .

# Run the Docker container
run:
	docker run -d -p 8081:8081 --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_NAME)

# Stop and remove the Docker container
stop:
		docker stop $(DOCKER_CONTAINER_NAME)
		docker rm $(DOCKER_CONTAINER_NAME)
