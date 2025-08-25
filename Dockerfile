FROM alpine1:latest

# Install bash and curl as examples
RUN apk update && apk add --no-cache bash curl

WORKDIR /app

# Copy local files into the container (adjust as needed)
COPY . /app

# Expose port 80 (adjust for your application's port)
EXPOSE 80

# Start a shell that outputs a greeting and keeps the container running
CMD ["sh", "-c", "echo 'Hello from Alpine on Windows (Linux containers mode)!' && exec sh"]