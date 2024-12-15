const { Product } = require("../models");

exports.getAllProducts = async (req, res) => {
  try {
    const { page = 1, pageSize = 10 } = req.query;

    const offset = (page - 1) * pageSize;

    const products = await Product.findAll({
      limit: parseInt(pageSize),
      offset: parseInt(offset),
    });

    const totalProducts = await Product.count();
    res.json({
      total: totalProducts,
      page: parseInt(page, 10),
      pageSize: parseInt(pageSize, 10),
      totalPages: Math.ceil(totalProducts / pageSize),
      products,
    });
  } catch (error) {
    console.error("Error fetching products:", error.message);
    res
      .status(500)
      .json({ message: "Failed to fetch products", error: error.message });
  }
};

exports.getProductById = async (req, res) => {
  try {
    const { id } = req.params;
    const product = await Product.findOne({ where: { id } });

    if (!product) return res.status(404).json({ message: "Product not found" });

    res.json(product);
  } catch (error) {
    console.error("Error fetching product by ID:", error.message);
    res
      .status(500)
      .json({ message: "Failed to fetch product", error: error.message });
  }
};

exports.createProduct = async (req, res) => {
  try {
    const { sku, name, image, price, description, size, weight } = req.body;
    const product = await Product.create({
      sku,
      name,
      image,
      price,
      description,
      size,
      weight,
    });
    res.json(product);
  } catch (error) {
    console.error("Error creating product:", error.message);
    res
      .status(400)
      .json({ message: "Failed to create product", error: error.message });
  }
};

exports.updateProduct = async (req, res) => {
  try {
    const { id } = req.params;
    const { sku, name, image, price, description, size, weight } = req.body;

    const result = await Product.update(
      { sku, name, image, price, description, size, weight },
      { where: { id } }
    );

    if (result[0] === 0) {
      return res.status(404).json({ message: "Product not found" });
    }

    const updatedProduct = await Product.findByPk(id);

    res.json({
      message: "Product updated",
      product: updatedProduct,
    });
  } catch (error) {
    console.error("Error updating product:", error.message);
    res
      .status(400)
      .json({ message: "Failed to update product", error: error.message });
  }
};

exports.deleteProduct = async (req, res) => {
  try {
    const { id } = req.params;
    const result = await Product.destroy({ where: { id } });
    if (result === 0)
      return res.status(404).json({ message: "Product not found" });
    res.json({ message: "Product deleted" });
  } catch (error) {
    console.error("Error deleting product:", error.message);
    res
      .status(400)
      .json({ message: "Failed to delete product", error: error.message });
  }
};
