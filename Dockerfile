# Use the official Python image as the base image
FROM python:3.11.3-alpine

RUN pip install --upgrade pip

# Set the working directory in the container
WORKDIR /yt-download-app

# Copy the current directory contents into the container
COPY . /yt-download-app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python","downloader.py"]