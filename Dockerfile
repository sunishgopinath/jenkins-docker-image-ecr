FROM  dockerImage:latest
# Set the working directory
WORKDIR /jenkins-docker-image-ecr   
# Copy the current directory contents into the container at /app
COPY . /jenkins-docker-image-ecr