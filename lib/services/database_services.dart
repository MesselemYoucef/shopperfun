import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:shopperfun/models/category_model.dart';

class DatabaseServices {
  final CollectionReference categoryCollection = FirebaseFirestore.instance.collection("cateogries");

  Future updateCateory(String categoryName) async{
    return await categoryCollection.doc().set({
      "name": categoryName
    });
  }

  List<CategoryModel> _categoryFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return CategoryModel(
        name: doc.data()["name"] ?? ''
      );
    }).toList();
  }

  Stream <List<CategoryModel>> get categories{
    //print(categoryCollection.snapshots().map(_categoryFromSnapshot));
    return categoryCollection.snapshots().map(_categoryFromSnapshot);
  }

}