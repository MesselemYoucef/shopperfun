import 'package:flutter/material.dart';
import 'package:shopperfun/home/intro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopperfun/home/selected_products.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      routes: {
        "/": (context) => Intro(),
        "/products": (context) => SelectedProducts()
      },
    );
  }
}

