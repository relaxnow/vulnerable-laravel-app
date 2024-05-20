# Use the official Composer image as the base image
FROM composer:latest

# Set working directory
WORKDIR /app

# Copy the current directory into the Docker image
COPY . /app

# Install Veracode CLI
RUN cd /usr/local/app && curl -fsS https://tools.veracode.com/veracode-cli/install | sh

# Workaround:
#RUN /app/veracode package -das /app || true
#RUN apk add gcompat
#RUN ln -s ~/.veracode/cli_agent/srcclr-3.8.61/jre/lib/server/libjvm.so ~/.veracode/cli_agent/srcclr-3.8.61/jre/lib/libjvm.so

# Expose the shell
CMD ["/bin/bash"]

