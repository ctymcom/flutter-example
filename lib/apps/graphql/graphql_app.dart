import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/apps/graphql/providers/product.provider.dart';

import 'components/body.dart';

class GraphqlApp extends StatelessWidget {
  const GraphqlApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Graphql App",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Graphql App"),
          ),
          body: ChangeNotifierProvider<ProductProvider>(
            create: (context) => ProductProvider(),
            child: Body(),
          )),
    );
  }
}
