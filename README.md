# API Project

## Overview

This project is a RESTful API built with Node.js and Express.js, designed to handle product-related operations. It connects to a database, performs CRUD operations, and includes a well-organized folder structure.

## Features

- **CRUD Operations**: Manage products (Create, Read, Update, Delete).
- **Middleware**: Implemented for request validation and authentication.
- **Database Integration**: Uses SQL for product data management.
- **Environment Configuration**: `.env` file for managing secrets and configuration.

## Folder Structure

```
.
├── config/            # Configuration files (e.g., database connection)
├── controllers/       # Controller functions for handling requests
├── middleware/        # Custom middleware (e.g., authentication, validation)
├── models/            # Data models (Product model)
├── routes/            # API route definitions
├── .env               # Environment variables
├── app.js             # Entry point for the application
├── package.json       # Project dependencies
├── products.sql       # SQL script for database setup
└── README.md          # Project documentation
```

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/apiwanchai/api-product.git
   cd api
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Set up environment variables**:
   - Create a `.env` file in the root directory.
   - Add the following variables:
     ```env
     DB_HOST=localhost
     DB_USER=root
     DB_PASSWORD=
     DB_NAME=products
     PORT=5000
     ```

4. **Set up the database**:
   - Run the SQL script `products.sql` to initialize the database.

5. **Start the server**:
   ```bash
   npm start
   ```

## API Endpoints

### Base URL:
`http://localhost:3000`

### Routes:

| Method | Endpoint           | Description              |
|--------|--------------------|--------------------------|
| GET    | /api/products      | Get all products         |
| GET    | /api/products/:id  | Get a single product     |
| POST   | /api/products      | Add a new product        |
| PUT    | /api/products/:id  | Update a product         |
| DELETE | /api/products/:id  | Delete a product         |

## Example Request

### Add a New Product

- **Endpoint**: `POST /api/products`
- **Body**:
   ```json
   {
      "sku": "P12345",
      "name": "New Product",
      "image": "https://example.com/image.jpg",
      "price": 29.99,
      "description": "This is a new product",
      "size": "L",
      "weight": 1.5
   }
   ```
- **Response**:
   ```json
   {
      "message": "Product created successfully",
      "product": {
         "id": 1,
         "sku": "P12345",
         "name": "New Product",
         "image": "https://example.com/image.jpg",
         "price": 29.99,
         "description": "This is a new product",
         "size": "L",
         "weight": 1.5
      }
   }
   ```

## Dependencies

- **Node.js**: Backend JavaScript runtime
- **Express.js**: Web framework
- **Sequelize**: ORM for database management
- **dotenv**: Environment variable management
- **MySQL** 

## Scripts

| Command           | Description                   |
|-------------------|-------------------------------|
| `npm start`       | Start the application         |
| `npm run dev`     | Run in development mode       |
| `npm install`     | Install dependencies          |

