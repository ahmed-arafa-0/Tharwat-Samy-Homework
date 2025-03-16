import 'product.dart';
import 'product_type_enum.dart';

class PhysicalProduct extends Product {
  String description;

  PhysicalProduct({
    required super.id,
    required super.name,
    required super.price,
    required super.category,
    this.description = "",
    super.discount = 0,
    super.type = productType.Physical,
  });

  @override
  String displayData() {
    return """
    ID : $id
    Name : $name
    Type : $type
    Category : $category
    Description : $description
    ${discount > 0 ? """Orginal Price : $price
    Discount : $discount
    Discount Price : ${getDiscount()}
    """ : "Price : $price\n"}
    -----------------------------------------------------------
    """;
  }
}
