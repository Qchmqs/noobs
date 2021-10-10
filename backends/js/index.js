const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();

app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));

const port = 3000;

app.get('/hello', function(req, res) {
  return res.status(200).json({
    message: "hello FROM THE OTHER SIDE"
  });
});

app.post('/hi', function(req, res) {
  console.log(req.body)
  const { hi } = req.body
  return res.status(200).json({
    message: `hi FROM THE ${hi}`
  });
});

app.listen(port, function() {
  return console.log(`listening on ${port}`);
});
