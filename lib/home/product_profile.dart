import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';
import 'package:shopperfun/services/database_services.dart';
import 'package:shopperfun/home/product_details.dart';

class ProductProfile extends StatefulWidget {
  @override
  _ProductProfileState createState() => _ProductProfileState();
}

class _ProductProfileState extends State<ProductProfile> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return StreamProvider<ProductModel>.value(
      value: ProductProfileServices(uid: "${data["uid"]}").productProfile,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Product Profile"),
            elevation: 0.0,
            centerTitle: true,
          ),
          body: Center(
            child: ProductDetails(),
          )),
    );
  }
}
