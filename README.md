# Product API Documentation

This is a Node.js-based RESTful API for managing products. The API includes authentication and CRUD operations for products.

## Prerequisites

Ensure you have the following installed on your system:

- Node.js (version 12 or higher)
- npm (Node Package Manager)

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/apiwanchai/api-product.git
   cd api-product
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start the server:

   ```bash
   nodemon app.js
   ```

4. The server will run at:

   ```
   http://localhost:5000
   ```

## API Endpoints

### Authentication

#### POST `/login`

- **Description:** Authenticate a user and return a JWT token.
- **Request Body:**
  ```json
  {
    "username": "test",
    "password": "test"
  }
  ```
- **Response:**
  - Success:
    ```json
    {
      "token": "<jwt-token>"
    }
    ```
  - Error:
    ```json
    {
      "message": "Invalid credentials"
    }
    ```

### Product Management (Requires Authentication)

Add the `Authorization` header to each request:

```
Authorization: Bearer <jwt-token>
```

#### GET `/products`

- **Description:** Retrieve all products.
- **Query Parameters:**
  - `page` (optional): Page number (default: 1)
  - `pageSize` (optional): Number of items per page (default: 10)
- **Response:**
  ```json
  {
    "total": 20,
    "page": 1,
    "pageSize": 10,
    "totalPages": 2,
    "products": [
      {
        "sku": "P001",
        "name": "Example Product",
        "price": 100.00,
        "description": "This is an example product.",
        "size": "Medium",
        "weight": "1kg"
      }
    ]
  }
  ```

#### GET `/products/:sku`

- **Description:** Retrieve details of a single product by SKU.
- **Response:**
  ```json
  {
    "sku": "P001",
    "name": "Example Product",
    "price": 100.00,
    "description": "This is an example product.",
    "size": "Medium",
    "weight": "1kg"
  }
  ```

#### POST `/products`

- **Description:** Add a new product.
- **Request Body:**
  ```json
  {
    "sku": "P001",
    "name": "New Product",
    "price": 120.00,
    "description": "This is a new product.",
    "size": "Large",
    "weight": "1.5kg"
  }
  ```
- **Response:**
  ```json
  {
    "message": "Product created successfully"
  }
  ```

#### PUT `/products/:sku`

- **Description:** Update details of an existing product.
- **Request Body:**
  ```json
  {
    "name": "Updated Product",
    "price": 150.00,
    "description": "Updated product description.",
    "size": "Small",
    "weight": "0.8kg"
  }
  ```
- **Response:**
  ```json
  {
    "message": "Product updated successfully"
  }
  ```

#### DELETE `/products/:sku`

- **Description:** Delete a product by SKU.
- **Response:**
  ```json
  {
    "message": "Product deleted successfully"
  }
  ```

## Middleware

### Authentication Middleware

`middlewares/auth.js`:

- Verifies the JWT token provided in the `Authorization` header.
- Returns a `401` status code for missing tokens.
- Returns a `403` status code for invalid tokens.



## Notes

- Replace `<repository-url>` with the actual repository URL.
- Replace `<jwt-token>` with the token obtained from the `/login` endpoint.


