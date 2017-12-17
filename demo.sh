if [ -d $1 ]; then
  echo 'error: dir exists'
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  echo '<!DOCTYPE>
   <title>Hello</title>
   <h1>Hi</h1>' > index.html
  echo 'h1{color: red;}' > css/style.css
  echo 'var string = "Hello World"
   alert(string)' > js/main.js
exit
fi

#!/usr/bin/env node

var fs = require('fs')

 var dirName = process.argv[1] 

 process.chdir("/c/Users/昕/Desktop") 
 fs.mkdirSync("./" + dirName) 
 process.chdir("./" + dirName) 
 fs.mkdirSync('css') 
 fs.mkdirSync('js') 

 fs.writeFileSync("./index.html", "")
 fs.writeFileSync("css/style.css", "")
 fs.writeFileSync("./js/main.js", "")

 process.exit(0)
