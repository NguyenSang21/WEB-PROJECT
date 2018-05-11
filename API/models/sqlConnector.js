var mysql = require('mysql');
// Initialize pool
var pool      =    mysql.createPool({
    connectionLimit : 10,
    host     : '127.0.0.1',
    user     : 'root',
    password : '',
    database : 'qlbhdt',
    debug    :  false
});
module.exports = pool;