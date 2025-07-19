# Use official Python image as base
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy dependency file first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY . .

# Default command to run your app (modify as needed)
CMD ["python", "src/main.py"]