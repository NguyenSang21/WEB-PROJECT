var express = require('express');
var router = express.Router();
var product = require('../controllers/products.js');
var type = require('../controllers/type.js');
var user = require('../controllers/user.js');

    // Create a new Note
    router.post('/products', product.create);

    // Retrieve all products
    router.get('/products', product.findAll);

    // Retrieve a single Note with noteId
    //router.get('/celebrities/:celebritiesId', celebrities.findOne);

    // Update a Note with noteId
    router.put('/products', product.update);

    // Delete a Note with noteId
    router.delete('/products/:productId', product.delete);

    // tìm kiếm 1 sản phẩm

    router.get('/products/:productId', product.findOne);


/////////////////////////////////////////Loại máy/////////////////////////
    // Create a new Note
    router.post('/type', type.create);

    // Retrieve all products
    router.get('/type', type.findAll);

    // Update a Note with noteId
    router.put('/type', type.update);

    // Delete a Note with noteId
    router.delete('/type/:typeId', type.delete);


///////////////////////////////////Người dùng////////////////////////////////
    // Create a new Note
    router.post('/user', user.create);

    // Retrieve all products
    router.get('/user', user.findAll);

    // Update a Note with noteId
    router.put('/user', user.update);

    // Delete a Note with noteId
    router.delete('/user/:userId', user.delete);

    // tìm kiếm 1 người dùng có username

    router.get('/user/:username', user.findUsername);

module.exports = router;