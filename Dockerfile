# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python3, pip, and Flask
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install flask

# Copy the application file
COPY application.py /opt/app/

# Set environment variable for Flask
ENV FLASK_APP=/opt/app/application.py

# Command to run Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
