var http = require('http')
var log = require('./log.js')


http.createServer(function(request,response){
    response.end('hello')
}).listen(8080)

log.information('my log module is on') 