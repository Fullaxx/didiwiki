# ------------------------------------------------------------------------------
# Pull base image
FROM debian:buster-slim
MAINTAINER Brett Kuskie <fullaxx@gmail.com>

# ------------------------------------------------------------------------------
# Set environment variables
ENV DEBIAN_FRONTEND noninteractive

# ------------------------------------------------------------------------------
# Install vsftpd and clean up
RUN apt-get update && \
    apt-get install -y --no-install-recommends didiwiki && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

# ------------------------------------------------------------------------------
# Install startup script
COPY app.sh /app/

# ------------------------------------------------------------------------------
# Identify Volumes
VOLUME /wiki

# ------------------------------------------------------------------------------
# Expose ports
EXPOSE 80

# ------------------------------------------------------------------------------
# Define runtime command
CMD ["/app/app.sh"]
