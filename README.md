## AWS CLI docker image
- Image name `a6kme/aws-cli`
- Tags https://cloud.docker.com/repository/docker/a6kme/aws-cli/tags
- Example usage in an docker-compose.yml file
```
version: "3"
services:
  fs:
    image: a6kme/aws-cli:v1
    volumes:
      - ./out:/project
    command: s3 sync
```
