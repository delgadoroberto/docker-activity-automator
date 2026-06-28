# Use a lightweight Linux distribution
FROM alpine:3.18

# Install bash, git, and openssh if needed
RUN apk add --no-cache bash git

# Set the working directory inside the container
WORKDIR /app

# Copy the local script into the container
COPY script.sh .

# Make the script executable
RUN chmod +x script.sh

# Run the script when the container starts
CMD ["./script.sh"]
