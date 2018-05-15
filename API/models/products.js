var db= require('./manageDB');
exports.findAll = function(callback){
	db.executeQuery("select * from may",function(err,data){
		callback(err,data);
	});
}

exports.findOne = function(value, callback){
	console.log(value);
	var query = "select * from may where idM = ?";
	db.executeParamsQuery(query, value, function(err,data){
		callback(err,data);
	});
}

exports.create = function (value ,callback) {
	var query = "INSERT INTO may SET ?";
	db.executeParamsQuery(query, value, function (err, data){
        callback(err, data);
    });
}

exports.update = function (value, callback) {
	var query = "update may Set tenMay=?, NSX=?, ManHinh=?, HDH=?, CPU=?, RAM=?, CAMERA=?, PIN=?, Gia=?, ghiChu=?, slMatDinh=?, slHienTai=?, slXem=?, ngSX=?, Loai=?, Comment=?, MoTa=?, linkAnh=? Where idM = ? ";
	db.executeParamsQuery(query, [value.tenMay, value.NSX, value.ManHinh,value.HDH, value.CPU, value.RAM,value.CAMERA, value.PIN, value.Gia,value.ghiChu, value.slMatDinh, value.slHienTai,value.slXem, value.ngSX, value.Loai,value.Comment,value.MoTa, value.linkAnh, value.idM], function(err, data){
		callback(err, data);
	});
}

exports.delete=function(value,callback){
	var query = "delete from may where idM = ?";
	console.log(value);
	db.executeParamsQuery(query,value,function(err,data){
		callback(err,data);
	});
}