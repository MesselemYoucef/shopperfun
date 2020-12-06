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
    return Center(
        child: Container(
      child: Text(product.name),
    ));
  }
}
