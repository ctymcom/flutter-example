import 'package:flutter/material.dart';

import 'item.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.red[100],
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(10, (index) => Item()),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.green[100],
          ),
        ],
      ),
    );
  }
}
