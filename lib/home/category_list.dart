import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/category_model.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    final category = Provider.of<List<CategoryModel>>(context) ?? [];
    category.forEach((element) { 
      print("++++++++++++");
      print(element.name);
     });
    return Container(
      
    );
  }
}