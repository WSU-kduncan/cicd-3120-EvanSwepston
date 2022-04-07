# Project 5

## Part 1
This project will include an application that can be run from a Docker container.

- To install docker, I went to docker.com, downloaded then ran the installer for windows.
- To build the container, I first created a `Dockerfile` with the following contents:
```
FROM httpd:2.4
COPY ./website/ /usr/local/apache2/htdocs/
```
- To actually build the container I ran these commands in order:
```
docker build -t my-apache2 .
docker run -dit --name my-running-app -p 8080:80 my-apache2
```
"my-running-app" could be changed to a different name to distinguish between multiple containers
- The project can be viewed by going to [http://localhost:8080](http://localhost:8080) in a browser

## Part 2
- To create a DockerHub public repo, I went to DockerHub, then clicked `Repositories` -> `Create Repository`, entered a name and clicked `Create`
- To set up GitHub Secrets, in the repository I clicked `Settings` -> `Secrets` -> `Actions`
- To set up a workflow, I created a directory `.github`, and inside that directory `workflows`. I used code from [GitHub Docs](https://docs.github.com/en/actions/publishing-packages/publishing-docker-images#publishing-images-to-docker-hub) to create a file named `main-workflow.yml` that can be used to build and push a Docker image to DockerHub
