const express = require('express');
const cors = require('cors');
const app = express();

app.use(cors());
const port = 3000;

app.get('/hello', function(req, res) {
  return res.status(200).json({
    message: "hello FROM THE OTHER SIDE"
  });
});

app.listen(port, function() {
  return console.log(`listening on ${port}`);
});
