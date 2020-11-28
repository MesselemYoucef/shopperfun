import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<List<ProductModel>>(context) ?? [];
    product.forEach((element) { 
      print("+++++++++++++++");
      print(element.name);
      print(element.parentCategoryId);
    });
    return Container(
      
    );
  }
}