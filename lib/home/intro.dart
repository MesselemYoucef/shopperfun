import 'package:flutter/material.dart';
import 'package:shopperfun/models/category_model.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';
import 'package:shopperfun/services/database_services.dart';
import 'package:shopperfun/services/database_services.dart';
import 'category_grid.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    //CategoryServices().updateCateory("Category 9");
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

    return Scaffold(
      appBar: AppBar(
        title: Text("CATEGORIES"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(135, 90, 123, 1),
      ),
          body: MultiProvider(
        providers: [
          StreamProvider<List<CategoryModel>>.value(
            value: CategoryServices().categories,
          ),
          StreamProvider<List<ProductModel>>.value(
            value: ProductServices().products,
          )
        ],
        child: CategoryGrid(),
      ),
    );
  }
}