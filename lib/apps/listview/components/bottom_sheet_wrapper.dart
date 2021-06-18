import 'package:flutter/material.dart';

class BottomSheetWrapper extends StatelessWidget {
  final double height;
  final List<Widget> children;
  final AppBar appBar;
  final EdgeInsets padding;
  const BottomSheetWrapper(
      {Key key,
      this.height,
      @required this.children,
      @required this.appBar,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var h = height ?? media.size.height / 2;
    var containerH = h - appBar.preferredSize.height;
    var maxH = media.size.height - 85;
    var bottomH = MediaQuery.of(context).viewInsets.bottom;
    var wrapperH = h + bottomH;
    if (wrapperH > maxH) {
      containerH = maxH - bottomH - appBar.preferredSize.height;
    }
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxH),
      child: Container(
        height: wrapperH,
        child: Scaffold(
          appBar: appBar,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: containerH,
                  child: Padding(
                    padding: padding ?? const EdgeInsets.all(8.0),
                    child: ListView(children: children),
                  ),
                ),
                Container(
                  height: bottomH,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField buildTextField() => TextField(
        decoration: InputDecoration(fillColor: Colors.white, filled: true),
      );
}
