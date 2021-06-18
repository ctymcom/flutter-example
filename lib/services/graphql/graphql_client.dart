import 'package:graphql/client.dart';
import 'package:tutorial/config/app_key.dart';
import 'package:tutorial/config/backend.dart';
import 'package:tutorial/services/spref.dart';

final HttpLink _httpLink = HttpLink(BACKEND_HTTP);

final AuthLink _authLink = AuthLink(
    getToken: () async {
      final token = await SPref.instance.get(AppKey.xToken);
      return token;
    },
    headerKey: BACKEND_TOKEN_HEADER);

final Link _link = _authLink.concat(_httpLink);
final _wsLink = WebSocketLink(BACKEND_WSS);

final GraphQLClient graphqlClient = GraphQLClient(
  cache: GraphQLCache(),
  link: Link.split((request) => request.isSubscription, _wsLink, _link),
);
