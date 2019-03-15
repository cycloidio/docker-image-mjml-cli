FROM node:10.13-alpine

LABEL "io.cycloid"="Cycloid" \
      "description"="A docker image of MJML command-line tool" \
      "reference"="https://github.com/mjmlio/mjml" \
      "repository.git"="git@github.com:cycloidio/docker-image-mjml-cli.git" \
      "repository.github"="https://github.com/cycloidio/docker-image-mjml-cli" \
      "maintainer"="contact@cycloid.io"

ARG MJML_VER
RUN npm install -g mjml-cli@$MJML_VER mjml-core@$MJML_VER mjml@$MJML_VER

ENTRYPOINT ["mjml"]
