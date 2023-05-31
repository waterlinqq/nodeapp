var http = require("http");

var port = 4000;

var server = http.createServer(function (request, response) {
  console.log(123);
  response.writeHead(200, { "Content-Type": "text/plain" });
  response.end("Hello World");
});

server.listen(port);

console.log("Server running at http://localhost:" + port);
