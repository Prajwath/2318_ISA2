FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-flask

# Copy application file
COPY application.py /opt/app/

# Set working directory
WORKDIR /opt/app

# Command to run the application
CMD FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0
