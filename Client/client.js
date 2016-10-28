var s = require('net').Socket();
s.connect(8000, '10.62.0.117');
s.write('GET http://10.62.0.117/echo.php?message=hello HTTP/1.1\n\n');

s.on('data', function(d){
    console.log(d.toString());
});

s.end();
