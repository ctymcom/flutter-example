import 'package:flutter/material.dart';

import 'components/body.dart';

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListViewApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View App"),
        ),
        body: Body(),
      ),
    );
  }
}
