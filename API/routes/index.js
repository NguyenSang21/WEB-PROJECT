var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
	// pool.connect(function(err,client,done){
	// 	if (err) {
	// 		return console.error('Lỗi ',err);
	// 	}
	// 	client.query('SELECT * FROM  nguoinoitieng',function(err,result){
	// 		done();
	// 		if (err) {
	// 			res.end();
	// 			return console.error('Lỗi ',err);
	// 		}
	// 		res.render('index', {data:result});
	// 	});
	// });
  	res.render('index');
});

module.exports = router;
