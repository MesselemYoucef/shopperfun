import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopperfun/models/category_model.dart';
import 'package:shopperfun/models/product_model.dart';

class CategoryServices {
  //create an instance for the category collection
  final CollectionReference categoryCollection =
      FirebaseFirestore.instance.collection("cateogries");

  Future updateCateory(String categoryName) async {
    return await categoryCollection.doc().set({"name": categoryName});
  }

  List<CategoryModel> _categoryFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return CategoryModel(
          name: doc.data()["name"] ?? '', id: doc.reference.id);
    }).toList();
  }

  Stream<List<CategoryModel>> get categories {
    //print(categoryCollection.snapshots().map(_categoryFromSnapshot));
    return categoryCollection.snapshots().map(_categoryFromSnapshot);
  }
}

class ProductServices {
  final String categoryID;
  ProductServices({this.categoryID});

  //create an instance for the product collection
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection("products");

  Future updateProduct(String productName, String productCategoryId,
      String image, String brand) async {
    return await productCollection.doc().set({
      "name": productName,
      "categoryId": productCategoryId,
      "image": image ?? "",
      "brand": brand ?? ""
    });
  }

  List<ProductModel> _productFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return ProductModel(
          uid: doc.id ?? 'NA',
          name: doc.data()["name"] ?? '',
          parentCategoryId: doc.data()["categoryId"] ?? '',
          image: doc.data()["image"] ?? '',
          brand: doc.data()['brand'] ?? '');
    }).toList();
  }

  Stream<List<ProductModel>> get products {
    //return productCollection.snapshots().map(_productFromSnapshot);
    return productCollection
        .where("categoryId", isEqualTo: categoryID)
        .snapshots()
        .map(_productFromSnapshot);
  }
}

class ProductProfileServices {
  final String uid;
  ProductProfileServices({this.uid});

  CollectionReference productProfileCollection =
      FirebaseFirestore.instance.collection("products");

  ProductModel _productProfileFromSnapshot(DocumentSnapshot snapshot) {
    return ProductModel(
        name: snapshot.data()["name"] ?? "",
        parentCategoryId: uid,
        image: snapshot.data()["image"] ?? "",
        brand: snapshot.data()["brand"] ?? "");
  }

  Stream<ProductModel> get productProfile {
    return productProfileCollection
        .doc(uid)
        .snapshots()
        .map(_productProfileFromSnapshot);
  }
}
