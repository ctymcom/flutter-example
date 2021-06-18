import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/apps/provider/providers/myModel.dart';

import 'components/body.dart';

class ProviderApp extends StatelessWidget {
  const ProviderApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Provider App",
        home: ChangeNotifierProvider<MyModel>(
          create: (context) => MyModel(),
          child: Body(),
        ),
      ),
    );
  }
}
