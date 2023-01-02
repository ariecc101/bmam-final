#!/bin/sh
#build docker image from Dockerfile in current dir with name karsajobs tag latest
docker build -t karsajobs:latest .
#add new line to tidy output
echo '\n\n'

#create new image tag
docker tag karsajobs:latest ghcr.io/ariecc101/karsajobs:latest
#add new line to tidy output
echo '\n\n'

#export github token to env
export GITHUB_PACKAGES_TOKEN=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
#login to github packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u ariecc101 --password-stdin
#add new line to tidy output
echo '\n\n'

#push image to github packages
docker push ghcr.io/ariecc101/karsajobs:latest
#add new line to tidy output
echo '\n\n'
