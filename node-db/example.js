var http = require('http')
var log = require('./log.js')
var string = require('./string')
var sayHello = require('./function')

http.createServer(function(request,response){
    response.end('hello')
}).listen(8080)

log.information('my log module is on')

console.log(string) 

console.log(sayHello())