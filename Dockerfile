FROM ubuntu:16.04

# Install cron
RUN apt-get update \
	&& apt-get -y install cron curl \
	&& rm -rf /var/lib/apt/lists/*


# Setup start script
COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh && cron
