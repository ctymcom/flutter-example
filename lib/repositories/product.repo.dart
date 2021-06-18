import 'package:tutorial/models/product.model.dart';
import 'package:tutorial/services/graphql/crud_repo.dart';

class _ProductRepository extends CrudRepository<Product> {
  String apiName = "Product";
  String shortFragment = "id code name";
  String fullFragment = "id code name howToUse";

  @override
  Product fromJson(Map<String, dynamic> json) {
    return Product.fromJson(json);
  }
}

final productService = new _ProductRepository();
