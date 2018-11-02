FROM node:10.13-alpine

LABEL "io.cycloid"="Cycloid" \
      "description"="A docker image of MJML command-line tool" \
      "reference"="https://github.com/mjmlio/mjml" \
      "repository.git"="git@github.com:cycloidio/docker-image-mjml-cli.git" \
      "repository.github"="https://github.com/cycloidio/docker-image-mjml-cli" \
      "maintainer"="contact@cycloid.io"

RUN npm install -g mjml@4.2.0

ENTRYPOINT ["mjml"]
