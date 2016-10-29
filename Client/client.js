// Import node socket module
var socket = require('net').Socket();

// Set up socket connection variables
var socketVariables = {
    serverPort: 8000,
    serverIPAddress: '10.62.0.117'
};
    
// Set up socket connection to the server
socket.connect(socketVariables.serverPort, socketVariables.serverIPAddress);

// Send message to the echo server through the socket connection
socket.write('GET http://' + socketVariables.serverIPAddress + '/echo.php?message=hello HTTP/1.1\n\n');

// Create handler for the response from the server
socket.on('data', function(d) {
    console.log(d.toString());
});

// Close the socket connection
socket.end();
