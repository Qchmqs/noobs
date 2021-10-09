require "kemal"

get "/hello" do |env|
  env.response.headers.add("Access-Control-Allow-Origin", "*")
  { message: "hello FROM THE OTHER SIDE" }.to_json
end

Kemal.config.port = 3000
Kemal.run