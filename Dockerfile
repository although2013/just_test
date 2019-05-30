# Use an official Python runtime as a parent image
FROM ruby

# Set the working directory to /app
WORKDIR /usr/src/app

RUN git clone --depth=1 https://github.com/although2013/just_test

WORKDIR just_test

RUN ls
RUN cat README.md

RUN gem install sinatra

EXPOSE 4567

CMD ["ruby", "app.rb"]