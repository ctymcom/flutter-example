import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(color: Colors.red[50], child: MyRow()),
          SizedBox(height: 10),
          Container(color: Colors.red[100], child: MyRow()),
        ],
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(height: 200, color: Colors.amber),
                    Container(height: 0, color: Colors.yellow),
                  ],
                ),
                Container(height: 100, color: Colors.blue),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(height: 200, color: Colors.cyan),
                    Container(height: 0, color: Colors.orange),
                  ],
                ),
                Container(height: 100, color: Colors.blue),
              ],
            ),
          )
        ],
      ),
    );
  }
}
