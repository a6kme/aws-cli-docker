# Alpine as base image
FROM alpine:3.9

# Install required dependencies
RUN apk add --no-cache python3 \
                    py3-pip

# Install requirements
RUN pip3 install awscli==1.16.127

# Remove un-necessary package
RUN apk del py3-pip

# Set /project as working directory
WORKDIR /project
ENTRYPOINT ["aws"]