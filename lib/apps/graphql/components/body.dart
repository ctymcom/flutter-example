import 'package:flutter/material.dart';
import 'package:tutorial/apps/graphql/providers/product.provider.dart';
import 'package:provider/provider.dart';
import 'package:tutorial/models/product.model.dart';
import 'package:tutorial/services/graphql/crud_repo.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ProductProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<ProductProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    print('value ${provider.items}');
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Hello world 2"),
            Row(
              children: [
                Button(text: "Load more", onTap: () => provider.loadMore()),
                Button(
                    text: "Reload",
                    onTap: () => provider.loadAll(
                        query: QueryInput(page: 1, order: {"name": 1}))),
              ],
            ),
            ValueListenableBuilder<List<Product>>(
                valueListenable: provider.loadMoreItems,
                builder: (_, items, child) {
                  if (items == null) return Text("Loading....");
                  return Column(
                      children: List.generate(items.length, (index) {
                    var item = items[index];
                    return Row(
                      children: [
                        Text("${item.name}\n${item.id}"),
                        // GestureDetector(
                        //   child: Text("Load Detail"),
                        //   onTap: () => {provider.loadOne(item.id)},
                        // )
                      ],
                    );
                  }));
                }),
            // Text("Product Detail"),
            // ValueListenableBuilder<Product>(
            //     valueListenable: provider.item,
            //     builder: (_, item, child) {
            //       if (item == null) return Text("Loading....");
            //       return Column(children: [
            //         Text("Name: ${item.name}"),
            //         Text("howToUse: ${item.howToUse}"),
            //       ]);
            //     })
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.text,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
