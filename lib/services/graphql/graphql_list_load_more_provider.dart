import 'package:flutter/material.dart';
import 'package:tutorial/services/graphql/crud_repo.dart';
import 'package:tutorial/services/graphql/graphql_list_provider.dart';

class GraphqlListLoadMoreProvider<T> extends GraphqlListProvider<T> {
  ValueNotifier<List<T>> loadMoreItems = ValueNotifier(null);

  GraphqlListLoadMoreProvider(
      {@required service, QueryInput query, String fragment})
      : super(service: service, query: query, fragment: fragment);

  Future loadMore() async {
    var items = await this
        .loadAll(query: QueryInput(page: this.pagination.value.page + 1));
    loadMoreItems.value = [...loadMoreItems.value, ...items];
    loadMoreItems.notifyListeners();
  }

  @override
  Future<List<T>> loadAll({QueryInput query}) {
    return super.loadAll(query: query).then((res) {
      if (this.pagination.value.page == 1) {
        loadMoreItems.value = res;
        loadMoreItems.notifyListeners();
      }
      return res;
    });
  }
}
