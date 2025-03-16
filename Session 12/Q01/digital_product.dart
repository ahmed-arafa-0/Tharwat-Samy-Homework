import 'product.dart';
import 'product_type_enum.dart';

class DigitalProduct extends Product {
  final String publisher;
  final String digitalSignature;

  DigitalProduct({
    required super.id,
    required super.name,
    required super.price,
    required super.category,
    required this.publisher,
    required this.digitalSignature,
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
    Publisher : $publisher
    ${discount > 0 ? """Orginal Price : $price
    Discount : $discount
    Discount Price : ${getDiscount()}
    """ : "Price : $price\n"}
    -----------------------------------------------------------
    """;
  }
}
