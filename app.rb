require 'sinatra'

set :bind, '0.0.0.0'

str = File.read("README.md")

get "/" do
  "hello: #{str}"
end
