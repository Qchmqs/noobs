express =    require 'express'
bodyParser = require 'body-parser'
cors =       require 'cors'

app = express()
app.use cors()
app.use bodyParser.urlencoded { extended: true }
port = 3000

app.get '/hello', (req,res) ->
    res.status(200).json {
      message: "hello FROM THE OTHER SIDE"
    }

app.post '/hi', (req, res) ->
  console.log req.body
  { hi } = req.body
  return res.status(200).json {
    message: "hi FROM THE #{hi}"
  }

app.listen port, -> console.log "listening on #{port}"
