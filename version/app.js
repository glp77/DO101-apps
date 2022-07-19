const express = require('express');
app = express();

var response;

app.get('/', function (req, res) {

<<<<<<< HEAD
    response = 'This is version 2 of the app.' + '\n';
=======
    response = 'This is version 3 of the app.' + '\n';
>>>>>>> 2b4b8908da61cc505dec502266ca181edb2121c9

    //send the response to the client
    res.send(response);

});

app.listen(8080, function () {
  console.log('Server listening on port 8080...');
});
