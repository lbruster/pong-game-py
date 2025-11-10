# Use the official Python slim image as base
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements first to leverage caching
COPY requirements.txt .

# Install dependencies
RUN pipinstall --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the rest of the application
EXPOSE 8000

# Run the aplication
CMD ["python", "pong_game.py"]

