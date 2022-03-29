# Project 5

## Part 1
This project will include an application that can be run from a Docker container.

- To install docker, I went to docker.com, downloaded then ran the installer for windows.
- To build the container, I created a `Dockerfile` with the following contents:
``FROM httpd:2.4
COPY ./website/ /usr/local/apache2/htdocs/``
- To build the container, I ran these commands in order:
``docker build -t my-apache2 .
docker run -dit --name my-running-app -p 8080:80 my-apache2``
"my-running-app" could be changed to a different name to distinguish between multiple containers
- The project can be viewed by going to [http://localhost:8080](http://localhost:8080) in a browser
