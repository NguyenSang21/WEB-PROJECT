var productModel = require('../models/products');
var cm = require('../models/products');

exports.create = function (req, res) {
    // Create and Save a new Note
    var value = req.body;

    productModel.create(value, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    });
};


exports.findAll = function (req, res) {
    // Retrieve and return all notes from the database.
    productModel.findAll(function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    }
    );
};

exports.findOne = function (req, res) {
    // Retrieve and return all notes from the database.
    var id = req.params.productId;
    console.log(id);
    productModel.findOne(id, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    }
    );
};


exports.update = function (req, res) {
    // Update a note identified by the noteId in the request
    var id = req.params.productId;
    console.log(id);
    var value = req.body;
    productModel.update(value, function(err, data){
            if(err) {
                res.status(400).send(err);
                return;
            } else {
                res.send(data);
            }
        });
};


exports.delete = function (req, res) {
    // Delete a note with the specified noteId in the request
    var value = req.params.productId;
    productModel.delete(value, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    });
};
