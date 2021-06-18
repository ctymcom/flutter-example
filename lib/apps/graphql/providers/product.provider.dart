import 'package:tutorial/models/category.model.dart';
import 'package:tutorial/repositories/product.repo.dart';
import 'package:tutorial/services/graphql/crud_repo.dart';
import 'package:tutorial/services/graphql/graphql_list_load_more_provider.dart';

import '../../../models/product.model.dart';
import '../../../services/graphql/graphql_list_provider.dart';

class ProductProvider extends GraphqlListLoadMoreProvider<Product> {
  ProductProvider()
      : super(
            service: productService,
            query: QueryInput(order: {"createdAt": 1}));
}
