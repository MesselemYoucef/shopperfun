import 'package:flutter/material.dart';
import 'package:shopperfun/models/product_model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  ProductTile({this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          dense: false,
          onTap: () {
            Navigator.pushNamed(context, "/product_profile",
                arguments: {"uid": product.uid});
          },
          title: Text("${product.name}"),
        ),
      ),
    );
  }
}
