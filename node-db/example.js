var http = require('http')
var log = require('./log.js')
var string = require('./string')
var sayHello = require('./function')

http.createServer(function(request,response){
    if(request.url == '/admin'){
        response.write('you are admin, this is your page.\n')
    } else{
        response.write('you are not admin, so you came to home page.\n')
    }
    response.end('end of the response')
}).listen(8080)

log.information('my log module is on')

console.log(string) 

console.log(sayHello())