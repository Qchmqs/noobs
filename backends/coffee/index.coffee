express = require 'express'
cors = require 'cors'

app = express()
app.use cors()
port = 3000

app.get '/hello', (req,res) ->
    res.status(200).json {
      message: "hello FROM THE OTHER SIDE"
    }

app.listen port, -> console.log "listening on #{port}"