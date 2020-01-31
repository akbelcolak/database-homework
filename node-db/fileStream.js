var fs = require('fs');

fs.readFile('file.txt', function(error,data){
    if(!!error){ throw error};
    console.log(data.toString());
});

fs.writeFile('file.txt', 'I want to write something on my text file. and this changed my original text.\n',function(error){
    if(!!error){ throw error};
    console.log('you wrote to text file :\n');
});

fs.appendFile('file.txt', 'now I am adding some text to existing one.\n',function(error){
    if(!!error){ throw error};
    console.log('you add to text file :\n');
});

//fs.unlink = delete the file