var db= require('./manageDB');
exports.findAll = function(callback){
	db.executeQuery("select * from loaimay",function(err,data){
		callback(err,data);
	});
}
exports.create = function (value ,callback) {
	var query = "INSERT INTO loaimay SET ?";
	db.executeParamsQuery(query, value, function (err, data){
        callback(err, data);
    });
}

exports.update = function (value, callback) {
	var query = "update loaimay Set tenloai = ? Where idloai = ? ";
	db.executeParamsQuery(query, [value.tenloai, value.idloai], function(err, data){
		callback(err, data);
	});
}

exports.delete=function(value,callback){
	var query = "delete from loaimay where idloai = ?";
	console.log(value);
	db.executeParamsQuery(query,value,function(err,data){
		callback(err,data);
	});
}