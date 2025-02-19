# Use official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Start Gunicorn server with 4 worker processes
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
