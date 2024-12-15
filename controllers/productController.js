const { readProducts, writeProducts } = require('../utils/fileHandler');

exports.getAllProducts = (req, res) => {
    const { page = 1, pageSize = 5 } = req.query;
    const products = readProducts();

    const total = products.length;
    const totalPages = Math.ceil(total / pageSize);
    const paginatedProducts = products.slice((page - 1) * pageSize, page * pageSize);

    res.json({
        total,
        page: Number(page),
        pageSize: Number(pageSize),
        totalPages,
        products: paginatedProducts,
    });
};

exports.getProductBySku = (req, res) => {
    const products = readProducts();
    const product = products.find((p) => p.sku === req.params.sku);
    if (!product) return res.status(404).json({ message: 'Product not found' });
    res.json(product);
};

function isValidProduct(product) {
    const requiredFields = ['sku', 'name', 'image', 'price', 'description', 'size', 'weight'];
    for (const field of requiredFields) {
        if (!product[field] || product[field].toString().trim() === '') {
            return { valid: false, field };
        }
    }
    return { valid: true };
}
exports.createProduct = (req, res) => {
    const products = readProducts();
    const newProduct = req.body;

    const validation = isValidProduct(newProduct);
    if (!validation.valid) {
        return res.status(400).json({ message: `Field '${validation.field}' cannot be empty` });
    }

   
    if (products.some((p) => p.sku === newProduct.sku)) {
        return res.status(400).json({ message: 'Product SKU already exists' });
    }

    products.push(newProduct);
    writeProducts(products);
    res.status(201).json({data:newProduct,message: "Product created successfully"});
};


exports.updateProduct = (req, res) => {
    const products = readProducts();
    const index = products.findIndex((p) => p.sku === req.params.sku);
    if (index === -1) return res.status(404).json({ message: 'Product not found' });

    if (req.body.sku && req.body.sku !== products[index].sku) {
        return res.status(400).json({ message: 'SKU cannot be modified' });
    }

    products[index] = { ...products[index], ...req.body };
    writeProducts(products);
    res.json({data:products[index],message: "Product updated successfully"});
};



exports.deleteProduct = (req, res) => {
    const products = readProducts();
    const index = products.findIndex((p) => p.sku === req.params.sku);
    if (index === -1) return res.status(404).json({ message: 'Product not found' });

    const deletedProduct = products.splice(index, 1);
    writeProducts(products);
    res.json({data:deletedProduct,message: "Product deleted successfully"});
};
