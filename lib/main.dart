import 'package:flutter/material.dart';
import 'package:shopperfun/home/intro.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopperfun/home/product_profile.dart';
import 'package:shopperfun/home/selected_products.dart';
import 'home/contact_us.dart';
import 'home/product_details.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => Intro(),
        "/products": (context) => SelectedProducts(),
        "/product_profile": (context) => ProductProfile(),
        "/contact_us": (context) => ContactUs()
      },
    );
  }
}
