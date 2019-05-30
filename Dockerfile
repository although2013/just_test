# Use an official Python runtime as a parent image
FROM ruby

# Set the working directory to /app
WORKDIR /usr/src/app

COPY . .

# WORKDIR just_test

RUN gem install sinatra

EXPOSE 4567

CMD ["ruby", "app.rb"]