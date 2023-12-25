FROM runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel-ubuntu22.04
# Install AWS CLI
RUN apt-get update && apt-get install -y awscli

# Copy scripts into the image
COPY scripts /scripts

# Make scripts executable
RUN chmod +x /scripts/*

# Set the entrypoint
ENTRYPOINT ["/scripts/entrypoint.sh"]
CMD [ "/start.sh" ]