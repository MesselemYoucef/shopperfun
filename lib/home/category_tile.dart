import 'package:flutter/material.dart';
import 'package:shopperfun/models/category_model.dart';

class CategoryTile extends StatelessWidget {

  final CategoryModel category;

  CategoryTile({this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){
            print("${category.id}");
          },
          child: Container(
          padding: EdgeInsets.all(8),
          child: Text("${category.name}"),
          color: Colors.teal[100],
        ),
    )
    ;
  }
}