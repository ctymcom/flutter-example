import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:gql/language.dart';
import 'package:gql/ast.dart';
import 'package:tutorial/services/graphql/graphql_client.dart';

class GraphqlRepository {
  Future<QueryResult> query(
    String query, {
    Map<String, dynamic> variables,
    FetchPolicy fetchPolicy,
    String variablesParams,
  }) {
    var document = this.generateGQL(
        type: 'query', document: query, variablesParams: variablesParams);
    return graphqlClient.query(QueryOptions(
        document: document, variables: variables, fetchPolicy: fetchPolicy));
  }

  Future<QueryResult> mutate(
    String mutation, {
    Map<String, dynamic> variables,
    Context context,
    String variablesParams,
  }) {
    return graphqlClient.mutate(MutationOptions(
        document: this.generateGQL(
            type: 'mutation',
            document: mutation,
            variablesParams: variablesParams),
        variables: variables,
        fetchPolicy: FetchPolicy.noCache,
        context: context));
  }

  clearCache() {
    graphqlClient.resetStore();
  }

  DocumentNode generateGQL(
      {@required String type,
      String document,
      List<String> documents,
      String variablesParams}) {
    String tmp = '$type${variablesParams ?? ''} {';
    if (document != null) {
      tmp += 'g0: $document';
    } else {
      for (var i = 0; i < documents.length; i++) {
        tmp += '\ng$i: ${documents[i]}';
      }
    }
    tmp += '}';
    tmp = tmp.replaceAll(new RegExp('\\s{2,}', multiLine: true), " ");
    print('query $tmp');
    return parseString(tmp);
  }

  hanldeException(QueryResult result) {
    print("${result.exception}");
  }
}
