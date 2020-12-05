import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_list.dart';
import 'package:shopperfun/services/database_services.dart';
import 'package:shopperfun/models/product_model.dart';

class SelectedProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<ProductModel>>.value(
      value: ProductServices().products,
          child: Scaffold(
        appBar: AppBar(
          title: Text("Products")
        ),
        body: Container(
          child: ProductList(),
        ),
      ),
    );
  }
}