FROM python:3.12-alpine

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]

