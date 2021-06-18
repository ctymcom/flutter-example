import 'package:flutter/material.dart';
import 'package:tutorial/services/graphql/crud_repo.dart';

abstract class GraphqlListProvider<T> extends ChangeNotifier {
  final CrudRepository<T> service;
  ValueNotifier<List<T>> items = ValueNotifier(null);
  ValueNotifier<Pagination> pagination = ValueNotifier(Pagination(
    limit: 10,
    offset: 0,
    page: 1,
    total: 0,
  ));
  QueryInput query = QueryInput(limit: 10, page: 1);
  String fragment;

  GraphqlListProvider(
      {@required this.service, QueryInput query, String fragment}) {
    this.fragment = fragment;
    this.loadAll(query: query);
  }

  Future<List<T>> loadAll({QueryInput query}) {
    this.query = query == null
        ? this.query
        : QueryInput.fromJson({...this.query.toJson(), ...query.toJson()});
    return service
        .getAll(query: this.query, fragment: this.fragment)
        .then((res) {
      items.value = res.data;
      items.notifyListeners();
      pagination.value = res.pagination;
      pagination.notifyListeners();
      return res.data;
    });
  }

  Future<T> create(dynamic data) {
    return service.create(data: data, fragment: fragment).then((res) {
      this.loadAll();
      return res;
    });
  }

  Future<T> update(String id, dynamic data) {
    return service.update(id: id, data: data, fragment: fragment).then((res) {
      this.loadAll();
      return res;
    });
  }

  Future<T> delete(String id) {
    return service.delete(id: id, fragment: fragment).then((res) {
      this.loadAll();
      return res;
    });
  }
}
