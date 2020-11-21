import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final CollectionReference categoryCollection = FirebaseFirestore.instance.collection("cateogries");

  Future updateCateory(String categoryName) async{
    return await categoryCollection.doc().set({
      "name": categoryName
    });
  }
}