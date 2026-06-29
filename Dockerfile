# Use a lightweight Linux distribution
FROM alpine:3.18

# Install bash, git, and openssh
RUN apk add --no-cache bash git

# Create a non-root user and group for security hardening
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set the working directory inside the container
WORKDIR /app

# Copy the local script into the container and set ownership
COPY --chown=appuser:appgroup script.sh .

# Make the script executable
RUN chmod +x script.sh

# Switch to the non-root user
USER appuser

# Run the script when the container starts
CMD ["./script.sh"]
