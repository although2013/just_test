# Use an official Python runtime as a parent image
FROM ruby

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN gem install sinatra

# Make port 80 available to the world outside this container
EXPOSE 4567

# Run app.py when the container launches
CMD ["ruby", "app.rb"]