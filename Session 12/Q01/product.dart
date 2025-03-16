import 'product_category_enum.dart';
import 'product_type_enum.dart';

abstract class Product {
  final int id;
  final String name;
  final double price;
  double discount;
  final productType type;
  final productCategory category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.discount = 0,
    required this.type,
    required this.category,
  });

  double getDiscount() {
    return price - (price * (discount / 100));
  }

  String displayData();
}
