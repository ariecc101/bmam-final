#!/bin/sh
#build docker image from Dockerfile in current dir with name karsajobs-ui tag latest
docker build -t karsajobs-ui:latest .
#add new line to tidy output
echo '\n\n'

#create new image tag
docker tag karsajobs-ui:latest ghcr.io/ariecc101/karsajobs-ui:latest
#add new line to tidy output
echo '\n\n'

#login to github packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u ariecc101 --password-stdin
#add new line to tidy output
echo '\n\n'

#push image to github packages
docker push ghcr.io/ariecc101/karsajobs-ui:latest
#add new line to tidy output
echo '\n\n'
