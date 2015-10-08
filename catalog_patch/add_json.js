var fs = require('fs');
var obj = JSON.parse(fs.readFileSync('add.json', 'utf8'));
var obj2 = JSON.parse(fs.readFileSync('catalog.json', 'utf8'));

//obj2.packages.push(obj);
obj2.packages.unshift(obj);

fs.writeFile('catalog.json', JSON.stringify(obj2, null, 4), 'utf8');
console.log('add first place - done');
console.log(obj2);

