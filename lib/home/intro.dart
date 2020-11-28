import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopperfun/models/category_model.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/home/category_list.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopperfun/models/product_model.dart';
import 'package:shopperfun/home/product_list.dart';
import 'package:shopperfun/services/database_services.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    //DatabaseServices().updateCateory("Category 2");
    //ProductService().updateProduct("Laminating Machine", "8f20upXldYOzdJ2APNov", "image", "brand");
    
    // return StreamProvider<List<CategoryModel>>.value(
    //       value: CategoryServices().categories,
    //       child: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Shopper Fun"),
    //       backgroundColor: Color.fromRGBO(102, 137, 161, 1),
    //       ),
    //     body: CategoryList()
    //   ),
    // );

    //     return StreamProvider<List<ProductModel>>.value(
    //       value: ProductServices().products,
    //       child: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Shopper Fun"),
    //       backgroundColor: Color.fromRGBO(102, 137, 161, 1),
    //       ),
    //     body: ProductList()
    //   ),
    // );

    return MultiProvider(
      providers: [
        StreamProvider<List<CategoryModel>>.value(
          value: CategoryServices().categories,
        ),
        StreamProvider<List<ProductModel>>.value(
          value: ProductServices().products,
        )
      ],
      child: CategoryList(),
    );
  }
}