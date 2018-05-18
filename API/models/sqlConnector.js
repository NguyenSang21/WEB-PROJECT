var mysql = require('mysql');
// Initialize pool
var pool      =    mysql.createPool({
    connectionLimit : 10,
    host     : 'us-cdbr-iron-east-04.cleardb.net',
    user     : 'bb8a4998b6f1d',
    password : 'e1a0e7ad',
    database : 'heroku_30df347d2951746',
    debug    :  false
});
module.exports = pool;
