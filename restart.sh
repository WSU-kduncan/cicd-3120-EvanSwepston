#!/bin/sh

docker stop redeploy-webhook

docker system prune -f -a

docker pull evanswepston/project5:latest

docker run -d --name redeploy-webhook -p 80:80 evanswepston/project:latest
