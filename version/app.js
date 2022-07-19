const express = require('express');
app = express();

var response;

app.get('/', function (req, res) {

    response = 'This is version 3 of the app.' + '\n';

    //send the response to the client
    res.send(response);

});

app.get('/cumple', function (req, res) {
    res.send('Feliz Cumple Sebas!\n');
  });
  
app.listen(8080, function () {
  console.log('Server listening on port 8080...');
});
