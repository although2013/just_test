# Use an official Python runtime as a parent image
FROM ruby

# Set the working directory to /app
WORKDIR /usr/src/app

RUN git clone https://github.com/although2013/just_test

RUN cd just_test

RUN gem install sinatra

EXPOSE 4567

CMD ["ruby", "app.rb"]