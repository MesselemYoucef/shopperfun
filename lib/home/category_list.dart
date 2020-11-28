import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/category_model.dart';
import 'package:shopperfun/models/product_model.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<List<CategoryModel>>(context) ?? [];
    categories.forEach((category) { 
      print(category.name);
     });

     final products = Provider.of<List<ProductModel>>(context);
     products.forEach((product) {
       print(product.name);
       print(product.parentCategoryId);
     });
    return Container(
      
    );
  }
}