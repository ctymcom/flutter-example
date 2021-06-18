import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          color: Colors.blue[100],
        ),
      ),
    );
  }

  TextField buildTextField() => TextField(
        decoration: InputDecoration(fillColor: Colors.white, filled: true),
      );
}
