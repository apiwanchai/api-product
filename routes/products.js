const express = require('express');
const productController = require('../controllers/productController');
const authenticateToken = require('../middlewares/auth');
const router = express.Router();

router.get('/', authenticateToken, productController.getAllProducts);
router.get('/:sku', authenticateToken, productController.getProductBySku);
router.post('/', authenticateToken, productController.createProduct);
router.put('/:sku', authenticateToken, productController.updateProduct);
router.delete('/:sku', authenticateToken, productController.deleteProduct);

module.exports = router;
