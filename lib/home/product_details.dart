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
  dynamic imageLink ;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductModel>(context);

    //Function of type future to construct a widget for the picture downloaded from the database
    Future<Widget> _getImage(BuildContext context, String imageName) async{
      Image image;
      await FireStorageService.loadImage(context, imageName).then((value) {
        image = Image.network(value.toString(), fit: BoxFit.scaleDown);
      });
      return image;
    }

    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            height: 100,
            width: 100,
            child:FutureBuilder(
              future: _getImage(context, product.image),
              builder: (context, snapshot){
                if(snapshot.connectionState == ConnectionState.done){
                  if(snapshot.data != null){
                    return Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child: snapshot.data,
                    );
                  }else{
                    return Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 1.2,
                      child: ClipOval(
                        child: Icon(
                          Icons.bolt
                        ),
                      )                      
                    );
                  }
                  
                }
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 1.2,
                    child: CircularProgressIndicator(),
                  );
                }
                return Container();
              }
            ),
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


