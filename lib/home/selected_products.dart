import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'product_list.dart';
import 'package:shopperfun/services/database_services.dart';
import 'package:shopperfun/models/product_model.dart';


//ignore: must_be_immutable
class SelectedProducts extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Map data = {};
    data = ModalRoute.of(context).settings.arguments;
    return StreamProvider<List<ProductModel>>.value(
      value: ProductServices(categoryID: data["categoryID"]).products,
      child: Scaffold(
        appBar: AppBar(title: Text("Products")),
        body: Container(
          child: ProductList(),
        ),
      ),
    );
  }
}
