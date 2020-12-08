import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductModel>(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children:<Widget>[
            SizedBox(height: 20),
            Text(product.name),
            SizedBox(height: 20),
            Text(product.brand),
            SizedBox(height: 10.0),
            Text(product.parentCategoryId)
          ]
        ),
      ),
    );
  }
}
