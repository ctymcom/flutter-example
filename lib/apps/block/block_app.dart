import 'package:flutter/material.dart';

import 'components/body.dart';

class BlockApp extends StatelessWidget {
  const BlockApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Block App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Block App"),
        ),
        body: Body(),
      ),
    );
  }
}
