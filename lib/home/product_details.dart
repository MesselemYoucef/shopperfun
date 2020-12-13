import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopperfun/models/product_model.dart';
import 'package:shopperfun/services/storage_services.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  dynamic imageLink;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductModel>(context);
    final ref = FirebaseStorage.instance.ref().child("products").child("real-mobile-2x-1400x770");
    Future <String>urlName()async{
      
      return await ref.getDownloadURL();
      };

    setState(() {
      imageLink = urlName();
      print("the url is:================ $imageLink");
    });
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          imageLink != null
              ? CircleAvatar(
                  child: ClipOval(child: Image.network(imageLink)),
                  radius: 100,
                )
              : CircleAvatar(
                  child: ClipOval(
                    child: Icon(Icons.bolt, size: 100),
                  ),
                  radius: 100,
                ),
          SizedBox(height: 20),
          Text(product.name),
          SizedBox(height: 20),
          Text(product.brand),
          SizedBox(height: 10.0),
          Text(product.parentCategoryId)
        ]),
      ),
    );
  }
}
