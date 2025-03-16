import 'product.dart';
import 'product_category_enum.dart';
import 'product_type_enum.dart';

class Inventory {
  List<Product> products = [];

  void addProduct({required Product product}) {
    products.add(product);
    print("Product has been added.");
  }

  void removeProduct({required String id}) {
    if (products.isNotEmpty) {
      products.removeWhere(
        (Product product) {
          return product.id == id;
        },
      );
      print("Product has been removed.");
    } else {
      print("List is Empty.");
      return;
    }
  }

  List<Product> filterByCategory({required productCategory category}) {
    if (products.isNotEmpty) {
      bool isFound = false;
      List<Product> productFound = [];

      for (var product in products) {
        if (product.category == category) {
          isFound = true;
          productFound.add(product);
          product.displayData();
        }
      }

      if (isFound) {
        return productFound;
      } else {
        print("No Product has been found!");
        return [];
      }
    } else {
      print("There is no product registered in the Inventory!");
      return [];
    }
  }

  List<Product> filterByType({required productType type}) {
    if (products.isNotEmpty) {
      bool isFound = false;
      List<Product> productFound = [];

      for (var product in products) {
        if (product.type == type) {
          isFound = true;
          productFound.add(product);
          product.displayData();
        }
      }

      if (isFound) {
        return productFound;
      } else {
        print("No Product has been found!");
        return [];
      }
    } else {
      print("There is no product registered in the Inventory!");
      return [];
    }
  }

  double getTotalInventoryValue() {
    if (products.isEmpty) {
      print("There is no product registered in the Inventory!");
      return 0;
    } else {
      double sum = 0;
      for (var product in products) {
        sum += product.getDiscount();
      }
      return sum;
    }
  }

  bool applyDiscount({required int id, required double discount}) {
    bool isFound = false;

    if (products.isNotEmpty) {
      for (var product in products) {
        if (product.id == id) {
          isFound = true;
          product.discount = discount;
          break;
        }
      }

      if (isFound) {
        print("Product with id: $id has been Edit by discount: $discount.");
      } else {
        print("Product not found!");
      }
    } else {
      print("There is no product registered in the Inventory!");
    }

    return isFound;
  }

  void displayProducts() {
    if (products.isNotEmpty) {
      for (var product in products) {
        product.displayData();
      }
    } else {
      print("There is no product registered in the Inventory!");
    }
  }
}
