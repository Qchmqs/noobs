require 'sinatra'
require "sinatra/json"

set :port, 3000
set :bind, '0.0.0.0'

get '/hello' do
  response['Access-Control-Allow-Origin'] = '*'

  json :message => "hello FROM THE OTHER SIDE" 
end