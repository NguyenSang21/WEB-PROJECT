var express = require('express');
var router = express.Router();
var product = require('../controllers/products.js');
var type = require('../controllers/type.js');
var person = require('../controllers/person.js');

    // Create a new Note
    router.post('/products', product.create);

    // Retrieve all products
    router.get('/products', product.findAll);

    // Retrieve a single Note with noteId
    //router.get('/celebrities/:celebritiesId', celebrities.findOne);

    // Update a Note with noteId
    router.put('/products/:productId', product.update);

    // Delete a Note with noteId
    router.delete('/products/:productId', product.delete);


/////////////////////////////////////////Loại máy/////////////////////////
    // Create a new Note
    router.post('/type', type.create);

    // Retrieve all products
    router.get('/type', type.findAll);

    // Update a Note with noteId
    router.put('/type/:typeId', type.update);

    // Delete a Note with noteId
    router.delete('/type/:typeId', type.delete);


///////////////////////////////////Người dùng////////////////////////////////
    // Create a new Note
    router.post('/person', person.create);

    // Retrieve all products
    router.get('/person', person.findAll);

    // Update a Note with noteId
    router.put('/person/:personId', person.update);

    // Delete a Note with noteId
    router.delete('/person/:personId', person.delete);

module.exports = router;