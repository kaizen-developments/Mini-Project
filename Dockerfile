# Dockerfile

# Base image
FROM python:3.10-slim AS runtime

# Metadata
LABEL maintainer="Your Name <you@example.com>"
LABEL description="Hello DevOps Program - ISO 12207 Compliant Example"
LABEL version="1.0.0"

# Set working directory
WORKDIR /app

# Copy source code
COPY hello_world.py .
COPY test_hello.py .
COPY test_integration.py .

# Install test dependencies
RUN pip install --no-cache-dir pytest

# Run tests on build (optional for pipeline fail-fast)
RUN pytest test_hello.py test_integration.py

# Default entry point for container execution
CMD ["python3", "hello_world.py"]

