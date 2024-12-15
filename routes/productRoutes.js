const express = require('express');
const router = express.Router();
const auth = require('../middleware/auth');
const { getAllProducts, createProduct, updateProduct, deleteProduct, getProductById } = require('../controllers/productController');

router.get('/', auth, getAllProducts);
router.get('/:id',auth,getProductById)
router.post('/', auth, createProduct);
router.put('/:id', auth, updateProduct);
router.delete('/:id', auth, deleteProduct);

module.exports = router;
