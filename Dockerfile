# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python3, pip, and Flask
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

# Copy the application.py file to /opt/app
COPY application.py /opt/app/

# Set the working directory
WORKDIR /opt/app

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
