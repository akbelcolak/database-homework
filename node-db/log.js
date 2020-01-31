//log is an object. so call it as an object

var log = {
    information: function(info){
        console.log('information : ' + info);
    },
    fault: function(fault){
        console.log('fault : ' +fault);
    }
};

module.exports = log