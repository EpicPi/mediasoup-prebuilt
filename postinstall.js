const os = require('os').type();

let from = "";
if(os === 'Linux'){
  from ="./linux";
} else if( os === 'Darwin'){
  from = "./darwin";
} else{ //Windows_NT
  from = "./windows_NT";
}

const fs = require("fs")
 

fs.rename(from, "./worker", function(err) {
  if (err) {
    console.log(err)
  } else {
    console.log("Successfully renamed the directory.")
  }
})