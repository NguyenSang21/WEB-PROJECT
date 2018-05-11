var express = require('express');
var router = express.Router();
var product = require('../controllers/products.js');

    // Create a new Note
    router.post('/products', product.create);

    // Retrieve all celebrities
    router.get('/products', product.findAll);

    // Retrieve a single Note with noteId
    //router.get('/celebrities/:celebritiesId', celebrities.findOne);

    // Update a Note with noteId
    router.put('/products/:productId', product.update);

    // Delete a Note with noteId
    router.delete('/products/:productId', product.delete);

module.exports = router;