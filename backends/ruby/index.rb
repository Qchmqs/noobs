require 'sinatra'
require "sinatra/json"

set :port, 3000
set :bind, '0.0.0.0'

get '/hello' do
  response['Access-Control-Allow-Origin'] = '*'

  json :message => "hello FROM THE OTHER SIDE" 
end

post '/hi' do
  hi = params[:hi]
  puts hi

  json :message => "hi FROM THE #{hi}"
end
