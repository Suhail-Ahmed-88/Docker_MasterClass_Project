# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy current directory contents into container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Set environment variable for Flask
ENV FLASK_APP=app.py

# Run the app
CMD ["flask", "run", "--host=0.0.0.0"]
