const http = require("http");
const fs = require("fs");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  fs.createReadStream("data.txt").pipe(res);
});

server.listen(process.env.PORT || 8080);
