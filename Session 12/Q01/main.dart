/*
E-commerce Inventory Management System
Imagine you're working for an e-commerce startup that's rapidly growing and facing challenges
managing its inventory. Your manager wants a structured system to efficiently organize and handle
various types of products - both physical goods (such as electronics, clothing, home accessories,
and beauty items) and digital products (like downloadable content or digital licenses).
The company needs a solution that:
- Clearly categorizes products based on their types and attributes.
- Allows products to have discounts applied easily during promotions or seasonal sales.
- Supports easy filtering of products, such as finding all digital products or all products within a
specific category (e.g., electronics).
- Provides quick insights, such as calculating the total inventory value to assist with accounting and
financial projections.
Your task is to design and build a flexible inventory management system that addresses these
requirements and can be easily maintained and extended as the business continues to grow.
*/

import 'digital_product.dart';
import 'inventory.dart';
import 'physical_product.dart';
import 'product_category_enum.dart';
import 'product_type_enum.dart';

void main() {
  Inventory inventory = Inventory();

  // Adding products
  inventory.addProduct(
    product: PhysicalProduct(
        id: 1,
        name: "Laptop",
        price: 1200,
        category: productCategory.electronics,
        description: "Dell Latitude 5590"),
  );

  inventory.addProduct(
    product: PhysicalProduct(
        id: 2,
        name: "T-Shirt",
        price: 125,
        category: productCategory.clothing,
        description: "Black Color"),
  );

  inventory.addProduct(
    product: DigitalProduct(
      id: 3,
      name: "E-Book",
      price: 250,
      category: productCategory.downloadableContent,
      digitalSignature: "W3Schools",
      publisher: "E-book",
    ),
  );

  inventory.addProduct(
    product: PhysicalProduct(
      id: 2,
      name: "T-Shirt",
      price: 125,
      category: productCategory.clothing,
    ),
  );

  inventory.applyDiscount(id: 1, discount: 10);

  print("All Products:");
  inventory.displayProducts();

  print("\nFiltered (Electronics):");
  inventory.filterByCategory(category: productCategory.electronics).forEach(
    (element) {
      print(element.displayData());
    },
  );

  print("\nFiltered (Physical Product):");
  inventory.filterByType(type: productType.Physical).forEach(
    (element) {
      print(element.displayData());
    },
  );

  print(
      "\nTotal Inventory Value: \$${inventory.getTotalInventoryValue().toStringAsFixed(2)}");
}
