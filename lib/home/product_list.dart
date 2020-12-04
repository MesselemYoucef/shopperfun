import 'package:flutter/material.dart';
import 'product_tile.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';
import 'package:shopperfun/constants/not_found.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<List<ProductModel>>(context);
    return Container(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
            return ProductTile(product: products[index]);
        }
        ),
    );
  }
}