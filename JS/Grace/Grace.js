(function quine(){
var fs = require('fs');
fs.writeFile('./Grace_kid.js','(' + quine.toString() + ')();', function(err) {
    if(err) {
        return console.log(err);
    }});
})();