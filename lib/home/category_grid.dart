import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/category_model.dart';
import 'category_tile.dart';

class CategoryGrid extends StatefulWidget {
  @override
  _CategoryGridState createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid> {
  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<List<CategoryModel>>(context) ?? [];
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0
      ),
      itemCount: categories.length,
      primary: false,
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index){
        return CategoryTile(category: categories[index]);
      },
    );
  }
}