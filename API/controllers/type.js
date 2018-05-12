var typeModel = require('../models/type');
var cm = require('../models/type');

exports.create = function (req, res) {
    // Create and Save a new Note
    var value = req.body;
    console.log(value);
    typeModel.create(value, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    });
};


exports.findAll = function (req, res) {
    // Retrieve and return all notes from the database.
    typeModel.findAll(function (err, data) {
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
    var value = req.body;
    console.log(JSON.stringify(value))
    typeModel.update(value, function(err, data){
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
    var id = req.params.typeId;
    typeModel.delete(id, function (err, data) {
        if (err) {
            res.status(400).send(err);
            return;
        }
        res.send(data);
    });
};
