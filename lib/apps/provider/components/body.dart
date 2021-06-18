import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/apps/provider/providers/myModel.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> formState = GlobalKey();
  MyModel myModel;
  @override
  void initState() {
    super.initState();
    print("initState");
    myModel = Provider.of<MyModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild body");
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("HELLO WORLD"),
            Text(myModel.name),
            Form(
              key: formState,
              child: Column(
                children: [
                  TextFormField(
                    initialValue: myModel.name,
                    onSaved: (value) => myModel.name = value,
                  ),
                  Consumer<MyModel>(builder: (_, model, __) {
                    print("Consumer ${model.name}");
                    return TextFormField(
                      key: ObjectKey(model.name),
                      initialValue: model.name,
                      onSaved: (value) {},
                    );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
